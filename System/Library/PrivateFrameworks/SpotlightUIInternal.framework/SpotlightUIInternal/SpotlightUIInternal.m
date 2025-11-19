void lockStateChanged_0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D4C898];
  v4 = [v2 view];
  v5 = [v3 deviceIsAuthenticatedForView:v4];

  v6 = [v2 spotlightIsVisible];
  if (v5)
  {
    if (([v2 lastQueryWasAuthenticated] & 1) == 0)
    {
      v7 = [v2 navigationController];
      v8 = [v7 _appearState];

      if (v8)
      {
        if ([v2 spotlightIsVisible])
        {
          v9 = [v2 navigationController];
          v10 = [v9 topViewController];

          if (v10 == v2)
          {
            v11 = [v2 searchHeader];
            [v11 triggerSearchForUnlock];
          }
        }
      }
    }
  }

  else
  {
    v12 = v6;
    v13 = MEMORY[0x277D65D40];
    v14 = *MEMORY[0x277D65D40];
    if (!*MEMORY[0x277D65D40])
    {
      SPUIInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_26B837000, v14, OS_LOG_TYPE_DEFAULT, "clearing since we are no longer authenticated", v15, 2u);
    }

    [v2 clearSearchResultsAndFetchZKW:v12 resetZKW:1];
  }
}

void sub_26B83A748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B83BC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
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

uint64_t sub_26B8413D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BF0, &qword_26B867358);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_26B84148C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BF0, &qword_26B867358);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B841540()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B84157C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C08, &qword_26B867378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26B844EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B84DB18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26B84DC8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void HardwareKeyboardAvailabilityChanged(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __HardwareKeyboardAvailabilityChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t homeScreenPrefChanged(uint64_t a1, void *a2)
{
  v3 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B837000, v3, OS_LOG_TYPE_DEFAULT, "toggling zkw pref", v5, 2u);
  }

  return [a2 _refreshRequested];
}

void sub_26B8570E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t PS_PSKillProcessNamed()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPSKillProcessNamedSymbolLoc_ptr;
  v6 = getPSKillProcessNamedSymbolLoc_ptr;
  if (!getPSKillProcessNamedSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getPSKillProcessNamedSymbolLoc_block_invoke;
    v2[3] = &unk_279D07528;
    v2[4] = &v3;
    __getPSKillProcessNamedSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    PS_PSKillProcessNamed_cold_1();
  }

  return v0(@"parsecd");
}

void sub_26B85B838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B85C72C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26B85CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B85D3B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26B85D614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B85D8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B85E694(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void *__getPSKillProcessNamedSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PreferencesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PreferencesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279D07548;
    v8 = 0;
    PreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = PreferencesLibraryCore_frameworkLibrary;
    if (PreferencesLibraryCore_frameworkLibrary)
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

  v2 = PreferencesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "PSKillProcessNamed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPSKillProcessNamedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PreferencesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PreferencesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B860A80(uint64_t a1)
{
  v2 = *(*(sub_26B862BE4() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26B862C24();
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

id sub_26B860B90()
{
  type metadata accessor for SPUIFTEView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DCE0B8 = result;
  return result;
}

uint64_t sub_26B860BE4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BC0, &qword_26B867278);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  *v6 = sub_26B862C84();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BC8, &qword_26B867280);
  sub_26B860D6C(v1, &v6[*(v7 + 44)]);
  v8 = sub_26B862CA4();
  KeyPath = swift_getKeyPath();
  v10 = &v6[*(v3 + 36)];
  *v10 = KeyPath;
  v10[1] = v8;
  sub_26B861B50();
  sub_26B862CC4();
  sub_26B8621DC(v6, &qword_280424BC0, &qword_26B867278);
  v11 = objc_opt_self();
  [v11 standardTableCellContentInset];
  v13 = v12;
  [v11 standardTableCellContentInset];
  v15 = v14;
  LOBYTE(v11) = sub_26B862C94();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BE0, &qword_26B8672C8);
  v17 = a1 + *(result + 36);
  *v17 = v11;
  *(v17 + 8) = 0x402E000000000000;
  *(v17 + 16) = v13;
  *(v17 + 24) = 0;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_26B860D6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BF8, &qword_26B867368);
  v67 = *(v68 - 8);
  v2 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v66 = &v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C00, &qword_26B867370);
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v65 = &v65 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C08, &qword_26B867378) - 8) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v77 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v65 - v10;
  v11 = type metadata accessor for FTEView();
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = v13;
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C10, &qword_26B867380);
  v16 = *(v15 - 8);
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C18, &qword_26B867388);
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v84 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  sub_26B862C74();
  if (qword_280DCE040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = qword_280DCE0B8;
  LOWORD(v64) = 256;
  v63 = 0;
  v82 = sub_26B862CB4();
  v83 = v27;
  v72 = v28;
  v71 = v29;
  KeyPath = swift_getKeyPath();
  v30 = v73;
  sub_26B861CC8(v73, v14);
  v31 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v32 = swift_allocObject();
  sub_26B862080(v14, v32 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C20, &qword_26B8673C0);
  sub_26B862148();
  sub_26B862D24();
  sub_26B8623E8(&qword_280DCDE98, &qword_280424C10, &qword_26B867380);
  sub_26B862CD4();
  (*(v16 + 8))(v19, v15);
  v33 = [objc_opt_self() shouldDisplayTapToRadar];
  v34 = 1;
  if (v33)
  {
    v35 = sub_26B862C74();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_26B861CC8(v30, v14);
    v42 = swift_allocObject();
    v43 = sub_26B862080(v14, v42 + v31);
    MEMORY[0x28223BE20](v43);
    *(&v65 - 6) = v35;
    *(&v65 - 5) = v37;
    *(&v65 - 32) = v39 & 1;
    *(&v65 - 3) = v41;
    v63 = 0x6C6C69662E746E61;
    v64 = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280424C30, &qword_26B8673D0);
    sub_26B8623E8(&qword_280DCDEA0, &unk_280424C30, &qword_26B8673D0);
    v44 = v66;
    sub_26B862D24();

    sub_26B8623E8(&qword_280DCDE90, &qword_280424BF8, &qword_26B867368);
    v45 = v65;
    v46 = v68;
    sub_26B862CD4();
    (*(v67 + 8))(v44, v46);
    (*(v79 + 32))(v85, v45, v80);
    v34 = 0;
  }

  v69 = v25;
  v47 = v85;
  (*(v79 + 56))(v85, v34, 1, v80);
  v49 = v75;
  v48 = v76;
  v50 = *(v75 + 16);
  v51 = v84;
  v50(v84, v25, v76);
  v52 = v77;
  sub_26B84157C(v47, v77);
  v53 = v74;
  v54 = v82;
  v55 = v72;
  *v74 = v82;
  v53[1] = v55;
  v56 = v55;
  LODWORD(v80) = v71 & 1;
  *(v53 + 16) = v71 & 1;
  v57 = KeyPath;
  v53[3] = v83;
  v53[4] = v57;
  *(v53 + 40) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424C28, &qword_26B8673C8);
  v50(v53 + *(v58 + 48), v51, v48);
  sub_26B84157C(v52, v53 + *(v58 + 64));
  v59 = v56;
  v60 = v56;
  LOBYTE(v56) = v80;
  sub_26B8621CC(v54, v60, v80);

  sub_26B8621DC(v85, &qword_280424C08, &qword_26B867378);
  v61 = *(v49 + 8);
  v61(v69, v48);
  sub_26B8621DC(v52, &qword_280424C08, &qword_26B867378);
  v61(v84, v48);
  sub_26B86223C(v82, v59, v56);
}

double sub_26B861634@<D0>(uint64_t a1@<X8>)
{
  sub_26B862C74();
  if (qword_280DCE040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DCE0B8;
  v3 = sub_26B862CB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_26B862C94();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = 20.0;
  *(a1 + 56) = xmmword_26B867230;
  *(a1 + 72) = 0;
  return result;
}

id sub_26B861788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FTEView();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v24.receiver - v16);
  *v17 = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v18 = *(v15 + 32);
  *(v17 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BB8, &qword_26B867270);
  swift_storeEnumTagMultiPayload();
  sub_26B861CC8(v17, v14);
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BE8, qword_26B8672D0));
  v20 = sub_26B862C04();
  v24.receiver = v5;
  v24.super_class = SPUIFTEView;
  v21 = objc_msgSendSuper2(&v24, sel_initWithHostedView_, v20);
  v22 = [v21 layer];
  [v22 setAllowsGroupOpacity_];

  sub_26B861D2C(v17);
  return v21;
}

uint64_t sub_26B861A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x282130010](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26B861AF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B862C54();
  *a1 = result;
  return result;
}

uint64_t sub_26B861B24(uint64_t *a1)
{
  v1 = *a1;

  return sub_26B862C64();
}

unint64_t sub_26B861B50()
{
  result = qword_280DCDEB0;
  if (!qword_280DCDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280424BC0, &qword_26B867278);
    sub_26B8623E8(&qword_280DCDE88, &qword_280424BD0, &qword_26B8672B8);
    sub_26B8623E8(&qword_280DCDEA8, &qword_280424BD8, &qword_26B8672C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DCDEB0);
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

uint64_t type metadata accessor for FTEView()
{
  result = qword_280DCDFB0;
  if (!qword_280DCDFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B861CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTEView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B861D2C(uint64_t a1)
{
  v2 = type metadata accessor for FTEView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B861DDC()
{
  sub_26B861E60();
  if (v0 <= 0x3F)
  {
    sub_26B861EB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26B861E60()
{
  result = qword_280DCDE80;
  if (!qword_280DCDE80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DCDE80);
  }

  return result;
}

void sub_26B861EB0()
{
  if (!qword_280DCDEC8[0])
  {
    sub_26B862BE4();
    v0 = sub_26B862BF4();
    if (!v1)
    {
      atomic_store(v0, qword_280DCDEC8);
    }
  }
}

unint64_t type metadata accessor for SPUIFTEView()
{
  result = qword_280DCDFA0;
  if (!qword_280DCDFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DCDFA0);
  }

  return result;
}

unint64_t sub_26B861F54()
{
  result = qword_280DCDEB8;
  if (!qword_280DCDEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280424BE0, &qword_26B8672C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280424BC0, &qword_26B867278);
    sub_26B861B50();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DCDEB8);
  }

  return result;
}

uint64_t sub_26B86202C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B862C34();
  *a1 = result;
  return result;
}

uint64_t sub_26B862080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTEView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B8620E4()
{
  v1 = *(type metadata accessor for FTEView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_26B862148()
{
  result = qword_280DCDEC0;
  if (!qword_280DCDEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280424C20, &qword_26B8673C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DCDEC0);
  }

  return result;
}

uint64_t sub_26B8621CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26B8621DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B86223C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for FTEView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280424BB8, &qword_26B867270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26B862BE4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26B862370()
{
  v1 = *(type metadata accessor for FTEView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 24);
  return (*(v2 + 16))();
}

uint64_t sub_26B8623E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B862434(uint64_t a1)
{
  v2 = sub_26B862BA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = sub_26B862BC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      v17 = v14;
      sub_26B862B84();
      sub_26B862B94();
      (*(v3 + 8))(v10, v2);
      sub_26B862BD4();
      sub_26B862BB4();
      return (*(v12 + 8))(v16, v17);
    }

    sub_26B862B84();
  }

  else
  {
    sub_26B862B84();
    sub_26B862B74();
    v19 = *(v3 + 8);
    v19(v7, v2);
    sub_26B862B94();
    v19(v10, v2);
  }

  return sub_26B862BD4();
}

SPUIViewUtilities __swiftcall SPUIViewUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SPUIViewUtilities()
{
  result = qword_280DCDF98;
  if (!qword_280DCDF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DCDF98);
  }

  return result;
}

void PS_PSKillProcessNamed_cold_1()
{
  dlerror();
  abort_report_np();
  sub_26B862B54();
}