id TTSUIAppImageForBundleID(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(getISIconClass()) initWithBundleIdentifier:v1];
  if (v2 || ([getISIconClass() genericApplicationIcon], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v4 = getISImageDescriptorClass_softClass;
    v26 = getISImageDescriptorClass_softClass;
    if (!getISImageDescriptorClass_softClass)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getISImageDescriptorClass_block_invoke;
      v21 = &unk_279DBA998;
      v22 = &v23;
      __getISImageDescriptorClass_block_invoke(&v18);
      v4 = v24[3];
    }

    v5 = v4;
    _Block_object_dispose(&v23, 8);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v6 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
    v26 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
    if (!getkISImageDescriptorTableUINameSymbolLoc_ptr)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getkISImageDescriptorTableUINameSymbolLoc_block_invoke;
      v21 = &unk_279DBA998;
      v22 = &v23;
      v7 = IconServicesLibrary();
      v8 = dlsym(v7, "kISImageDescriptorTableUIName");
      *(v22[1] + 24) = v8;
      getkISImageDescriptorTableUINameSymbolLoc_ptr = *(v22[1] + 24);
      v6 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v6)
    {
      TTSUIAppImageForBundleID_cold_1();
      v17 = v16;
      _Block_object_dispose(&v23, 8);
      _Unwind_Resume(v17);
    }

    v9 = [v4 imageDescriptorNamed:*v6];
    [v9 setDrawBorder:1];
    v10 = [v3 prepareImageForDescriptor:v9];
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0x277D755B8];
      v13 = [v10 CGImage];
      [v11 scale];
      v14 = [v12 imageWithCGImage:v13 scale:0 orientation:?];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id getISIconClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISIconClass_softClass;
  v7 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getISIconClass_block_invoke;
    v3[3] = &unk_279DBA998;
    v3[4] = &v4;
    __getISIconClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26EE0357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TTSDeviceTemplateType()
{
  v0 = NSClassFromString(&cfstr_Obdevice.isa);
  if (v0)
  {
    v1 = v0;
    if (objc_opt_respondsToSelector())
    {
      v2 = [(objc_class *)v1 currentDevice];
      if (objc_opt_respondsToSelector())
      {
        v3 = [v2 templateType];

        return v3;
      }

      v19 = AXTTSLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        TTSDeviceTemplateType_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    else
    {
      v2 = AXTTSLogCommon();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        TTSDeviceTemplateType_cold_1(v2, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else
  {
    v2 = AXTTSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      TTSDeviceTemplateType_cold_3(v2, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return 0;
}

Class __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getISIconClass_block_invoke_cold_1();
    return IconServicesLibrary();
  }

  return result;
}

uint64_t IconServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __IconServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279DBA9B8;
    v6 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!IconServicesLibraryCore_frameworkLibrary)
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

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISImageDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getISImageDescriptorClass_block_invoke_cold_1();
    return __getkISImageDescriptorTableUINameSymbolLoc_block_invoke();
  }

  return result;
}

void *__getkISImageDescriptorTableUINameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorTableUIName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorTableUINameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_26EE0391C()
{
  v0 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_26EE0CDF8();
  return v3;
}

uint64_t sub_26EE03958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v5 = a2 + *(v4 + 20);
  type metadata accessor for VoiceBankingSession();
  sub_26EE151B0(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *v5 = sub_26EF3973C();
  *(v5 + 8) = v6 & 1;
  v7 = a2 + *(v4 + 24);
  *v7 = sub_26EE0391C;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v8 = sub_26EF37EDC();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2, a1, v8);
}

uint64_t sub_26EE03A84@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v37 = *(v2 - 8);
  v36 = *(v37 + 64);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF39B2C();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65C8, &qword_26EF3C6D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v30 - v14;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65D0, &qword_26EF3C6D8);
  v33 = *(v31 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x28223BE20](v31, v17);
  v19 = &v30 - v18;
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65D8, &qword_26EF3C6E0);
  sub_26EE154C8(&qword_2806C65E0, &qword_2806C65D8, &qword_26EF3C6E0);
  sub_26EF3A50C();
  sub_26EF39B1C();
  v20 = sub_26EE154C8(&qword_2806C65E8, &qword_2806C65C8, &qword_26EF3C6D0);
  v21 = MEMORY[0x277CDDAC8];
  sub_26EF3A95C();
  (*(v30 + 8))(v9, v5);
  (*(v11 + 8))(v15, v10);
  sub_26EF39EAC();
  v39 = v10;
  v40 = v5;
  v41 = v20;
  v42 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v34;
  v23 = v31;
  sub_26EF3A74C();

  (*(v33 + 8))(v19, v23);
  v24 = v35;
  sub_26EE12360(v32, v35, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v25 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v26 = swift_allocObject();
  sub_26EE123CC(v24, v26 + v25, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v27 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F0, &qword_26EF3C6F8) + 36));
  v28 = v27 + *(sub_26EF3990C() + 20);
  result = sub_26EF3B2EC();
  *v27 = &unk_26EF3C6F0;
  v27[1] = v26;
  return result;
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

uint64_t sub_26EE03F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6980, &qword_26EF3CEC8);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = v78[8];
  v6 = MEMORY[0x28223BE20](v3, v5);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v77 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6728, &qword_26EF3C9E0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v71 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v64 - v16;
  v75 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6720, &qword_26EF3C9D8);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v76 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6718, &qword_26EF3C9D0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v74 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v64 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6710, &qword_26EF3C9C8);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34 - 8, v36);
  v39 = &v64 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = &v64 - v42;
  v45 = MEMORY[0x28223BE20](v41, v44);
  v47 = &v64 - v46;
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v64 - v49;
  v70 = &v64 - v49;
  sub_26EE04600(&v64 - v49);
  v68 = v47;
  sub_26EE048FC(v47);
  v67 = v33;
  sub_26EE04BF8(v33);
  v65 = v25;
  sub_26EE04EF8(v25);
  sub_26EE051F0(v17);
  v80 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6988, &qword_26EF3CED0);
  sub_26EE14B88();
  v51 = v77;
  sub_26EF3AD6C();
  v52 = v43;
  v69 = v43;
  sub_26EE13B88(v50, v43, &qword_2806C6710, &qword_26EF3C9C8);
  v66 = v39;
  sub_26EE13B88(v47, v39, &qword_2806C6710, &qword_26EF3C9C8);
  v53 = v74;
  sub_26EE13B88(v33, v74, &qword_2806C6718, &qword_26EF3C9D0);
  v54 = v25;
  v55 = v76;
  sub_26EE13B88(v54, v76, &qword_2806C6720, &qword_26EF3C9D8);
  v56 = v71;
  sub_26EE13B88(v75, v71, &qword_2806C6728, &qword_26EF3C9E0);
  v64 = v78[2];
  v57 = v72;
  v64(v72, v51, v79);
  v58 = v52;
  v59 = v73;
  sub_26EE13B88(v58, v73, &qword_2806C6710, &qword_26EF3C9C8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69A8, &qword_26EF3CEE0);
  sub_26EE13B88(v39, v59 + v60[12], &qword_2806C6710, &qword_26EF3C9C8);
  sub_26EE13B88(v53, v59 + v60[16], &qword_2806C6718, &qword_26EF3C9D0);
  sub_26EE13B88(v55, v59 + v60[20], &qword_2806C6720, &qword_26EF3C9D8);
  sub_26EE13B88(v56, v59 + v60[24], &qword_2806C6728, &qword_26EF3C9E0);
  v61 = v79;
  v64((v59 + v60[28]), v57, v79);
  v62 = v78[1];
  v62(v77, v61);
  sub_26EE14578(v75, &qword_2806C6728, &qword_26EF3C9E0);
  sub_26EE14578(v65, &qword_2806C6720, &qword_26EF3C9D8);
  sub_26EE14578(v67, &qword_2806C6718, &qword_26EF3C9D0);
  sub_26EE14578(v68, &qword_2806C6710, &qword_26EF3C9C8);
  sub_26EE14578(v70, &qword_2806C6710, &qword_26EF3C9C8);
  v62(v57, v61);
  sub_26EE14578(v56, &qword_2806C6728, &qword_26EF3C9E0);
  sub_26EE14578(v76, &qword_2806C6720, &qword_26EF3C9D8);
  sub_26EE14578(v74, &qword_2806C6718, &qword_26EF3C9D0);
  sub_26EE14578(v66, &qword_2806C6710, &qword_26EF3C9C8);
  return sub_26EE14578(v69, &qword_2806C6710, &qword_26EF3C9C8);
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

uint64_t sub_26EE04600@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v12)
  {
    MEMORY[0x28223BE20](v7, v8);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6600, &qword_26EF3C750);
    sub_26EE0C3A8();
    sub_26EF3AD5C();

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F8, &qword_26EF3C748);
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F8, &qword_26EF3C748);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_26EE048FC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v12)
  {
    MEMORY[0x28223BE20](v7, v8);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6600, &qword_26EF3C750);
    sub_26EE0C3A8();
    sub_26EF3AD5C();

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F8, &qword_26EF3C748);
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F8, &qword_26EF3C748);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_26EE04BF8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v12)
  {
    MEMORY[0x28223BE20](v7, v8);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6640, &qword_26EF3C808);
    sub_26EE0C5DC();
    sub_26EF3AD5C();

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6638, &qword_26EF3C800);
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6638, &qword_26EF3C800);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_26EE04EF8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v12)
  {
    MEMORY[0x28223BE20](v7, v8);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6660, &qword_26EF3C868);
    sub_26EE0C7A0();
    sub_26EF3AD5C();

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6658, &qword_26EF3C860);
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6658, &qword_26EF3C860);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_26EE051F0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v12)
  {
    MEMORY[0x28223BE20](v7, v8);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6688, &qword_26EF3C8C8);
    sub_26EE0C9E0();
    sub_26EF3AD5C();

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6680, &qword_26EF3C8C0);
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6680, &qword_26EF3C8C0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_26EE054FC(uint64_t a1)
{
  v2 = type metadata accessor for Sample(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2 - 8, v5);
  v7 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20[-v9];
  v11 = type metadata accessor for VBInternal_SampleDetailsView(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26EE12360(a1, v10, type metadata accessor for Sample);
  sub_26EE12360(v10, v15, type metadata accessor for Sample);
  sub_26EE123CC(v10, v7, type metadata accessor for Sample);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_26EE123CC(v7, v17 + v16, type metadata accessor for Sample);
  v18 = &v15[*(v11 + 20)];
  *v18 = sub_26EE14D04;
  *(v18 + 1) = v17;
  v18[16] = 0;
  v21 = a1;
  type metadata accessor for VBInternal_SampleSummaryView(0);
  sub_26EE11F4C(&qword_2806CA738, type metadata accessor for VBInternal_SampleSummaryView);
  sub_26EE11F4C(&qword_2806CA740, type metadata accessor for VBInternal_SampleDetailsView);
  return sub_26EF3998C();
}

uint64_t sub_26EE05780(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_26EF39DDC();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[7] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x2822009F8](sub_26EE05874, v6, v5);
}

uint64_t sub_26EE05874()
{
  v1 = v0[3];
  v2 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v0[10] = v2;
  v3 = v1 + *(v2 + 20);
  v4 = *v3;
  if (*(v3 + 8) == 1)
  {
    v5 = v4;
  }

  else
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v4, 0);
    (*(v7 + 8))(v6, v8);
    v5 = v0[2];
  }

  v0[11] = v5;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_26EE059E4;
  v11 = v0[3];

  return sub_26EEDF11C(v11);
}

uint64_t sub_26EE059E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_26EE05C1C;
  }

  else
  {

    *(v4 + 112) = a1;
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_26EE05B14;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26EE05B14()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[3];

  v5 = (v4 + *(v2 + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel);
  sub_26EF3976C();
  sub_26EE05E90(v1);

  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26EE05C1C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

void sub_26EE05C9C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26EE05CB0()
{
  v2 = *(type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE05780(v0 + v3);
}

uint64_t sub_26EE05D7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26EE05E90(uint64_t a1)
{
  v138 = a1;
  v141 = sub_26EF38E9C();
  v129 = *(v141 - 8);
  v2 = *(v129 + 64);
  MEMORY[0x28223BE20](v141, v3);
  v128 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v134 = &v127 - v8;
  v142 = sub_26EF37DCC();
  v131 = *(v142 - 8);
  v9 = *(v131 + 64);
  MEMORY[0x28223BE20](v142, v10);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Sample(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v127 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v127 - v25;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v27 = v144[2];

  if (v27)
  {
    return result;
  }

  v29 = v131;
  v143 = v23;
  v133 = v12;
  v139 = v13;
  v140 = v14;
  v130 = v1;
  v30 = v138;
  v31 = *(v138 + 16);
  if (v31)
  {
    v137 = *(v129 + 16);
    v138 = v129 + 16;
    v32 = v30 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v33 = *(v129 + 72);
    v135 = (v131 + 48);
    v136 = v33;
    v131 += 8;
    v132 = (v29 + 32);
    v34 = MEMORY[0x277D84F90];
    v35 = v134;
    do
    {
      v137(v26, v32, v141);
      v36 = v139;
      v37 = *(v139 + 20);
      *&v26[v37] = 0;
      v38 = *(v36 + 24);
      *&v26[v38] = 0;
      sub_26EF38E5C();
      v39 = v142;
      if ((*v135)(v35, 1, v142) == 1)
      {
        sub_26EE14578(v35, &qword_2806C6840, &qword_26EF3CD50);
        v14 = v140;
      }

      else
      {
        v40 = v35;
        v41 = v133;
        (*v132)(v133, v40, v39);
        v42 = sub_26EF38C4C();
        sub_26EF38C6C();
        *&v26[v37] = v43;
        sub_26EF38C5C();
        v45 = v44;

        (*v131)(v41, v142);
        *&v26[v38] = v45;
        v14 = v140;
        v35 = v134;
      }

      sub_26EE12360(v26, v143, type metadata accessor for Sample);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_26EE12F34(0, v34[2] + 1, 1, v34);
      }

      v47 = v34[2];
      v46 = v34[3];
      v48 = v34;
      if (v47 >= v46 >> 1)
      {
        v48 = sub_26EE12F34(v46 > 1, v47 + 1, 1, v34);
      }

      sub_26EE14874(v26, type metadata accessor for Sample);
      *(v48 + 16) = v47 + 1;
      v34 = v48;
      sub_26EE123CC(v143, v48 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v47, type metadata accessor for Sample);
      v32 += v136;
      --v31;
    }

    while (v31);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v144 = v34;

  sub_26EF3953C();
  v49 = v34[2];
  v50 = MEMORY[0x277D84F90];
  v143 = v34;
  if (!v49)
  {
    v62 = 1;
LABEL_23:
    v60 = v128;
    goto LABEL_24;
  }

  v144 = MEMORY[0x277D84F90];
  sub_26EE139A4(0, v49, 0);
  v50 = v144;
  v51 = v34 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v52 = *(v14 + 72);
  v53 = v51;
  v54 = v49;
  do
  {
    sub_26EE12360(v53, v19, type metadata accessor for Sample);
    sub_26EF38E4C();
    v56 = v55;
    sub_26EE14874(v19, type metadata accessor for Sample);
    v144 = v50;
    v58 = v50[2];
    v57 = v50[3];
    if (v58 >= v57 >> 1)
    {
      sub_26EE139A4((v57 > 1), v58 + 1, 1);
      v50 = v144;
    }

    v50[2] = v58 + 1;
    *(v50 + v58 + 8) = v56;
    v53 += v52;
    --v54;
  }

  while (v54);
  if (!v143[2])
  {
    v62 = 1;
    v14 = v140;
    goto LABEL_23;
  }

  v59 = v129;
  v60 = v128;
  v61 = v141;
  (*(v129 + 16))(v128, v51, v141);
  sub_26EF38E0C();
  (*(v59 + 8))(v60, v61);
  v62 = 0;
  v14 = v140;
LABEL_24:
  v63 = sub_26EE148D4(v50);
  v65 = v64;
  v68 = v66 | (v67 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v144 = v68;
  v145 = v63;
  v146 = v65;

  result = sub_26EF3953C();
  v69 = MEMORY[0x277D84F90];
  if (v49)
  {
    v144 = MEMORY[0x277D84F90];
    sub_26EE139A4(0, v49, 0);
    v69 = v144;
    v70 = v143 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v71 = *(v14 + 72);
    v72 = v49;
    do
    {
      sub_26EE12360(v70, v19, type metadata accessor for Sample);
      sub_26EF38E3C();
      v74 = v73;
      result = sub_26EE14874(v19, type metadata accessor for Sample);
      v144 = v69;
      v76 = v69[2];
      v75 = v69[3];
      if (v76 >= v75 >> 1)
      {
        result = sub_26EE139A4((v75 > 1), v76 + 1, 1);
        v69 = v144;
      }

      v69[2] = v76 + 1;
      *(v69 + v76 + 8) = v74;
      v70 += v71;
      --v72;
    }

    while (v72);
    v14 = v140;
    v77 = v143;
    v60 = v128;
  }

  else
  {
    v77 = v143;
  }

  v78 = v141;
  v79 = v129;
  if ((v62 & 1) == 0)
  {
    if (!*(v77 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v129 + 16))(v60, v77 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v141, 0.0);
    sub_26EF38DFC();
    (*(v79 + 8))(v60, v78);
  }

  v80 = sub_26EE148D4(v69);
  v82 = v81;
  v85 = v83 | (v84 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v144 = v85;
  v145 = v80;
  v146 = v82;

  sub_26EF3953C();
  v86 = MEMORY[0x277D84F90];
  if (v49)
  {
    v144 = MEMORY[0x277D84F90];
    sub_26EE139A4(0, v49, 0);
    v86 = v144;
    v87 = v143 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v88 = *(v14 + 72);
    v89 = v49;
    do
    {
      sub_26EE12360(v87, v19, type metadata accessor for Sample);
      v90 = sub_26EF38E8C();
      sub_26EE14874(v19, type metadata accessor for Sample);
      v144 = v86;
      v92 = v86[2];
      v91 = v86[3];
      if (v92 >= v91 >> 1)
      {
        sub_26EE139A4((v91 > 1), v92 + 1, 1);
        v86 = v144;
      }

      v86[2] = v92 + 1;
      *(v86 + v92 + 8) = v90;
      v87 += v88;
      --v89;
    }

    while (v89);
    v14 = v140;
  }

  sub_26EF3921C();
  v93 = sub_26EE148D4(v86);
  v95 = v94;
  v98 = v96 | (v97 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v144 = v98;
  v145 = v93;
  v146 = v95;

  sub_26EF3953C();
  v99 = MEMORY[0x277D84F90];
  if (v49)
  {
    v144 = MEMORY[0x277D84F90];
    sub_26EE139A4(0, v49, 0);
    v100 = v144;
    v101 = v143 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v102 = *(v14 + 72);
    v103 = v49;
    v104 = v139;
    do
    {
      sub_26EE12360(v101, v19, type metadata accessor for Sample);
      v105 = *&v19[*(v104 + 20)];
      sub_26EE14874(v19, type metadata accessor for Sample);
      v144 = v100;
      v107 = v100[2];
      v106 = v100[3];
      if (v107 >= v106 >> 1)
      {
        sub_26EE139A4((v106 > 1), v107 + 1, 1);
        v104 = v139;
        v100 = v144;
      }

      v100[2] = v107 + 1;
      *(v100 + v107 + 8) = v105;
      v101 += v102;
      --v103;
    }

    while (v103);
    v14 = v140;
  }

  else
  {
    v100 = MEMORY[0x277D84F90];
  }

  v108 = sub_26EE148D4(v100);
  v110 = v109;
  v113 = v111 | (v112 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v144 = v113;
  v145 = v108;
  v146 = v110;

  sub_26EF3953C();
  if (v49)
  {
    v144 = v99;
    sub_26EE139A4(0, v49, 0);
    v114 = v144;
    v115 = v143 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v116 = *(v14 + 72);
    v117 = v139;
    do
    {
      sub_26EE12360(v115, v19, type metadata accessor for Sample);
      v118 = *&v19[*(v117 + 24)];
      sub_26EE14874(v19, type metadata accessor for Sample);
      v144 = v114;
      v120 = v114[2];
      v119 = v114[3];
      if (v120 >= v119 >> 1)
      {
        sub_26EE139A4((v119 > 1), v120 + 1, 1);
        v117 = v139;
        v114 = v144;
      }

      v114[2] = v120 + 1;
      *(v114 + v120 + 8) = v118;
      v115 += v116;
      --v49;
    }

    while (v49);
  }

  else
  {

    v114 = MEMORY[0x277D84F90];
  }

  v121 = sub_26EE148D4(v114);
  v123 = v122;
  v126 = v124 | (v125 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v144 = v126;
  v145 = v121;
  v146 = v123;

  return sub_26EF3953C();
}

uint64_t sub_26EE06BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v100 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6948, &qword_26EF3CE48);
  v8 = *(v7 - 8);
  v99 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v98 = &v81 - v11;
  v12 = sub_26EF393EC();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v88 = &v81 - v19;
  v89 = sub_26EF3945C();
  v90 = *(v89 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](v89, v21);
  v85 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v94 = *(v92 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x28223BE20](v92, v24);
  v87 = &v81 - v25;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v104 = *(v93 - 8);
  v26 = *(v104 + 64);
  v28 = MEMORY[0x28223BE20](v93, v27);
  v91 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v103 = &v81 - v31;
  v32 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32 - 8, v35);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6930, &qword_26EF3CE38);
  v36 = *(v84 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v84, v38);
  v40 = &v81 - v39;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6950, &qword_26EF3CE50);
  v102 = *(v86 - 8);
  v41 = *(v102 + 64);
  v43 = MEMORY[0x28223BE20](v86, v42);
  v101 = &v81 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v81 - v46;
  v109 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  sub_26EE12360(a2, &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v48 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v49 = swift_allocObject();
  sub_26EE123CC(&v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_26EE14860;
  *(v50 + 24) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6958, &qword_26EF3CE58);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6940, &qword_26EF3CE40);
  v105 = sub_26EF3941C();
  v106 = MEMORY[0x277CDF838];
  v107 = MEMORY[0x277CBB408];
  v108 = MEMORY[0x277CDF828];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v51;
  v106 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE14474();
  v53 = v47;
  v82 = v47;
  v54 = v84;
  sub_26EF393AC();
  (*(v36 + 8))(v40, v54);
  sub_26EF39EAC();
  *&v105 = a4;
  sub_26EF393BC();

  v55 = v85;
  sub_26EF3944C();
  v105 = sub_26EF3A97C();
  v56 = MEMORY[0x277CE0F78];
  v57 = MEMORY[0x277CBB450];
  v58 = MEMORY[0x277CE0F60];
  v59 = v87;
  v60 = v89;
  sub_26EF3938C();

  v61 = v55;
  v62 = v60;
  (*(v90 + 8))(v61, v60);
  v63 = v95;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v105 = v62;
  v106 = v56;
  v107 = v57;
  v108 = v58;
  swift_getOpaqueTypeConformance2();
  v64 = v103;
  v65 = v92;
  sub_26EF3937C();
  (*(v96 + 8))(v63, v97);
  (*(v94 + 8))(v59, v65);
  v66 = v101;
  v67 = *(v102 + 16);
  v68 = v86;
  v67(v101, v53, v86);
  v69 = *(v104 + 16);
  v70 = v91;
  v71 = v93;
  v69(v91, v64, v93);
  v72 = v98;
  v67(v98, v66, v68);
  v73 = v99;
  v74 = *(v99 + 56);
  v69(&v72[v74], v70, v71);
  v75 = v102;
  v76 = v100;
  (*(v102 + 32))(v100, v72, v68);
  v77 = v104;
  (*(v104 + 32))(v76 + *(v73 + 56), &v72[v74], v71);
  v78 = *(v77 + 8);
  v78(v103, v71);
  v79 = *(v75 + 8);
  v79(v82, v68);
  v78(v70, v71);
  return (v79)(v101, v68);
}

double sub_26EE075CC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66A8, &qword_26EF3C8D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26EF3C690;
  sub_26EF3A9FC();
  v5 = sub_26EF3AA2C();

  *(v4 + 32) = v5;
  sub_26EF3A98C();
  v6 = sub_26EF3AA2C();

  *(v4 + 40) = v6;
  sub_26EF3A9DC();
  v7 = sub_26EF3AA2C();

  *(v4 + 48) = v7;
  sub_26EF3AA1C();
  v8 = sub_26EF3AA2C();

  *(v4 + 56) = v8;
  sub_26EF3AA0C();
  v9 = sub_26EF3AA2C();

  *(v4 + 64) = v9;
  sub_26EF3A97C();
  v10 = sub_26EF3AA2C();

  *(v4 + 72) = v10;
  if (a1)
  {
    sub_26EF3AF0C();
    sub_26EF3AF1C();
  }

  else
  {
    sub_26EF3AF1C();
    sub_26EF3AF0C();
  }

  MEMORY[0x274382EE0](v4);
  sub_26EF3997C();
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_26EE07778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6908, &qword_26EF3CE18);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B8, &qword_26EF3CDB8);
  sub_26EE13D80();
  v10 = *a1;
  v25 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  sub_26EF3945C();
  v13 = v4[14];
  v24 = v13;
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v15(&v8[v13], a1[1], v12);
  v23 = v4[18];
  v15(&v8[v23], a1[2], v12);
  v22 = v4[22];
  v15(&v8[v22], a1[3], v12);
  v16 = v4[26];
  v15(&v8[v16], a1[4], v12);
  v17 = v4[30];
  v15(&v8[v17], a1[5], v12);
  v18 = v26;
  (*(v11 + 32))(v26, v8, v25);
  v19 = *(v14 + 32);
  v19(v18 + v4[14], &v8[v24], v12);
  v19(v18 + v4[18], &v8[v23], v12);
  v19(v18 + v4[22], &v8[v22], v12);
  v19(v18 + v4[26], &v8[v16], v12);
  return (v19)(v18 + v4[30], &v8[v17], v12);
}

uint64_t sub_26EE07A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6910, &qword_26EF3CE20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6618, &qword_26EF3C760);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v44 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6610, &qword_26EF3C758);
  v46 = *(v48 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x28223BE20](v48, v24);
  v26 = &v44 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6960, &qword_26EF3CE60);
  v49 = *(v27 - 8);
  v28 = *(v49 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v47 = &v44 - v30;
  v50 = a4;
  v51 = a5;
  v52 = a1;
  v53 = a6;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6920, &qword_26EF3CE30);
  sub_26EE14310();
  result = sub_26EF393FC();
  if ((a5 + 5.0) < -5.0)
  {
    __break(1u);
  }

  else
  {
    v55 = -1063256064;
    v56 = a5 + 5.0;
    v32 = sub_26EF3946C();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6620, &qword_26EF3C768);
    v34 = sub_26EE154C8(&qword_2806C6628, &qword_2806C6618, &qword_26EF3C760);
    v45 = v27;
    v35 = a3;
    v36 = v34;
    v37 = sub_26EE15110(&qword_2806C6630, &qword_2806C6620, &qword_26EF3C768);
    sub_26EF3A60C();
    sub_26EE14578(v16, &qword_2806C6910, &qword_26EF3CE20);
    (*(v18 + 8))(v22, v17);
    *&v57 = v17;
    *(&v57 + 1) = v33;
    *&v58 = v36;
    *(&v58 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v47;
    v39 = v48;
    sub_26EF3A5FC();
    (*(v46 + 8))(v26, v39);
    sub_26EF3AE4C();
    sub_26EF39BAC();
    (*(v49 + 32))(v35, v38, v45);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6600, &qword_26EF3C750);
    v40 = (v35 + *(result + 36));
    v41 = v62;
    v40[4] = v61;
    v40[5] = v41;
    v40[6] = v63;
    v42 = v58;
    *v40 = v57;
    v40[1] = v42;
    v43 = v60;
    v40[2] = v59;
    v40[3] = v43;
  }

  return result;
}

uint64_t sub_26EE07F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v100 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6948, &qword_26EF3CE48);
  v8 = *(v7 - 8);
  v99 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v98 = &v81 - v11;
  v12 = sub_26EF393EC();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v88 = &v81 - v19;
  v89 = sub_26EF3945C();
  v90 = *(v89 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](v89, v21);
  v85 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v94 = *(v92 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x28223BE20](v92, v24);
  v87 = &v81 - v25;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v104 = *(v93 - 8);
  v26 = *(v104 + 64);
  v28 = MEMORY[0x28223BE20](v93, v27);
  v91 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v103 = &v81 - v31;
  v32 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32 - 8, v35);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6930, &qword_26EF3CE38);
  v36 = *(v84 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v84, v38);
  v40 = &v81 - v39;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6950, &qword_26EF3CE50);
  v102 = *(v86 - 8);
  v41 = *(v102 + 64);
  v43 = MEMORY[0x28223BE20](v86, v42);
  v101 = &v81 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v81 - v46;
  v109 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  sub_26EE12360(a2, &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v48 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v49 = swift_allocObject();
  sub_26EE123CC(&v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_26EE14798;
  *(v50 + 24) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6958, &qword_26EF3CE58);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6940, &qword_26EF3CE40);
  v105 = sub_26EF3941C();
  v106 = MEMORY[0x277CDF838];
  v107 = MEMORY[0x277CBB408];
  v108 = MEMORY[0x277CDF828];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v51;
  v106 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE14474();
  v53 = v47;
  v82 = v47;
  v54 = v84;
  sub_26EF393AC();
  (*(v36 + 8))(v40, v54);
  sub_26EF39EAC();
  *&v105 = a4;
  sub_26EF393BC();

  v55 = v85;
  sub_26EF3944C();
  v105 = sub_26EF3A97C();
  v56 = MEMORY[0x277CE0F78];
  v57 = MEMORY[0x277CBB450];
  v58 = MEMORY[0x277CE0F60];
  v59 = v87;
  v60 = v89;
  sub_26EF3938C();

  v61 = v55;
  v62 = v60;
  (*(v90 + 8))(v61, v60);
  v63 = v95;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v105 = v62;
  v106 = v56;
  v107 = v57;
  v108 = v58;
  swift_getOpaqueTypeConformance2();
  v64 = v103;
  v65 = v92;
  sub_26EF3937C();
  (*(v96 + 8))(v63, v97);
  (*(v94 + 8))(v59, v65);
  v66 = v101;
  v67 = *(v102 + 16);
  v68 = v86;
  v67(v101, v53, v86);
  v69 = *(v104 + 16);
  v70 = v91;
  v71 = v93;
  v69(v91, v64, v93);
  v72 = v98;
  v67(v98, v66, v68);
  v73 = v99;
  v74 = *(v99 + 56);
  v69(&v72[v74], v70, v71);
  v75 = v102;
  v76 = v100;
  (*(v102 + 32))(v100, v72, v68);
  v77 = v104;
  (*(v104 + 32))(v76 + *(v73 + 56), &v72[v74], v71);
  v78 = *(v77 + 8);
  v78(v103, v71);
  v79 = *(v75 + 8);
  v79(v82, v68);
  v78(v70, v71);
  return (v79)(v101, v68);
}

uint64_t sub_26EE0896C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v43 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6910, &qword_26EF3CE20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6618, &qword_26EF3C760);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6650, &qword_26EF3C810);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v40 - v26;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6918, &qword_26EF3CE28);
  v41 = *(v42 - 8);
  v28 = *(v41 + 64);
  MEMORY[0x28223BE20](v42, v29);
  v31 = &v40 - v30;
  v44 = a4;
  v45 = a5;
  v46 = a1;
  v47 = a6;
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6920, &qword_26EF3CE30);
  sub_26EE14310();
  sub_26EF393FC();
  v32 = sub_26EE154C8(&qword_2806C6628, &qword_2806C6618, &qword_26EF3C760);
  sub_26EF3A5FC();
  result = (*(v17 + 8))(v21, v16);
  if ((a5 + 5.0) < -5.0)
  {
    __break(1u);
  }

  else
  {
    v49 = -1063256064;
    v50 = a5 + 5.0;
    v34 = sub_26EF3946C();
    (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6620, &qword_26EF3C768);
    *&v51 = v16;
    *(&v51 + 1) = v32;
    swift_getOpaqueTypeConformance2();
    sub_26EE15110(&qword_2806C6630, &qword_2806C6620, &qword_26EF3C768);
    sub_26EF3A60C();
    sub_26EE14578(v15, &qword_2806C6910, &qword_26EF3CE20);
    (*(v23 + 8))(v27, v22);
    sub_26EF3AE4C();
    sub_26EF39BAC();
    v35 = v43;
    (*(v41 + 32))(v43, v31, v42);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6640, &qword_26EF3C808);
    v36 = (v35 + *(result + 36));
    v37 = v56;
    v36[4] = v55;
    v36[5] = v37;
    v36[6] = v57;
    v38 = v52;
    *v36 = v51;
    v36[1] = v38;
    v39 = v54;
    v36[2] = v53;
    v36[3] = v39;
  }

  return result;
}

uint64_t sub_26EE08E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v100 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6948, &qword_26EF3CE48);
  v8 = *(v7 - 8);
  v99 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v98 = &v81 - v11;
  v12 = sub_26EF393EC();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v88 = &v81 - v19;
  v89 = sub_26EF3945C();
  v90 = *(v89 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](v89, v21);
  v85 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v94 = *(v92 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x28223BE20](v92, v24);
  v87 = &v81 - v25;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v104 = *(v93 - 8);
  v26 = *(v104 + 64);
  v28 = MEMORY[0x28223BE20](v93, v27);
  v91 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v103 = &v81 - v31;
  v32 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32 - 8, v35);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6930, &qword_26EF3CE38);
  v36 = *(v84 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v84, v38);
  v40 = &v81 - v39;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6950, &qword_26EF3CE50);
  v102 = *(v86 - 8);
  v41 = *(v102 + 64);
  v43 = MEMORY[0x28223BE20](v86, v42);
  v101 = &v81 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v81 - v46;
  v109 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  sub_26EE12360(a2, &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v48 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v49 = swift_allocObject();
  sub_26EE123CC(&v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_26EE146DC;
  *(v50 + 24) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6958, &qword_26EF3CE58);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6940, &qword_26EF3CE40);
  v105 = sub_26EF3941C();
  v106 = MEMORY[0x277CDF838];
  v107 = MEMORY[0x277CBB408];
  v108 = MEMORY[0x277CDF828];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v51;
  v106 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE14474();
  v53 = v47;
  v82 = v47;
  v54 = v84;
  sub_26EF393AC();
  (*(v36 + 8))(v40, v54);
  sub_26EF39EAC();
  *&v105 = a4;
  sub_26EF393BC();

  v55 = v85;
  sub_26EF3944C();
  v105 = sub_26EF3A97C();
  v56 = MEMORY[0x277CE0F78];
  v57 = MEMORY[0x277CBB450];
  v58 = MEMORY[0x277CE0F60];
  v59 = v87;
  v60 = v89;
  sub_26EF3938C();

  v61 = v55;
  v62 = v60;
  (*(v90 + 8))(v61, v60);
  v63 = v95;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v105 = v62;
  v106 = v56;
  v107 = v57;
  v108 = v58;
  swift_getOpaqueTypeConformance2();
  v64 = v103;
  v65 = v92;
  sub_26EF3937C();
  (*(v96 + 8))(v63, v97);
  (*(v94 + 8))(v59, v65);
  v66 = v101;
  v67 = *(v102 + 16);
  v68 = v86;
  v67(v101, v53, v86);
  v69 = *(v104 + 16);
  v70 = v91;
  v71 = v93;
  v69(v91, v64, v93);
  v72 = v98;
  v67(v98, v66, v68);
  v73 = v99;
  v74 = *(v99 + 56);
  v69(&v72[v74], v70, v71);
  v75 = v102;
  v76 = v100;
  (*(v102 + 32))(v100, v72, v68);
  v77 = v104;
  (*(v104 + 32))(v76 + *(v73 + 56), &v72[v74], v71);
  v78 = *(v77 + 8);
  v78(v103, v71);
  v79 = *(v75 + 8);
  v79(v82, v68);
  v78(v70, v71);
  return (v79)(v101, v68);
}

uint64_t sub_26EE09878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W4>, uint64_t a4@<X8>, float a5@<S0>)
{
  v33 = a3;
  v30[1] = a2;
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68D8, &qword_26EF3CDF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_26EF3941C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6940, &qword_26EF3CE40);
  v20 = *(v19 - 8);
  v31 = v19;
  v32 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = v30 - v23;
  sub_26EF39EAC();
  *&v38[0] = a1;
  sub_26EF393BC();

  sub_26EF39EAC();
  *v38 = a5;
  sub_26EF393BC();

  sub_26EF3940C();
  sub_26EE075CC(v33, v38);
  v35 = v38[0];
  v36 = v38[1];
  v37 = v39;
  v25 = MEMORY[0x277CDF838];
  v26 = MEMORY[0x277CBB408];
  v27 = MEMORY[0x277CDF828];
  sub_26EF3938C();
  sub_26EE14734(v38);
  (*(v14 + 8))(v18, v13);
  *&v35 = v13;
  *(&v35 + 1) = v25;
  *&v36 = v26;
  *(&v36 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_26EF3939C();
  return (*(v32 + 8))(v24, v28);
}

__n128 sub_26EE09C24@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6670, &qword_26EF3C870);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68E8, &qword_26EF3CE00);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v26[-v20];
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v30 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68F0, &qword_26EF3CE08);
  sub_26EE1418C();
  sub_26EF393FC();
  sub_26EE154C8(&qword_2806C6678, &qword_2806C6670, &qword_26EF3C870);
  sub_26EF3A5FC();
  (*(v11 + 8))(v15, v10);
  sub_26EF3AE4C();
  sub_26EF39BAC();
  (*(v17 + 32))(a2, v21, v16);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6660, &qword_26EF3C868) + 36);
  v23 = v36;
  *(v22 + 64) = v35;
  *(v22 + 80) = v23;
  *(v22 + 96) = v37;
  v24 = v32;
  *v22 = v31;
  *(v22 + 16) = v24;
  result = v34;
  *(v22 + 32) = v33;
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_26EE09EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v112 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6900, &qword_26EF3CE10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v135 = &v107 - v8;
  v132 = sub_26EF393EC();
  v138 = *(v132 - 8);
  v9 = *(v138 + 64);
  MEMORY[0x28223BE20](v132, v10);
  v129 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v130 = sub_26EF3945C();
  v136 = *(v130 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x28223BE20](v130, v16);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v137 = *(v131 - 8);
  v19 = *(v137 + 64);
  MEMORY[0x28223BE20](v131, v20);
  v108 = &v107 - v21;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v109 = *(v110 - 8);
  v22 = *(v109 + 64);
  v24 = MEMORY[0x28223BE20](v110, v23);
  v111 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v126 = &v107 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v125 = &v107 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v123 = &v107 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v120 = &v107 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v124 = &v107 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v122 = &v107 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v119 = &v107 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v117 = &v107 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v133 = &v107 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6880, &qword_26EF3CD88);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52, v55);
  v57 = &v107 - v56;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B8, &qword_26EF3CDB8);
  v118 = *(v121 - 8);
  v58 = *(v118 + 64);
  v60 = MEMORY[0x28223BE20](v121, v59);
  v116 = &v107 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v62);
  v115 = &v107 - v63;
  v145 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C8, &qword_26EF3CDE8);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6890, &qword_26EF3CD90);
  v139 = sub_26EF3943C();
  v140 = MEMORY[0x277CE0F78];
  v141 = MEMORY[0x277CBB438];
  v142 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v139 = v64;
  v140 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE13D80();
  sub_26EF393AC();
  (*(v53 + 8))(v57, v52);
  sub_26EF39EAC();
  *&v139 = a3;
  sub_26EF393BC();

  v66 = v18;
  sub_26EF3944C();
  v139 = sub_26EF3A97C();
  v67 = v108;
  v68 = v130;
  v69 = MEMORY[0x277CE0F78];
  v70 = MEMORY[0x277CBB450];
  v71 = MEMORY[0x277CE0F60];
  sub_26EF3938C();

  v72 = *(v136 + 8);
  v136 += 8;
  KeyPath = v72;
  v72(v18, v68);
  v73 = v129;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v139 = v68;
  v140 = v69;
  v141 = v70;
  v142 = v71;
  v127 = swift_getOpaqueTypeConformance2();
  v74 = v131;
  sub_26EF3937C();
  v75 = *(v138 + 8);
  v138 += 8;
  v128 = v75;
  v76 = v132;
  v75(v73, v132);
  v114 = *(v137 + 8);
  v137 += 8;
  v114(v67, v74);
  sub_26EF39EAC();
  v139 = 0xC014000000000000;
  sub_26EF393BC();

  sub_26EF3944C();
  v139 = sub_26EF3A9FC();
  v113 = v66;
  sub_26EF3938C();

  KeyPath(v66, v68);
  sub_26EF393DC();
  sub_26EF3AE5C();
  v77 = v131;
  sub_26EF3937C();
  v128(v73, v76);
  v78 = v114;
  v114(v67, v77);
  sub_26EF39EAC();
  v139 = 0xC034000000000000;
  sub_26EF393BC();

  v79 = v113;
  sub_26EF3944C();
  v139 = sub_26EF3A98C();
  v80 = v130;
  sub_26EF3938C();

  KeyPath(v79, v80);
  sub_26EF393DC();
  sub_26EF3AE5C();
  v81 = v131;
  sub_26EF3937C();
  v82 = v73;
  v83 = v132;
  v84 = v128;
  v128(v82, v132);
  v78(v67, v81);
  sub_26EF39EAC();
  v139 = 0xC044000000000000;
  sub_26EF393BC();

  v85 = v113;
  sub_26EF3944C();
  v139 = sub_26EF3AA1C();
  v86 = v130;
  sub_26EF3938C();

  KeyPath(v85, v86);
  v87 = v129;
  sub_26EF393DC();
  sub_26EF3AE5C();
  sub_26EF3937C();
  v84(v87, v83);
  v88 = v114;
  v114(v67, v81);
  sub_26EF39EAC();
  v139 = 0xC04E000000000000;
  sub_26EF393BC();

  sub_26EF3944C();
  v139 = sub_26EF3AA0C();
  sub_26EF3938C();

  KeyPath(v85, v86);
  v89 = v129;
  sub_26EF393DC();
  sub_26EF3AE5C();
  sub_26EF3937C();
  v128(v89, v132);
  v88(v67, v81);
  v90 = v116;
  (*(v118 + 16))(v116, v115, v121);
  v139 = v90;
  v91 = v109;
  v92 = *(v109 + 16);
  v93 = v120;
  v94 = v110;
  v92(v120, v133, v110);
  v140 = v93;
  v95 = v123;
  v96 = v117;
  v92(v123, v117, v94);
  v141 = v95;
  v97 = v125;
  v98 = v119;
  v92(v125, v119, v94);
  v142 = v97;
  v99 = v126;
  v100 = v122;
  v92(v126, v122, v94);
  v143 = v99;
  v101 = v111;
  v102 = v124;
  v92(v111, v124, v94);
  v144 = v101;
  sub_26EE07778(&v139, v112);
  v103 = *(v91 + 8);
  v103(v102, v94);
  v103(v100, v94);
  v103(v98, v94);
  v103(v96, v94);
  v103(v133, v94);
  v104 = *(v118 + 8);
  v105 = v121;
  v104(v115, v121);
  v103(v101, v94);
  v103(v126, v94);
  v103(v125, v94);
  v103(v123, v94);
  v103(v120, v94);
  return (v104)(v116, v105);
}

uint64_t sub_26EE0B1F0@<X0>(uint64_t a1@<X8>)
{
  sub_26EF39EAC();
  v2 = sub_26EF3A5CC();
  v4 = v3;
  v6 = v5;
  sub_26EF3A4DC();
  v7 = sub_26EF3A5BC();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_26EE12ABC(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_26EE0B2E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

__n128 sub_26EE0B350@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6698, &qword_26EF3C8D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6868, &qword_26EF3CD78);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v26[-v20];
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v30 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6870, &qword_26EF3CD80);
  sub_26EE13C1C();
  sub_26EF393FC();
  sub_26EE154C8(&qword_2806C66A0, &qword_2806C6698, &qword_26EF3C8D0);
  sub_26EF3A5FC();
  (*(v11 + 8))(v15, v10);
  sub_26EF3AE4C();
  sub_26EF39BAC();
  (*(v17 + 32))(a2, v21, v16);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6688, &qword_26EF3C8C8) + 36);
  v23 = v36;
  *(v22 + 64) = v35;
  *(v22 + 80) = v23;
  *(v22 + 96) = v37;
  v24 = v32;
  *v22 = v31;
  *(v22 + 16) = v24;
  result = v34;
  *(v22 + 32) = v33;
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_26EE0B61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v90 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A0, &qword_26EF3CDA0);
  v6 = *(v5 - 8);
  v89 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v88 = &v73 - v9;
  v10 = sub_26EF393EC();
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = *(v86 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v85 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v77 = &v73 - v17;
  v79 = sub_26EF3945C();
  v80 = *(v79 - 8);
  v18 = *(v80 + 64);
  MEMORY[0x28223BE20](v79, v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v84 = *(v82 - 8);
  v22 = *(v84 + 64);
  MEMORY[0x28223BE20](v82, v23);
  v76 = &v73 - v24;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v94 = *(v83 - 8);
  v25 = *(v94 + 64);
  v27 = MEMORY[0x28223BE20](v83, v26);
  v81 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v92 = &v73 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6880, &qword_26EF3CD88);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v73 - v35;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B8, &qword_26EF3CDB8);
  v93 = *(v78 - 8);
  v37 = *(v93 + 64);
  v39 = MEMORY[0x28223BE20](v78, v38);
  v91 = &v73 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v73 - v42;
  v99 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C8, &qword_26EF3CDE8);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6890, &qword_26EF3CD90);
  v95 = sub_26EF3943C();
  v96 = MEMORY[0x277CE0F78];
  v97 = MEMORY[0x277CBB438];
  v98 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v44;
  v96 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE13D80();
  v46 = v43;
  v74 = v43;
  sub_26EF393AC();
  (*(v32 + 8))(v36, v31);
  sub_26EF39EAC();
  *&v95 = a3;
  sub_26EF393BC();

  v47 = v21;
  sub_26EF3944C();
  v95 = sub_26EF3A97C();
  v48 = MEMORY[0x277CBB450];
  v49 = v76;
  v50 = v79;
  v51 = MEMORY[0x277CE0F78];
  v52 = MEMORY[0x277CE0F60];
  sub_26EF3938C();

  v53 = v47;
  v54 = v50;
  (*(v80 + 8))(v53, v50);
  v55 = v85;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v95 = v54;
  v96 = v51;
  v97 = v48;
  v98 = v52;
  swift_getOpaqueTypeConformance2();
  v56 = v92;
  v57 = v82;
  sub_26EF3937C();
  (*(v86 + 8))(v55, v87);
  (*(v84 + 8))(v49, v57);
  v58 = *(v93 + 16);
  v59 = v91;
  v60 = v78;
  v58(v91, v46, v78);
  v61 = *(v94 + 16);
  v62 = v81;
  v63 = v83;
  v61(v81, v56, v83);
  v64 = v88;
  v58(v88, v59, v60);
  v65 = v89;
  v66 = *(v89 + 56);
  v61(&v64[v66], v62, v63);
  v67 = v93;
  v68 = v90;
  (*(v93 + 32))(v90, v64, v60);
  v69 = v94;
  (*(v94 + 32))(v68 + *(v65 + 56), &v64[v66], v63);
  v70 = *(v69 + 8);
  v70(v92, v63);
  v71 = *(v67 + 8);
  v71(v74, v60);
  v70(v62, v63);
  return (v71)(v91, v60);
}

uint64_t sub_26EE0BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v29 = a2;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68D8, &qword_26EF3CDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_26EF3943C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6890, &qword_26EF3CD90);
  v19 = *(v18 - 8);
  v30 = v18;
  v31 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v29 - v22;
  sub_26EF39EAC();
  v33 = a1;
  sub_26EF393BC();

  sub_26EF39EAC();
  *&v33 = a4;
  sub_26EF393BC();

  sub_26EF3942C();
  v33 = sub_26EF3AA3C();
  v24 = MEMORY[0x277CE0F78];
  v25 = MEMORY[0x277CBB438];
  v26 = MEMORY[0x277CE0F60];
  sub_26EF3938C();

  (*(v13 + 8))(v17, v12);
  v33 = v12;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v30;
  sub_26EF3939C();
  return (*(v31 + 8))(v23, v27);
}

uint64_t sub_26EE0C2A0@<X0>(uint64_t a1@<X8>)
{
  sub_26EF39EAC();
  result = sub_26EF3A5CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_26EE0C3A8()
{
  result = qword_2806C6608;
  if (!qword_2806C6608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6600, &qword_26EF3C750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6610, &qword_26EF3C758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6618, &qword_26EF3C760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6620, &qword_26EF3C768);
    sub_26EE154C8(&qword_2806C6628, &qword_2806C6618, &qword_26EF3C760);
    sub_26EE15110(&qword_2806C6630, &qword_2806C6620, &qword_26EF3C768);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6608);
  }

  return result;
}

unint64_t sub_26EE0C5DC()
{
  result = qword_2806C6648;
  if (!qword_2806C6648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6640, &qword_26EF3C808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6650, &qword_26EF3C810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6620, &qword_26EF3C768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6618, &qword_26EF3C760);
    sub_26EE154C8(&qword_2806C6628, &qword_2806C6618, &qword_26EF3C760);
    swift_getOpaqueTypeConformance2();
    sub_26EE15110(&qword_2806C6630, &qword_2806C6620, &qword_26EF3C768);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6648);
  }

  return result;
}

unint64_t sub_26EE0C7A0()
{
  result = qword_2806C6668;
  if (!qword_2806C6668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6660, &qword_26EF3C868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6670, &qword_26EF3C870);
    sub_26EE154C8(&qword_2806C6678, &qword_2806C6670, &qword_26EF3C870);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6668);
  }

  return result;
}

double sub_26EE0C8B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_26EE0C948(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 4);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

unint64_t sub_26EE0C9E0()
{
  result = qword_2806C6690;
  if (!qword_2806C6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6688, &qword_26EF3C8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6698, &qword_26EF3C8D0);
    sub_26EE154C8(&qword_2806C66A0, &qword_2806C6698, &qword_26EF3C8D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6690);
  }

  return result;
}

uint64_t sub_26EE0CB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF37EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26EE0CBDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26EF37EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_26EE0CC98()
{
  sub_26EF37EDC();
  if (v0 <= 0x3F)
  {
    sub_26EE11914(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26EE0CD64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE0CD64()
{
  if (!qword_2806C66B8)
  {
    type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(255);
    sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel);
    v0 = sub_26EF3978C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C66B8);
    }
  }
}

uint64_t sub_26EE0CDF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6860, &qword_26EF3CD70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6858, &qword_26EF3CD68);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__samples;
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66C8, &qword_26EF3C988);
  sub_26EF394EC();
  (*(v8 + 32))(v0 + v13, v12, v7);
  v14 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__splModel;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66D8, &qword_26EF3C990);
  sub_26EF394EC();
  v15 = *(v2 + 32);
  v15(v0 + v14, v6, v1);
  v16 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__snrModel;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_26EF394EC();
  v15(v0 + v16, v6, v1);
  v17 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__editScoreModel;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_26EF394EC();
  v15(v0 + v17, v6, v1);
  v18 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__averageDecibelModel;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_26EF394EC();
  v15(v0 + v18, v6, v1);
  v19 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__peakDecibelModel;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_26EF394EC();
  v15(v0 + v19, v6, v1);
  return v0;
}

uint64_t sub_26EE0D0C0()
{
  v1 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__samples;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6858, &qword_26EF3CD68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__splModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6860, &qword_26EF3CD70);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__snrModel, v4);
  v5(v0 + OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__editScoreModel, v4);
  v5(v0 + OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__averageDecibelModel, v4);
  v5(v0 + OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__peakDecibelModel, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

void sub_26EE0D240()
{
  sub_26EE11978(319, &qword_2806C66C0, &qword_2806C66C8, &qword_26EF3C988);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26EE11978(319, &qword_2806C66D0, &qword_2806C66D8, &qword_26EF3C990);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26EE0D340@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

uint64_t sub_26EE0D390@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6800, &qword_26EF3CC80);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v29 - v8;
  v10 = sub_26EF3930C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - v18;
  sub_26EF38E2C();
  sub_26EF392EC();
  v20 = *(v11 + 8);
  v20(v19, v10);
  v21 = sub_26EF3AA8C();
  sub_26EF38E2C();
  if (sub_26EF392EC())
  {
    v22 = sub_26EF3A9DC();
  }

  else
  {
    v22 = sub_26EF3A97C();
  }

  v23 = v22;
  v20(v16, v10);
  KeyPath = swift_getKeyPath();
  *v9 = sub_26EF39F6C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6808, &qword_26EF3CC88);
  sub_26EE0D680(&v9[*(v25 + 44)]);
  v26 = v30;
  sub_26EE13B88(v9, v30, &qword_2806C6800, &qword_26EF3CC80);
  *a1 = v21;
  a1[1] = KeyPath;
  a1[2] = v23;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6810, &qword_26EF3CC90);
  sub_26EE13B88(v26, a1 + *(v27 + 48), &qword_2806C6800, &qword_26EF3CC80);

  sub_26EE14578(v9, &qword_2806C6800, &qword_26EF3CC80);
  sub_26EE14578(v26, &qword_2806C6800, &qword_26EF3CC80);
}

uint64_t sub_26EE0D680@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6818, &qword_26EF3CC98);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v33[-v5];
  v35 = sub_26EF3930C();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35, v9);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6820, &qword_26EF3CCA0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v33[-v19];
  v39 = sub_26EF38E6C();
  v40 = v21;
  sub_26EE12538();
  v22 = sub_26EF3A5DC();
  v24 = v23;
  v34 = v25;
  v36 = v26;
  sub_26EF38E2C();
  v27 = sub_26EF392EC();
  (*(v7 + 8))(v11, v35);
  v28 = 1;
  if ((v27 & 1) == 0)
  {
    *v6 = sub_26EF39E4C();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6828, &qword_26EF3CCA8);
    sub_26EE0D9B8(&v6[*(v29 + 44)]);
    sub_26EE14D98(v6, v20, &qword_2806C6818, &qword_26EF3CC98);
    v28 = 0;
  }

  (*(v37 + 56))(v20, v28, 1, v38);
  sub_26EE13B88(v20, v17, &qword_2806C6820, &qword_26EF3CCA0);
  *a1 = v22;
  *(a1 + 8) = v24;
  v30 = v34 & 1;
  *(a1 + 16) = v34 & 1;
  *(a1 + 24) = v36;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6830, &qword_26EF3CCB0);
  sub_26EE13B88(v17, a1 + *(v31 + 48), &qword_2806C6820, &qword_26EF3CCA0);
  sub_26EE13B20(v22, v24, v30);

  sub_26EE14578(v20, &qword_2806C6820, &qword_26EF3CCA0);
  sub_26EE14578(v17, &qword_2806C6820, &qword_26EF3CCA0);
  sub_26EE12ABC(v22, v24, v30);
}

uint64_t sub_26EE0D9B8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for VBInternal_ValidityView(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v29 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v29 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v29 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v29 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v29 - v25;
  sub_26EF392BC();
  sub_26EF3929C();
  sub_26EF392AC();
  sub_26EE12360(v26, v15, type metadata accessor for VBInternal_ValidityView);
  sub_26EE12360(v23, v11, type metadata accessor for VBInternal_ValidityView);
  sub_26EE12360(v19, v7, type metadata accessor for VBInternal_ValidityView);
  sub_26EE12360(v15, a1, type metadata accessor for VBInternal_ValidityView);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6838, &qword_26EF3CCB8);
  sub_26EE12360(v11, a1 + *(v27 + 48), type metadata accessor for VBInternal_ValidityView);
  sub_26EE12360(v7, a1 + *(v27 + 64), type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v19, type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v23, type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v26, type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v7, type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v11, type metadata accessor for VBInternal_ValidityView);
  return sub_26EE14874(v15, type metadata accessor for VBInternal_ValidityView);
}

uint64_t sub_26EE0DBE8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26EF39E3C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67F8, &qword_26EF3CC78);
  return sub_26EE0D390((a1 + *(v2 + 44)));
}

double sub_26EE0DC3C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF3ACCC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v41 = sub_26EE0DEF8();
  *(&v41 + 1) = v7;
  sub_26EE12538();
  v8 = sub_26EF3A5DC();
  v10 = v9;
  v12 = v11;
  sub_26EF3A97C();
  v13 = sub_26EF3A57C();
  v37 = v14;
  v38 = v13;
  v16 = v15;
  v18 = v17;

  sub_26EE12ABC(v8, v10, v12 & 1);

  LOBYTE(v8) = sub_26EF3A3BC();
  v19 = v16 & 1;
  v40 = v16 & 1;
  v39 = 0;
  v20 = sub_26EF3AE4C();
  v22 = v21;
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A28, &qword_26EF3D030) + 36);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_26EF39ECC();
  (*(*(v25 - 8) + 104))(v6, v24, v25);
  v26 = sub_26EF3A97C();
  sub_26EF3979C();
  sub_26EE12360(v6, v23, MEMORY[0x277CE1260]);
  v27 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A30, &qword_26EF3D038) + 36);
  v28 = v42;
  *v27 = v41;
  *(v27 + 16) = v28;
  *(v27 + 32) = v43;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A38, &qword_26EF3D040);
  *(v23 + *(v29 + 52)) = v26;
  *(v23 + *(v29 + 56)) = 256;
  v30 = sub_26EF3AE4C();
  v32 = v31;
  sub_26EE14874(v6, MEMORY[0x277CE1260]);
  v33 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A40, &qword_26EF3D048) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A48, &qword_26EF3D050) + 36));
  *v34 = v20;
  v34[1] = v22;
  v35 = v37;
  *a1 = v38;
  *(a1 + 8) = v35;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  *(a1 + 32) = v8;
  result = 2.0;
  *(a1 + 40) = xmmword_26EF3C6A0;
  *(a1 + 56) = xmmword_26EF3C6A0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_26EE0DEF8()
{
  v0 = 5394003;
  v1 = sub_26EF3930C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF392BC();
  sub_26EE151B0(&qword_2806C6A50, MEMORY[0x277D706C0]);
  v7 = sub_26EF3B63C();
  v8 = *(v2 + 8);
  v8(v6, v1);
  if (v7)
  {
    return 5395265;
  }

  sub_26EF3929C();
  v9 = sub_26EF3B63C();
  v8(v6, v1);
  if ((v9 & 1) == 0)
  {
    sub_26EF392AC();
    v10 = sub_26EF3B63C();
    v8(v6, v1);
    if (v10)
    {
      return 5001299;
    }

    else
    {
      return 0x64696C6156;
    }
  }

  return v0;
}

uint64_t sub_26EE0E0C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v10 - v3;
  sub_26EF38E5C();
  v5 = type metadata accessor for AudioViewModel(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  sub_26EE10C4C(v4);
  return v8;
}

uint64_t sub_26EE0E160@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6748, &qword_26EF3CBB8);
  v77 = *(v75 - 8);
  v3 = v77[8];
  v5 = MEMORY[0x28223BE20](v75, v4);
  v72 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v67 = &v56 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6750, &qword_26EF3CBC0);
  v76 = *(v73 - 8);
  v9 = v76[8];
  v11 = MEMORY[0x28223BE20](v73, v10);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v62 = &v56 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6758, &qword_26EF3CBC8);
  v71 = *(v70 - 8);
  v15 = v71[8];
  v17 = MEMORY[0x28223BE20](v70, v16);
  v65 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v60 = &v56 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6760, &qword_26EF3CBD0);
  v68 = *(v63 - 8);
  v21 = v68[8];
  v23 = MEMORY[0x28223BE20](v63, v22);
  v74 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v61 = &v56 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v64 = &v56 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v66 = &v56 - v32;
  sub_26EF39EAC();
  v82 = a1;
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v81 = a1;
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v80 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6768, &qword_26EF3CBD8);
  sub_26EE154C8(&qword_2806C6770, &qword_2806C6768, &qword_26EF3CBD8);
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6778, &unk_26EF3CBE0);
  sub_26EE154C8(&qword_2806C6780, &qword_2806C6778, &unk_26EF3CBE0);
  v33 = v62;
  sub_26EF3AD2C();
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  v34 = v67;
  sub_26EF3AD6C();
  v35 = v68[2];
  v36 = v61;
  v37 = v63;
  v35(v61, v66, v63);
  v35(v74, v64, v37);
  v58 = v71[2];
  v38 = v65;
  v58(v65, v60, v70);
  v57 = v76[2];
  v39 = v69;
  v57(v69, v33, v73);
  v56 = v77[2];
  v56(v72, v34, v75);
  v40 = v59;
  v41 = v36;
  v42 = v63;
  v35(v59, v41, v63);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6798, &qword_26EF3CBF0);
  v35(&v40[v43[12]], v74, v42);
  v44 = v38;
  v45 = v70;
  v58(&v40[v43[16]], v44, v70);
  v46 = v73;
  v57(&v40[v43[20]], v39, v73);
  v47 = &v40[v43[24]];
  v48 = v72;
  v49 = v75;
  v56(v47, v72, v75);
  v50 = v77[1];
  ++v77;
  v50(v67, v49);
  v51 = v76[1];
  ++v76;
  v52 = v46;
  v51(v62, v46);
  v53 = v71[1];
  v53(v60, v45);
  v54 = v68[1];
  v54(v64, v42);
  v54(v66, v42);
  v50(v48, v75);
  v51(v69, v52);
  v53(v65, v45);
  v54(v74, v42);
  return (v54)(v61, v42);
}

uint64_t sub_26EE0EA58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67C8, &qword_26EF3CC28);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x28223BE20](v3, v6);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v46 = &v42 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v51 = &v42 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v50 = &v42 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v45 = &v42 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v49 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v42 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v42 - v29;
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67D0, &unk_26EF3CC30);
  sub_26EE12750();
  v44 = v30;
  sub_26EF3996C();
  v57 = a1;
  v56 = a1;
  v43 = v27;
  sub_26EF3996C();
  v55 = a1;
  v54 = a1;
  v31 = v49;
  sub_26EF3996C();
  v53 = a1;
  v52 = a1;
  v32 = v45;
  sub_26EF3996C();
  v33 = v4[2];
  v34 = v50;
  v33(v50, v30, v3);
  v35 = v51;
  v33(v51, v27, v3);
  v36 = v46;
  v33(v46, v31, v3);
  v37 = v47;
  v33(v47, v32, v3);
  v38 = v48;
  v33(v48, v34, v3);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67F0, &qword_26EF3CC40);
  v33(&v38[v39[12]], v35, v3);
  v33(&v38[v39[16]], v36, v3);
  v33(&v38[v39[20]], v37, v3);
  v40 = v4[1];
  v40(v32, v3);
  v40(v49, v3);
  v40(v43, v3);
  v40(v44, v3);
  v40(v37, v3);
  v40(v36, v3);
  v40(v51, v3);
  return (v40)(v50, v3);
}

uint64_t sub_26EE0EF9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for VBInternal_SampleDetailsView(0);
  v4 = v3 - 8;
  v71 = *(v3 - 8);
  v70 = *(v71 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A0, &qword_26EF3CBF8);
  v8 = *(v7 - 8);
  v69 = v7 - 8;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7 - 8, v10);
  v72 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v65 = (&v62 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A8, &unk_26EF3CC00);
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v66 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v76 = &v62 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v74 = &v62 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v75 = &v62 - v27;
  sub_26EF39EAC();
  v63 = v28;
  v29 = type metadata accessor for Sample(0);
  v30 = *(a1 + *(v29 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v31 = swift_allocObject();
  v62 = xmmword_26EF3C6B0;
  v32 = MEMORY[0x277D83A90];
  *(v31 + 16) = xmmword_26EF3C6B0;
  v33 = MEMORY[0x277D83B08];
  *(v31 + 56) = v32;
  *(v31 + 64) = v33;
  *(v31 + 32) = v30;
  v77 = sub_26EF3B10C();
  v78 = v34;

  MEMORY[0x274383240](4351008, 0xE300000000000000);

  sub_26EE12538();
  sub_26EF3995C();
  sub_26EF39EAC();
  v35 = *(a1 + *(v29 + 24));
  v36 = swift_allocObject();
  *(v36 + 16) = v62;
  *(v36 + 56) = MEMORY[0x277D83A90];
  *(v36 + 64) = MEMORY[0x277D83B08];
  *(v36 + 32) = v35;
  v77 = sub_26EF3B10C();
  v78 = v37;

  MEMORY[0x274383240](4351008, 0xE300000000000000);

  v38 = v74;
  sub_26EF3995C();
  v39 = a1 + *(v4 + 28);
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  type metadata accessor for AudioViewModel(0);
  sub_26EE11F4C(&qword_2806CA440, type metadata accessor for AudioViewModel);
  sub_26EF3976C();
  v43 = sub_26EF399AC();
  v45 = v44;
  v46 = v64;
  sub_26EE12360(a1, v64, type metadata accessor for VBInternal_SampleDetailsView);
  v47 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v48 = swift_allocObject();
  sub_26EE123CC(v46, v48 + v47, type metadata accessor for VBInternal_SampleDetailsView);
  v49 = v65;
  v50 = v65 + *(v69 + 44);
  v51 = &v50[*(sub_26EF3990C() + 20)];
  sub_26EF3B2EC();
  *v50 = &unk_26EF3CC18;
  *(v50 + 1) = v48;
  *v49 = v43;
  v49[1] = v45;
  v52 = v67;
  v53 = v68;
  v54 = *(v67 + 16);
  v55 = v76;
  v54(v76, v75, v68);
  v56 = v66;
  v54(v66, v38, v53);
  v57 = v72;
  sub_26EE13B88(v49, v72, &qword_2806C67A0, &qword_26EF3CBF8);
  v58 = v73;
  v54(v73, v55, v53);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67C0, &qword_26EF3CC20);
  v54(&v58[*(v59 + 48)], v56, v53);
  sub_26EE13B88(v57, &v58[*(v59 + 64)], &qword_2806C67A0, &qword_26EF3CBF8);
  sub_26EE14578(v49, &qword_2806C67A0, &qword_26EF3CBF8);
  v60 = *(v52 + 8);
  v60(v74, v53);
  v60(v75, v53);
  sub_26EE14578(v57, &qword_2806C67A0, &qword_26EF3CBF8);
  v60(v56, v53);
  return (v60)(v76, v53);
}

uint64_t sub_26EE0F62C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_26EF3B2DC();
  *(v1 + 24) = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE0F6C4, v3, v2);
}

uint64_t sub_26EE0F6C4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = (v2 + *(type metadata accessor for VBInternal_SampleDetailsView(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for AudioViewModel(0);
  sub_26EE11F4C(&qword_2806CA440, type metadata accessor for AudioViewModel);
  sub_26EF3976C();
  sub_26EE1128C(400.0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26EE0F7B4(uint64_t a1)
{
  v2 = type metadata accessor for VBInternal_SampleDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  sub_26EF39EAC();
  sub_26EE12360(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBInternal_SampleDetailsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26EE123CC(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for VBInternal_SampleDetailsView);
  return sub_26EF3AB6C();
}

uint64_t sub_26EE0F930@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26EF3930C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - v10;
  sub_26EF38E2C();
  sub_26EF392EC();
  v12 = *(v3 + 8);
  v12(v11, v2);
  v13 = sub_26EF3AA8C();
  sub_26EF38E2C();
  if (sub_26EF392EC())
  {
    v14 = sub_26EF3A9DC();
  }

  else
  {
    v14 = sub_26EF3A97C();
  }

  v15 = v14;
  v12(v8, v2);
  result = swift_getKeyPath();
  *a1 = v13;
  a1[1] = result;
  a1[2] = v15;
  return result;
}

uint64_t sub_26EE0FACC@<X0>(uint64_t a1@<X8>)
{
  sub_26EF39EAC();
  result = sub_26EF3A5CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26EE0FB44@<X0>(float (*a1)(uint64_t)@<X2>, float (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v4 = sub_26EF39E9C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  sub_26EF39EAC();
  v7 = sub_26EF3A5CC();
  v9 = v8;
  v11 = v10;
  v12 = sub_26EF3A5AC();
  v37 = v13;
  v15 = v14;
  sub_26EE12ABC(v7, v9, v11 & 1);

  sub_26EF39E8C();
  v16 = sub_26EF39E7C();
  v17 = a1(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D83A90];
  *(v18 + 16) = xmmword_26EF3C6B0;
  v20 = MEMORY[0x277D83B08];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = v17;
  sub_26EF3B10C();
  sub_26EF39E6C();

  v21 = sub_26EF39E7C();
  v22 = a2(v21);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26EF3C6B0;
  *(v23 + 56) = v19;
  *(v23 + 64) = v20;
  *(v23 + 32) = v22;
  sub_26EF3B10C();
  sub_26EF39E6C();

  sub_26EF39E7C();
  sub_26EF39EBC();
  v24 = sub_26EF3A5CC();
  v26 = v25;
  v28 = v27;
  v34 = sub_26EF3A59C();
  v30 = v29;
  LOBYTE(v20) = v31;
  v36 = v32;
  sub_26EE12ABC(v24, v26, v28 & 1);

  sub_26EE12ABC(v12, v37, v15 & 1);

  *a3 = v34;
  *(a3 + 8) = v30;
  *(a3 + 16) = v20 & 1;
  *(a3 + 24) = v36;
  return result;
}

uint64_t sub_26EE0FE48@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_26EF39E9C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  sub_26EF39EAC();
  v4 = sub_26EF3A5CC();
  v6 = v5;
  v8 = v7;
  v9 = sub_26EF3A5AC();
  v11 = v10;
  v25 = v12;
  sub_26EE12ABC(v4, v6, v8 & 1);

  sub_26EF39E8C();
  sub_26EF39E7C();
  sub_26EF38E8C();
  sub_26EF39E5C();
  sub_26EF39E7C();
  sub_26EF3921C();
  sub_26EF39E5C();
  sub_26EF39E7C();
  sub_26EF39EBC();
  v13 = sub_26EF3A5CC();
  v15 = v14;
  v17 = v16;
  v18 = sub_26EF3A59C();
  v20 = v19;
  v22 = v21;
  v26 = v23;
  sub_26EE12ABC(v13, v15, v17 & 1);

  sub_26EE12ABC(v9, v11, v25 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v26;
  return result;
}

uint64_t sub_26EE100BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6738, &qword_26EF3CBB0);
  sub_26EE154C8(&qword_2806C6740, &qword_2806C6738, &qword_26EF3CBB0);
  return sub_26EF3A50C();
}

double sub_26EE10160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6910, &qword_26EF3CE20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69D8, &qword_26EF3CFF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - v14;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69E0, &qword_26EF3D000);
  v16 = *(v32 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v32, v18);
  v20 = &v32 - v19;
  v34 = a1;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69E8, &qword_26EF3D008);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C69F0, &qword_26EF3D010);
  v22 = sub_26EE15048();
  *&v36 = v21;
  *(&v36 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  sub_26EF393FC();
  v36 = xmmword_26EF3C6C0;
  v23 = sub_26EF3946C();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A00, &qword_26EF3D018);
  v25 = sub_26EE154C8(&qword_2806C6A08, &qword_2806C69D8, &qword_26EF3CFF8);
  v26 = sub_26EE15110(&qword_2806C6A10, &qword_2806C6A00, &qword_26EF3D018);
  sub_26EF3A60C();
  sub_26EE14578(v9, &qword_2806C6910, &qword_26EF3CE20);
  (*(v11 + 8))(v15, v10);
  *&v36 = v10;
  *(&v36 + 1) = v24;
  *&v37 = v25;
  *(&v37 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  v27 = v33;
  sub_26EF3A5FC();
  (*(v16 + 8))(v20, v28);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v29 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A18, &qword_26EF3D020) + 36));
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  result = *&v38;
  v29[2] = v38;
  return result;
}

uint64_t sub_26EE10540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69F0, &qword_26EF3D010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v10 = *(v16 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v11 = sub_26EE13E98(0, v10, v16);

  v20 = v11;
  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26EE15178;
  *(v13 + 24) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A20, &qword_26EF3D028);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0);
  v16 = sub_26EF3943C();
  v17 = MEMORY[0x277CDF838];
  v18 = MEMORY[0x277CBB438];
  v19 = MEMORY[0x277CDF828];
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE15048();
  sub_26EF393AC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_26EE1084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v25[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68D8, &qword_26EF3CDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v25[0] = sub_26EF3943C();
  v11 = *(v25[0] - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25[0], v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF39EAC();
  *&v29[0] = a1;
  sub_26EF393BC();

  sub_26EF39EAC();
  *v29 = a3;
  sub_26EF393BC();

  sub_26EF3942C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66A8, &qword_26EF3C8D8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26EF3C690;
  sub_26EF3A9FC();
  v17 = sub_26EF3AA2C();

  *(v16 + 32) = v17;
  sub_26EF3A98C();
  v18 = sub_26EF3AA2C();

  *(v16 + 40) = v18;
  sub_26EF3A9DC();
  v19 = sub_26EF3AA2C();

  *(v16 + 48) = v19;
  sub_26EF3AA1C();
  v20 = sub_26EF3AA2C();

  *(v16 + 56) = v20;
  sub_26EF3AA0C();
  v21 = sub_26EF3AA2C();

  *(v16 + 64) = v21;
  sub_26EF3A97C();
  v22 = sub_26EF3AA2C();

  *(v16 + 72) = v22;
  sub_26EF3AF1C();
  sub_26EF3AF0C();
  MEMORY[0x274382EE0](v16);
  sub_26EF3997C();
  v26 = v29[0];
  v27 = v29[1];
  v28 = v30;
  v23 = v25[0];
  sub_26EF3938C();
  sub_26EE14734(v29);
  return (*(v11 + 8))(v15, v23);
}

uint64_t sub_26EE10C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF38E7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EE10C4C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6850, &qword_26EF3CD60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6848, &qword_26EF3CD58);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v18 - v13;
  *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___audioFile) = 1;
  *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___player) = 1;
  v15 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel__samples;
  v19 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66F0, &qword_26EF3C9C0);
  sub_26EF394EC();
  (*(v10 + 32))(v1 + v15, v14, v9);
  v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel__maxSampleValue;
  v18[1] = 0;
  sub_26EF394EC();
  (*(v4 + 32))(v1 + v16, v8, v3);
  sub_26EE14D98(a1, v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel_audioFileURL, &qword_2806C6840, &qword_26EF3CD50);
  return v1;
}

id sub_26EE10E68()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___audioFile;
  v2 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___audioFile);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_26EE10F68(v0, 0x277CB8398, &selRef_initForReading_error_);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_26EE13BF0(v4);
  }

  sub_26EE13C00(v2);
  return v3;
}

id sub_26EE10EE8()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___player;
  v2 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___player);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_26EE10F68(v0, 0x277CB83D0, &selRef_initWithContentsOfURL_error_);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_26EE13BF0(v4);
  }

  sub_26EE13C00(v2);
  return v3;
}

id sub_26EE10F68(uint64_t a1, Class *a2, SEL *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v24[-v9];
  v11 = sub_26EF37DCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v24[-v19];
  sub_26EE13B88(a1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel_audioFileURL, v10, &qword_2806C6840, &qword_26EF3CD50);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26EE14578(v10, &qword_2806C6840, &qword_26EF3CD50);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    (*(v12 + 16))(v17, v20, v11);
    v22 = objc_allocWithZone(*a2);
    v23 = sub_26EE12ACC(v17, a3);
    (*(v12 + 8))(v20, v11);
    return v23;
  }
}

uint64_t sub_26EE111AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

float sub_26EE11218()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

void sub_26EE1128C(double a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26EE10E68();
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = v3;
  v5 = [v3 processingFormat];
  v6 = [v4 length];
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v7 = v6;
  if (HIDWORD(v6))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v5 frameCapacity:v6];
  if (v8)
  {
    v9 = v8;
    v37[0] = 0;
    v10 = [v4 readIntoBuffer:v8 error:v37];
    v1 = v37[0];
    if (v10)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a1 > -1.0)
        {
          if (a1 < 4294967300.0)
          {
            v11 = a1;
            if (a1)
            {
              if (v11 > v7)
              {
                v12 = 1;
              }

              else
              {
                v12 = v7 / v11;
              }

              v13 = v37[0];
              if (v12 > v7)
              {
                v14 = 0.0;
                v15 = MEMORY[0x277D84F90];
LABEL_39:
                swift_getKeyPath();
                swift_getKeyPath();
                v37[0] = v15;

                sub_26EF3953C();
                swift_getKeyPath();
                swift_getKeyPath();
                *v37 = v14;

                sub_26EF3953C();

LABEL_40:
                v31 = *MEMORY[0x277D85DE8];
                return;
              }

              v16 = v7 / v12;
              v17 = sub_26EF3B24C();
              *(v17 + 16) = v16;
              v33 = v4;
              if (v16 >= 8)
              {
                v18 = v16 & 0xFFFFFFF8;
                v19 = (v17 + 32 + 4 * v18);
                v20 = (v17 + 48);
                v21 = v18;
                do
                {
                  *(v20 - 1) = 0uLL;
                  *v20 = 0uLL;
                  v20 += 2;
                  v21 -= 8;
                }

                while (v21);
                if (v18 == v16)
                {
LABEL_22:
                  v23 = 0;
                  v14 = 0.0;
                  v35 = v17;
                  v34 = v17 + 32;
                  do
                  {
                    if (v23 >= v16)
                    {
                      goto LABEL_45;
                    }

                    v24 = 0;
                    v36 = v23 + 1;
                    v25 = v23 * v12;
                    v26 = -100.0;
                    while (v12 != v24)
                    {
                      if (v24 >= v12)
                      {
                        __break(1u);
LABEL_42:
                        __break(1u);
LABEL_43:
                        __break(1u);
LABEL_44:
                        __break(1u);
LABEL_45:
                        __break(1u);
LABEL_46:
                        __break(1u);
LABEL_47:
                        __break(1u);
                        goto LABEL_48;
                      }

                      v27 = v24 + 1;
                      if (__OFADD__(v24, 1))
                      {
                        goto LABEL_42;
                      }

                      if ((v23 * v12) >> 64 != (v23 * v12) >> 63)
                      {
                        goto LABEL_43;
                      }

                      v28 = v25 + v24;
                      if (__OFADD__(v25, v24))
                      {
                        goto LABEL_44;
                      }

                      if (v28 >= v7)
                      {
                        break;
                      }

                      v29 = [v9 floatChannelData];
                      if (!v29)
                      {
                        goto LABEL_53;
                      }

                      v30 = log10f(fabsf(*(*v29 + 4 * v28))) * 20.0;
                      ++v24;
                      if (v26 <= v30)
                      {
                        v26 = v30;
                        v24 = v27;
                      }
                    }

                    v15 = v35;
                    if (v23 >= v35[2])
                    {
                      goto LABEL_46;
                    }

                    v16 = v7 / v12;
                    *(v34 + 4 * v23) = v26;
                    if (v14 <= v26)
                    {
                      v14 = v26;
                    }

                    ++v23;
                  }

                  while (v36 != v7 / v12);
                  v4 = v33;
                  goto LABEL_39;
                }
              }

              else
              {
                v18 = 0;
                v19 = (v17 + 32);
              }

              v22 = v16 - v18;
              do
              {
                *v19++ = 0;
                --v22;
              }

              while (v22);
              goto LABEL_22;
            }

LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  else
  {
    __break(1u);
  }

  v32 = v1;
  sub_26EF37D1C();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_26EE11660()
{
  sub_26EE14578(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel_audioFileURL, &qword_2806C6840, &qword_26EF3CD50);
  sub_26EE13BF0(*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___audioFile));
  sub_26EE13BF0(*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___player));
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel__samples;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6848, &qword_26EF3CD58);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel__maxSampleValue;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6850, &qword_26EF3CD60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

void sub_26EE117BC()
{
  sub_26EE11914(319, &qword_2806C66E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26EE11978(319, &qword_2806C66E8, &qword_2806C66F0, &qword_26EF3C9C0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26EE119CC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26EE11914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26EE11978(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26EF3954C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26EE119CC()
{
  if (!qword_2806C66F8)
  {
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C66F8);
    }
  }
}

unint64_t sub_26EE11A20()
{
  result = qword_2806C6700;
  if (!qword_2806C6700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C65F0, &qword_26EF3C6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C65D0, &qword_26EF3C6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C65C8, &qword_26EF3C6D0);
    sub_26EF39B2C();
    sub_26EE154C8(&qword_2806C65E8, &qword_2806C65C8, &qword_26EF3C6D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EE151B0(&qword_2806C6708, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6700);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_26EE11BBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_26EE11C04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26EE11C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Sample(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26EE11D58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Sample(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_26EE11E34()
{
  type metadata accessor for Sample(319);
  if (v0 <= 0x3F)
  {
    sub_26EE11EB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EE11EB8()
{
  if (!qword_2806C6730)
  {
    type metadata accessor for AudioViewModel(255);
    sub_26EE11F4C(&qword_2806CA440, type metadata accessor for AudioViewModel);
    v0 = sub_26EF3978C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C6730);
    }
  }
}

uint64_t sub_26EE11F4C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_73Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_74Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_26EE12160()
{
  result = sub_26EF38E9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26EE1222C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioViewModel(0);
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

uint64_t sub_26EE12274@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_26EF38E6C();
  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_26EE122D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_26EF38DEC();
  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_26EE12360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE123CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_26EE12434()
{
  v1 = type metadata accessor for VBInternal_SampleDetailsView(0);
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  type metadata accessor for AudioViewModel(0);
  sub_26EE11F4C(&qword_2806CA440, type metadata accessor for AudioViewModel);
  sub_26EF3976C();
  v6 = sub_26EE10EE8();
  [v6 play];
}

unint64_t sub_26EE12538()
{
  result = qword_2806C67B8;
  if (!qword_2806C67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C67B8);
  }

  return result;
}

uint64_t objectdestroy_86Tm()
{
  v1 = (type metadata accessor for VBInternal_SampleDetailsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26EF38E9C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  sub_26EE05CA8();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE1267C()
{
  v2 = *(type metadata accessor for VBInternal_SampleDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE0F62C(v0 + v3);
}

unint64_t sub_26EE12750()
{
  result = qword_2806C67D8;
  if (!qword_2806C67D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C67D0, &unk_26EF3CC30);
    sub_26EE154C8(&qword_2806C67E0, &qword_2806C67E8, &qword_26EF41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C67D8);
  }

  return result;
}

uint64_t sub_26EE12808@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_26EF38E4C();
  sub_26EF38E0C();
  v4 = sub_26EF3AA8C();
  sub_26EF38E4C();
  v6 = v5;
  sub_26EF38E0C();
  if (v6 >= v7)
  {
    v8 = sub_26EF3A97C();
  }

  else
  {
    v8 = sub_26EF3A9DC();
  }

  v9 = v8;
  result = swift_getKeyPath();
  *a1 = v4;
  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t sub_26EE12908@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_26EF38E3C();
  sub_26EF38DFC();
  v4 = sub_26EF3AA8C();
  sub_26EF38E3C();
  v6 = v5;
  sub_26EF38DFC();
  if (v7 >= v6)
  {
    v8 = sub_26EF3A97C();
  }

  else
  {
    v8 = sub_26EF3A9DC();
  }

  v9 = v8;
  result = swift_getKeyPath();
  *a1 = v4;
  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t sub_26EE12A08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_26EF38E8C();
  sub_26EF3921C();
  v4 = sub_26EF3AA8C();
  v5 = sub_26EF38E8C();
  if (v5 >= sub_26EF3921C())
  {
    v6 = sub_26EF3A97C();
  }

  else
  {
    v6 = sub_26EF3A9DC();
  }

  v7 = v6;
  result = swift_getKeyPath();
  *a1 = v4;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_26EE12ABC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_26EE12ACC(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = sub_26EF37D7C();
  v16[0] = 0;
  v7 = [v4 *a2];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_26EF37DCC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_26EF37D1C();

    swift_willThrow();
    v13 = sub_26EF37DCC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_26EE12C2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v5;
  return result;
}

uint64_t sub_26EE12CBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

float sub_26EE12D34@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_26EE12DB4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

char *sub_26EE12E30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6968, &qword_26EF3CEB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_26EE12F34(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6978, &qword_26EF3CEC0);
  v10 = *(type metadata accessor for Sample(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Sample(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26EE1310C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26EE13E84(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26EF3B7EC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26EF3B24C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26EE13240(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26EE13240(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26EE13990(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_26EE1379C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_26EE12E30((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_26EE1379C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_26EE1379C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

char *sub_26EE139A4(char *a1, int64_t a2, char a3)
{
  result = sub_26EE139C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26EE139C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6970, &qword_26EF3CEB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_26EE13AC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF39C9C();
  *a1 = result;
  return result;
}

uint64_t sub_26EE13AF4(uint64_t *a1)
{
  v1 = *a1;

  return sub_26EF39CAC();
}

uint64_t sub_26EE13B20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26EE13B50(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE13B88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_26EE13BF0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_26EE13C00(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_26EE13C1C()
{
  result = qword_2806C6878;
  if (!qword_2806C6878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6870, &qword_26EF3CD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6880, &qword_26EF3CD88);
    sub_26EE13D80();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6898, &qword_26EF3CD98);
    sub_26EF3945C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6878);
  }

  return result;
}

unint64_t sub_26EE13D80()
{
  result = qword_2806C6888;
  if (!qword_2806C6888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6880, &qword_26EF3CD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6890, &qword_26EF3CD90);
    sub_26EF3943C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6888);
  }

  return result;
}

uint64_t sub_26EE13E98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v6 = result;
  v7 = *(a3 + 16);
  if (v7 >= v3)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = *(a3 + 16);
  }

  if (v8)
  {
    if (v8 <= 0)
    {
      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68E0, &qword_26EF3CDF8);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 17;
      }

      v9[2] = v8;
      v9[3] = 2 * (v11 >> 4);
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v12 = v9[3];

  if (v3 < 0)
  {
    goto LABEL_61;
  }

  v13 = v9 + 4;
  v14 = v12 >> 1;
  if (v8)
  {
    if (a2 >= v6)
    {
      v15 = (a3 + 32);
      v14 -= v8;
      v16 = v8;
      v17 = v7;
      v18 = v6;
      do
      {
        if (a2 == v18)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (!v17)
        {
          goto LABEL_53;
        }

        v19 = v18 + 1;
        v20 = *v15++;
        *v13 = v18;
        *(v13 + 2) = v20;
        v13 += 2;
        --v17;
        ++v18;
        --v16;
      }

      while (v16);
      if (v19 != a2)
      {
        goto LABEL_23;
      }

      goto LABEL_48;
    }

    goto LABEL_62;
  }

  v19 = v6;
  if (v6 != a2)
  {
LABEL_23:
    if (a2 < v6)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v21 = a3 + 32;
    if (v19 <= a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = v19;
    }

    v23 = v19;
    v42 = v7;
    v43 = v6;
    v40 = v22;
    v41 = v21;
    while (v19 >= v6)
    {
      if (v22 == v23)
      {
        goto LABEL_55;
      }

      if (v7 == v8)
      {
        goto LABEL_48;
      }

      if (v8 >= v7)
      {
        goto LABEL_56;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_57;
      }

      v24 = *(v21 + 4 * v8);
      if (!v14)
      {
        v25 = v9[3];
        if (((v25 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_59;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68E0, &qword_26EF3CDF8);
        v28 = swift_allocObject();
        v29 = _swift_stdlib_malloc_size(v28);
        v30 = v29 - 32;
        if (v29 < 32)
        {
          v30 = v29 - 17;
        }

        v31 = v30 >> 4;
        *(v28 + 2) = v27;
        *(v28 + 3) = 2 * (v30 >> 4);
        v32 = v28 + 32;
        v33 = v9[3] >> 1;
        v34 = 16 * v33;
        if (v9[2])
        {
          v35 = (v9 + 4);
          if (v28 != v9 || v32 >= &v35[v34])
          {
            memmove(v28 + 32, v35, v34);
          }

          v9[2] = 0;
        }

        v13 = &v32[v34];
        v14 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v9 = v28;
        v7 = v42;
        v6 = v43;
        v22 = v40;
        v21 = v41;
      }

      v36 = __OFSUB__(v14--, 1);
      if (v36)
      {
        goto LABEL_58;
      }

      *v13 = v23;
      *(v13 + 2) = v24;
      v13 += 2;
      ++v8;
      if (a2 == ++v23)
      {
        goto LABEL_48;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_48:
  v37 = v9[3];
  if (v37 < 2)
  {
    return v9;
  }

  v38 = v37 >> 1;
  v36 = __OFSUB__(v38, v14);
  v39 = v38 - v14;
  if (!v36)
  {
    v9[2] = v39;
    return v9;
  }

LABEL_64:
  __break(1u);
  return result;
}

unint64_t sub_26EE1418C()
{
  result = qword_2806C68F8;
  if (!qword_2806C68F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C68F0, &qword_26EF3CE08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6880, &qword_26EF3CD88);
    sub_26EE13D80();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6898, &qword_26EF3CD98);
    sub_26EF3945C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C68F8);
  }

  return result;
}

unint64_t sub_26EE14310()
{
  result = qword_2806C6928;
  if (!qword_2806C6928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6920, &qword_26EF3CE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6930, &qword_26EF3CE38);
    sub_26EE14474();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6898, &qword_26EF3CD98);
    sub_26EF3945C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6928);
  }

  return result;
}

unint64_t sub_26EE14474()
{
  result = qword_2806C6938;
  if (!qword_2806C6938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6930, &qword_26EF3CE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6940, &qword_26EF3CE40);
    sub_26EF3941C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6938);
  }

  return result;
}

uint64_t sub_26EE14578(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26EF37EDC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_26EE05C9C(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));
  v6 = v0 + v3 + v1[8];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  sub_26EE05CA8();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE146FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EE14874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_26EE148D4(char *a1)
{
  v5 = a1;

  sub_26EE1310C(&v5);

  result = v5;
  v2 = *(v5 + 2);
  if (v2)
  {
    v3 = *(v5 + 8);
    v4 = *&v5[4 * v2 + 28];
  }

  return result;
}

uint64_t sub_26EE14970()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66C8, &qword_26EF3C988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69A0, &qword_26EF3CED8);
  sub_26EE154C8(&qword_2806C69B0, &qword_2806C66C8, &qword_26EF3C988);
  sub_26EE154C8(&qword_2806C6998, &qword_2806C69A0, &qword_26EF3CED8);
  sub_26EE11F4C(&qword_2806CA730, type metadata accessor for Sample);
  return sub_26EF3ACFC();
}

unint64_t sub_26EE14B88()
{
  result = qword_2806C6990;
  if (!qword_2806C6990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6988, &qword_26EF3CED0);
    sub_26EE154C8(&qword_2806C6998, &qword_2806C69A0, &qword_26EF3CED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6990);
  }

  return result;
}

uint64_t sub_26EE14C38()
{
  v1 = *(type metadata accessor for Sample(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26EF38E9C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE14D04()
{
  v0 = *(*(type metadata accessor for Sample(0) - 8) + 80);

  return sub_26EE0E0C4();
}

uint64_t sub_26EE14D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26EE14E0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26EE14E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26EE14F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26EE15048()
{
  result = qword_2806C69F8;
  if (!qword_2806C69F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C69F0, &qword_26EF3D010);
    sub_26EF3943C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C69F8);
  }

  return result;
}

uint64_t sub_26EE15110(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26EE1517C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_26EE151B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE151FC()
{
  result = qword_2806C6A58;
  if (!qword_2806C6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A18, &qword_26EF3D020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C69E0, &qword_26EF3D000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C69D8, &qword_26EF3CFF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A00, &qword_26EF3D018);
    sub_26EE154C8(&qword_2806C6A08, &qword_2806C69D8, &qword_26EF3CFF8);
    sub_26EE15110(&qword_2806C6A10, &qword_2806C6A00, &qword_26EF3D018);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6A58);
  }

  return result;
}

unint64_t sub_26EE1538C()
{
  result = qword_2806C6A60;
  if (!qword_2806C6A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A28, &qword_26EF3D030);
    sub_26EE15444();
    sub_26EE154C8(&qword_2806C6A78, &qword_2806C6A48, &qword_26EF3D050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6A60);
  }

  return result;
}

unint64_t sub_26EE15444()
{
  result = qword_2806C6A68;
  if (!qword_2806C6A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A70, &qword_26EF3D058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6A68);
  }

  return result;
}

uint64_t sub_26EE154C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26EE1554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v33 = a3;
  v3 = sub_26EF39B4C();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A80, &qword_26EF3D530);
  v15 = *(v14 - 8);
  v31 = v14;
  v32 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v26 - v18;
  sub_26EF39EAC();
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v28;

  sub_26EF3AB6C();
  sub_26EF39B3C();
  v21 = sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  sub_26EF3A77C();
  (*(v29 + 8))(v7, v30);
  (*(v9 + 8))(v13, v8);
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE16DE0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  v22 = sub_26EF39C1C();
  v36 = v22;
  v37 = v23;
  v34 = v8;
  v35 = v21;
  swift_getOpaqueTypeConformance2();
  sub_26EE15928();
  v24 = v31;
  sub_26EF3A66C();

  return (*(v32 + 8))(v19, v24);
}

uint64_t sub_26EE158C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EE15900()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_26EE15928()
{
  result = qword_2806C6A88;
  if (!qword_2806C6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6A88);
  }

  return result;
}

uint64_t sub_26EE15E88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AE0, &qword_26EF3D1B8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v33 - v13;
  v15 = objc_opt_self();
  v16 = [v15 systemGrayColor];
  v34 = sub_26EF3AA5C();
  v17.n128_u64[0] = 0x4052C00000000000;
  CGSizeMake(v34, v17, 75.0);
  sub_26EF3AE4C();
  sub_26EF3984C();
  *&v37[3] = *&v37[27];
  *&v37[11] = *&v37[35];
  *&v37[19] = *&v37[43];
  v18 = [v15 systemBackgroundColor];
  v33 = sub_26EF3AA5C();
  v19.n128_u64[0] = 0x4050800000000000;
  CGSizeMake(v33, v19, 66.0);
  sub_26EF3AE4C();
  sub_26EF3984C();
  *&v36[6] = *&v37[51];
  *&v36[22] = *&v37[59];
  *&v36[38] = *&v37[67];
  *v14 = sub_26EF39F5C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AE8, &qword_26EF3D1C0);
  sub_26EE162A4(a1, &v14[*(v20 + 44)]);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v21 = &v14[*(v6 + 44)];
  v22 = *&v37[83];
  *v21 = *&v37[75];
  *(v21 + 1) = v22;
  *(v21 + 2) = *&v37[91];
  v23 = v11;
  sub_26EE13B88(v14, v11, &qword_2806C6AE0, &qword_26EF3D1B8);
  v24 = v34;
  *&v38[0] = v34;
  WORD4(v38[0]) = 256;
  *(v38 + 10) = *v37;
  *(&v38[1] + 10) = *&v37[8];
  *(&v38[2] + 10) = *&v37[16];
  *(&v38[3] + 1) = *&v37[23];
  v25 = v38[1];
  *a3 = v38[0];
  a3[1] = v25;
  v26 = v38[3];
  a3[2] = v38[2];
  a3[3] = v26;
  v27 = v33;
  *&v39[0] = v33;
  WORD4(v39[0]) = 256;
  *(v39 + 10) = *v36;
  *(&v39[3] + 1) = *&v36[46];
  *(&v39[2] + 10) = *&v36[32];
  *(&v39[1] + 10) = *&v36[16];
  v28 = v39[0];
  v29 = v39[1];
  v30 = v39[3];
  a3[6] = v39[2];
  a3[7] = v30;
  a3[4] = v28;
  a3[5] = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AF0, &qword_26EF3D1C8);
  sub_26EE13B88(v23, a3 + *(v31 + 64), &qword_2806C6AE0, &qword_26EF3D1B8);
  sub_26EE13B88(v38, &v45, &qword_2806C6AF8, &qword_26EF3D1D0);
  sub_26EE13B88(v39, &v45, &qword_2806C6AF8, &qword_26EF3D1D0);
  sub_26EE14578(v14, &qword_2806C6AE0, &qword_26EF3D1B8);
  sub_26EE14578(v23, &qword_2806C6AE0, &qword_26EF3D1B8);
  v40 = v27;
  v41 = 256;
  v42 = *v36;
  v43 = *&v36[16];
  *v44 = *&v36[32];
  *&v44[14] = *&v36[46];
  sub_26EE14578(&v40, &qword_2806C6AF8, &qword_26EF3D1D0);
  v45 = v24;
  v46 = 256;
  v47 = *v37;
  v48 = *&v37[8];
  *v49 = *&v37[16];
  *&v49[14] = *&v37[23];
  return sub_26EE14578(&v45, &qword_2806C6AF8, &qword_26EF3D1D0);
}

uint64_t sub_26EE162A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_26EF38C2C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v74 - v12;
  v14 = sub_26EF39B7C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v77 = (v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B00, &qword_26EF3D1D8);
  v18 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78, v19);
  v88 = v74 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B08, &qword_26EF3D1E0);
  v21 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v22);
  v84 = v74 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B10, &qword_26EF3D1E8);
  v24 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79, v25);
  v83 = v74 - v26;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B18, &qword_26EF3D1F0);
  v27 = *(*(v82 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v82, v28);
  v86 = v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v81 = v74 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v85 = v74 - v35;
  if (a1)
  {
    v87 = a2;
    v36 = a1;
    sub_26EF0F97C();
    v37 = v5[13];
    v37(v10, *MEMORY[0x277D70598], v4);
    v38 = sub_26EF38C1C();
    v39 = v5[1];
    v39(v10, v4);
    v39(v13, v4);
    v75 = v37;
    v74[2] = v5 + 13;
    v74[1] = v5 + 1;
    v74[0] = v39;
    if (v38)
    {
      sub_26EF0F97C();
      v76 = *MEMORY[0x277D705A0];
      (v37)(v10);
      v40 = sub_26EF38C1C();
      v39(v10, v4);
      v41 = (v39)(v13, v4);
      v42.n128_u64[0] = 0x404E000000000000;
      if (v40)
      {
        v42.n128_f64[0] = 40.0;
      }

      v43 = CGSizeMake(v41, v42, v42.n128_f64[0]) * 0.5;
    }

    else
    {
      v76 = *MEMORY[0x277D705A0];
      v43 = 5.0;
    }

    v44 = *(v14 + 20);
    v45 = *MEMORY[0x277CE0118];
    v46 = sub_26EF39ECC();
    v47 = v77;
    (*(*(v46 - 8) + 104))(v77 + v44, v45, v46);
    *v47 = v43;
    v47[1] = v43;
    v48 = [objc_opt_self() systemRedColor];
    v49 = sub_26EF3AA5C();
    v50 = v88;
    sub_26EE16E28(v47, v88);
    v51 = v78;
    *(v50 + *(v78 + 52)) = v49;
    *(v50 + *(v51 + 56)) = 256;
    sub_26EF0F97C();
    v52 = v76;
    v53 = v75;
    v75(v10, v76, v4);
    LOBYTE(v49) = sub_26EF38C1C();
    v54 = v74[0];
    (v74[0])(v10, v4);
    v55 = v54(v13, v4);
    if (v49)
    {
      v56.n128_f64[0] = 40.0;
    }

    else
    {
      v56.n128_f64[0] = 60.0;
    }

    CGSizeMake(v55, v56, v56.n128_f64[0]);
    sub_26EF0F97C();
    v53(v10, v52, v4);
    v57 = sub_26EF38C1C();
    v54(v10, v4);
    v58 = v54(v13, v4);
    if (v57)
    {
      v59.n128_f64[0] = 40.0;
    }

    else
    {
      v59.n128_f64[0] = 60.0;
    }

    CGSizeMake(v58, v59, v59.n128_f64[0]);
    sub_26EF3AE4C();
    sub_26EF3984C();
    v60 = v84;
    sub_26EE14D98(v88, v84, &qword_2806C6B00, &qword_26EF3D1D8);
    v61 = (v60 + *(v80 + 36));
    v62 = v90;
    *v61 = v89;
    v61[1] = v62;
    v61[2] = v91;
    v63 = sub_26EF3AEAC();
    v64 = v83;
    v65 = &v83[*(v79 + 36)];
    v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B20, &qword_26EF3D1F8) + 36);
    sub_26EF0F97C();

    *v65 = v63;
    sub_26EE14D98(v60, v64, &qword_2806C6B08, &qword_26EF3D1E0);
    v67 = v81;
    sub_26EE13B88(v64, v81, &qword_2806C6B10, &qword_26EF3D1E8);
    *(v67 + *(v82 + 36)) = 0x3FF0000000000000;
    sub_26EE14578(v64, &qword_2806C6B10, &qword_26EF3D1E8);
    v68 = v85;
    sub_26EE14D98(v67, v85, &qword_2806C6B18, &qword_26EF3D1F0);
    v69 = v86;
    sub_26EE13B88(v68, v86, &qword_2806C6B18, &qword_26EF3D1F0);
    v70 = v87;
    *v87 = 0;
    *(v70 + 8) = 1;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B28, &unk_26EF3D200);
    sub_26EE13B88(v69, v70 + *(v71 + 48), &qword_2806C6B18, &qword_26EF3D1F0);
    v72 = v70 + *(v71 + 64);
    *v72 = 0;
    v72[8] = 1;
    sub_26EE14578(v68, &qword_2806C6B18, &qword_26EF3D1F0);
    return sub_26EE14578(v69, &qword_2806C6B18, &qword_26EF3D1F0);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EE16DE0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE16ABC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EE16B04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26EE16B50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26EE16BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26EE16C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A80, &qword_26EF3D530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  swift_getOpaqueTypeConformance2();
  sub_26EE15928();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE16CF8()
{
  result = qword_2806C6AD0;
  if (!qword_2806C6AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A98, &qword_26EF3D098);
    sub_26EE154C8(&qword_2806C6AA8, &qword_2806C6A90, &qword_26EF3D090);
    sub_26EE16DE0(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6AD0);
  }

  return result;
}

uint64_t sub_26EE16DE0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26EE16E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF39B7C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s26TextToSpeechVoiceBankingUI0D11PickerGroupV16TopLevelPositionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE16F18()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE16F80(uint64_t a1)
{
  v2 = sub_26EF396DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26EF39C4C();
}

uint64_t type metadata accessor for SelectionCell()
{
  result = qword_2806CAAF0;
  if (!qword_2806CAAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *sub_26EE170E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SelectionCell();
  v20 = (a9 + result[5]);
  *v20 = a1;
  v20[1] = a2;
  *(a9 + result[6]) = a3 & 1;
  *(a9 + result[7]) = a4;
  v21 = (a9 + result[8]);
  *v21 = a5;
  v21[1] = a6;
  v21[2] = a7;
  v22 = (a9 + result[9]);
  *v22 = a8;
  v22[1] = a10;
  return result;
}

uint64_t sub_26EE171BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = sub_26EF39B6C();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SelectionCell();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B40, &qword_26EF3D250);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v29 - v16;
  sub_26EE17570(v2, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_26EE17730(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B48, &qword_26EF3D258);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B50, &qword_26EF3D260);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B58, &qword_26EF3D268);
  v22 = sub_26EE17CF4();
  v23 = sub_26EE17E90();
  v32 = v20;
  v33 = MEMORY[0x277CE1350];
  v34 = v21;
  v35 = v22;
  v36 = MEMORY[0x277CE1340];
  v37 = v23;
  swift_getOpaqueTypeConformance2();
  sub_26EF3AB4C();
  sub_26EF39B5C();
  sub_26EE154C8(&qword_2806C6BB0, &qword_2806C6B40, &qword_26EF3D250);
  sub_26EE17F1C();
  v25 = v29;
  v24 = v30;
  sub_26EF3A65C();
  (*(v3 + 8))(v7, v25);
  (*(v13 + 8))(v17, v12);
  v26 = [objc_opt_self() secondarySystemBackgroundColor];
  v32 = sub_26EF3AA5C();
  v27 = sub_26EF3AC1C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BC0, &qword_26EF3D290);
  *(v24 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_26EE17570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE175D4()
{
  v1 = type metadata accessor for SelectionCell();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26EF396DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = (v5 + v1[8]);
  v10 = *v9;

  v11 = v9[1];

  v12 = (v5 + v1[9]);
  if (*v12)
  {
    v13 = v12[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE17730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE17794()
{
  result = type metadata accessor for SelectionCell();
  v2 = result;
  v3 = v0 + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80));
  v4 = v3 + *(result + 36);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(v7);
    result = sub_26EE18828(v5);
  }

  if ((*(v3 + v2[6]) & 1) == 0)
  {
    v8 = (v3 + v2[8]);
    v10 = *v8;
    v11 = *(v8 + 2);
    v9 = *(v3 + v2[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B38, &qword_26EF3D248);
    return sub_26EF3AC3C();
  }

  return result;
}

uint64_t sub_26EE17880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C10, &qword_26EF3D3A0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C18, &qword_26EF3D3A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v56 = &v50 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B50, &qword_26EF3D260);
  v12 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54, v13);
  v15 = &v50 - v14;
  v51 = sub_26EF39E4C();
  v60 = 1;
  v16 = type metadata accessor for SelectionCell();
  v17 = (a1 + v16[5]);
  v18 = v17[1];
  *&v62 = *v17;
  *(&v62 + 1) = v18;
  sub_26EE12538();

  v19 = sub_26EF3A5DC();
  v21 = v20;
  v23 = v22;
  v57 = sub_26EF3A5AC();
  v58 = v24;
  v26 = v25;
  v59 = v27;
  sub_26EE12ABC(v19, v21, v23 & 1);

  if ((*(a1 + v16[6]) & 1) != 0 || (v28 = (a1 + v16[8]), v29 = *v28, v30 = *(v28 + 2), v62 = v29, v63 = v30, v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B38, &qword_26EF3D248), MEMORY[0x274382CF0](&v61, v31), v61 != *(a1 + v16[7])))
  {
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = sub_26EF3AA8C();
    v33 = sub_26EF3A98C();
  }

  v34 = v26 & 1;
  v36 = v57;
  v35 = v58;
  sub_26EE13B20(v57, v58, v34);

  sub_26EE187A8(v32);
  sub_26EE187E8(v32);
  LOBYTE(v62) = v34;
  LOBYTE(v61) = 1;
  sub_26EE187E8(v32);
  sub_26EE12ABC(v36, v35, v34);

  v37 = v60;
  v38 = sub_26EF3AE4C();
  v40 = v39;
  v41 = *(a1 + v16[6]);
  v42 = 1;
  v44 = v52;
  v43 = v53;
  if (v41 == 1)
  {
    sub_26EE82F84();
    (*(v44 + 32))(v56, v7, v43);
    v42 = 0;
  }

  v45 = v56;
  (*(v44 + 56))(v56, v42, 1, v43);
  v46 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B70, &qword_26EF3D270) + 36)];
  sub_26EE186D0(v45, v46);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B90, &unk_26EF3D280) + 36));
  *v47 = v38;
  v47[1] = v40;
  *v15 = v51;
  *(v15 + 1) = 0;
  v15[16] = v37;
  v48 = v58;
  *(v15 + 3) = v57;
  *(v15 + 4) = v48;
  v15[40] = v34;
  *(v15 + 6) = v59;
  *(v15 + 7) = 0;
  v15[64] = 1;
  *(v15 + 9) = v32;
  *(v15 + 10) = v33;
  v15[*(v54 + 36)] = 0;
  sub_26EF3AE2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B58, &qword_26EF3D268);
  sub_26EE17CF4();
  sub_26EE17E90();
  sub_26EF3A92C();
  return sub_26EE18740(v15);
}

unint64_t sub_26EE17CF4()
{
  result = qword_2806C6B60;
  if (!qword_2806C6B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B50, &qword_26EF3D260);
    sub_26EE17DAC();
    sub_26EE154C8(&qword_2806C6B98, &qword_2806C6BA0, &qword_26EF41DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6B60);
  }

  return result;
}

unint64_t sub_26EE17DAC()
{
  result = qword_2806C6B68;
  if (!qword_2806C6B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B70, &qword_26EF3D270);
    sub_26EE154C8(&qword_2806C6B78, &qword_2806C6B80, &qword_26EF3D278);
    sub_26EE154C8(&qword_2806C6B88, &qword_2806C6B90, &unk_26EF3D280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6B68);
  }

  return result;
}

unint64_t sub_26EE17E90()
{
  result = qword_2806C6BA8;
  if (!qword_2806C6BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B58, &qword_26EF3D268);
    sub_26EE17CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6BA8);
  }

  return result;
}

unint64_t sub_26EE17F1C()
{
  result = qword_2806C6BB8;
  if (!qword_2806C6BB8)
  {
    sub_26EF39B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6BB8);
  }

  return result;
}

unint64_t sub_26EE17F78()
{
  result = qword_2806C6BC8;
  if (!qword_2806C6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6BC8);
  }

  return result;
}

uint64_t sub_26EE17FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3A3BC();
  sub_26EF3962C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_26EE13B88(a1, a2, &qword_2806C6B50, &qword_26EF3D260);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B58, &qword_26EF3D268);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_26EE180A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EE18184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EE1824C()
{
  sub_26EE18304();
  if (v0 <= 0x3F)
  {
    sub_26EE1835C();
    if (v1 <= 0x3F)
    {
      sub_26EE183AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE18304()
{
  if (!qword_2806C6BD8)
  {
    sub_26EF396DC();
    v0 = sub_26EF3972C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C6BD8);
    }
  }
}

void sub_26EE1835C()
{
  if (!qword_2806C6BE0)
  {
    v0 = sub_26EF3AC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C6BE0);
    }
  }
}

void sub_26EE183AC()
{
  if (!qword_2806C6BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6BF0, &qword_26EF3D380);
    v0 = sub_26EF3B5CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C6BE8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SelectionCell.SelectionStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectionCell.SelectionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26EE18588()
{
  result = qword_2806C6BF8;
  if (!qword_2806C6BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6BC0, &qword_26EF3D290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B40, &qword_26EF3D250);
    sub_26EF39B6C();
    sub_26EE154C8(&qword_2806C6BB0, &qword_2806C6B40, &qword_26EF3D250);
    sub_26EE17F1C();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C6C00, &qword_2806C6C08, &qword_26EF3D398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6BF8);
  }

  return result;
}

uint64_t sub_26EE186D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C18, &qword_26EF3D3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE18740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B50, &qword_26EF3D260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE187A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26EE187E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26EE18828(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26EE18838@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v80 = &v68 - v5;
  v71 = sub_26EF39DDC();
  v70 = *(v71 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v71, v7);
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for RootView();
  v79 = *(v83 - 1);
  v78 = *(v79 + 8);
  MEMORY[0x28223BE20](v83, v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C48, &qword_26EF3D3D8);
  v77 = *(v76 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v76, v13);
  v75 = &v68 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C50, &qword_26EF3D3E0);
  v15 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82, v16);
  v18 = &v68 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C58, &qword_26EF3D3E8);
  v19 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84, v20);
  v85 = &v68 - v21;
  v22 = *(v1 + 16);
  v23 = *(v1 + 24);
  v74 = v1;
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  sub_26EF39BEC();
  swift_getKeyPath();
  sub_26EF39C0C();

  v93 = v95;
  v94 = v96;
  v86 = v1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C60, &qword_26EF3E450);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C68, &qword_26EF3D420);
  sub_26EE154C8(&qword_2806C6C70, &qword_2806C6C60, &qword_26EF3E450);
  sub_26EE154C8(&qword_2806C6C78, &qword_2806C6C60, &qword_26EF3E450);
  sub_26EE154C8(&qword_2806C6C80, &qword_2806C6C60, &qword_26EF3E450);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C88, &qword_26EF3D428);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C90, &qword_26EF3D430);
  v26 = sub_26EE19650();
  v27 = sub_26EE19760();
  v28 = sub_26EE197B4();
  v87 = v24;
  v88 = &type metadata for VBNavigationItem;
  v89 = v25;
  v90 = v26;
  v91 = v27;
  v92 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v75;
  sub_26EF39ACC();
  sub_26EE154C8(&qword_2806C6D50, &qword_2806C6C48, &qword_26EF3D3D8);
  v30 = v76;
  sub_26EF3A86C();
  (*(v77 + 8))(v29, v30);
  v31 = v74;
  sub_26EE202A8(v74, v11, type metadata accessor for RootView);
  v32 = (v79[80] + 16) & ~v79[80];
  v33 = swift_allocObject();
  sub_26EE1BA40(v11, v33 + v32);
  v34 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D60, &qword_26EF3D480) + 36)];
  v35 = &v34[*(sub_26EF3990C() + 20)];
  sub_26EF3B2EC();
  *v34 = &unk_26EF3D478;
  *(v34 + 1) = v33;
  sub_26EE202A8(v31, v11, type metadata accessor for RootView);
  v36 = swift_allocObject();
  sub_26EE1BA40(v11, v36 + v32);
  v37 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D68, &qword_26EF3D488) + 36)];
  *v37 = sub_26EE1BB70;
  v37[1] = v36;
  v37[2] = 0;
  v37[3] = 0;
  v38 = (v31 + *(v83 + 8));
  v40 = *v38;
  v39 = v38[1];
  v87 = v40;
  v88 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
  sub_26EF3AAFC();
  v41 = v95;
  sub_26EE202A8(v31, v11, type metadata accessor for RootView);
  v42 = swift_allocObject();
  sub_26EE1BA40(v11, v42 + v32);
  v43 = v82;
  *&v18[*(v82 + 52)] = v41;
  v44 = *(v43 + 56);
  v79 = v18;
  v45 = &v18[v44];
  *v45 = sub_26EE1C0B8;
  v45[1] = v42;
  v46 = *v31;
  if (*(v31 + 8) == 1)
  {
    v47 = v46;
  }

  else
  {
    v48 = *v31;

    sub_26EF3B46C();
    v49 = sub_26EF3A36C();
    sub_26EF3880C();

    v50 = v69;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v46, 0);
    (*(v70 + 8))(v50, v71);
    v47 = v87;
  }

  v51 = sub_26EED34C4();

  LOBYTE(v87) = v51;
  sub_26EE202A8(v31, v11, type metadata accessor for RootView);
  v52 = swift_allocObject();
  sub_26EE1BA40(v11, v52 + v32);
  sub_26EE154C8(&qword_2806C6D78, &qword_2806C6C50, &qword_26EF3D3E0);
  sub_26EE1C384();
  v53 = v85;
  v54 = v79;
  sub_26EF3A8FC();

  sub_26EE14578(v54, &qword_2806C6C50, &qword_26EF3D3E0);
  sub_26EE202A8(v31, v11, type metadata accessor for RootView);
  v55 = swift_allocObject();
  sub_26EE1BA40(v11, v55 + v32);
  v56 = &v53[*(v84 + 36)];
  *v56 = 0;
  *(v56 + 1) = 0;
  *(v56 + 2) = sub_26EE1C5C8;
  *(v56 + 3) = v55;
  v57 = sub_26EE1C628();
  v82 = v58;
  v95 = v57;
  *&v96 = v58;
  v59 = *(v83 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  v60 = v80;
  sub_26EF3AAFC();
  v61 = sub_26EF38A4C();
  LOBYTE(v59) = (*(*(v61 - 8) + 48))(v60, 1, v61) != 1;
  sub_26EE14578(v60, &qword_2806C9BE0, &qword_26EF3D3C0);
  LOBYTE(v93) = v59;
  v62 = sub_26EF3AC8C();
  v83 = &v68;
  v64 = MEMORY[0x28223BE20](v62, v63);
  MEMORY[0x28223BE20](v64, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D88, &qword_26EF3D498);
  sub_26EE1E404();
  sub_26EE12538();
  sub_26EE154C8(&qword_2806C6D98, &qword_2806C6D88, &qword_26EF3D498);
  v66 = v85;
  sub_26EF3A89C();

  return sub_26EE14578(v66, &qword_2806C6C58, &qword_26EF3D3E8);
}

uint64_t type metadata accessor for RootView()
{
  result = qword_2806CAB90;
  if (!qword_2806CAB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE193F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = VoiceBankingNavigationModel.itemPath.getter();
  *a2 = result;
  return result;
}

uint64_t sub_26EE19424(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return VoiceBankingNavigationModel.itemPath.setter();
}

uint64_t sub_26EE19450(uint64_t a1)
{
  v2 = type metadata accessor for RootView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C88, &qword_26EF3D428);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - v9;
  sub_26EE19CFC();
  sub_26EE202A8(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_26EE1BA40(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C90, &qword_26EF3D430);
  sub_26EE19650();
  sub_26EE19760();
  sub_26EE197B4();
  sub_26EF3A80C();

  return sub_26EE14578(v10, &qword_2806C6C88, &qword_26EF3D428);
}

unint64_t sub_26EE19650()
{
  result = qword_2806C6C98;
  if (!qword_2806C6C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C88, &qword_26EF3D428);
    sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView);
    sub_26EE1970C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6C98);
  }

  return result;
}

unint64_t sub_26EE1970C()
{
  result = qword_2806C6CA8;
  if (!qword_2806C6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CA8);
  }

  return result;
}

unint64_t sub_26EE19760()
{
  result = qword_2806C6CB0;
  if (!qword_2806C6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CB0);
  }

  return result;
}

unint64_t sub_26EE197B4()
{
  result = qword_2806C6CB8;
  if (!qword_2806C6CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C90, &qword_26EF3D430);
    sub_26EE19840();
    sub_26EE19AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CB8);
  }

  return result;
}

unint64_t sub_26EE19840()
{
  result = qword_2806C6CC0;
  if (!qword_2806C6CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6CC8, &qword_26EF3D438);
    sub_26EE198CC();
    sub_26EE199B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CC0);
  }

  return result;
}

unint64_t sub_26EE198CC()
{
  result = qword_2806C6CD0;
  if (!qword_2806C6CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6CD8, &qword_26EF3D440);
    sub_26EE1FCAC(&qword_2806C6CE0, type metadata accessor for ThingsToKnowView);
    sub_26EE1FCAC(&qword_2806C6CE8, type metadata accessor for PhraseStyleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CD0);
  }

  return result;
}

unint64_t sub_26EE199B8()
{
  result = qword_2806C6CF0;
  if (!qword_2806C6CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6CF8, &qword_26EF3D448);
    sub_26EE1FCAC(&qword_2806C6D00, type metadata accessor for CreateVoiceView);
    sub_26EE1FCAC(&qword_2806C6D08, type metadata accessor for LanguagePickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CF0);
  }

  return result;
}

unint64_t sub_26EE19AA4()
{
  result = qword_2806C6D10;
  if (!qword_2806C6D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6D18, &qword_26EF3D450);
    sub_26EE19B30();
    sub_26EE19C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D10);
  }

  return result;
}

unint64_t sub_26EE19B30()
{
  result = qword_2806C6D20;
  if (!qword_2806C6D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6D28, &qword_26EF3D458);
    sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView);
    sub_26EE1FCAC(&qword_2806C6D30, type metadata accessor for PromptView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D20);
  }

  return result;
}

unint64_t sub_26EE19C1C()
{
  result = qword_2806C6D38;
  if (!qword_2806C6D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D38);
  }

  return result;
}

unint64_t sub_26EE19CA8()
{
  result = qword_2806C6D48;
  if (!qword_2806C6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D48);
  }

  return result;
}

uint64_t sub_26EE19CFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA0, &unk_26EF3D4A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for SoundCheckView(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {

    VoiceBankingNavigationModel.initialViewType.getter();

    v25 = v27;
    v26 = v28;
    v23 = 5;
    v24 = 1;
    if (static VBNavigationItem.== infix(_:_:)(&v25, &v23))
    {
      v16 = *(type metadata accessor for RootView() + 28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
      sub_26EF3AB1C();
      v17 = sub_26EE17094();
      sub_26EF02D80(v17 & 1, v10, v15);
      sub_26EE202A8(v15, v5, type metadata accessor for SoundCheckView);
      swift_storeEnumTagMultiPayload();
      sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView);
      sub_26EE1970C();
      sub_26EF3A06C();
      return sub_26EE20310(v15, type metadata accessor for SoundCheckView);
    }

    else
    {
      *v5 = sub_26EECA5F4();
      *(v5 + 1) = v19;
      *(v5 + 2) = v20;
      v5[24] = v21 & 1;
      swift_storeEnumTagMultiPayload();
      sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView);
      sub_26EE1970C();
      return sub_26EF3A06C();
    }
  }

  else
  {
    v22 = *(v0 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE1A044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a2;
  v121 = a1;
  v125 = a3;
  v113 = type metadata accessor for PromptView();
  v3 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113, v4);
  v112 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E08, &qword_26EF3D568);
  v6 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120, v7);
  v9 = v96 - v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E10, &qword_26EF3D570);
  v10 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105, v11);
  v111 = v96 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D28, &qword_26EF3D458);
  v13 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122, v14);
  v114 = v96 - v15;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D18, &qword_26EF3D450);
  v16 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124, v17);
  v123 = v96 - v18;
  v106 = type metadata accessor for SoundCheckView(0);
  v19 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106, v20);
  v108 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for LanguagePickerView();
  v22 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107, v23);
  v99 = (v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E18, &qword_26EF3D578);
  v25 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102, v26);
  v104 = v96 - v27;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6CF8, &qword_26EF3D448);
  v28 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119, v29);
  v109 = v96 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v101 = v96 - v34;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v35 = *(*(VoiceView - 8) + 64);
  MEMORY[0x28223BE20](VoiceView, v36);
  v98 = (v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = type metadata accessor for PhraseStyleView();
  v38 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100, v39);
  v97 = v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E20, &qword_26EF3D580);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41, v43);
  v45 = v96 - v44;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E28, &qword_26EF3D588);
  v46 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115, v47);
  v117 = v96 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E30, &qword_26EF3D590);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49, v51);
  v53 = v96 - v52;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6CD8, &qword_26EF3D440);
  v54 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116, v55);
  v57 = v96 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6CC8, &qword_26EF3D438);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58, v60);
  v118 = v96 - v61;
  v62 = type metadata accessor for ThingsToKnowView();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62, v64);
  v66 = (v96 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = *v121;
  if (*(v121 + 8) != 1)
  {
    sub_26EE82254(v67, v141);
    v129 = v141[2];
    v130 = v141[3];
    v131 = v141[4];
    v132 = v141[5];
    v127 = v141[0];
    v128 = v141[1];
    v126 = 0;
    v133 = 0;
    sub_26EE201F8(v141, &v134);
    sub_26EE19CA8();
    sub_26EF3A06C();
    v74 = v139;
    *(v9 + 4) = v138;
    *(v9 + 5) = v74;
    v9[96] = v140;
    v75 = v135;
    *v9 = v134;
    *(v9 + 1) = v75;
    v76 = v137;
    *(v9 + 2) = v136;
    *(v9 + 3) = v76;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19B30();
    sub_26EE19C1C();
    v77 = v123;
    sub_26EF3A06C();
    sub_26EE13B88(v77, v45, &qword_2806C6D18, &qword_26EF3D450);
    swift_storeEnumTagMultiPayload();
    sub_26EE19840();
    sub_26EE19AA4();
    sub_26EF3A06C();
    sub_26EE20254(v141);
    v78 = v77;
    return sub_26EE14578(v78, &qword_2806C6D18, &qword_26EF3D450);
  }

  v96[1] = v41;
  v121 = v58;
  if (v67 <= 4)
  {
    if (v67 > 1)
    {
      if (v67 == 2)
      {
        v89 = v97;
        sub_26EF347E0(v97);
        sub_26EE202A8(v89, v53, type metadata accessor for PhraseStyleView);
        swift_storeEnumTagMultiPayload();
        sub_26EE1FCAC(&qword_2806C6CE0, type metadata accessor for ThingsToKnowView);
        sub_26EE1FCAC(&qword_2806C6CE8, type metadata accessor for PhraseStyleView);
        sub_26EF3A06C();
        sub_26EE13B88(v57, v117, &qword_2806C6CD8, &qword_26EF3D440);
        swift_storeEnumTagMultiPayload();
        sub_26EE198CC();
        sub_26EE199B8();
        v90 = v118;
        sub_26EF3A06C();
        sub_26EE14578(v57, &qword_2806C6CD8, &qword_26EF3D440);
        sub_26EE13B88(v90, v45, &qword_2806C6CC8, &qword_26EF3D438);
        swift_storeEnumTagMultiPayload();
        sub_26EE19840();
        sub_26EE19AA4();
        sub_26EF3A06C();
        sub_26EE14578(v90, &qword_2806C6CC8, &qword_26EF3D438);
        return sub_26EE20310(v89, type metadata accessor for PhraseStyleView);
      }

      v68 = v45;
      if (v67 == 3)
      {
        v69 = *(type metadata accessor for RootView() + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
        v70 = v101;
        sub_26EF3AB1C();
        sub_26EEBD4D8();
        sub_26EE17094();
        sub_26EE17094();
        v66 = v98;
        sub_26EEBD4E4(v70, v98);
        sub_26EE202A8(v66, v104, type metadata accessor for CreateVoiceView);
        swift_storeEnumTagMultiPayload();
        sub_26EE1FCAC(&qword_2806C6D00, type metadata accessor for CreateVoiceView);
        sub_26EE1FCAC(&qword_2806C6D08, type metadata accessor for LanguagePickerView);
        v71 = v109;
        sub_26EF3A06C();
        sub_26EE13B88(v71, v117, &qword_2806C6CF8, &qword_26EF3D448);
        swift_storeEnumTagMultiPayload();
        sub_26EE198CC();
        sub_26EE199B8();
        v72 = v118;
        sub_26EF3A06C();
        sub_26EE14578(v71, &qword_2806C6CF8, &qword_26EF3D448);
        sub_26EE13B88(v72, v68, &qword_2806C6CC8, &qword_26EF3D438);
        swift_storeEnumTagMultiPayload();
        sub_26EE19840();
        sub_26EE19AA4();
        sub_26EF3A06C();
        sub_26EE14578(v72, &qword_2806C6CC8, &qword_26EF3D438);
        v73 = type metadata accessor for CreateVoiceView;
      }

      else
      {
        v66 = v99;
        sub_26EEB359C(v99);
        sub_26EE202A8(v66, v104, type metadata accessor for LanguagePickerView);
        swift_storeEnumTagMultiPayload();
        sub_26EE1FCAC(&qword_2806C6D00, type metadata accessor for CreateVoiceView);
        sub_26EE1FCAC(&qword_2806C6D08, type metadata accessor for LanguagePickerView);
        v93 = v109;
        sub_26EF3A06C();
        sub_26EE13B88(v93, v117, &qword_2806C6CF8, &qword_26EF3D448);
        swift_storeEnumTagMultiPayload();
        sub_26EE198CC();
        sub_26EE199B8();
        v94 = v118;
        sub_26EF3A06C();
        sub_26EE14578(v93, &qword_2806C6CF8, &qword_26EF3D448);
        sub_26EE13B88(v94, v68, &qword_2806C6CC8, &qword_26EF3D438);
        swift_storeEnumTagMultiPayload();
        sub_26EE19840();
        sub_26EE19AA4();
        sub_26EF3A06C();
        sub_26EE14578(v94, &qword_2806C6CC8, &qword_26EF3D438);
        v73 = type metadata accessor for LanguagePickerView;
      }

      return sub_26EE20310(v66, v73);
    }

    v79 = v123;
    if (v67)
    {
      sub_26EED0904(v66);
      sub_26EE202A8(v66, v53, type metadata accessor for ThingsToKnowView);
      swift_storeEnumTagMultiPayload();
      sub_26EE1FCAC(&qword_2806C6CE0, type metadata accessor for ThingsToKnowView);
      sub_26EE1FCAC(&qword_2806C6CE8, type metadata accessor for PhraseStyleView);
      sub_26EF3A06C();
      sub_26EE13B88(v57, v117, &qword_2806C6CD8, &qword_26EF3D440);
      swift_storeEnumTagMultiPayload();
      sub_26EE198CC();
      sub_26EE199B8();
      v95 = v118;
      sub_26EF3A06C();
      sub_26EE14578(v57, &qword_2806C6CD8, &qword_26EF3D440);
      sub_26EE13B88(v95, v45, &qword_2806C6CC8, &qword_26EF3D438);
      swift_storeEnumTagMultiPayload();
      sub_26EE19840();
      sub_26EE19AA4();
      sub_26EF3A06C();
      sub_26EE14578(v95, &qword_2806C6CC8, &qword_26EF3D438);
      v73 = type metadata accessor for ThingsToKnowView;
      return sub_26EE20310(v66, v73);
    }

    goto LABEL_12;
  }

  v79 = v123;
  if ((v67 - 7) < 2)
  {
LABEL_12:
    LOBYTE(v141[0]) = 1;
    v133 = 1;
    sub_26EE19CA8();
    sub_26EF3A06C();
    v86 = v139;
    *(v9 + 4) = v138;
    *(v9 + 5) = v86;
    v9[96] = v140;
    v87 = v135;
    *v9 = v134;
    *(v9 + 1) = v87;
    v88 = v137;
    *(v9 + 2) = v136;
    *(v9 + 3) = v88;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19B30();
    sub_26EE19C1C();
    sub_26EF3A06C();
    sub_26EE13B88(v79, v45, &qword_2806C6D18, &qword_26EF3D450);
    swift_storeEnumTagMultiPayload();
    sub_26EE19840();
    sub_26EE19AA4();
    sub_26EF3A06C();
    v78 = v79;
    return sub_26EE14578(v78, &qword_2806C6D18, &qword_26EF3D450);
  }

  if (v67 == 5)
  {
    v80 = *(type metadata accessor for RootView() + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
    v81 = v101;
    sub_26EF3AB1C();
    v82 = sub_26EE17094();
    v83 = v108;
    sub_26EF02D80(v82 & 1, v81, v108);
    sub_26EE202A8(v83, v111, type metadata accessor for SoundCheckView);
    swift_storeEnumTagMultiPayload();
    sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView);
    sub_26EE1FCAC(&qword_2806C6D30, type metadata accessor for PromptView);
    v84 = v114;
    sub_26EF3A06C();
    sub_26EE13B88(v84, v9, &qword_2806C6D28, &qword_26EF3D458);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19B30();
    sub_26EE19C1C();
    sub_26EF3A06C();
    sub_26EE14578(v84, &qword_2806C6D28, &qword_26EF3D458);
    sub_26EE13B88(v79, v45, &qword_2806C6D18, &qword_26EF3D450);
    swift_storeEnumTagMultiPayload();
    sub_26EE19840();
    sub_26EE19AA4();
    sub_26EF3A06C();
    sub_26EE14578(v79, &qword_2806C6D18, &qword_26EF3D450);
    return sub_26EE20310(v108, type metadata accessor for SoundCheckView);
  }

  else
  {
    v91 = v112;
    sub_26EF30DA4(v112);
    sub_26EE202A8(v91, v111, type metadata accessor for PromptView);
    swift_storeEnumTagMultiPayload();
    sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView);
    sub_26EE1FCAC(&qword_2806C6D30, type metadata accessor for PromptView);
    v92 = v114;
    sub_26EF3A06C();
    sub_26EE13B88(v92, v9, &qword_2806C6D28, &qword_26EF3D458);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19B30();
    sub_26EE19C1C();
    sub_26EF3A06C();
    sub_26EE14578(v92, &qword_2806C6D28, &qword_26EF3D458);
    sub_26EE13B88(v79, v45, &qword_2806C6D18, &qword_26EF3D450);
    swift_storeEnumTagMultiPayload();
    sub_26EE19840();
    sub_26EE19AA4();
    sub_26EF3A06C();
    sub_26EE14578(v79, &qword_2806C6D18, &qword_26EF3D450);
    return sub_26EE20310(v112, type metadata accessor for PromptView);
  }
}

uint64_t sub_26EE1B4AC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_26EF39DDC();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[9] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v1[10] = v6;
  v1[11] = v5;

  return MEMORY[0x2822009F8](sub_26EE1B5A0, v6, v5);
}

uint64_t sub_26EE1B5A0()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  *(v0 + 96) = *v1;
  LODWORD(v1) = *(v1 + 8);
  *(v0 + 120) = v1;
  if (v1 == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 16);
  }

  *(v0 + 104) = v3;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_26EE1B6FC;

  return VoiceBankingSession.updateAvailableLanguagesIfNeccessary()();
}

uint64_t sub_26EE1B6FC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE1B83C, v5, v4);
}

uint64_t sub_26EE1B83C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = *(v0 + 96);
  if (v1 == 1)
  {
    v5 = v2;
    sub_26EED366C(3);

    v6 = v4;
  }

  else
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v4, 0);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v12 = *(v0 + 24);
    sub_26EED366C(3);

    sub_26EF3B46C();
    v13 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v4, 0);
    v11(v7, v9);
    v6 = *(v0 + 32);
  }

  v14 = *(v0 + 64);
  v15._object = 0x800000026EF45330;
  v15._countAndFlagsBits = 0xD000000000000016;
  VoiceBankingSession.keepScreenAwake(forReason:)(v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26EE1BA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE1BAA4()
{
  v2 = *(type metadata accessor for RootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE1B4AC(v0 + v3);
}

void sub_26EE1BB70()
{
  v1 = *(type metadata accessor for RootView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 32);
  if (v3)
  {
    v5 = v3;
    sub_26EF1DD1C();
  }

  else
  {
    v4 = *(v2 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EE1FCAC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EE1BC58(uint64_t a1)
{
  v2 = sub_26EF389FC();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_26EF38A2C();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v38, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v37 - v18;
  v20 = sub_26EF3883C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RootView();
  v26 = *(v37 + 32);
  v42 = a1;
  v27 = (a1 + v26);
  v29 = *v27;
  v28 = v27[1];
  v43[0] = v29;
  v43[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
  sub_26EF3AAFC();
  sub_26EF3947C();

  sub_26EF3B57C();

  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  sub_26EF3948C();
  __swift_destroy_boxed_opaque_existential_1(v43);
  v30 = sub_26EE27DAC();
  (*(v21 + 16))(v25, v30, v20);
  v31 = sub_26EF3881C();
  v32 = sub_26EF3B47C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_26EE01000, v31, v32, "RootView: Training script did not download within 15 minutes, alerting user.", v33, 2u);
    MEMORY[0x2743842A0](v33, -1, -1);
  }

  (*(v21 + 8))(v25, v20);
  (*(v6 + 104))(v10, *MEMORY[0x277D704E0], v38);
  (*(v40 + 104))(v39, *MEMORY[0x277D704B0], v41);
  sub_26EF38A5C();
  v34 = sub_26EF38A4C();
  (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
  v35 = *(v37 + 28);
  sub_26EE13B88(v19, v16, &qword_2806C9BE0, &qword_26EF3D3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AB0C();
  return sub_26EE14578(v19, &qword_2806C9BE0, &qword_26EF3D3C0);
}

uint64_t sub_26EE1C0B8()
{
  v1 = *(type metadata accessor for RootView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EE1BC58(v2);
}

uint64_t sub_26EE1C118(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_26EF3883C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26EE9C28C(*a1, 5u);
  if (result)
  {
    v11 = sub_26EE27DAC();
    (*(v5 + 16))(v9, v11, v4);
    v12 = sub_26EF3881C();
    v13 = sub_26EF3B47C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26EE01000, v12, v13, "RootView: Configuration complete. Invalidating downloadTimer.", v14, 2u);
      MEMORY[0x2743842A0](v14, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v15 = (a2 + *(type metadata accessor for RootView() + 32));
    v17 = *v15;
    v16 = v15[1];
    v19[0] = v17;
    v19[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
    sub_26EF3AAFC();
    sub_26EF3947C();

    sub_26EF3B57C();

    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_26EF3948C();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

uint64_t sub_26EE1C314(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(type metadata accessor for RootView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26EE1C118(a2, v5);
}

unint64_t sub_26EE1C384()
{
  result = qword_2806C6D80;
  if (!qword_2806C6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D80);
  }

  return result;
}

void sub_26EE1C3D8(uint64_t a1)
{
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(a1 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {
    v10 = *a1;

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v8, 0);
    (*(v3 + 8))(v7, v2);
    v9 = v16[1];
  }

  v12._object = 0x800000026EF45330;
  v12._countAndFlagsBits = 0xD000000000000016;
  VoiceBankingSession.letScreenSleep(givingUpReason:)(v12);

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = v13;
    sub_26EF1DF0C();
  }

  else
  {
    v15 = *(a1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EE1FCAC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

void sub_26EE1C5C8()
{
  v1 = *(type metadata accessor for RootView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_26EE1C3D8(v2);
}

uint64_t sub_26EE1C628()
{
  v0 = sub_26EF389FC();
  v47 = *(v0 - 8);
  v48 = v0;
  v1 = *(v47 + 64);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v45 = &v45 - v6;
  v7 = sub_26EF38A2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v45 - v20;
  v22 = sub_26EF38A4C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(type metadata accessor for RootView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AAFC();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_26EE14578(v21, &qword_2806C9BE0, &qword_26EF3D3C0);
    return 0;
  }

  else
  {
    (*(v23 + 32))(v27, v21, v22);
    sub_26EF38A3C();
    (*(v8 + 104))(v13, *MEMORY[0x277D70500], v7);
    v30 = MEMORY[0x274380AE0](v16, v13);
    v31 = *(v8 + 8);
    v31(v13, v7);
    v31(v16, v7);
    if (v30)
    {
      v33 = v47;
      v32 = v48;
      v34 = v45;
      (*(v47 + 104))(v45, *MEMORY[0x277D704B0], v48);
      v35 = sub_26EF389CC();
      v37 = v36;
      result = (*(v33 + 8))(v34, v32);
      if (v37)
      {
        (*(v23 + 8))(v27, v22);
        return v35;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v38 = v46;
      sub_26EF38A0C();
      countAndFlagsBits = sub_26EF389CC();
      v41 = v40;
      (*(v47 + 8))(v38, v48);
      if (!v41)
      {
        v42 = sub_26EE17094();
        v43._object = 0x800000026EF45290;
        v44 = v42 & 1;
        v43._countAndFlagsBits = 0xD00000000000001DLL;
        countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v43, v44, countAndFlagsBits)._countAndFlagsBits;
      }

      (*(v23 + 8))(v27, v22);
      return countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_26EE1CA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_26EF39B4C();
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RootView();
  v8 = v7 - 8;
  v92 = *(v7 - 8);
  v9 = *(v92 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v85 = v11;
  v86 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v88 = *(v91 - 8);
  v12 = *(v88 + 64);
  v14 = MEMORY[0x28223BE20](v91, v13);
  v89 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v87 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A80, &qword_26EF3D530);
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v77 - v21;
  v23 = sub_26EF389FC();
  v81 = *(v23 - 8);
  v82 = v23;
  v24 = *(v81 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26EF38A4C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = &v77 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DE0, &qword_26EF3D538);
  v40 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v39 - 8, v41);
  v44 = &v77 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v77 - v46;
  v48 = *(v8 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AAFC();
  if ((*(v29 + 48))(v38, 1, v28))
  {
    sub_26EE14578(v38, &qword_2806C9BE0, &qword_26EF3D3C0);
  }

  else
  {
    (*(v29 + 16))(v33, v38, v28);
    sub_26EE14578(v38, &qword_2806C9BE0, &qword_26EF3D3C0);
    sub_26EF38A0C();
    (*(v29 + 8))(v33, v28);
    v56 = sub_26EF389DC();
    v58 = v57;
    (*(v81 + 8))(v27, v82);
    if (v58)
    {
      v93 = v56;
      v94 = v58;
      v50 = a1;
      v53 = v86;
      sub_26EE202A8(a1, v86, type metadata accessor for RootView);
      v59 = (*(v92 + 80) + 16) & ~*(v92 + 80);
      v60 = swift_allocObject();
      sub_26EE1BA40(v53, v60 + v59);
      sub_26EE12538();
      v52 = v87;
      sub_26EF3AB7C();
      v61 = v78;
      sub_26EF39B3C();
      sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
      v82 = v44;
      v62 = v91;
      sub_26EF3A77C();
      (*(v79 + 8))(v61, v80);
      v51 = v88;
      v63 = v62;
      v44 = v82;
      (*(v88 + 8))(v52, v63);
      v55 = v83;
      v64 = v84;
      (*(v83 + 32))(v47, v22, v84);
      v54 = v64;
      v49 = 0;
      goto LABEL_6;
    }
  }

  v49 = 1;
  v50 = a1;
  v52 = v87;
  v51 = v88;
  v53 = v86;
  v55 = v83;
  v54 = v84;
LABEL_6:
  v65 = (*(v55 + 56))(v47, v49, 1, v54);
  v93 = sub_26EE1DDC4(v65);
  v94 = v66;
  sub_26EE202A8(v50, v53, type metadata accessor for RootView);
  v67 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v68 = swift_allocObject();
  sub_26EE1BA40(v53, v68 + v67);
  sub_26EE12538();
  sub_26EF3AB7C();
  sub_26EE1F9BC(v47, v44);
  v69 = *(v51 + 16);
  v70 = v89;
  v71 = v44;
  v72 = v91;
  v69(v89, v52, v91);
  v73 = v90;
  sub_26EE1F9BC(v71, v90);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DE8, &unk_26EF3D540);
  v69((v73 + *(v74 + 48)), v70, v72);
  v75 = *(v51 + 8);
  v75(v52, v72);
  sub_26EE14578(v47, &qword_2806C6DE0, &qword_26EF3D538);
  v75(v70, v72);
  return sub_26EE14578(v71, &qword_2806C6DE0, &qword_26EF3D538);
}

uint64_t sub_26EE1D274(uint64_t a1)
{
  v60 = sub_26EF3AF7C();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v60, v4);
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_26EF3AFAC();
  v64 = *(v66 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v66, v7);
  v63 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_26EF3AFCC();
  v62 = *(v67 - 8);
  v9 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v67, v10);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v61 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v53 - v27;
  v29 = sub_26EF37DCC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v58 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  if (*(a1 + 16))
  {
    v36 = &v53 - v35;

    VoiceBankingNavigationModel.dismissSheet()();

    sub_26EE1D9D4(v28);
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      return sub_26EE14578(v28, &qword_2806C6840, &qword_26EF3CD50);
    }

    else
    {
      v55 = v36;
      v56 = v2;
      v53 = *(v30 + 32);
      v57 = v29;
      v53(v36, v28, v29);
      v38 = sub_26EF38A4C();
      (*(*(v38 - 8) + 56))(v23, 1, 1, v38);
      v39 = *(type metadata accessor for RootView() + 28);
      sub_26EE13B88(v23, v20, &qword_2806C9BE0, &qword_26EF3D3C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
      sub_26EF3AB0C();
      sub_26EE14578(v23, &qword_2806C9BE0, &qword_26EF3D3C0);
      sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
      v54 = sub_26EF3B54C();
      v40 = v59;
      sub_26EF3AFBC();
      v41 = v61;
      sub_26EF3AFEC();
      v62 = *(v62 + 8);
      (v62)(v40, v67);
      v42 = v58;
      v43 = v36;
      v44 = v57;
      (*(v30 + 16))(v58, v43, v57);
      v45 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v46 = swift_allocObject();
      v53((v46 + v45), v42, v44);
      aBlock[4] = sub_26EE1FB88;
      aBlock[5] = v46;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26EE1DD80;
      aBlock[3] = &block_descriptor;
      v47 = _Block_copy(aBlock);

      v48 = v63;
      sub_26EF3AF8C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26EE1FCAC(&unk_2806C9E30, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF0, &qword_26EF3D550);
      sub_26EE154C8(&qword_2806C9E40, &qword_2806C6DF0, &qword_26EF3D550);
      v49 = v65;
      v50 = v60;
      sub_26EF3B68C();
      v51 = v54;
      MEMORY[0x2743835E0](v41, v48, v49, v47);
      _Block_release(v47);

      (*(v56 + 8))(v49, v50);
      (*(v64 + 8))(v48, v66);
      (v62)(v41, v67);
      return (*(v30 + 8))(v55, v57);
    }
  }

  else
  {
    v52 = *(a1 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE1D9D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF389FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = sub_26EF38A4C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for RootView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AAFC();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26EE14578(v12, &qword_2806C9BE0, &qword_26EF3D3C0);
    v20 = sub_26EF37DCC();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    sub_26EF38A0C();
    v22 = (*(v3 + 88))(v7, v2);
    v23 = v22 == *MEMORY[0x277D704C8] || v22 == *MEMORY[0x277D704D0];
    if (v23 || v22 == *MEMORY[0x277D704A8] || v22 == *MEMORY[0x277D704B0] || v22 == *MEMORY[0x277D704C0])
    {
      sub_26EF37DAC();
      return (*(v14 + 8))(v18, v13);
    }

    else
    {
      (*(v14 + 8))(v18, v13);
      v24 = sub_26EF37DCC();
      (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
      return (*(v3 + 8))(v7, v2);
    }
  }
}

uint64_t sub_26EE1DD80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26EE1E1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  if (*(a1 + 16))
  {
    v11 = *(a1 + 16);

    VoiceBankingNavigationModel.dismissSheet()();

    v12 = sub_26EF38A4C();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = *(type metadata accessor for RootView() + 28);
    sub_26EE13B88(v10, v7, &qword_2806C9BE0, &qword_26EF3D3C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
    sub_26EF3AB0C();
    return sub_26EE14578(v10, &qword_2806C9BE0, &qword_26EF3D3C0);
  }

  else
  {
    v15 = *(a1 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE1E3A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_26EE1E514();
  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_26EE1E404()
{
  result = qword_2806C6D90;
  if (!qword_2806C6D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C58, &qword_26EF3D3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C50, &qword_26EF3D3E0);
    sub_26EE154C8(&qword_2806C6D78, &qword_2806C6C50, &qword_26EF3D3E0);
    sub_26EE1C384();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D90);
  }

  return result;
}

void sub_26EE1E514()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = *(v109 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v108 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF389FC();
  v111 = *(v6 - 8);
  v112 = v6;
  v7 = *(v111 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v103 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v106 = &v103 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v105 = &v103 - v15;
  v16 = sub_26EF38A2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v103 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v103 - v29;
  v31 = sub_26EF38A4C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(type metadata accessor for RootView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  v107 = v1;
  sub_26EF3AAFC();
  v38 = v31;
  v39 = v32;
  if ((*(v32 + 48))(v30, 1, v38) == 1)
  {
    sub_26EE14578(v30, &qword_2806C9BE0, &qword_26EF3D3C0);
    return;
  }

  v40 = *(v32 + 32);
  v104 = v38;
  v40(v36, v30, v38);
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  sub_26EF38A3C();
  (*(v17 + 104))(v22, *MEMORY[0x277D70500], v16);
  v41 = MEMORY[0x274380AE0](v25, v22);
  v42 = *(v17 + 8);
  v42(v22, v16);
  v42(v25, v16);
  if (v41)
  {
    v43 = v32;
    v45 = v111;
    v44 = v112;
    v46 = v105;
    (*(v111 + 104))(v105, *MEMORY[0x277D704B0], v112);
    sub_26EF389EC();
    v48 = v47;
    (*(v45 + 8))(v46, v44);
    if (!v48)
    {
LABEL_38:
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_26EF3C6B0;
    v50 = *v107;
    v51 = *(v107 + 8);
    if (v51 == 1)
    {
      v52 = v50;
    }

    else
    {
      v63 = *v107;

      sub_26EF3B46C();
      v64 = sub_26EF3A36C();
      sub_26EF3880C();

      v65 = v108;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v50, 0);
      (*(v109 + 8))(v65, v110);
      v52 = v113;
    }

    v66 = *&v52[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager];

    v67 = sub_26EF388BC();
    v68 = sub_26EF38EAC();

    v69 = sub_26EF3928C();
    if (v51)
    {
      v113 = v50;
      v70 = v50;
    }

    else
    {

      sub_26EF3B46C();
      v71 = sub_26EF3A36C();
      sub_26EF3880C();

      v72 = v108;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v50, 0);
      (*(v109 + 8))(v72, v110);
    }

    v73 = objc_opt_self();
    v74 = v113;
    v75 = VoiceBankingSession.trainingAssetSize.getter();

    v76 = v69 + v75;
    if (!__OFADD__(v69, v75))
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v53 = v106;
  sub_26EF38A0C();
  sub_26EF389EC();
  v55 = v54;
  v56 = v111;
  v57 = *(v111 + 8);
  v58 = v53;
  v59 = v112;
  v57(v58, v112);
  if (!v55)
  {
LABEL_14:
    v62 = 0xE000000000000000;
    goto LABEL_31;
  }

  v60 = v103;
  sub_26EF38A0C();
  v61 = (*(v56 + 88))(v60, v59);
  if (v61 != *MEMORY[0x277D704C8] && v61 != *MEMORY[0x277D704D0] && v61 != *MEMORY[0x277D704A8] && v61 != *MEMORY[0x277D704B0] && v61 != *MEMORY[0x277D704C0])
  {

    v57(v60, v59);
    goto LABEL_14;
  }

  v43 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_26EF3C6B0;
  v77 = *v107;
  v78 = *(v107 + 8);
  if (v78 == 1)
  {
    v79 = v77;
  }

  else
  {
    v80 = *v107;

    sub_26EF3B46C();
    v81 = sub_26EF3A36C();
    sub_26EF3880C();

    v82 = v108;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v77, 0);
    (*(v109 + 8))(v82, v110);
    v79 = v113;
  }

  v83 = *&v79[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager];

  v84 = sub_26EF388BC();
  v85 = sub_26EF38EAC();

  v86 = sub_26EF3928C();
  if (v78)
  {
    v113 = v77;
    v87 = v77;
  }

  else
  {

    sub_26EF3B46C();
    v88 = sub_26EF3A36C();
    sub_26EF3880C();

    v89 = v108;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v77, 0);
    (*(v109 + 8))(v89, v110);
  }

  v73 = objc_opt_self();
  v90 = v113;
  v91 = VoiceBankingSession.trainingAssetSize.getter();

  v76 = v86 + v91;
  if (__OFADD__(v86, v91))
  {
    goto LABEL_37;
  }

LABEL_28:
  v92 = [v73 stringFromByteCount:v76 countStyle:0];
  v93 = sub_26EF3B0FC();
  v95 = v94;

  *(v49 + 56) = MEMORY[0x277D837D0];
  *(v49 + 64) = sub_26EE1EFBC();
  *(v49 + 32) = v93;
  *(v49 + 40) = v95;
  v96 = sub_26EF3B10C();
  v62 = v97;

  v115._countAndFlagsBits = v96;
  v115._object = v62;
  v39 = v43;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v98 = v96 & 0xFFFFFFFFFFFFLL;
    v99 = v104;
    if (!v98)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

LABEL_31:
  v99 = v104;
  if ((v62 & 0xF00000000000000) == 0)
  {
LABEL_32:

    v100 = sub_26EE17094();
    v101._countAndFlagsBits = 0xD000000000000023;
    v101._object = 0x800000026EF45300;
    v115 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v101, v100 & 1, 0);
  }

LABEL_33:
  if (TTSVBIsInternalUIBuild())
  {
    v113 = 0;
    v114 = 0xE000000000000000;
    sub_26EF3B70C();

    v113 = 0xD000000000000012;
    v114 = 0x800000026EF452E0;
    v102 = sub_26EF389AC();
    MEMORY[0x274383240](v102);

    MEMORY[0x274383240](v113, v114);
    v99 = v104;
  }

  (*(v39 + 8))(v36, v99);
}

unint64_t sub_26EE1EFBC()
{
  result = qword_2806C6DB8;
  if (!qword_2806C6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6DB8);
  }

  return result;
}

uint64_t sub_26EE1F010@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C30, &qword_26EF3D3D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v30 - v14;
  type metadata accessor for VoiceBankingSession();
  sub_26EE1FCAC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a1 = sub_26EF3973C();
  *(a1 + 8) = v16 & 1;
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *(a1 + 16) = sub_26EF39C1C();
  *(a1 + 24) = v17;
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE1FCAC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  *(a1 + 32) = sub_26EF39C1C();
  *(a1 + 40) = v18;
  v19 = type metadata accessor for RootView();
  v20 = *(v19 + 28);
  v21 = sub_26EF38A4C();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_26EE13B88(v15, v12, &qword_2806C9BE0, &qword_26EF3D3C0);
  sub_26EF3AAEC();
  sub_26EE14578(v15, &qword_2806C9BE0, &qword_26EF3D3C0);
  v22 = (a1 + *(v19 + 32));
  sub_26EE1FAB8(0, &qword_2806C6C38, 0x277CBEBB8);
  v23 = [objc_opt_self() mainRunLoop];
  v24 = *MEMORY[0x277CBE738];
  v25 = sub_26EF3B5BC();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  v26 = sub_26EF3B59C();

  sub_26EE14578(v6, &qword_2806C6C30, &qword_26EF3D3D0);
  v31 = v26;
  sub_26EF3B58C();
  sub_26EE1FCAC(&qword_2806C6C40, MEMORY[0x277CC9DF0]);
  v27 = sub_26EF394CC();

  v30[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C28, &qword_26EF3D3C8);
  result = sub_26EF3AAEC();
  v29 = v32;
  *v22 = v31;
  v22[1] = v29;
  return result;
}

uint64_t sub_26EE1F440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26EE1F520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_26EE1F5E8()
{
  sub_26EE1F6E4();
  if (v0 <= 0x3F)
  {
    sub_26EE1F73C();
    if (v1 <= 0x3F)
    {
      sub_26EE1F7D0();
      if (v2 <= 0x3F)
      {
        sub_26EE1F864(319, &qword_2806C6DD0, &qword_2806C9BE0, &qword_26EF3D3C0);
        if (v3 <= 0x3F)
        {
          sub_26EE1F864(319, &qword_2806C6DD8, &qword_2806C6C28, &qword_26EF3D3C8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26EE1F6E4()
{
  if (!qword_2806C66B0)
  {
    type metadata accessor for VoiceBankingSession();
    v0 = sub_26EF3972C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C66B0);
    }
  }
}

void sub_26EE1F73C()
{
  if (!qword_2806C6DC0)
  {
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    v0 = sub_26EF39C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C6DC0);
    }
  }
}

void sub_26EE1F7D0()
{
  if (!qword_2806C6DC8)
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EE1FCAC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    v0 = sub_26EF39C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C6DC8);
    }
  }
}

void sub_26EE1F864(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26EF3AB2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26EE1F8B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C58, &qword_26EF3D3E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6D88, &qword_26EF3D498);
  sub_26EE1E404();
  sub_26EE12538();
  sub_26EE154C8(&qword_2806C6D98, &qword_2806C6D88, &qword_26EF3D498);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EE1F9BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DE0, &qword_26EF3D538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE1FA44(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RootView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26EE1FAB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26EE1FB00()
{
  v1 = sub_26EF37DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26EE1FB88()
{
  v0 = *(*(sub_26EF37DCC() - 8) + 80);
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v1 = sub_26EF37D7C();
    sub_26EE1FE24(MEMORY[0x277D84F90]);
    v2 = sub_26EF3B01C();

    [v3 openSensitiveURL:v1 withOptions:v2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EE1FCAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE1FCF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26EF3B87C();
  sub_26EF3B16C();
  v6 = sub_26EF3B8CC();

  return sub_26EE1FD6C(a1, a2, v6);
}

unint64_t sub_26EE1FD6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26EF3B82C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26EE1FE24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF8, &qword_26EF3D558);
    v3 = sub_26EF3B7CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26EE13B88(v4, &v13, &qword_2806C6E00, &qword_26EF3D560);
      v5 = v13;
      v6 = v14;
      result = sub_26EE1FCF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26EE1FF54(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_26EE1FF54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for RootView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));
  v5 = *(v0 + v4 + 16);

  v6 = v0 + v4 + *(v1 + 28);
  v7 = sub_26EF38A4C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v9 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470) + 28));

  v10 = (v0 + v4 + *(v1 + 32));
  v11 = *v10;

  v12 = v10[1];

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_26EE20178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RootView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26EE1A044(a1, v6, a2);
}

uint64_t sub_26EE202A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE20310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Binding.with(changeHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v24 = a2;
  v25 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v21 - v10;
  v21[0] = *(v6 + 16);
  (v21[0])(v21 - v10, v4);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  v14 = *(a3 + 16);
  *(v13 + 4) = v14;
  v15 = *(v6 + 32);
  v15(&v13[v12], v11, a3);
  v16 = v22;
  (v21[0])(v22, v21[1], a3);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v14;
  v15(&v17[v12], v16, a3);
  v18 = &v17[(v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8];
  v19 = v24;
  *v18 = v23;
  *(v18 + 1) = v19;

  return sub_26EF3AC7C();
}

uint64_t sub_26EE20588()
{
  v1 = *(v0 + 32);
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + v4);

  v8 = *(v0 + v4 + 8);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE20688()
{
  v1 = *(v0 + 32);
  v2 = *(*(sub_26EF3AC9C() - 8) + 80);
  return MEMORY[0x274382CF0]();
}

uint64_t sub_26EE206F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v17 - v14;
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  (*(v8 + 16))(v12, a1, a5);
  sub_26EF3AC3C();
  a3(a1, v15);
  return (*(v8 + 8))(v15, a5);
}

uint64_t sub_26EE20840()
{
  v1 = *(v0 + 32);
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = (v0 + v4);
  v8 = *v7;

  v9 = *(v7 + 1);

  (*(*(v1 - 8) + 8))(&v7[v2[10]], v1);
  v10 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26EE20950(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(sub_26EF3AC9C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_26EE206F0(a1, v1 + v5, v7, v8, v3);
}

uint64_t Binding.mapped<A>(_:set:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a1;
  v35 = a6;
  v36 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a7;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v27 - v12;
  v14 = *(v8 + 16);
  v14(&v27 - v12, v16, v15);
  v17 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v28 = *(a5 + 16);
  v19 = v35;
  *(v18 + 4) = v28;
  *(v18 + 5) = v19;
  v20 = v36;
  *(v18 + 6) = v31;
  *(v18 + 7) = v20;
  v31 = *(v8 + 32);
  v31(&v18[v17], v13, a5);
  v21 = v29;
  v14(v29, v30, a5);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v35;
  *(v22 + 4) = v28;
  *(v22 + 5) = v23;
  v25 = v32;
  v24 = v33;
  *(v22 + 6) = v32;
  *(v22 + 7) = v24;
  v31(&v22[v17], v21, a5);

  sub_26EE21114(v25);
  return sub_26EF3AC7C();
}