uint64_t __getWFDatabaseLogObject_block_invoke()
{
  getWFDatabaseLogObject_log = os_log_create(WFLogSubsystem, "Database");

  return MEMORY[0x1EEE66BB8]();
}

id getWFDatabaseLogObject()
{
  if (getWFDatabaseLogObject_onceToken != -1)
  {
    dispatch_once(&getWFDatabaseLogObject_onceToken, &__block_literal_global_20);
  }

  v1 = getWFDatabaseLogObject_log;

  return v1;
}

id getWFCoherenceLogObject()
{
  if (getWFCoherenceLogObject_onceToken != -1)
  {
    dispatch_once(&getWFCoherenceLogObject_onceToken, &__block_literal_global_128);
  }

  v1 = getWFCoherenceLogObject_log;

  return v1;
}

uint64_t __getWFCoherenceLogObject_block_invoke()
{
  getWFCoherenceLogObject_log = os_log_create(WFLogSubsystem, "Coherence");

  return MEMORY[0x1EEE66BB8]();
}

id getWFWalrusLogObject()
{
  if (getWFWalrusLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWalrusLogObject_onceToken, &__block_literal_global_200_1972);
  }

  v1 = getWFWalrusLogObject_log;

  return v1;
}

uint64_t __getWFWalrusLogObject_block_invoke()
{
  getWFWalrusLogObject_log = os_log_create(WFLogSubsystem, "Walrus");

  return MEMORY[0x1EEE66BB8]();
}

id getWFFilesLogObject()
{
  if (getWFFilesLogObject_onceToken != -1)
  {
    dispatch_once(&getWFFilesLogObject_onceToken, &__block_literal_global_101);
  }

  v1 = getWFFilesLogObject_log;

  return v1;
}

uint64_t __getWFFilesLogObject_block_invoke()
{
  getWFFilesLogObject_log = os_log_create(WFLogSubsystem, "Files");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t VCIsInternalBuild()
{
  if (VCIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&VCIsInternalBuild_onceToken, &__block_literal_global_18237);
  }

  return VCIsInternalBuild_isInternal;
}

uint64_t __VCIsInternalBuild_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  VCIsInternalBuild_isInternal = result;
  return result;
}

id getWFGalleryLogObject()
{
  if (getWFGalleryLogObject_onceToken != -1)
  {
    dispatch_once(&getWFGalleryLogObject_onceToken, &__block_literal_global_65_1970);
  }

  v1 = getWFGalleryLogObject_log;

  return v1;
}

uint64_t __getWFGalleryLogObject_block_invoke()
{
  getWFGalleryLogObject_log = os_log_create(WFLogSubsystem, "Gallery");

  return MEMORY[0x1EEE66BB8]();
}

id getWFVoiceShortcutClientLogObject()
{
  if (getWFVoiceShortcutClientLogObject_onceToken != -1)
  {
    dispatch_once(&getWFVoiceShortcutClientLogObject_onceToken, &__block_literal_global_5);
  }

  v1 = getWFVoiceShortcutClientLogObject_log;

  return v1;
}

uint64_t __getWFVoiceShortcutClientLogObject_block_invoke()
{
  getWFVoiceShortcutClientLogObject_log = os_log_create(WFLogSubsystem, "VoiceShortcutClient");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{
  v3 = a1 + *v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_5@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  result = *(*v1 + 16);
  v4 = *(*v1 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v5 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_task_alloc();
}

unsigned __int8 *OUTLINED_FUNCTION_2_6(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  *(v2 - 40) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1)
{
  *(a1 + 8) = sub_1B1E44EF4;
  v2 = v1[10];
  result = v1[7];
  v4 = v1[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_1B1F1B180();
}

id getWFCloudKitSyncLogObject()
{
  if (getWFCloudKitSyncLogObject_onceToken != -1)
  {
    dispatch_once(&getWFCloudKitSyncLogObject_onceToken, &__block_literal_global_38);
  }

  v1 = getWFCloudKitSyncLogObject_log;

  return v1;
}

void WFWorkflowIconDrawerGloballyCacheDrawerContext()
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&contextLock);
  if (!context)
  {
    v0 = WFImageBeginUsingCoreGlyphsCatalogs();
    v1 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "WFWorkflowIconDrawerGloballyCacheDrawerContext";
      _os_log_impl(&dword_1B1DE3000, v1, OS_LOG_TYPE_DEFAULT, "%s Loading icon drawer context into cache", &v5, 0xCu);
    }

    v2 = objc_alloc_init(WFWorkflowIconDrawerContext);
    v3 = context;
    context = v2;
  }

  os_unfair_lock_unlock(&contextLock);
  v4 = *MEMORY[0x1E69E9840];
}

id WFImageBeginUsingCoreGlyphsCatalogs()
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&WFImageResidentCoreGlyphsCatalogsLock);
  v0 = WFImageLockedResidentCoreGlyphsCatalogRefCount;
  if (!WFImageLockedResidentCoreGlyphsCatalogRefCount)
  {
    v1 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "WFImageBeginUsingCoreGlyphsCatalogs";
      _os_log_impl(&dword_1B1DE3000, v1, OS_LOG_TYPE_INFO, "%s Loading core glyph catalogs into memory", &v9, 0xCu);
    }

    v2 = objc_opt_new();
    v3 = WFImageGetCoreGlyphsCatalogNamed(@"CoreGlyphs.bundle");
    v4 = WFImageGetCoreGlyphsCatalogNamed(@"CoreGlyphsPrivate.bundle");
    if (v3)
    {
      [v2 addObject:v3];
    }

    if (v4)
    {
      [v2 addObject:v4];
    }

    v5 = WFImageLockedResidentCoreGlyphsCatalogs;
    WFImageLockedResidentCoreGlyphsCatalogs = v2;

    v0 = WFImageLockedResidentCoreGlyphsCatalogRefCount;
  }

  WFImageLockedResidentCoreGlyphsCatalogRefCount = v0 + 1;
  v6 = WFImageLockedResidentCoreGlyphsCatalogs;
  os_unfair_lock_unlock(&WFImageResidentCoreGlyphsCatalogsLock);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id WFImageGetCoreGlyphsCatalogNamed(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = NSSearchPathForDirectoriesInDomains(NSCoreServiceDirectory, 8uLL, 0);
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_50_17821];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:buf count:16];
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = *v20;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v20 != v7)
    {
      objc_enumerationMutation(v5);
    }

    v9 = [*(*(&v19 + 1) + 8 * v8) stringByAppendingPathComponent:v1];
    if ([v4 fileExistsAtPath:v9])
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [v5 countByEnumeratingWithState:&v19 objects:buf count:16];
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  if (!v9)
  {
LABEL_10:
    __assert_rtn("WFImageGetCoreServicesBundlePath", "WFImage+Glyphs.m", 73, "foundBundle != nil");
  }

  v10 = [MEMORY[0x1E696AAE8] bundleWithPath:v9];
  if (v10)
  {
    *&v19 = 0;
    *(&v19 + 1) = &v19;
    *&v20 = 0x2050000000;
    v11 = getCUICatalogClass_softClass;
    *(&v20 + 1) = getCUICatalogClass_softClass;
    if (!getCUICatalogClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCUICatalogClass_block_invoke;
      v24 = &unk_1E7B02C60;
      v25 = &v19;
      __getCUICatalogClass_block_invoke(buf);
      v11 = *(*(&v19 + 1) + 24);
    }

    v12 = v11;
    _Block_object_dispose(&v19, 8);
    v18 = 0;
    v13 = [[v11 alloc] initWithName:@"Assets" fromBundle:v10 error:&v18];
    v14 = v18;
    if (v14)
    {
      v15 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "WFImageGetCoreGlyphsCatalogNamed";
        *&buf[12] = 2112;
        *&buf[14] = v1;
        *&buf[22] = 2112;
        v24 = v14;
        _os_log_impl(&dword_1B1DE3000, v15, OS_LOG_TYPE_ERROR, "%s Can't load asset catalog named 'Assets' in requested bundle with name %@: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

void sub_1B1DE6864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WFImageGetCoreServicesBundlePath_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 pathComponents];
  if ([v5 count] < 2)
  {
    goto LABEL_6;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  if (([v6 isEqualToString:@"System"] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v7 = 1;
  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [v8 isEqualToString:@"Cryptexes"];

  if (v9)
  {
    goto LABEL_12;
  }

LABEL_7:
  v10 = [v4 pathComponents];
  if ([v10 count] <= 1)
  {
LABEL_11:

    v7 = 0;
    goto LABEL_12;
  }

  v11 = [v10 objectAtIndexedSubscript:0];
  if (([v11 isEqualToString:@"System"] & 1) == 0)
  {

    goto LABEL_11;
  }

  v12 = [v10 objectAtIndexedSubscript:1];
  v13 = [v12 isEqualToString:@"Cryptexes"];

  v7 = v13 << 63 >> 63;
LABEL_12:

  return v7;
}

Class __getCUICatalogClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B022E0;
    v9 = 0;
    CoreUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreUILibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFImage+Glyphs.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CUICatalog");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCUICatalogClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFImage+Glyphs.m" lineNumber:24 description:{@"Unable to find class %s", "CUICatalog"}];

LABEL_10:
    __break(1u);
  }

  getCUICatalogClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getWFHomescreenLogObject()
{
  if (getWFHomescreenLogObject_onceToken != -1)
  {
    dispatch_once(&getWFHomescreenLogObject_onceToken, &__block_literal_global_95);
  }

  v1 = getWFHomescreenLogObject_log;

  return v1;
}

uint64_t sub_1B1DE6C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845C0, &unk_1B1F2C900);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED84F038 = result;
  return result;
}

uint64_t __getWFHomescreenLogObject_block_invoke()
{
  getWFHomescreenLogObject_log = os_log_create(WFLogSubsystem, "Homescreen");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t static WFLog.subscript.getter(uint64_t a1)
{
  if (qword_1ED84F030 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_1ED84F038;
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_2();
  *(v3 - 16) = sub_1B1DE7A98;
  *(v3 - 8) = v4;

  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_14_0();
  sub_1B1DE7A80();
  os_unfair_lock_unlock(v1 + 4);
}

id getWFGeneralLogObject()
{
  if (getWFGeneralLogObject_onceToken != -1)
  {
    dispatch_once(&getWFGeneralLogObject_onceToken, &__block_literal_global_1962);
  }

  v1 = getWFGeneralLogObject_log;

  return v1;
}

uint64_t __getWFGeneralLogObject_block_invoke()
{
  getWFGeneralLogObject_log = os_log_create(WFLogSubsystem, "General");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B1DE6EC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B1DE6F24(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  type metadata accessor for WFLogCategoryName(0);
  a2(0);
  sub_1B1DE6FAC();
  result = sub_1B1F1A730();
  *a3 = result;
  return result;
}

unint64_t sub_1B1DE6FAC()
{
  result = qword_1ED84EFF0;
  if (!qword_1ED84EFF0)
  {
    type metadata accessor for WFLogCategoryName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EFF0);
  }

  return result;
}

uint64_t sub_1B1DE7004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1DE7094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_5_6();
  v57 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v14;
  v24 = v23;
  v25 = *v14;
  v26 = sub_1B1DE7CB8(v23);
  OUTLINED_FUNCTION_0_5(v26, v27);
  if (v30)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for WFLogCategoryName(0);
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

  v31 = v28;
  v32 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v19);
  OUTLINED_FUNCTION_2_4();
  if (sub_1B1F1B0C0())
  {
    v33 = *v22;
    sub_1B1DE7CB8(v24);
    OUTLINED_FUNCTION_4_3();
    if (!v35)
    {
      goto LABEL_14;
    }

    v31 = v34;
  }

  if (v32)
  {
    v36 = *(*v22 + 56);
    v37 = *(v17(0) - 8);
    v38 = *(v37 + 40);
    v39 = v36 + *(v37 + 72) * v31;
    OUTLINED_FUNCTION_1_4();

    return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, v57, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, v57, a11, a12, a13, a14);
  }
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_1_9(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_14()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[8];
}

uint64_t sub_1B1DE7544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784140, &qword_1B1F2AF30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v6 = &v20 - v5;
  v7 = sub_1B1F1A500();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  v15 = v14 - v13;
  if (qword_1ED84F018 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = off_1ED84F020;
  if (*(off_1ED84F020 + 2) && (v17 = sub_1B1DE7CB8(a1), (v18 & 1) != 0))
  {
    (*(v10 + 16))(v15, v16[7] + *(v10 + 72) * v17, v7);
    (*(v10 + 32))(a2, v15, v7);
  }

  else
  {
    swift_endAccess();
    sub_1B1F1A920();
    sub_1B1F1A920();
    sub_1B1F1A4F0();
    (*(v10 + 16))(v6, a2, v7);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    swift_beginAccess();
    sub_1B1E0A42C(v6, a1);
  }

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return sub_1B1F1B300();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return sub_1B1F1A480();
}

uint64_t OUTLINED_FUNCTION_16_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 144);
  v4 = *(v1 - 136);

  return sub_1B1F1B240();
}

uint64_t OUTLINED_FUNCTION_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_5()
{

  JUMPOUT(0x1B273F720);
}

unint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = *v0;

  return sub_1B1DEBED8();
}

uint64_t OUTLINED_FUNCTION_3_6(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1B1E1A7E0(a1, a2, v9, v8, v10, a6, a7, a8);
}

uint64_t *OUTLINED_FUNCTION_3_7(uint64_t *result)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *result;
  return result;
}

uint64_t sub_1B1DE7AB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6()
{
  result = *v0;
  v2 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return sub_1B1E1891C(a1, type metadata accessor for VoiceShortcutClientRequest);
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

unint64_t sub_1B1DE7CB8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1B1F1B7B0();

  return sub_1B1DE7CFC(a1, v4);
}

unint64_t sub_1B1DE7CFC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t OUTLINED_FUNCTION_14()
{

  return sub_1B1E03DB0();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_1B1E15CB4();
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[14];
  v4 = v2[11];
  v5 = v2[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return sub_1B1F1B200();
}

uint64_t OUTLINED_FUNCTION_14_12()
{

  return swift_getMetatypeMetadata();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return sub_1B1F1B510();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return sub_1B1F1B240();
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return sub_1B1E15CB4();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t result)
{
  *(v6 - 112) = result;
  *(v6 - 104) = v2;
  *v1 = v4;
  v1[1] = v5;
  *(v6 - 96) = v1 + 2;
  v7 = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_1B1F1B180();
}

uint64_t sub_1B1DE824C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_7_4(a1, a4 + 8 * (a1 >> 6));
  *(*(v8 + 48) + 8 * v7) = v9;
  v10 = *(v8 + 56);
  v12 = v11(0);
  result = (*(*(v12 - 8) + 32))(v10 + *(*(v12 - 8) + 72) * a1, a3, v12);
  v14 = *(a4 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v16;
  }

  return result;
}

id WFAllGroupedPhrasesForAutoShortcut(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v1 = WFLocalizedPhrasesGroupedByParameterIdentifier(a1, &v17, 0);
  v2 = v17;
  v3 = 0;
  if (v1 | v2)
  {
    v4 = objc_opt_new();
    v3 = v4;
    if (v2)
    {
      [v4 addObject:v2];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) phrases];
          [v3 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

void *WFLocalizedPhrasesGroupedByParameterIdentifier(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v26 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = v3;
  v6 = [v3 orderedPhrases];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v12 parameterIdentifier];
        if (v13)
        {
          v14 = [v4 objectForKeyedSubscript:v13];
          if (!v14)
          {
            v15 = [LNAutoShortcutParameterPhraseGroup alloc];
            v14 = [(LNAutoShortcutParameterPhraseGroup *)v15 initWithParameterID:v13 phrases:MEMORY[0x1E695E0F0]];
            [v4 setObject:v14 forKeyedSubscript:v13];
            [v26 addObject:v14];
            [v5 addObject:v12];
          }

          [(LNAutoShortcutParameterPhraseGroup *)v14 addPhrase:v12];
        }

        else
        {
          [v27 addObject:v12];
          if ((v9 & 1) == 0)
          {
            [v5 addObject:v12];
          }

          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v16 = [v27 count];
  if (a2 && v16)
  {
    *a2 = [v27 copy];
  }

  v17 = [v5 count];
  if (a3 && v17)
  {
    v18 = v5;
    *a3 = v5;
  }

  if ([v26 count])
  {
    v19 = v26;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

void VCVoiceShortcutManagerConfigureXPCInterface(void *a1)
{
  v160[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DFD8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = [v1 setWithObjects:{v3, objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_requestSandboxExtensionForToolKitIndexingWithCompletion_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_requestSandboxExtensionForToolKitIndexingWithCompletion_ argumentIndex:1 ofReply:1];

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_requestSandboxExtensionForToolKitIndexingWithCompletion_ argumentIndex:2 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_getVoiceShortcutsWithCompletion_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_getVoiceShortcutsForAppWithBundleIdentifier_completion_ argumentIndex:0 ofReply:1];

  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:sel_addVoiceShortcut_phrase_completion_ argumentIndex:0 ofReply:1];

  v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_updateVoiceShortcutWithIdentifier_phrase_shortcut_completion_ argumentIndex:0 ofReply:1];

  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v15 forSelector:sel_getSiriPodcastsDatabaseURLWithCompletion_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x1E695DFD8];
  v160[0] = objc_opt_class();
  v160[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:2];
  v18 = [v16 setWithArray:v17];
  [v2 setClasses:v18 forSelector:sel_setShortcutSuggestions_forAppWithBundleIdentifier_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x1E695DFD8];
  v159[0] = objc_opt_class();
  v159[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:2];
  v21 = [v19 setWithArray:v20];
  [v2 setClasses:v21 forSelector:sel_getShortcutSuggestionsForAppWithBundleIdentifier_completion_ argumentIndex:0 ofReply:1];

  v22 = MEMORY[0x1E695DFD8];
  v158[0] = objc_opt_class();
  v158[1] = objc_opt_class();
  v158[2] = objc_opt_class();
  v158[3] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:4];
  v24 = [v22 setWithArray:v23];
  [v2 setClasses:v24 forSelector:sel_getShortcutSuggestionsForAllAppsWithLimit_completion_ argumentIndex:0 ofReply:1];

  v25 = MEMORY[0x1E695DFD8];
  v157[0] = objc_opt_class();
  v157[1] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:2];
  v27 = [v25 setWithArray:v26];
  [v2 setClasses:v27 forSelector:sel_getShareSheetWorkflowsForExtensionMatchingDictionaries_hostBundleIdentifier_completion_ argumentIndex:0 ofReply:1];

  v28 = MEMORY[0x1E695DFD8];
  v156[0] = objc_opt_class();
  v156[1] = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:2];
  v30 = [v28 setWithArray:v29];
  [v2 setClasses:v30 forSelector:sel_getStingWorkflowsWithCompletion_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x1E695DFD8];
  v155[0] = objc_opt_class();
  v155[1] = objc_opt_class();
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:2];
  v33 = [v31 setWithArray:v32];
  [v2 setClasses:v33 forSelector:sel_getResultsForQuery_resultClassName_completion_ argumentIndex:0 ofReply:1];

  v34 = MEMORY[0x1E695DFD8];
  v154 = objc_opt_class();
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v154 count:1];
  v36 = [v34 setWithArray:v35];
  [v2 setClasses:v36 forSelector:sel_getValueForDescriptor_resultClassName_completion_ argumentIndex:0 ofReply:1];

  v37 = MEMORY[0x1E695DFD8];
  v153[0] = objc_opt_class();
  v153[1] = objc_opt_class();
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:2];
  v39 = [v37 setWithArray:v38];
  [v2 setClasses:v39 forSelector:sel_getFirstUnsortedWorkflowWithCompletion_ argumentIndex:0 ofReply:1];

  v40 = MEMORY[0x1E695DFD8];
  v152[0] = objc_opt_class();
  v152[1] = objc_opt_class();
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:2];
  v42 = [v40 setWithArray:v41];
  [v2 setClasses:v42 forSelector:sel_getVaultItemsAccessForBackgroundRunner_ argumentIndex:0 ofReply:1];

  v43 = MEMORY[0x1E695DFD8];
  v151[0] = objc_opt_class();
  v151[1] = objc_opt_class();
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:2];
  v45 = [v43 setWithArray:v44];
  [v2 setClasses:v45 forSelector:sel_getOnScreenContentWithOptions_completion_ argumentIndex:0 ofReply:0];

  v46 = MEMORY[0x1E695DFD8];
  v150[0] = objc_opt_class();
  v150[1] = objc_opt_class();
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:2];
  v48 = [v46 setWithArray:v47];
  [v2 setClasses:v48 forSelector:sel_getOnScreenContentWithOptions_completionHandler_ argumentIndex:0 ofReply:0];

  v49 = MEMORY[0x1E695DFD8];
  v149[0] = objc_opt_class();
  v149[1] = objc_opt_class();
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:2];
  v51 = [v49 setWithArray:v50];
  [v2 setClasses:v51 forSelector:sel_getOnScreenContentWithOptions_completionHandler_ argumentIndex:0 ofReply:1];

  v52 = MEMORY[0x1E695DFD8];
  v148[0] = objc_opt_class();
  v148[1] = objc_opt_class();
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
  v54 = [v52 setWithArray:v53];
  [v2 setClasses:v54 forSelector:sel_getSuggestedShortcutsWithLimit_completion_ argumentIndex:0 ofReply:1];

  v55 = MEMORY[0x1E695DFD8];
  v147 = objc_opt_class();
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
  v57 = [v55 setWithArray:v56];
  [v2 setClasses:v57 forSelector:sel_getSuggestedShortcutsWithLimit_completion_ argumentIndex:1 ofReply:1];

  v58 = MEMORY[0x1E695DFD8];
  v146[0] = objc_opt_class();
  v146[1] = objc_opt_class();
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:2];
  v60 = [v58 setWithArray:v59];
  [v2 setClasses:v60 forSelector:sel_getUpcomingMediaForBundleIdentifier_limit_completion_ argumentIndex:0 ofReply:1];

  v61 = MEMORY[0x1E695DFD8];
  v145 = objc_opt_class();
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
  v63 = [v61 setWithArray:v62];
  [v2 setClasses:v63 forSelector:sel_getUpcomingMediaForBundleIdentifier_limit_completion_ argumentIndex:1 ofReply:1];

  v64 = MEMORY[0x1E695DFD8];
  v144 = objc_opt_class();
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
  v66 = [v64 setWithArray:v65];
  [v2 setClasses:v66 forSelector:sel_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion_ argumentIndex:0 ofReply:1];

  v67 = MEMORY[0x1E695DFD8];
  v143[0] = objc_opt_class();
  v143[1] = objc_opt_class();
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:2];
  v69 = [v67 setWithArray:v68];
  [v2 setClasses:v69 forSelector:sel_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion_ argumentIndex:1 ofReply:1];

  v70 = MEMORY[0x1E695DFD8];
  v142 = objc_opt_class();
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];
  v72 = [v70 setWithArray:v71];
  [v2 setClasses:v72 forSelector:sel_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_expandingParameterName_limit_completion_ argumentIndex:2 ofReply:1];

  v73 = MEMORY[0x1E695DFD8];
  v141[0] = objc_opt_class();
  v141[1] = objc_opt_class();
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:2];
  v75 = [v73 setWithArray:v74];
  [v2 setClasses:v75 forSelector:sel_computeFinderResizedSizesForImages_inSizes_completion_ argumentIndex:0 ofReply:0];

  v76 = MEMORY[0x1E695DFD8];
  v140[0] = objc_opt_class();
  v140[1] = objc_opt_class();
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:2];
  v78 = [v76 setWithArray:v77];
  [v2 setClasses:v78 forSelector:sel_computeFinderResizedSizesForImages_inSizes_completion_ argumentIndex:1 ofReply:0];

  v79 = MEMORY[0x1E695DFD8];
  v139[0] = objc_opt_class();
  v139[1] = objc_opt_class();
  v139[2] = objc_opt_class();
  v139[3] = objc_opt_class();
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:4];
  v81 = [v79 setWithArray:v80];
  [v2 setClasses:v81 forSelector:sel_computeFinderResizedSizesForImages_inSizes_completion_ argumentIndex:0 ofReply:1];

  v82 = MEMORY[0x1E695DFD8];
  v83 = objc_opt_class();
  v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
  [v2 setClasses:v84 forSelector:sel_resolveFilePath_workflowID_completion_ argumentIndex:0 ofReply:1];

  v85 = MEMORY[0x1E695DFD8];
  v86 = objc_opt_class();
  v87 = [v85 setWithObjects:{v86, objc_opt_class(), 0}];
  [v2 setClasses:v87 forSelector:sel_resolveBookmarkData_completion_ argumentIndex:0 ofReply:1];

  v88 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v88 forSelector:sel_createBookmarkWithURL_workflowID_completion_ argumentIndex:0 ofReply:1];

  v89 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v89 forSelector:sel_createBookmarkWithBookmarkableString_path_workflowID_completion_ argumentIndex:0 ofReply:1];

  v90 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v90 forSelector:sel_resolveCrossDeviceItemID_completion_ argumentIndex:0 ofReply:1];

  v91 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v91 forSelector:sel_fetchURLForFPItem_completion_ argumentIndex:0 ofReply:1];

  v92 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v92 forSelector:sel_archiveAction_withActionMetadata_completion_ argumentIndex:0 ofReply:1];

  v93 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v93 forSelector:sel_archiveAction_withActionMetadata_completion_ argumentIndex:1 ofReply:1];

  v94 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v94 forSelector:sel_unarchiveActionFromData_withActionMetadata_completion_ argumentIndex:0 ofReply:1];

  v95 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v95 forSelector:sel_unarchiveActionFromData_withActionMetadata_completion_ argumentIndex:1 ofReply:1];

  v96 = MEMORY[0x1E695DFD8];
  v97 = objc_opt_class();
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = objc_opt_class();
  v101 = objc_opt_class();
  v102 = [v96 setWithObjects:{v97, v98, v99, v100, v101, objc_opt_class(), 0}];
  [v2 setClasses:v102 forSelector:sel_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_serializedParameterStates_completion_ argumentIndex:2 ofReply:0];

  v103 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v103 forSelector:sel_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_serializedParameterStates_completion_ argumentIndex:0 ofReply:1];

  v104 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v104 forSelector:sel_getLinkActionWithAppBundleIdentifier_appIntentIdentifier_serializedParameterStates_completion_ argumentIndex:1 ofReply:1];

  v105 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v105 forSelector:sel_getMigratedAppIntentWithINIntent_completion_ argumentIndex:0 ofReply:1];

  v106 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v106 forSelector:sel_getMigratedAppIntentWithINIntent_completion_ argumentIndex:1 ofReply:1];

  v107 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v107 forSelector:sel_getRunShortcutIntentForWorkflow_completion_ argumentIndex:0 ofReply:1];

  v108 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v108 forSelector:sel_getRunShortcutIntentForWorkflow_completion_ argumentIndex:1 ofReply:1];

  v109 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v109 forSelector:sel_markMenuBarWorkflowAsMigratedWithIdentifiers_completion_ argumentIndex:0 ofReply:1];

  v110 = MEMORY[0x1E695DFD8];
  v111 = objc_opt_class();
  v112 = objc_opt_class();
  v113 = objc_opt_class();
  v114 = objc_opt_class();
  v115 = objc_opt_class();
  v116 = [v110 setWithObjects:{v111, v112, v113, v114, v115, objc_opt_class(), 0}];
  [v2 setClasses:v116 forSelector:sel_getSerializedParametersForLinkAction_actionMetadata_completion_ argumentIndex:0 ofReply:1];

  v117 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v117 forSelector:sel_getSerializedParametersForLinkAction_actionMetadata_completion_ argumentIndex:1 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:sel_loadFileURLWithItemProviderRequestMetadata_type_openInPlace_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_loadFileURLWithItemProviderRequestMetadata_type_openInPlace_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_loadDataWithItemProviderRequestMetadata_type_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_loadDataWithItemProviderRequestMetadata_type_completion_ argumentIndex:1 ofReply:1];
  v118 = MEMORY[0x1E695DFD8];
  v138[0] = objc_opt_class();
  v138[1] = objc_opt_class();
  v138[2] = objc_opt_class();
  v138[3] = objc_opt_class();
  v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:4];
  v120 = [v118 setWithArray:v119];
  [v2 setClasses:v120 forSelector:sel_fetchAvailableStaccatoActions_ argumentIndex:0 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:sel_fetchAvailableStaccatoActions_ argumentIndex:1 ofReply:1];
  v121 = MEMORY[0x1E695DFD8];
  v137 = objc_opt_class();
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
  v123 = [v121 setWithArray:v122];
  v124 = MEMORY[0x1E695DFD8];
  v125 = objc_opt_class();
  v126 = objc_opt_class();
  v127 = objc_opt_class();
  v128 = objc_opt_class();
  v129 = objc_opt_class();
  v130 = [v124 setWithObjects:{v125, v126, v127, v128, v129, objc_opt_class(), 0}];
  v131 = [v123 setByAddingObjectsFromSet:v130];
  [v2 setClasses:v131 forSelector:sel_fetchAllValueSectionsForStaccatoParameter_completion_ argumentIndex:0 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:sel_fetchAllValueSectionsForStaccatoParameter_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_configuredStaccatoActionFromTemplate_valuesByParameterKey_completion_ argumentIndex:0 ofReply:0];
  v132 = MEMORY[0x1E695DFD8];
  v136[0] = objc_opt_class();
  v136[1] = objc_opt_class();
  v136[2] = objc_opt_class();
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:3];
  v134 = [v132 setWithArray:v133];
  [v2 setClasses:v134 forSelector:sel_configuredStaccatoActionFromTemplate_valuesByParameterKey_completion_ argumentIndex:1 ofReply:0];

  [v2 setClass:objc_opt_class() forSelector:sel_configuredStaccatoActionFromTemplate_valuesByParameterKey_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_configuredStaccatoActionFromTemplate_valuesByParameterKey_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_defaultStaccatoActionWithCompletion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_defaultStaccatoActionWithCompletion_ argumentIndex:1 ofReply:1];

  v135 = *MEMORY[0x1E69E9840];
}

id getWFStaccatoLogObject()
{
  if (getWFStaccatoLogObject_onceToken != -1)
  {
    dispatch_once(&getWFStaccatoLogObject_onceToken, &__block_literal_global_203);
  }

  v1 = getWFStaccatoLogObject_log;

  return v1;
}

uint64_t __getWFStaccatoLogObject_block_invoke()
{
  getWFStaccatoLogObject_log = os_log_create(WFLogSubsystem, "Staccato");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B1DEA254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VCVoiceShortcutManagerXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F295A1B0];
  VCVoiceShortcutManagerConfigureXPCInterface(v0);

  return v0;
}

void __VCDescriptionOfEntitlements_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v6 integerValue] & v5;
  v8 = [v6 integerValue];

  if (v7 == v8)
  {
    [*(a1 + 32) addObject:v9];
  }
}

id WFSystemStaccatoActionIdentifiersBySection()
{
  v28[10] = *MEMORY[0x1E69E9840];
  v26 = @"com.apple.ShortcutsActions.SetSilentModeAction";
  v27[0] = @"SilentMode";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v28[0] = v16;
  v27[1] = @"Focus";
  v25 = @"com.apple.springboard.Focus";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v28[1] = v15;
  v27[2] = @"Camera";
  v24 = @"com.apple.springboard.OpenCamera";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v28[2] = v0;
  v27[3] = @"VoiceMemos";
  v23 = @"com.apple.VoiceMemos.ToggleRecording";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v28[3] = v1;
  v27[4] = @"MusicRecognition";
  v22 = @"com.apple.musicrecognition.RecognizeMusicIntent";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v28[4] = v2;
  v27[5] = @"Flashlight";
  v21 = @"com.apple.springboard.ToggleFlashlight";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v28[5] = v3;
  v27[6] = @"Accessibility";
  v20 = @"com.apple.AccessibilityUIServer.ToggleAccessibilityFeatureIntent";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v28[6] = v4;
  v27[7] = @"Translate";
  v19 = @"com.apple.Translate.ToggleSpeechTranslationIntent";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v28[7] = v5;
  v27[8] = @"Magnifier";
  v18 = @"com.apple.Magnifier.MagnifierIntent";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v28[8] = v6;
  v27[9] = @"VisualIntelligence";
  v17 = @"com.apple.siri.VisualIntelligenceCameraLaunch";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v28[9] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:10];
  v9 = [v8 mutableCopy];

  if (VCIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&VCIsInternalBuild_onceToken, &__block_literal_global_18237);
  }

  if (VCIsInternalBuild_isInternal == 1)
  {
    v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.shortcuts"];
    v11 = [v10 dictionaryForKey:@"WFStaccatoActionTemplates"];

    [v9 addEntriesFromDictionary:v11];
  }

  v12 = [v9 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id sub_1B1DEA79C(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = sub_1B1DEA834(a3);

  if (v5)
  {
    v6 = OUTLINED_FUNCTION_19_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    v8 = sub_1B1F1A6F0();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1B1DEA834(void *a1)
{
  v2 = *(v1 + *a1);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  if (*(v3 + 16) == 1)
  {
    OUTLINED_FUNCTION_15_3();
    v4 = *(v3 + 48);
    sub_1B1F1A760();
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

uint64_t sub_1B1DEA98C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

char *sub_1B1DEA9CC()
{
  v1 = *&v0[OBJC_IVAR___WFAppIntentsMetadataProvider_actionsCache];

  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1DEAA48(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

uint64_t sub_1B1DEAA48(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = sub_1B1DEAA88(v2);
  return OUTLINED_FUNCTION_14_2(v4);
}

uint64_t sub_1B1DEAA88(unint64_t a1)
{
  v136[1] = *MEMORY[0x1E69E9840];
  v135 = sub_1B1F1A500();
  v4 = *(v135 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v135);
  v130 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  isUniquelyReferenced_nonNull_native = &v125 - v8;
  v136[0] = MEMORY[0x1E69E7CC0];
  v10 = sub_1B1E2AC98(a1);
  v11 = 0;
  v132 = a1 & 0xC000000000000001;
  v133 = v10;
  v131 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v133 != v11)
  {
    if (v132)
    {
      v12 = MEMORY[0x1B273D840](v11, a1);
    }

    else
    {
      if (v11 >= *(v131 + 16))
      {
        goto LABEL_75;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v14 = [v12 actionIdentifier];
    v15 = sub_1B1F1A890();
    i = v16;

    v17 = [v13 bundleIdentifier];
    v2 = sub_1B1F1A890();
    v19 = v18;

    LOBYTE(v17) = sub_1B1E26DC4(v15, i, v2, v19, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E0E2B8, sub_1B1E0E2BC);

    if (v17)
    {
    }

    else
    {
      sub_1B1F1B020();
      v20 = *(v136[0] + 2);
      sub_1B1F1B050();
      sub_1B1F1B060();
      sub_1B1F1B030();
    }

    ++v11;
  }

  v2 = v136[0];
  v21 = sub_1B1DEBAA4(v136[0]);
  v126 = a1;
  if (v21 > 0)
  {
    i = "AppIntentsMetadata";
    if (qword_1ED84F030 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_83;
  }

LABEL_40:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784700, &qword_1B1F2CC38);
  v54 = sub_1B1F1A730();
  if (!v133)
  {
    goto LABEL_72;
  }

  v135 = 0;
  v55 = 0;
  while (1)
  {
    if (v132)
    {
      v56 = MEMORY[0x1B273D840](v135, a1);
    }

    else
    {
      if (v135 >= *(v131 + 16))
      {
        goto LABEL_81;
      }

      v56 = *(a1 + 8 * v135 + 32);
    }

    v2 = v56;
    if (__OFADD__(v135, 1))
    {
      break;
    }

    v128 = v135 + 1;
    v57 = [v56 bundleIdentifier];
    v58 = sub_1B1F1A890();
    v130 = v55;
    v59 = v58;
    v61 = v60;

    v62 = [v2 actionIdentifier];
    v129 = sub_1B1F1A890();
    v64 = v63;

    v65 = [v2 bundleIdentifier];
    v66 = sub_1B1F1A890();
    v68 = v67;

    v127 = v2;
    v69 = [v2 actionIdentifier];
    v70 = sub_1B1F1A890();
    v4 = v71;

    i = sub_1B1E279CC(v66, v68, v70, v4);

    sub_1B1DEBA94(v130);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136[0] = v54;
    v2 = v59;
    v72 = sub_1B1DEBED8();
    if (__OFADD__(v54[2], (v73 & 1) == 0))
    {
      goto LABEL_77;
    }

    v74 = v72;
    v75 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784708, &unk_1B1F2CC40);
    if (sub_1B1F1B0C0())
    {
      v76 = sub_1B1DEBED8();
      if ((v75 & 1) != (v77 & 1))
      {
        goto LABEL_84;
      }

      v74 = v76;
    }

    v4 = v64;
    v78 = v129;
    v54 = v136[0];
    if (v75)
    {
    }

    else
    {
      sub_1B1E2945C(v136);
      v79 = v136[0];
      v54[(v74 >> 6) + 8] |= 1 << v74;
      v80 = (v54[6] + 16 * v74);
      *v80 = v2;
      v80[1] = v61;
      *(v54[7] + 8 * v74) = v79;
      v81 = v54[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_80;
      }

      v54[2] = v83;
    }

    v84 = (v54[7] + 8 * v74);
    if (i)
    {
      v2 = i;
      v85 = *v84;
      swift_isUniquelyReferenced_nonNull_native();
      v136[0] = *v84;
      v86 = v136[0];
      *v84 = 0x8000000000000000;
      v87 = sub_1B1DEBED8();
      v89 = v86[2];
      v90 = (v88 & 1) == 0;
      isUniquelyReferenced_nonNull_native = v89 + v90;
      if (__OFADD__(v89, v90))
      {
        goto LABEL_79;
      }

      v91 = v87;
      i = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841C8, &qword_1B1F2B160);
      if (sub_1B1F1B0C0())
      {
        v92 = sub_1B1DEBED8();
        if ((i & 1) != (v93 & 1))
        {
LABEL_84:
          result = sub_1B1F1B720();
          __break(1u);
          return result;
        }

        v91 = v92;
      }

      v94 = v136[0];
      if (i)
      {
        v95 = *(v136[0] + 7);
        v96 = *(v95 + 8 * v91);
        *(v95 + 8 * v91) = v2;
      }

      else
      {
        *(v136[0] + (v91 >> 6) + 8) |= 1 << v91;
        v98 = (v94[6] + 16 * v91);
        *v98 = v78;
        v98[1] = v4;
        *(v94[7] + 8 * v91) = v2;
        v99 = v94[2];
        v82 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v82)
        {
          goto LABEL_82;
        }

        v94[2] = v100;
      }

      v101 = *v84;
      *v84 = v94;
    }

    else
    {
      v97 = sub_1B1E2B560(v78, v4, &qword_1EB7841C8, &qword_1B1F2B160, &qword_1EB783618, 0x1E69AC678);
    }

    ++v135;
    v55 = sub_1B1E2945C;
    a1 = v126;
    if (v128 == v133)
    {
      goto LABEL_72;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v21 = swift_once();
LABEL_14:
    v22 = qword_1ED84F038;
    v23 = MEMORY[0x1EEE9AC00](v21);
    *(&v125 - 2) = i;
    MEMORY[0x1EEE9AC00](v23);
    *(&v125 - 2) = sub_1B1E07904;
    *(&v125 - 1) = v24;

    os_unfair_lock_lock(v22 + 4);
    sub_1B1E07944(v25);
    os_unfair_lock_unlock(v22 + 4);

    v26 = sub_1B1F1A4E0();
    v27 = sub_1B1F1AD30();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = sub_1B1DEBAA4(v2);

      _os_log_impl(&dword_1B1DE3000, v26, v27, "Fetching missing metadata for %ld actions", v28, 0xCu);
      MEMORY[0x1B273F720](v28, -1, -1);
    }

    else
    {
    }

    v30 = *(v4 + 8);
    v4 += 8;
    v29 = v30;
    v30(isUniquelyReferenced_nonNull_native, v135);
    v31 = *(v134 + 56);
    sub_1B1DEA98C(0, &qword_1EB7835B0, 0x1E69AC858);
    v32 = sub_1B1F1A9A0();

    v136[0] = 0;
    v33 = [v31 actionsWithFullyQualifiedIdentifiers:v32 error:v136];

    v34 = v136[0];
    if (!v33)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784700, &qword_1B1F2CC38);
    v35 = sub_1B1F1A710();
    v36 = v34;

    v37 = 0;
    v39 = v35 + 64;
    v38 = *(v35 + 64);
    v129 = v35 + 64;
    v130 = v35;
    v40 = 1 << *(v35 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    isUniquelyReferenced_nonNull_native = v41 & v38;
    v42 = (v40 + 63) >> 6;
    a1 = v126;
    v128 = v42;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_23:
      v2 = v37;
LABEL_27:
      v43 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
      isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
      v44 = v43 | (v2 << 6);
      v45 = (*(v130 + 48) + 16 * v44);
      v46 = *(*(v130 + 56) + 8 * v44);
      v47 = v45[1];
      v135 = *v45;
      v48 = 1 << *(v46 + 32);
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v50 = v49 & *(v46 + 64);
      v4 = (v48 + 63) >> 6;
      sub_1B1F1A760();
      sub_1B1F1A760();
      for (i = 0; v50; a1 = v126)
      {
        v51 = i;
LABEL_36:
        v52 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v53 = *(*(v46 + 56) + ((v51 << 9) | (8 * v52)));
        sub_1B1E2709C(v53, v135, v47);
      }

      while (1)
      {
        v51 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v51 >= v4)
        {

          v37 = v2;
          v42 = v128;
          v39 = v129;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v50 = *(v46 + 64 + 8 * v51);
        ++i;
        if (v50)
        {
          i = v51;
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

LABEL_24:
    while (1)
    {
      v2 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v2 >= v42)
      {
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_native = *(v39 + 8 * v2);
      ++v37;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }
    }
  }

  v102 = v136[0];
  v103 = sub_1B1F1A1C0();

  v104 = swift_willThrow();
  v105 = qword_1ED84F038;
  v106 = MEMORY[0x1EEE9AC00](v104);
  *(&v125 - 2) = i;
  MEMORY[0x1EEE9AC00](v106);
  *(&v125 - 2) = sub_1B1E07904;
  *(&v125 - 1) = v107;

  os_unfair_lock_lock(v105 + 4);
  v108 = v130;
  sub_1B1E07944(v109);
  os_unfair_lock_unlock(v105 + 4);

  v110 = v108;
  v111 = v103;
  v112 = sub_1B1F1A4E0();
  v113 = sub_1B1F1AD10();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v136[0] = v116;
    *v114 = 136315394;
    sub_1B1DEA98C(0, &qword_1EB783618, 0x1E69AC678);
    v117 = sub_1B1F1B880();
    v119 = sub_1B1DF61DC(v117, v118, v136);

    *(v114 + 4) = v119;
    *(v114 + 12) = 2112;
    v120 = v103;
    v121 = _swift_stdlib_bridgeErrorToNSError();
    *(v114 + 14) = v121;
    *v115 = v121;
    _os_log_impl(&dword_1B1DE3000, v112, v113, "Failed to load  requested %s from metadata provider due to: %@", v114, 0x16u);
    sub_1B1E08DD4(v115);
    MEMORY[0x1B273F720](v115, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x1B273F720](v116, -1, -1);
    MEMORY[0x1B273F720](v114, -1, -1);

    v122 = v130;
  }

  else
  {

    v122 = v110;
  }

  v29(v122, v135);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784700, &qword_1B1F2CC38);
  v54 = sub_1B1F1A730();

LABEL_72:
  v123 = *MEMORY[0x1E69E9840];
  return v54;
}

BOOL sub_1B1DEB798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t (*a4)(void *))
{
  if (*(v4 + 16))
  {
    return 1;
  }

  v9 = swift_beginAccess();
  v10 = *(v4 + 24);
  v19[0] = a1;
  v19[1] = a2;
  MEMORY[0x1EEE9AC00](v9);
  v17 = v19;
  sub_1B1F1A760();
  v11 = sub_1B1DEB980(a3, v16, v10);

  if (v11)
  {
    return 1;
  }

  else
  {
    v13 = swift_beginAccess();
    v14 = *(v4 + 32);
    v18[0] = a1;
    v18[1] = a2;
    MEMORY[0x1EEE9AC00](v13);
    v17 = v18;
    sub_1B1F1A760();
    v12 = sub_1B1DEB980(a4, v16, v14);
  }

  return v12;
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_32_6()
{

  return swift_beginAccess();
}

BOOL sub_1B1DEB980(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_1B1F1A760();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1B1DEBA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B1F1B510() & 1;
  }
}

uint64_t sub_1B1DEBA94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1B1DEBD6C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, uint64_t *a6)
{
  sub_1B1F1A890();
  v10 = a1;
  v11 = OUTLINED_FUNCTION_25_0();
  a4(v11);

  sub_1B1DEA98C(0, a5, a6);
  v12 = sub_1B1F1A9A0();

  return v12;
}

void *sub_1B1DEBE18()
{
  OUTLINED_FUNCTION_12_2(OBJC_IVAR___WFAppIntentsMetadataProvider_enumerationsCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1DEC8CC(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

uint64_t sub_1B1DEBE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B1DEBED8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return sub_1B1F1A760();
}

unint64_t sub_1B1DEBED8()
{
  v1 = *(v0 + 40);
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  sub_1B1F1B7F0();
  v2 = OUTLINED_FUNCTION_19_1();

  return sub_1B1DEBF4C(v2, v3, v4);
}

unint64_t sub_1B1DEBF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B1F1B510() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B1DEC000(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_7(a1);
  v3 = sub_1B1DECA18(v2, v1, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E22E78, sub_1B1E0E2B8);
  return OUTLINED_FUNCTION_14_2(v3);
}

void *sub_1B1DEC084()
{
  OUTLINED_FUNCTION_12_2(OBJC_IVAR___WFAppIntentsMetadataProvider_entitiesCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1DEC000(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_21_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

id sub_1B1DEC10C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_1B1F1A890();
  v9 = v8;
  v10 = sub_1B1F1A890();
  v12 = v11;
  v13 = a1;
  v14 = a5(v7, v9, v10, v12);

  return v14;
}

void *sub_1B1DEC1B4()
{
  OUTLINED_FUNCTION_6_5(OBJC_IVAR___WFAppIntentsMetadataProvider_queriesCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1DEC300(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_22_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

void OUTLINED_FUNCTION_6_2()
{

  JUMPOUT(0x1B273D1A0);
}

uint64_t OUTLINED_FUNCTION_6_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
}

uint64_t sub_1B1DEC32C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1B1DEB798(a1, a2, sub_1B1DEBA30, sub_1B1E2D064))
  {
    sub_1B1E24130(a1, a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 72);
  sub_1B1F1A760();
  v10 = sub_1B1E0E2B8(a1, a2, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1B1E0E2BC(a3, a4, v10);

  return v11;
}

void *sub_1B1DEC414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B1DEBED8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_1B1DEC45C()
{
  OUTLINED_FUNCTION_6_5(OBJC_IVAR___WFAppIntentsMetadataProvider_actionsCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1DEC4CC(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_22_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

void *sub_1B1DEC53C()
{
  OUTLINED_FUNCTION_6_5(OBJC_IVAR___WFAppIntentsMetadataProvider_enumerationsCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1DEC510(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_22_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_5()
{
  result = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return sub_1B1E67E34(v0, type metadata accessor for LaunchServicesSnapshot);
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t result)
{
  *(result + 48) = v3;
  *(result + 56) = v1;
  *(result + 16) = 0;
  *(result + 24) = v2;
  *(result + 32) = v2;
  *(result + 40) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_1B1F1B200();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1B1DEC8CC(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_7(a1);
  v3 = sub_1B1DECA18(v2, v1, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E237D4, sub_1B1E0E2B8);
  return OUTLINED_FUNCTION_14_2(v3);
}

uint64_t OUTLINED_FUNCTION_12_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_1B1F1B240();
}

uint64_t sub_1B1DECA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t (*a4)(void *), void (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  if (!sub_1B1DEB798(a1, a2, a3, a4))
  {
    v9 = OUTLINED_FUNCTION_19_1();
    a5(v9);
  }

  swift_beginAccess();
  v10 = *(v6 + 40);
  sub_1B1F1A760();
  v11 = OUTLINED_FUNCTION_19_1();
  v12 = a6(v11);

  if (v12)
  {
    return v12;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_1B1F1AFD0();
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  v2 = *(v0 - 40);
}

unint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, void *a2)
{
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v2;
  a2[6] = v3;

  return sub_1B1E04BC8();
}

uint64_t OUTLINED_FUNCTION_22_5()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 144);
  return result;
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

void __WFCurrentBundle_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, sizeof(v5));
  if (dladdr(WFCurrentBundle, &v5) && v5.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x1E696AAE8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_1B1DE3000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

BOOL WFShouldReverseLayoutDirection()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNSParagraphStyleClass_softClass;
  v7 = getNSParagraphStyleClass_softClass;
  if (!getNSParagraphStyleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNSParagraphStyleClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getNSParagraphStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  return [v0 defaultWritingDirectionForLanguage:0] == 1;
}

void sub_1B1DECFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNSParagraphStyleClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __UIFoundationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B01220;
    v9 = 0;
    UIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIFoundationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIFoundationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLayoutDirection.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("NSParagraphStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNSParagraphStyleClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFLayoutDirection.m" lineNumber:18 description:{@"Unable to find class %s", "NSParagraphStyle"}];

LABEL_10:
    __break(1u);
  }

  getNSParagraphStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFSystemImageNameForOutlineGlyphCharacter(uint64_t a1)
{
  v1 = a1;
  v2 = WFSystemImageNameForGlyphCharacter(a1);
  if (v2)
  {
    if (WFNonFillGlyphAvailable(v1) && [v2 hasSuffix:@".fill"])
    {
      v3 = [v2 stringByReplacingOccurrencesOfString:@".fill" withString:&stru_1F28FBBB8 options:4 range:{objc_msgSend(v2, "length") - objc_msgSend(@".fill", "length"), objc_msgSend(@".fill", "length")}];
    }

    else
    {
      v3 = v2;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id colorDefaults()
{
  v60[15] = *MEMORY[0x1E69E9840];
  v59[0] = @"com.apple.MobileSMS";
  v43 = [WFColor colorWithSystemColor:1];
  v58 = v43;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v60[0] = v42;
  v59[1] = @"com.apple.mobilenotes";
  v41 = [WFColor colorWithRGBAValue:4292346111];
  v57[0] = v41;
  v40 = [WFColor colorWithRGBAValue:4206559487];
  v57[1] = v40;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v60[1] = v39;
  v59[2] = @"com.apple.Music";
  v38 = [WFColor colorWithRGBAValue:3915806463];
  v56[0] = v38;
  v37 = [WFColor colorWithRGBAValue:3862840575];
  v56[1] = v37;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v60[2] = v36;
  v59[3] = @"com.apple.podcasts";
  v35 = [WFColor colorWithRGBAValue:3363108095];
  v55[0] = v35;
  v34 = [WFColor colorWithRGBAValue:2033302271];
  v55[1] = v34;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v60[3] = v33;
  v59[4] = @"com.apple.AppStore";
  v32 = [WFColor colorWithRGBAValue:1573123839];
  v54[0] = v32;
  v31 = [WFColor colorWithRGBAValue:946924287];
  v54[1] = v31;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v60[4] = v30;
  v59[5] = @"com.apple.iBooks";
  v29 = [WFColor colorWithRGBAValue:4054531327];
  v53[0] = v29;
  v28 = [WFColor colorWithRGBAValue:3899668223];
  v53[1] = v28;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v60[5] = v27;
  v59[6] = @"com.apple.VoiceMemos";
  v26 = [WFColor colorWithRGBAValue:437918719];
  v52 = v26;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  v60[6] = v25;
  v59[7] = @"com.apple.stocks";
  v24 = [WFColor colorWithRGBAValue:185273343];
  v51 = v24;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v60[7] = v23;
  v59[8] = @"com.apple.mobiletimer";
  v22 = [WFColor colorWithRGBAValue:471604991];
  v50 = v22;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v60[8] = v21;
  v59[9] = @"com.apple.Pages";
  v20 = [WFColor colorWithRGBAValue:4105784831];
  v49[0] = v20;
  v19 = [WFColor colorWithRGBAValue:3968547327];
  v49[1] = v19;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v60[9] = v18;
  v59[10] = @"com.apple.Keynote";
  v17 = [WFColor colorWithRGBAValue:1657403647];
  v48[0] = v17;
  v16 = [WFColor colorWithRGBAValue:845473791];
  v48[1] = v16;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v60[10] = v15;
  v59[11] = @"com.apple.Numbers";
  v14 = [WFColor colorWithRGBAValue:2582804991];
  v47[0] = v14;
  v13 = [WFColor colorWithRGBAValue:1657816319];
  v47[1] = v13;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v60[11] = v0;
  v59[12] = @"com.apple.camera";
  v1 = [WFColor colorWithRGBAValue:3840207359];
  v46[0] = v1;
  v2 = [WFColor colorWithRGBAValue:2391708671];
  v46[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v60[12] = v3;
  v59[13] = @"com.apple.tv";
  v4 = [WFColor colorWithRGBAValue:858993663];
  v45[0] = v4;
  v5 = [WFColor colorWithRGBAValue:404232703];
  v45[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v60[13] = v6;
  v59[14] = @"com.apple.freeform";
  v7 = [WFColor colorWithRGBAValue:372857343];
  v44[0] = v7;
  v8 = [WFColor colorWithRGBAValue:372857343];
  v44[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v60[14] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:15];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_8795);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

__CFString *WFSystemImageNameForGlyphCharacter(uint64_t a1)
{
  v1 = WFReplacementGlyphCharacterForCharacter(a1);
  result = 0;
  switch(v1)
  {
    case 61440:
      result = @"app.2.stack.3d.fill";
      break;
    case 61441:
    case 61443:
    case 61445:
    case 61451:
    case 61463:
    case 61469:
    case 61485:
    case 61492:
    case 61516:
    case 61526:
    case 61527:
    case 61580:
    case 61581:
    case 61594:
    case 61595:
    case 61596:
    case 61597:
    case 61598:
    case 61599:
    case 61600:
    case 61601:
    case 61602:
    case 61603:
    case 61604:
    case 61605:
    case 61606:
    case 61607:
    case 61608:
    case 61609:
    case 61610:
    case 61611:
    case 61612:
    case 61613:
    case 61614:
    case 61615:
    case 61616:
    case 61617:
    case 61618:
    case 61619:
    case 61620:
    case 61621:
    case 61622:
    case 61623:
    case 61624:
    case 61625:
    case 61626:
    case 61627:
    case 61628:
    case 61629:
    case 61630:
    case 61631:
    case 61632:
    case 61633:
    case 61634:
    case 61635:
    case 61636:
    case 61637:
    case 61638:
    case 61639:
    case 61640:
    case 61641:
    case 61642:
    case 61643:
    case 61644:
    case 61645:
    case 61646:
    case 61647:
    case 61648:
    case 61649:
    case 61650:
    case 61651:
    case 61652:
    case 61653:
    case 61654:
    case 61655:
    case 61656:
    case 61657:
    case 61658:
    case 61659:
    case 61660:
    case 61661:
    case 61662:
    case 61663:
    case 61664:
    case 61665:
    case 61666:
    case 61667:
    case 61668:
    case 61669:
    case 61670:
    case 61671:
    case 61672:
    case 61673:
    case 61674:
    case 61675:
    case 61676:
    case 61677:
    case 61678:
    case 61679:
    case 61680:
    case 61681:
    case 61682:
    case 61683:
    case 61684:
    case 61685:
    case 61686:
    case 61687:
    case 61688:
    case 61689:
    case 61690:
    case 61691:
    case 61692:
    case 61693:
    case 61694:
    case 61695:
    case 61706:
    case 61707:
    case 61708:
    case 61709:
    case 61710:
    case 61711:
    case 61722:
    case 61723:
    case 61724:
    case 61725:
    case 61726:
    case 61727:
    case 61738:
    case 61739:
    case 61740:
    case 61741:
    case 61742:
    case 61743:
    case 61754:
    case 61755:
    case 61756:
    case 61757:
    case 61758:
    case 61759:
    case 61770:
    case 61771:
    case 61772:
    case 61773:
    case 61774:
    case 61775:
    case 61786:
    case 61787:
    case 61788:
    case 61789:
    case 61790:
    case 61791:
    case 61802:
    case 61803:
    case 61804:
    case 61805:
    case 61806:
    case 61807:
    case 61818:
    case 61819:
    case 61820:
    case 61821:
    case 61822:
    case 61823:
    case 61834:
    case 61835:
    case 61836:
    case 61837:
    case 61838:
    case 61839:
    case 61850:
    case 61851:
    case 61852:
    case 61853:
    case 61854:
    case 61855:
    case 61856:
    case 61857:
    case 61858:
    case 61859:
    case 61860:
    case 61861:
    case 61862:
    case 61863:
    case 61864:
    case 61865:
    case 61866:
    case 61867:
    case 61868:
    case 61869:
    case 61870:
    case 61871:
    case 61872:
    case 61873:
    case 61874:
    case 61875:
    case 61876:
    case 61877:
    case 61878:
    case 61879:
    case 61880:
    case 61881:
    case 61882:
    case 61883:
    case 61884:
    case 61885:
    case 61886:
    case 61887:
    case 61888:
    case 61889:
    case 61890:
    case 61891:
    case 61892:
    case 61893:
    case 61894:
    case 61895:
    case 61896:
    case 61897:
    case 61898:
    case 61899:
    case 61900:
    case 61901:
    case 61902:
    case 61903:
    case 61904:
    case 61905:
    case 61906:
    case 61907:
    case 61908:
    case 61909:
    case 61910:
    case 61911:
    case 61912:
    case 61913:
    case 61914:
    case 61915:
    case 61916:
    case 61917:
    case 61918:
    case 61919:
    case 61920:
    case 61921:
    case 61922:
    case 61923:
    case 61924:
    case 61925:
    case 61926:
    case 61927:
    case 61928:
    case 61929:
    case 61930:
    case 61931:
    case 61932:
    case 61933:
    case 61934:
    case 61935:
    case 61936:
    case 61937:
    case 61938:
    case 61939:
    case 61940:
    case 61941:
    case 61942:
    case 61943:
    case 61944:
    case 61945:
    case 61946:
    case 61947:
    case 61948:
    case 61949:
    case 61950:
    case 61951:
    case 61962:
    case 61963:
    case 61964:
    case 61965:
    case 61966:
    case 61967:
    case 61978:
    case 61979:
    case 61980:
    case 61981:
    case 61982:
    case 61983:
    case 61994:
    case 61995:
    case 61996:
    case 61997:
    case 61998:
    case 61999:
    case 62010:
    case 62011:
    case 62012:
    case 62013:
    case 62014:
    case 62015:
    case 62026:
    case 62027:
    case 62028:
    case 62029:
    case 62030:
    case 62031:
    case 62032:
    case 62042:
    case 62043:
    case 62044:
    case 62045:
    case 62046:
    case 62047:
    case 62058:
    case 62059:
    case 62060:
    case 62061:
    case 62062:
    case 62063:
    case 62074:
    case 62075:
    case 62076:
    case 62077:
    case 62078:
    case 62079:
    case 62090:
    case 62091:
    case 62092:
    case 62093:
    case 62094:
    case 62095:
    case 62106:
    case 62107:
    case 62108:
    case 62109:
    case 62110:
    case 62111:
    case 62112:
    case 62113:
    case 62114:
    case 62115:
    case 62116:
    case 62117:
    case 62118:
    case 62119:
    case 62120:
    case 62121:
    case 62122:
    case 62123:
    case 62124:
    case 62125:
    case 62126:
    case 62127:
    case 62128:
    case 62129:
    case 62130:
    case 62131:
    case 62132:
    case 62133:
    case 62134:
    case 62135:
    case 62136:
    case 62137:
    case 62138:
    case 62139:
    case 62140:
    case 62141:
    case 62142:
    case 62143:
    case 62144:
    case 62145:
    case 62146:
    case 62147:
    case 62148:
    case 62149:
    case 62150:
    case 62151:
    case 62152:
    case 62153:
    case 62154:
    case 62155:
    case 62156:
    case 62157:
    case 62158:
    case 62159:
    case 62160:
    case 62161:
    case 62162:
    case 62163:
    case 62164:
    case 62165:
    case 62166:
    case 62167:
    case 62168:
    case 62169:
    case 62170:
    case 62171:
    case 62172:
    case 62173:
    case 62174:
    case 62175:
    case 62176:
    case 62177:
    case 62178:
    case 62179:
    case 62180:
    case 62181:
    case 62182:
    case 62183:
    case 62184:
    case 62185:
    case 62186:
    case 62187:
    case 62188:
    case 62189:
    case 62190:
    case 62191:
    case 62192:
    case 62193:
    case 62194:
    case 62195:
    case 62196:
    case 62197:
    case 62198:
    case 62199:
    case 62200:
    case 62201:
    case 62202:
    case 62203:
    case 62204:
    case 62205:
    case 62206:
    case 62207:
    case 62218:
    case 62219:
    case 62220:
    case 62221:
    case 62222:
    case 62223:
    case 62234:
    case 62235:
    case 62236:
    case 62237:
    case 62238:
    case 62239:
    case 62250:
    case 62251:
    case 62252:
    case 62253:
    case 62254:
    case 62255:
    case 62266:
    case 62267:
    case 62268:
    case 62269:
    case 62270:
    case 62271:
    case 62282:
    case 62283:
    case 62284:
    case 62285:
    case 62286:
    case 62287:
    case 62298:
    case 62299:
    case 62300:
    case 62301:
    case 62302:
    case 62303:
    case 62314:
    case 62315:
    case 62316:
    case 62317:
    case 62318:
    case 62319:
    case 62330:
    case 62331:
    case 62332:
    case 62333:
    case 62334:
    case 62335:
    case 62346:
    case 62347:
    case 62348:
    case 62349:
    case 62350:
    case 62351:
    case 62361:
    case 62362:
    case 62363:
    case 62364:
    case 62365:
    case 62366:
    case 62367:
    case 62368:
    case 62369:
    case 62370:
    case 62371:
    case 62372:
    case 62373:
    case 62374:
    case 62375:
    case 62376:
    case 62377:
    case 62378:
    case 62379:
    case 62380:
    case 62381:
    case 62382:
    case 62383:
    case 62384:
    case 62385:
    case 62386:
    case 62387:
    case 62388:
    case 62389:
    case 62390:
    case 62391:
    case 62392:
    case 62393:
    case 62394:
    case 62395:
    case 62396:
    case 62397:
    case 62398:
    case 62399:
    case 62400:
    case 62401:
    case 62402:
    case 62403:
    case 62404:
    case 62405:
    case 62406:
    case 62407:
    case 62408:
    case 62409:
    case 62410:
    case 62411:
    case 62412:
    case 62413:
    case 62414:
    case 62415:
    case 62416:
    case 62417:
    case 62418:
    case 62419:
    case 62420:
    case 62421:
    case 62422:
    case 62423:
    case 62424:
    case 62425:
    case 62426:
    case 62427:
    case 62428:
    case 62429:
    case 62430:
    case 62431:
    case 62432:
    case 62433:
    case 62434:
    case 62435:
    case 62436:
    case 62437:
    case 62438:
    case 62439:
    case 62440:
    case 62441:
    case 62442:
    case 62443:
    case 62444:
    case 62445:
    case 62446:
    case 62447:
    case 62448:
    case 62449:
    case 62450:
    case 62451:
    case 62452:
    case 62453:
    case 62454:
    case 62455:
    case 62456:
    case 62457:
    case 62458:
    case 62459:
    case 62460:
    case 62461:
    case 62462:
    case 62463:
    case 62474:
    case 62475:
    case 62476:
    case 62477:
    case 62478:
    case 62479:
    case 62490:
    case 62491:
    case 62492:
    case 62493:
    case 62494:
    case 62495:
      return result;
    case 61442:
      result = @"book.closed.fill";
      break;
    case 61444:
      result = @"map.fill";
      break;
    case 61446:
      result = @"car.2.fill";
      break;
    case 61447:
      result = @"bolt.car.fill";
      break;
    case 61448:
      result = @"bus.doubledecker.fill";
      break;
    case 61449:
      result = @"tram.fill";
      break;
    case 61450:
      result = @"tram.tunnel.fill";
      break;
    case 61452:
      result = @"gauge";
      break;
    case 61453:
      result = @"speedometer";
      break;
    case 61454:
      result = @"barometer";
      break;
    case 61455:
      result = @"network";
      break;
    case 61456:
      result = @"rectangle.stack.fill";
      break;
    case 61457:
      result = @"square.stack.fill";
      break;
    case 61458:
      result = @"square.stack.3d.down.right.fill";
      break;
    case 61459:
      result = @"photo.fill.on.rectangle.fill";
      break;
    case 61460:
      result = @"photo.on.rectangle.angled";
      break;
    case 61461:
      result = @"camera.aperture";
      break;
    case 61462:
      result = @"paperplane.circle.fill";
      break;
    case 61464:
      result = @"note";
      break;
    case 61465:
      result = @"note.text";
      break;
    case 61466:
      result = @"note.text.badge.plus";
      break;
    case 61467:
      result = @"arrow.up.message.fill";
      break;
    case 61468:
      result = @"plus.message.fill";
      break;
    case 61470:
      result = @"speaker.wave.2.fill";
      break;
    case 61471:
      result = @"speaker.wave.3.fill";
      break;
    case 61472:
      result = @"speaker.slash.fill";
      break;
    case 61473:
      result = @"speaker.fill";
      break;
    case 61474:
      result = @"tv.and.hifispeaker.fill";
      break;
    case 61475:
      result = @"earpods";
      break;
    case 61476:
      result = @"airpods";
      break;
    case 61477:
      result = @"airpodspro";
      break;
    case 61478:
      result = @"hifispeaker.fill";
      break;
    case 61479:
      result = @"headphones.circle.fill";
      break;
    case 61480:
      result = @"radio.fill";
      break;
    case 61481:
      result = @"hearingdevice.ear.fill";
      break;
    case 61482:
      result = @"appletv.fill";
      break;
    case 61483:
      result = @"homepod.fill";
      break;
    case 61484:
      result = @"applewatch.radiowaves.left.and.right";
      break;
    case 61486:
      result = @"iphone";
      break;
    case 61487:
      result = @"iphone.radiowaves.left.and.right";
      break;
    case 61488:
      result = @"apps.iphone";
      break;
    case 61489:
      result = @"ipad";
      break;
    case 61490:
      result = @"ipad.landscape";
      break;
    case 61491:
      result = @"ipod";
      break;
    case 61493:
      result = @"figure.run.circle.fill";
      break;
    case 61494:
      result = @"figure.run.motion";
      break;
    case 61495:
      result = @"person.closed.fill";
      break;
    case 61496:
      result = @"person.open.fill";
      break;
    case 61497:
      result = @"arrow.triangle.turn.up.right.diamond.fill";
      break;
    case 61498:
      result = @"arrow.turn.up.right";
      break;
    case 61499:
      result = @"airplayaudio";
      break;
    case 61500:
      result = @"airplayvideo";
      break;
    case 61501:
      result = @"airdrop";
      break;
    case 61502:
      result = @"music.note.list";
      break;
    case 61503:
      result = @"music.note";
      break;
    case 61504:
      result = @"music.square.stack.fill";
      break;
    case 61505:
      result = @"waveform.path";
      break;
    case 61506:
      result = @"livephoto.play";
      break;
    case 61507:
      result = @"livephoto";
      break;
    case 61508:
      result = @"slowmo";
      break;
    case 61509:
      result = @"timelapse";
      break;
    case 61510:
      result = @"calendar.badge.plus";
      break;
    case 61511:
      result = @"calendar.badge.exclamationmark";
      break;
    case 61512:
      result = @"timer";
      break;
    case 61513:
      result = @"timer.square";
      break;
    case 61514:
      result = @"square.and.pencil";
      break;
    case 61515:
      result = @"plus.square.fill.on.square.fill";
      break;
    case 61517:
      result = @"moon.circle.fill";
      break;
    case 61518:
      result = @"nightshift";
      break;
    case 61519:
      result = @"truetone";
      break;
    case 61520:
      result = @"dial.low.fill";
      break;
    case 61521:
      result = @"dial.high.fill";
      break;
    case 61522:
      result = @"qrcode.viewfinder";
      break;
    case 61523:
      result = @"camera.viewfinder";
      break;
    case 61524:
      result = @"wallet.pass.fill";
      break;
    case 61525:
      result = @"appearance";
      break;
    case 61528:
      result = @"nosign";
      break;
    case 61529:
      result = @"command";
      break;
    case 61530:
      result = @"command.circle.fill";
      break;
    case 61531:
      result = @"command.square.fill";
      break;
    case 61532:
      result = @"brain.filled.head.profile";
      break;
    case 61533:
      result = @"brain.fill";
      break;
    case 61534:
      result = @"emoji.face.grinning.inverse";
      break;
    case 61535:
      result = @"emoji.face.smiling.with.smiling.eyes.inverse";
      break;
    case 61536:
      result = @"emoji.face.grinning.with.squinting.eyes.inverse";
      break;
    case 61537:
      result = @"emoji.face.with.tears.of.joy.inverse";
      break;
    case 61538:
      result = @"emoji.face.rolling.on.the.floor.laughing.inverse";
      break;
    case 61539:
      result = @"emoji.face.winking.with.stuck.out.tongue.inverse";
      break;
    case 61540:
      result = @"emoji.face.grimacing.inverse";
      break;
    case 61541:
      result = @"emoji.face.smiling.with.heart.eyes.inverse";
      break;
    case 61542:
      result = @"emoji.face.blowing.a.kiss.inverse";
      break;
    case 61543:
      result = @"emoji.face.smiling.with.hearts.inverse";
      break;
    case 61544:
      result = @"emoji.face.smiling.with.sunglasses.inverse";
      break;
    case 61545:
      result = @"emoji.face.with.starry.eyes.inverse";
      break;
    case 61546:
      result = @"memoji.inverse";
      break;
    case 61547:
      result = @"emoji.thumbsup.fill";
      break;
    case 61548:
      result = @"emoji.peace.hand.sign.fill";
      break;
    case 61549:
      result = @"emoji.love.you.gesture.fill";
      break;
    case 61550:
      result = @"emoji.closed.fist.fill";
      break;
    case 61551:
      result = @"facemask.fill";
      break;
    case 61552:
      result = @"puzzlepiece.extension.fill";
      break;
    case 61553:
      result = @"takeoutbag.and.cup.and.straw.fill";
      break;
    case 61554:
      result = @"emoji.bear.face.inverse";
      break;
    case 61555:
      result = @"emoji.tiger.face.inverse";
      break;
    case 61556:
      result = @"emoji.monkey.face.inverse";
      break;
    case 61557:
      result = @"emoji.ram.face.inverse";
      break;
    case 61558:
      result = @"emoji.rabbit.face.inverse";
      break;
    case 61559:
      result = @"emoji.snake.inverse";
      break;
    case 61560:
      result = @"emoji.chicken.face.inverse";
      break;
    case 61561:
      result = @"emoji.pig.face.inverse";
      break;
    case 61562:
      result = @"emoji.mouse.face.inverse";
      break;
    case 61563:
      result = @"emoji.cow.face.inverse";
      break;
    case 61564:
      result = @"emoji.dragon.face.inverse";
      break;
    case 61565:
      result = @"emoji.alien.monster.inverse";
      break;
    case 61566:
      result = @"emoji.robot.face.inverse";
      break;
    case 61567:
      result = @"emoji.ghost.inverse";
      break;
    case 61568:
      result = @"emoji.pile.of.poop.inverse";
      break;
    case 61569:
      result = @"emoji.skull.inverse";
      break;
    case 61570:
      result = @"folder";
      break;
    case 61571:
      result = @"folder.fill.badge.gearshape";
      break;
    case 61572:
      result = @"rectangle.grid.2x2.fill";
      break;
    case 61573:
      result = @"rectangle.grid.2x2";
      break;
    case 61574:
      result = @"rectangle.split.2x1.fill";
      break;
    case 61575:
      result = @"rectangle.split.3x1.fill";
      break;
    case 61576:
      result = @"rectangle.split.3x1";
      break;
    case 61577:
      result = @"emoji.heart.fill";
      break;
    case 61578:
      result = @"emoji.hearts.2.fill";
      break;
    case 61579:
      result = @"star.leadinghalf.filled";
      break;
    case 61582:
      result = @"arrow.up.message";
      break;
    case 61583:
      result = @"quote.bubble";
      break;
    case 61584:
      result = @"hand.raised.slash.fill";
      break;
    case 61585:
      result = @"hand.raised.slash";
      break;
    case 61586:
      result = @"waveform";
      break;
    case 61587:
      result = @"checklist";
      break;
    case 61588:
      result = @"character.textbox";
      break;
    case 61589:
      result = @"xmark.square";
      break;
    case 61590:
      result = @"eraser.fill";
      break;
    case 61591:
      result = @"scribble.variable";
      break;
    case 61592:
      result = @"pencil.and.scribble";
      break;
    case 61593:
      result = @"clipboard.fill";
      break;
    case 61696:
      result = @"list.bullet.clipboard.fill";
      break;
    case 61697:
      result = @"richtext.page.fill";
      break;
    case 61698:
      result = @"text.page.fill";
      break;
    case 61699:
      result = @"append.page.fill";
      break;
    case 61700:
      result = @"apple.terminal.fill";
      break;
    case 61701:
      result = @"calendar.badge.clock";
      break;
    case 61702:
      result = @"calendar.badge.minus";
      break;
    case 61703:
      result = @"calendar.badge.checkmark";
      break;
    case 61704:
      result = @"quicknote";
      break;
    case 61705:
      result = @"menucard.fill";
      break;
    case 61712:
      result = @"magazine.fill";
      break;
    case 61713:
      result = @"photo.artframe";
      break;
    case 61714:
      result = @"figure.wave";
      break;
    case 61715:
      result = @"dumbbell.fill";
      break;
    case 61716:
      result = @"sportscourt.fill";
      break;
    case 61717:
      result = @"tennis.racket";
      break;
    case 61718:
      result = @"skateboard.fill";
      break;
    case 61719:
      result = @"duffle.bag.fill";
      break;
    case 61720:
      result = @"apple.classical";
      break;
    case 61721:
      result = @"bluetooth";
      break;
    case 61728:
      result = @"flag.2.crossed.fill";
      break;
    case 61729:
      result = @"flag.checkered.2.crossed";
      break;
    case 61730:
      result = @"x.squareroot";
      break;
    case 61731:
      result = @"flashlight.on.fill";
      break;
    case 61732:
      result = @"flashlight.slash";
      break;
    case 61733:
      result = @"paintpalette.fill";
      break;
    case 61734:
      result = @"mail.stack.fill";
      break;
    case 61735:
      result = @"mail.fill";
      break;
    case 61736:
      result = @"gearshape.fill";
      break;
    case 61737:
      result = @"gearshape.2.fill";
      break;
    case 61744:
      result = @"signature";
      break;
    case 61745:
      result = @"wallet.fill";
      break;
    case 61746:
      result = @"metronome.fill";
      break;
    case 61747:
      result = @"numbers";
      break;
    case 61748:
      result = @"pianokeys.inverse";
      break;
    case 61749:
      result = @"paintbrush.pointed.fill";
      break;
    case 61750:
      result = @"applescript.fill";
      break;
    case 61751:
      result = @"scroll.fill";
      break;
    case 61752:
      result = @"scanner.fill";
      break;
    case 61753:
      result = @"handbag.fill";
      break;
    case 61760:
      result = @"suitcase.rolling.fill";
      break;
    case 61761:
      result = @"homekit";
      break;
    case 61762:
      result = @"building.columns.fill";
      break;
    case 61763:
      result = @"lamp.desk.fill";
      break;
    case 61764:
      result = @"lamp.ceiling.fill";
      break;
    case 61765:
      result = @"fan.floor.fill";
      break;
    case 61766:
      result = @"fan.fill";
      break;
    case 61767:
      result = @"fan.ceiling.fill";
      break;
    case 61768:
      result = @"lamp.floor.fill";
      break;
    case 61769:
      result = @"powerplug.fill";
      break;
    case 61776:
      result = @"balloon.fill";
      break;
    case 61777:
      result = @"sailboat.regatta.fill";
      break;
    case 61778:
      result = @"fireworks";
      break;
    case 61779:
      result = @"party.popper.fill";
      break;
    case 61780:
      result = @"popcorn.fill";
      break;
    case 61781:
      result = @"frying.pan.fill";
      break;
    case 61782:
      result = @"sofa.fill";
      break;
    case 61783:
      result = @"torus";
      break;
    case 61784:
      result = @"macintosh.classic";
      break;
    case 61785:
      result = @"finder";
      break;
    case 61792:
      result = @"watch.analog";
      break;
    case 61793:
      result = @"applewatch.side.right";
      break;
    case 61794:
      result = @"mediastick";
      break;
    case 61795:
      result = @"tv";
      break;
    case 61796:
      result = @"shazam.logo.fill";
      break;
    case 61797:
      result = @"guitars.fill";
      break;
    case 61798:
      result = @"moped.fill";
      break;
    case 61799:
      result = @"scooter";
      break;
    case 61800:
      result = @"stroller.fill";
      break;
    case 61801:
      result = @"comb.fill";
      break;
    case 61808:
      result = @"horn.fill";
      break;
    case 61809:
      result = @"tortoise.fill";
      break;
    case 61810:
      result = @"hare.fill";
      break;
    case 61811:
      result = @"dog.fill";
      break;
    case 61812:
      result = @"cat.fill";
      break;
    case 61813:
      result = @"lizard.fill";
      break;
    case 61814:
      result = @"bird.fill";
      break;
    case 61815:
      result = @"ant.fill";
      break;
    case 61816:
      result = @"ladybug.fill";
      break;
    case 61817:
      result = @"function";
      break;
    case 61824:
      result = @"percent";
      break;
    case 61825:
      result = @"teddybear.fill";
      break;
    case 61826:
      result = @"leaf.fill";
      break;
    case 61827:
      result = @"textformat.characters";
      break;
    case 61828:
      result = @"crown.fill";
      break;
    case 61829:
      result = @"movieclapper.fill";
      break;
    case 61830:
      result = @"textformat";
      break;
    case 61831:
      result = @"film.stack.fill";
      break;
    case 61832:
      result = @"textformat.size";
      break;
    case 61833:
      result = @"textformat.superscript";
      break;
    case 61840:
      result = @"textformat.subscript";
      break;
    case 61841:
      result = @"sum";
      break;
    case 61842:
      result = @"compass.drawing";
      break;
    case 61843:
      result = @"angle";
      break;
    case 61844:
      result = @"bold.italic.underline";
      break;
    case 61845:
      result = @"characters.lowercase";
      break;
    case 61846:
      result = @"characters.uppercase";
      break;
    case 61847:
      result = @"vision.pro";
      break;
    case 61848:
      result = @"battery.25percent";
      break;
    case 61849:
      result = @"battery.100percent.bolt";
      break;
    case 61952:
      result = @"xmark";
      break;
    case 61953:
      result = @"arrow.left";
      break;
    case 61954:
      result = @"arrow.right";
      break;
    case 61955:
      result = @"arrow.up";
      break;
    case 61956:
      result = @"arrow.down";
      break;
    case 61957:
      result = @"medical.thermometer.fill";
      break;
    case 61958:
      result = @"calendar.and.person";
      break;
    case 61959:
      result = @"calendar.and.chart.bar";
      break;
    case 61960:
      result = @"person.crop.badge.magnifyingglass.fill";
      break;
    case 61961:
      result = @"apple.journal";
      break;
    case 61968:
      result = @"figure.run.treadmill";
      break;
    case 61969:
      result = @"figure.walk.treadmill";
      break;
    case 61970:
      result = @"figure.ice.skating";
      break;
    case 61971:
      result = @"degreesign.celsius";
      break;
    case 61972:
      result = @"degreesign.farenheit";
      break;
    case 61973:
      result = @"fire.extinguisher.fill";
      break;
    case 61974:
      result = @"wallet.bifold.fill";
      break;
    case 61975:
      result = @"house.badge.wifi.fill";
      break;
    case 61976:
      result = @"key.2.on.ring.fill";
      break;
    case 61977:
      result = @"wheelchair";
      break;
    case 61984:
      result = @"helmet.fill";
      break;
    case 61985:
      result = @"coat.fill";
      break;
    case 61986:
      result = @"jacket.fill";
      break;
    case 61987:
      result = @"heart.text.clipboard.fill";
      break;
    case 61988:
      result = @"humidity.fill";
      break;
    case 61989:
      result = @"sparkles";
      break;
    case 61990:
      result = @"moon.haze.fill";
      break;
    case 61991:
      result = @"moon.stars.fill";
      break;
    case 61992:
      result = @"cloud.hail.fill";
      break;
    case 61993:
      result = @"cloud.sleet.fill";
      break;
    case 62000:
      result = @"cloud.bolt.fill";
      break;
    case 62001:
      result = @"cloud.bolt.rain.fill";
      break;
    case 62002:
      result = @"cloud.sun.fill";
      break;
    case 62003:
      result = @"cloud.sun.rain.fill";
      break;
    case 62004:
      result = @"cloud.sun.bolt.fill";
      break;
    case 62005:
      result = @"cloud.moon.fill";
      break;
    case 62006:
      result = @"cloud.moon.rain.fill";
      break;
    case 62007:
      result = @"cloud.moon.bolt.fill";
      break;
    case 62008:
      result = @"wind";
      break;
    case 62009:
      result = @"wind.snow";
      break;
    case 62016:
      result = @"tornado";
      break;
    case 62017:
      result = @"thermometer.sun.fill";
      break;
    case 62018:
      result = @"thermometer.snowflake";
      break;
    case 62019:
      result = @"sunset.fill";
      break;
    case 62020:
      result = @"sunrise.fill";
      break;
    case 62021:
      result = @"airplane.departure";
      break;
    case 62022:
      result = @"airplane.arrival";
      break;
    case 62023:
      result = @"cablecar.fill";
      break;
    case 62024:
      result = @"lightrail.fill";
      break;
    case 62025:
      result = @"ferry.fill";
      break;
    case 62033:
      result = @"truck.box.fill";
      break;
    case 62034:
      result = @"ev.charger.fill";
      break;
    case 62035:
      result = @"road.lanes";
      break;
    case 62036:
      result = @"flag.pattern.checkered";
      break;
    case 62037:
      result = @"arcade.stick.console.fill";
      break;
    case 62038:
      result = @"gearshift.layout.sixspeed";
      break;
    case 62039:
      result = @"formfitting.gamecontroller.fill";
      break;
    case 62040:
      result = @"joystickcontroller.fill";
      break;
    case 62041:
      result = @"personalhotspot";
      break;
    case 62048:
      result = @"bolt.horizontal.fill";
      break;
    case 62049:
      result = @"satellite.fill";
      break;
    case 62050:
      result = @"usb";
      break;
    case 62051:
      result = @"bonjour";
      break;
    case 62052:
      result = @"port.hdmi";
      break;
    case 62053:
      result = @"port.thunderbolt";
      break;
    case 62054:
      result = @"port.usb.c";
      break;
    case 62055:
      result = @"port.usb.a";
      break;
    case 62056:
      result = @"port.usb.b";
      break;
    case 62057:
      result = @"port.ethernet";
      break;
    case 62064:
      result = @"port.vga";
      break;
    case 62065:
      result = @"thunderbolt";
      break;
    case 62066:
      result = @"firewire";
      break;
    case 62067:
      result = @"ethernet";
      break;
    case 62068:
      result = @"antenna.radiowaves.left.and.right";
      break;
    case 62069:
      result = @"oven.fill";
      break;
    case 62070:
      result = @"microwave.fill";
      break;
    case 62071:
      result = @"refrigerator.fill";
      break;
    case 62072:
      result = @"toilet.fill";
      break;
    case 62073:
      result = @"lightbulb.led.fill";
      break;
    case 62080:
      result = @"lightbulb.led.wide.fill";
      break;
    case 62081:
      result = @"figure.archery";
      break;
    case 62082:
      result = @"figure.basketball";
      break;
    case 62083:
      result = @"figure.climbing";
      break;
    case 62084:
      result = @"figure.cooldown";
      break;
    case 62085:
      result = @"figure.core.training";
      break;
    case 62086:
      result = @"figure.curling";
      break;
    case 62087:
      result = @"figure.elliptical";
      break;
    case 62088:
      result = @"figure.fencing";
      break;
    case 62089:
      result = @"figure.gymnastics";
      break;
    case 62096:
      result = @"figure.highintensity.intervaltraining";
      break;
    case 62097:
      result = @"figure.hockey";
      break;
    case 62098:
      result = @"figure.ice.hockey";
      break;
    case 62099:
      result = @"figure.indoor.cycle";
      break;
    case 62100:
      result = @"figure.outdoor.cycle";
      break;
    case 62101:
      result = @"figure.outdoor.rowing";
      break;
    case 62102:
      result = @"figure.skateboarding";
      break;
    case 62103:
      result = @"figure.ice.skating";
      break;
    case 62104:
      result = @"figure.stair.stepper";
      break;
    case 62105:
      result = @"medal.fill";
      break;
    case 62208:
      result = @"fossil.shell.fill";
      break;
    case 62209:
      result = @"move.3d";
      break;
    case 62210:
      result = @"hat.cap.fill";
      break;
    case 62211:
      result = @"book.and.wrench.fill";
      break;
    case 62212:
      result = @"key.radiowaves.forward.fill";
      break;
    case 62213:
      result = @"apple.intelligence";
      break;
    case 62214:
      result = @"hand.point.up.left.fill";
      break;
    case 62215:
      result = @"hand.tap.fill";
      break;
    case 62216:
      result = @"hand.draw.fill";
      break;
    case 62217:
      result = @"shippingbox.fill";
      break;
    case 62224:
      result = @"engine.combustion.fill";
      break;
    case 62225:
      result = @"pc";
      break;
    case 62226:
      result = @"bell.badge.fill";
      break;
    case 62227:
      result = @"bell.badge.waveform.fill";
      break;
    case 62228:
      result = @"bell.slash.fill";
      break;
    case 62229:
      result = @"bell.and.waves.left.and.right.fill";
      break;
    case 62230:
      result = @"swatchpalette.fill";
      break;
    case 62231:
      result = @"mug.fill";
      break;
    case 62232:
      result = @"oilcan.fill";
      break;
    case 62233:
      result = @"newspaper.fill";
      break;
    case 62240:
      result = @"accessibility.fill";
      break;
    case 62241:
      result = @"megaphone.fill";
      break;
    case 62242:
      result = @"firewall.fill";
      break;
    case 62243:
      result = @"basket.fill";
      break;
    case 62244:
      result = @"level.fill";
      break;
    case 62245:
      result = @"filevault.fill";
      break;
    case 62246:
      result = @"fireplace.fill";
      break;
    case 62247:
      result = @"cabinet.fill";
      break;
    case 62248:
      result = @"dryer.fill";
      break;
    case 62249:
      result = @"sink.fill";
      break;
    case 62256:
      result = @"pin.fill";
      break;
    case 62257:
      result = @"shoe.fill";
      break;
    case 62258:
      result = @"buildingblock.fill";
      break;
    case 62259:
      result = @"dpad.fill";
      break;
    case 62260:
      result = @"waterbottle.fill";
      break;
    case 62261:
      result = @"sdcard.fill";
      break;
    case 62262:
      result = @"simcard.fill";
      break;
    case 62263:
      result = @"esim.fill";
      break;
    case 62264:
      result = @"scalemass.fill";
      break;
    case 62265:
      result = @"banknote.fill";
      break;
    case 62272:
      result = @"hockey.puck.fill";
      break;
    case 62273:
      result = @"australian.football.fill";
      break;
    case 62274:
      result = @"american.football.fill";
      break;
    case 62275:
      result = @"beach.umbrella.fill";
      break;
    case 62276:
      result = @"suit.spade.fill";
      break;
    case 62277:
      result = @"suit.diamond.fill";
      break;
    case 62278:
      result = @"suit.club.fill";
      break;
    case 62279:
      result = @"shower.handheld.fill";
      break;
    case 62280:
      result = @"signpost.right.fill";
      break;
    case 62281:
      result = @"macpro.gen3.fill";
      break;
    case 62288:
      result = @"macpro.gen2.fill";
      break;
    case 62289:
      result = @"macpro.gen1.fill";
      break;
    case 62290:
      result = @"homepod.mini.fill";
      break;
    case 62291:
      result = @"homepod.2.fill";
      break;
    case 62292:
      result = @"suv.side.fill";
      break;
    case 62293:
      result = @"car.side.fill";
      break;
    case 62294:
      result = @"convertible.side.fill";
      break;
    case 62295:
      result = @"horn.blast.fill";
      break;
    case 62296:
      result = @"vaccination.card.fill";
      break;
    case 62297:
      result = @"ivfluid.bag.fill";
      break;
    case 62304:
      result = @"hat.widebrim.fill";
      break;
    case 62305:
      result = @"globe.desk.fill";
      break;
    case 62306:
      result = @"cup.and.heat.waves.fill";
      break;
    case 62307:
      result = @"network.connected.to.line.below.fill";
      break;
    case 62308:
      result = @"app.connected.to.app.below.fill";
      break;
    case 62309:
      result = @"wrench.adjustable.fill";
      break;
    case 62310:
      result = @"mustache.fill";
      break;
    case 62311:
      result = @"flipphone";
      break;
    case 62312:
      result = @"siri";
      break;
    case 62313:
      result = @"appstore";
      break;
    case 62320:
      result = @"carplay";
      break;
    case 62321:
      result = @"text.append";
      break;
    case 62322:
      result = @"apple.cash";
      break;
    case 62323:
      result = @"apple.math.notes";
      break;
    case 62324:
      result = @"apple.mindfulness";
      break;
    case 62325:
      result = @"apple.breathe";
      break;
    case 62326:
      result = @"apple.reflect";
      break;
    case 62327:
      result = @"apple.meditate";
      break;
    case 62328:
      result = @"apple.stateofmind";
      break;
    case 62329:
      result = @"apple.cycletracking";
      break;
    case 62336:
      result = @"apple.news";
      break;
    case 62337:
      result = @"apple.health.trends";
      break;
    case 62338:
      result = @"apple.pages";
      break;
    case 62339:
      result = @"apple.keynote";
      break;
    case 62340:
      result = @"apple.numbers";
      break;
    case 62341:
      result = @"beziercurve";
      break;
    case 62342:
      result = @"road.lanes.curved.left";
      break;
    case 62343:
      result = @"road.lanes.curved.right";
      break;
    case 62344:
      result = @"point.topleft.down.to.point.bottomright.curvepath";
      break;
    case 62345:
      result = @"point.bottomleft.forward.to.point.topright.scurvepath";
      break;
    case 62352:
      result = @"sparkle";
      break;
    case 62353:
      result = @"arrow.up.right";
      break;
    case 62354:
      result = @"arrow.up.left";
      break;
    case 62355:
      result = @"text.insert";
      break;
    case 62356:
      result = @"text.quote";
      break;
    case 62357:
      result = @"text.alignleft";
      break;
    case 62358:
      result = @"text.aligncenter";
      break;
    case 62359:
      result = @"text.alignright";
      break;
    case 62360:
      result = @"text.justify";
      break;
    case 62464:
      result = @"suitcase.rolling.and.suitcase.fill";
      break;
    case 62465:
      result = @"pet.carrier.fill";
      break;
    case 62466:
      result = @"airplane.landed";
      break;
    case 62467:
      result = @"airplane.cloud";
      break;
    case 62468:
      result = @"airplane.ticket.fill";
      break;
    case 62469:
      result = @"airplaneseat";
      break;
    case 62470:
      result = @"figure.walk.suitcase.rolling";
      break;
    case 62471:
      result = @"apple.classical.pages.fill";
      break;
    case 62472:
      result = @"text.square.filled";
      break;
    case 62473:
      result = @"character.text.justify";
      break;
    case 62480:
      result = @"graph.2d";
      break;
    case 62481:
      result = @"math.operators.ar";
      break;
    case 62482:
      result = @"circle.fill";
      break;
    case 62483:
      result = @"capsule.portrait.fill";
      break;
    case 62484:
      result = @"rectangle.fill";
      break;
    case 62485:
      result = @"rectangle.portrait.fill";
      break;
    case 62486:
      result = @"oval.fill";
      break;
    case 62487:
      result = @"oval.portrait.fill";
      break;
    case 62488:
      result = @"triangle.fill";
      break;
    case 62489:
      result = @"diamond.fill";
      break;
    case 62496:
      result = @"octagon.fill";
      break;
    case 62497:
      result = @"hexagon.fill";
      break;
    case 62498:
      result = @"pentagon.fill";
      break;
    case 62499:
      result = @"seal.fill";
      break;
    case 62500:
      result = @"rhombus.fill";
      break;
    case 62501:
      result = @"shield.fill";
      break;
    default:
      switch(v1)
      {
        case 59392:
          result = @"ellipsis";
          break;
        case 59395:
          result = @"dollarsign";
          break;
        case 59402:
          result = @"video.fill";
          break;
        case 59403:
          result = @"message.and.message.fill";
          break;
        case 59405:
          result = @"square.grid.4x3.fill";
          break;
        case 59412:
          result = @"globe";
          break;
        case 59414:
          result = @"message.fill";
          break;
        case 59436:
          result = @"laptopcomputer";
          break;
        case 59437:
          result = @"figure";
          break;
        case 59445:
          result = @"list.bullet";
          break;
        case 59446:
          result = @"keyboard.fill";
          break;
        case 59448:
          result = @"sterlingsign";
          break;
        case 59452:
          result = @"car.fill";
          break;
        case 59456:
          result = @"emoji.american.football.inverse";
          break;
        case 59459:
          result = @"icloud.fill";
          break;
        case 59465:
          result = @"book.fill";
          break;
        case 59478:
          result = @"tree.fill";
          break;
        case 59489:
          result = @"battery.100";
          break;
        case 59497:
          result = @"dot.radiowaves.up.forward";
          break;
        case 59508:
          result = @"play.fill";
          break;
        case 59511:
          result = @"wand.and.stars.inverse";
          break;
        case 59512:
          result = @"eurosign";
          break;
        case 59514:
          result = @"yensign";
          break;
        case 59515:
          result = @"bitcoinsign";
          break;
        case 59516:
          result = @"circle.dotted";
          break;
        case 59519:
          result = @"cylinder.split.1x2.fill";
          break;
        case 59648:
          result = @"airplane";
          break;
        case 59649:
          result = @"alarm.fill";
          break;
        case 59650:
          result = @"exclamationmark.triangle.fill";
          break;
        case 59651:
          result = @"emoji.alien.inverse";
          break;
        case 59652:
          result = @"cross.fill";
          break;
        case 59653:
          result = @"archivebox.fill";
          break;
        case 59654:
          result = @"arrowshape.turn.up.backward.fill";
          break;
        case 59655:
          result = @"arrowshape.turn.up.forward.fill";
          break;
        case 59656:
          result = @"staroflife.fill";
          break;
        case 59657:
          result = @"atom";
          break;
        case 59660:
          result = @"bandage.fill";
          break;
        case 59661:
          result = @"barcode";
          break;
        case 59662:
          result = @"chart.bar.fill";
          break;
        case 59663:
          result = @"emoji.baseball.inverse";
          break;
        case 59664:
          result = @"emoji.basketball.inverse";
          break;
        case 59665:
          result = @"bathtub.fill";
          break;
        case 59666:
          result = @"bed.double.fill";
          break;
        case 59667:
          result = @"bell.fill";
          break;
        case 59668:
          result = @"bicycle";
          break;
        case 59669:
          result = @"binoculars.fill";
          break;
        case 59670:
          result = @"bookmark.fill";
          break;
        case 59671:
          result = @"books.vertical.fill";
          break;
        case 59673:
          result = @"square.fill";
          break;
        case 59674:
          result = @"square";
          break;
        case 59675:
          result = @"hand.point.up.braille.fill";
          break;
        case 59676:
          result = @"briefcase.fill";
          break;
        case 59677:
          result = @"building.2.fill";
          break;
        case 59678:
          result = @"bus.fill";
          break;
        case 59679:
          result = @"birthday.cake.fill";
          break;
        case 59680:
          result = @"calculator.fill";
          break;
        case 59681:
          result = @"calendar";
          break;
        case 59682:
          result = @"camera.fill";
          break;
        case 59683:
          result = @"carrot.fill";
          break;
        case 59684:
          result = @"emoji.cat.face.inverse";
          break;
        case 59685:
          result = @"link";
          break;
        case 59690:
          result = @"checkmark";
          break;
        case 59692:
          result = @"chevron.down";
          break;
        case 59693:
          result = @"square.and.arrow.down.fill";
          break;
        case 59695:
          result = @"forward.fill";
          break;
        case 59696:
          result = @"chevron.backward";
          break;
        case 59697:
          result = @"info";
          break;
        case 59699:
          result = @"play.circle.fill";
          break;
        case 59700:
          result = @"plus";
          break;
        case 59702:
          result = @"power";
          break;
        case 59703:
          result = @"questionmark";
          break;
        case 59704:
          result = @"backward.fill";
          break;
        case 59705:
          result = @"chevron.forward";
          break;
        case 59706:
          result = @"stop.fill";
          break;
        case 59707:
          result = @"chevron.up";
          break;
        case 59708:
          result = @"square.and.arrow.up";
          break;
        case 59709:
          result = @"xmark.circle.fill";
          break;
        case 59711:
          result = @"doc.on.clipboard.fill";
          break;
        case 59712:
          result = @"clock.fill";
          break;
        case 59713:
          result = @"hanger";
          break;
        case 59714:
          result = @"cloud.fill";
          break;
        case 59715:
          result = @"cloud.rain.fill";
          break;
        case 59716:
          result = @"eyedropper.halffull";
          break;
        case 59717:
          result = @"safari.fill";
          break;
        case 59718:
          result = @"point.3.filled.connected.trianglepath.dotted";
          break;
        case 59719:
          result = @"creditcard.fill";
          break;
        case 59720:
          result = @"crop";
          break;
        case 59721:
          result = @"cube.fill";
          break;
        case 59722:
          result = @"server.rack";
          break;
        case 59723:
          result = @"dice.fill";
          break;
        case 59724:
          result = @"signpost.right.and.left.fill";
          break;
        case 59725:
          result = @"document.fill";
          break;
        case 59726:
          result = @"doc.text.fill";
          break;
        case 59727:
          result = @"doc.text";
          break;
        case 59728:
          result = @"emoji.dog.face.inverse";
          break;
        case 59729:
          result = @"quote.bubble.fill";
          break;
        case 59730:
          result = @"theatermasks.fill";
          break;
        case 59732:
          result = @"dot.radiowaves.forward";
          break;
        case 59733:
          result = @"film.fill";
          break;
        case 59734:
          result = @"flame.fill";
          break;
        case 59735:
          result = @"fish.fill";
          break;
        case 59736:
          result = @"flag.fill";
          break;
        case 59737:
          result = @"folder.fill";
          break;
        case 59738:
          result = @"shoeprints.fill";
          break;
        case 59739:
          result = @"square.grid.2x2.fill";
          break;
        case 59740:
          result = @"apple.slice.fill";
          break;
        case 59741:
          result = @"fuelpump.fill";
          break;
        case 59742:
          result = @"gamecontroller.fill";
          break;
        case 59743:
          result = @"gear";
          break;
        case 59744:
          result = @"gift.fill";
          break;
        case 59745:
          result = @"eyeglasses";
          break;
        case 59746:
          result = @"graduationcap.fill";
          break;
        case 59747:
          result = @"storefront.fill";
          break;
        case 59748:
          result = @"hammer.fill";
          break;
        case 59750:
          result = @"bag.fill";
          break;
        case 59751:
          result = @"hand.raised.fill";
          break;
        case 59752:
          result = @"internaldrive.fill";
          break;
        case 59753:
          result = @"headphones";
          break;
        case 59754:
          result = @"heart.fill";
          break;
        case 59755:
          result = @"house.fill";
          break;
        case 59756:
          result = @"emoji.horse.face.inverse";
          break;
        case 59757:
          result = @"hourglass";
          break;
        case 59758:
          result = @"infinity";
          break;
        case 59759:
          result = @"inhaler.fill";
          break;
        case 59760:
          result = @"key.fill";
          break;
        case 59761:
          result = @"washer.fill";
          break;
        case 59762:
          result = @"lifepreserver.fill";
          break;
        case 59763:
          result = @"lightbulb.fill";
          break;
        case 59764:
          result = @"bolt.fill";
          break;
        case 59767:
          result = @"rays";
          break;
        case 59768:
          result = @"location.fill";
          break;
        case 59769:
          result = @"mappin.and.ellipse";
          break;
        case 59770:
          result = @"lock.fill";
          break;
        case 59771:
          result = @"wand.and.rays.inverse";
          break;
        case 59772:
          result = @"magnifyingglass";
          break;
        case 59773:
          result = @"envelope.fill";
          break;
        case 59774:
          result = @"envelope.open.fill";
          break;
        case 59775:
          result = @"figure.stand";
          break;
        case 59776:
          result = @"wineglass.fill";
          break;
        case 59778:
          result = @"cross.vial.fill";
          break;
        case 59779:
          result = @"text.bubble.fill";
          break;
        case 59780:
          result = @"mic.fill";
          break;
        case 59782:
          result = @"moon.fill";
          break;
        case 59783:
          result = @"motorcycle.fill";
          break;
        case 59784:
          result = @"photo.fill";
          break;
        case 59785:
          result = @"mountain.2.fill";
          break;
        case 59786:
          result = @"arrow.up.and.down.and.arrow.left.and.right";
          break;
        case 59788:
          result = @"ticket.fill";
          break;
        case 59789:
          result = @"cup.and.saucer.fill";
          break;
        case 59790:
          result = @"music";
          break;
        case 59791:
          result = @"doc.richtext";
          break;
        case 59792:
          result = @"stove.fill";
          break;
        case 59793:
          result = @"paintbrush.fill";
          break;
        case 59794:
          result = @"paperclip";
          break;
        case 59795:
          result = @"p.square.fill";
          break;
        case 59796:
          result = @"pawprint.fill";
          break;
        case 59797:
          result = @"peacesign";
          break;
        case 59798:
          result = @"pencil";
          break;
        case 59799:
          result = @"person.3.fill";
          break;
        case 59800:
          result = @"person.2.fill";
          break;
        case 59801:
          result = @"person.fill";
          break;
        case 59803:
          result = @"figure.dance";
          break;
        case 59804:
          result = @"person.raised.hand";
          break;
        case 59805:
          result = @"figure.hiking";
          break;
        case 59806:
          result = @"figure.roll";
          break;
        case 59807:
          result = @"figure.strengthtraining.traditional";
          break;
        case 59808:
          result = @"figure.run";
          break;
        case 59809:
          result = @"figure.skiing.crosscountry";
          break;
        case 59810:
          result = @"figure.snowboarding";
          break;
        case 59811:
          result = @"figure.pool.swim";
          break;
        case 59812:
          result = @"figure.walk";
          break;
        case 59814:
          result = @"phone.fill";
          break;
        case 59815:
          result = @"pills.fill";
          break;
        case 59816:
          result = @"podcasts";
          break;
        case 59817:
          result = @"printer.fill";
          break;
        case 59818:
          result = @"puzzlepiece.fill";
          break;
        case 59819:
          result = @"qrcode";
          break;
        case 59820:
          result = @"arrow.3.trianglepath";
          break;
        case 59821:
          result = @"arrow.2.squarepath";
          break;
        case 59822:
          result = @"rocket.fill";
          break;
        case 59823:
          result = @"sailboat.fill";
          break;
        case 59824:
          result = @"scissors";
          break;
        case 59825:
          result = @"screwdriver.fill";
          break;
        case 59826:
          result = @"externaldrive.connected.to.line.below.fill";
          break;
        case 59827:
          result = @"tshirt.fill";
          break;
        case 59828:
          result = @"cart.fill";
          break;
        case 59829:
          result = @"shower.fill";
          break;
        case 59830:
          result = @"arrow.down.right.and.arrow.up.left";
          break;
        case 59832:
          result = @"shuffle";
          break;
        case 59833:
          result = @"slider.horizontal.3";
          break;
        case 59834:
          result = @"face.smiling.inverse";
          break;
        case 59835:
          result = @"snowflake";
          break;
        case 59836:
          result = @"paperplane.fill";
          break;
        case 59837:
          result = @"emoji.soccer.ball.inverse";
          break;
        case 59839:
          result = @"speaker.wave.1.fill";
          break;
        case 59840:
          result = @"stairs";
          break;
        case 59841:
          result = @"star.fill";
          break;
        case 59843:
          result = @"stethoscope";
          break;
        case 59844:
          result = @"stopwatch.fill";
          break;
        case 59845:
          result = @"sun.max.fill";
          break;
        case 59846:
          result = @"arrow.triangle.2.circlepath";
          break;
        case 59847:
          result = @"syringe.fill";
          break;
        case 59848:
          result = @"tag.fill";
          break;
        case 59849:
          result = @"circle.circle";
          break;
        case 59851:
          result = @"tv.fill";
          break;
        case 59852:
          result = @"tennisball.fill";
          break;
        case 59853:
          result = @"t.square.fill";
          break;
        case 59854:
          result = @"thermometer.medium";
          break;
        case 59856:
          result = @"camera.filters";
          break;
        case 59857:
          result = @"hand.thumbsup.fill";
          break;
        case 59859:
          result = @"trash.fill";
          break;
        case 59860:
          result = @"trophy.fill";
          break;
        case 59861:
          result = @"umbrella.fill";
          break;
        case 59862:
          result = @"lock.open.fill";
          break;
        case 59863:
          result = @"fork.knife";
          break;
        case 59864:
          result = @"play.rectangle.fill";
          break;
        case 59865:
          result = @"applewatch";
          break;
        case 59866:
          result = @"drop.fill";
          break;
        case 59867:
          result = @"wifi";
          break;
        case 59870:
          result = @"wrench.fill";
          break;
        default:
          return result;
      }

      break;
  }

  return result;
}

uint64_t WFReplacementGlyphCharacterForCharacter(uint64_t a1)
{
  if (a1 > 59830)
  {
    if (a1 <= 61530)
    {
      if (a1 <= 61492)
      {
        if (a1 > 61461)
        {
          if (a1 == 61462)
          {
            return 59836;
          }

          if (a1 == 61479)
          {
            return 59753;
          }
        }

        else
        {
          if (a1 == 59831)
          {
            return 59830;
          }

          if (a1 == 59855)
          {
            return 59414;
          }
        }

        return a1;
      }

      if (a1 <= 61516)
      {
        if (a1 == 61493)
        {
          return 59808;
        }

        if (a1 == 61513)
        {
          return 61512;
        }

        return a1;
      }

      if (a1 == 61517)
      {
        return 59782;
      }

      if (a1 != 61530)
      {
        return a1;
      }
    }

    else
    {
      if (a1 > 61580)
      {
        if (a1 <= 61582)
        {
          if (a1 == 61581)
          {
            return 61989;
          }

          else
          {
            return 61467;
          }
        }

        switch(a1)
        {
          case 0xF08F:
            return 59729;
          case 0xF091:
            return 61584;
          case 0xF095:
            return 61952;
        }

        return a1;
      }

      if (a1 > 61572)
      {
        if (a1 == 61573)
        {
          return 61572;
        }

        if (a1 == 61576)
        {
          return 61575;
        }

        return a1;
      }

      if (a1 != 61531)
      {
        if (a1 == 61570)
        {
          return 59737;
        }

        return a1;
      }
    }

    return 61529;
  }

  v2 = a1 - 59393;
  result = 59848;
  switch(v2)
  {
    case 0:
      result = 59654;
      break;
    case 1:
      result = 59788;
      break;
    case 3:
      result = 59762;
      break;
    case 4:
      result = 59846;
      break;
    case 5:
      result = 59857;
      break;
    case 6:
      result = 59755;
      break;
    case 7:
      result = 59776;
      break;
    case 8:
      result = 59682;
      break;
    case 11:
      result = 59718;
      break;
    case 13:
      result = 59648;
      break;
    case 14:
      result = 59744;
      break;
    case 16:
      result = 59773;
      break;
    case 17:
      result = 59764;
      break;
    case 18:
      result = 59850;
      break;
    case 20:
      result = 59799;
      break;
    case 22:
      result = 59712;
      break;
    case 23:
      result = 59768;
      break;
    case 24:
      result = 59841;
      break;
    case 25:
      return 59782;
    case 26:
      result = 59671;
      break;
    case 27:
      result = 59752;
      break;
    case 29:
      result = 59709;
      break;
    case 30:
      return result;
    case 31:
      result = 59824;
      break;
    case 32:
      result = 59652;
      break;
    case 33:
      result = 59667;
      break;
    case 34:
      result = 59655;
      break;
    case 35:
      result = 59738;
      break;
    case 36:
      result = 59796;
      break;
    case 37:
      result = 59821;
      break;
    case 38:
      result = 59802;
      break;
    case 39:
      result = 59677;
      break;
    case 41:
    case 156:
    case 157:
      result = 59676;
      break;
    case 42:
      result = 59688;
      break;
    case 45:
      result = 59733;
      break;
    case 47:
      result = 59650;
      break;
    case 48:
      return 59830;
    case 49:
      result = 59859;
      break;
    case 50:
      result = 59734;
      break;
    case 51:
    case 150:
      result = 59772;
      break;
    case 54:
    case 317:
      result = 59514;
      break;
    case 56:
    case 301:
      result = 59512;
      break;
    case 57:
      result = 59749;
      break;
    case 64:
      result = 59757;
      break;
    case 65:
      result = 59736;
      break;
    case 67:
      result = 59745;
      break;
    case 68:
      result = 59815;
      break;
    case 69:
    case 188:
      result = 59719;
      break;
    case 70:
      result = 59758;
      break;
    case 71:
    case 296:
      result = 59515;
      break;
    case 73:
      result = 59860;
      break;
    case 74:
      result = 59845;
      break;
    case 76:
    case 143:
      result = 59769;
      break;
    case 77:
    case 138:
    case 334:
    case 372:
    case 373:
      result = 59726;
      break;
    case 78:
      result = 59751;
      break;
    case 79:
      return 59753;
    case 80:
      result = 59748;
      break;
    case 81:
      return 59737;
    case 82:
    case 139:
    case 182:
      result = 59798;
      break;
    case 83:
      result = 59789;
      break;
    case 84:
      result = 59863;
      break;
    case 85:
      result = 59731;
      break;
    case 86:
    case 166:
    case 167:
    case 186:
      result = 59790;
      break;
    case 88:
      result = 59754;
      break;
    case 89:
      result = 59861;
      break;
    case 90:
      result = 59811;
      break;
    case 91:
      result = 59869;
      break;
    case 92:
      result = 59760;
      break;
    case 93:
      result = 59781;
      break;
    case 94:
      result = 59727;
      break;
    case 95:
      result = 59866;
      break;
    case 97:
      result = 59763;
      break;
    case 98:
      result = 59835;
      break;
    case 99:
      result = 59770;
      break;
    case 100:
      result = 59862;
      break;
    case 101:
      result = 59446;
      break;
    case 102:
    case 169:
    case 170:
      result = 59742;
      break;
    case 105:
      result = 59814;
      break;
    case 106:
      result = 59743;
      break;
    case 107:
      result = 59828;
      break;
    case 108:
      result = 59780;
      break;
    case 109:
      result = 61473;
      break;
    case 114:
      result = 59832;
      break;
    case 116:
    case 281:
      result = 59673;
      break;
    case 117:
      result = 59674;
      break;
    case 120:
      result = 59395;
      break;
    case 124:
      result = 59746;
      break;
    case 125:
      result = 59820;
      break;
    case 128:
    case 129:
    case 135:
    case 137:
      result = 59793;
      break;
    case 130:
    case 131:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 168:
      result = 59436;
      break;
    case 132:
      result = 59721;
      break;
    case 133:
    case 154:
      result = 59412;
      break;
    case 134:
      result = 59670;
      break;
    case 136:
    case 153:
    case 162:
    case 163:
    case 171:
    case 172:
    case 187:
      result = 59685;
      break;
    case 140:
    case 141:
    case 151:
    case 152:
    case 174:
    case 175:
    case 181:
      result = 59800;
      break;
    case 142:
    case 155:
    case 160:
    case 161:
      result = 59784;
      break;
    case 158:
    case 159:
      result = 59459;
      break;
    case 164:
    case 165:
    case 180:
      result = 59403;
      break;
    case 173:
      result = 59690;
      break;
    case 176:
    case 177:
      return 59414;
    case 178:
    case 179:
    case 183:
    case 184:
    case 185:
    case 394:
      result = 59864;
      break;
    case 189:
      result = 59791;
      break;
    case 306:
      result = 59508;
      break;
    case 308:
      result = 59448;
      break;
    case 316:
      return 61952;
    case 398:
      result = 61697;
      break;
    default:
      return a1;
  }

  return result;
}

uint64_t WFNonFillGlyphAvailable(int a1)
{
  result = 0;
  if (a1 <= 61458)
  {
    if (a1 != 59405 && a1 != 59738)
    {
      v3 = 61450;
LABEL_8:
      if (a1 != v3)
      {
        return 1;
      }
    }
  }

  else if ((a1 - 61459) > 0x38 || ((1 << (a1 - 19)) & 0x100003000008001) == 0)
  {
    v3 = 61731;
    goto LABEL_8;
  }

  return result;
}

id static WFAppIntentsMetadataProvider.shared()()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B1E2C748(v0);
  v3 = v2;
  v4 = sub_1B1F1A890();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {

LABEL_13:
      if (qword_1EB783B10 != -1)
      {
        OUTLINED_FUNCTION_10_2();
      }

      v8 = &qword_1EB7845D0;
      goto LABEL_16;
    }

    v7 = sub_1B1F1B510();

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (qword_1EB7835B8 != -1)
  {
    swift_once();
  }

  v8 = &qword_1EB7835C0;
LABEL_16:
  v9 = *v8;

  return v9;
}

void *sub_1B1DF2820()
{
  OUTLINED_FUNCTION_6_5(OBJC_IVAR___WFAppIntentsMetadataProvider_entitiesCache);
  os_unfair_lock_lock(v1 + 6);
  v2 = OUTLINED_FUNCTION_2_7();
  sub_1B1DF2890(v2);
  os_unfair_lock_unlock(v1 + 6);
  OUTLINED_FUNCTION_22_1();
  [v0 cacheDebouncerPoke];
  return v0;
}

void sub_1B1DF3368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1DF35DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1DF4670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initUIImage()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_4283);
  }

  result = objc_getClass("UIImage");
  classUIImage = result;
  getUIImageClass = UIImageFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

Class initUIColor()
{
  if (UIKitLibrary_sOnce_12010 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_12010, &__block_literal_global_12011);
  }

  result = objc_getClass("UIColor");
  classUIColor = result;
  getUIColorClass = UIColorFunction;
  return result;
}

id getWFTipsLogObject()
{
  if (getWFTipsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTipsLogObject_onceToken, &__block_literal_global_98);
  }

  v1 = getWFTipsLogObject_log;

  return v1;
}

uint64_t __getWFTipsLogObject_block_invoke()
{
  getWFTipsLogObject_log = os_log_create(WFLogSubsystem, "Tips");

  return MEMORY[0x1EEE66BB8]();
}

WFGradient *WFWorkflowGradientFromRGBA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [WFColor colorWithP3RGBAValue:a1];
  v8 = [WFColor colorWithP3RGBAValue:a2];
  v9 = [WFColor colorWithP3RGBAValue:a3];
  v10 = [WFColor colorWithP3RGBAValue:a4];
  v11 = [WFColor colorWithDisplayP3Red:1.0 green:1.0 blue:1.0 alpha:0.14];
  v12 = [WFColor colorWithDisplayP3Red:1.0 green:1.0 blue:1.0 alpha:0.0];
  v13 = [[WFGradient alloc] initWithBaseColor:v7 darkBaseColor:v8 accessibilityBaseColor:v9 darkAccessibilityBaseColor:v10 startColor:v11 endColor:v12];

  return v13;
}

void WFImageEndUsingCoreGlyphsCatalogs()
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&WFImageResidentCoreGlyphsCatalogsLock);
  v0 = WFImageLockedResidentCoreGlyphsCatalogRefCount;
  if (!WFImageLockedResidentCoreGlyphsCatalogRefCount)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void WFImageEndUsingCoreGlyphsCatalogs(void)"];

    v0 = WFImageLockedResidentCoreGlyphsCatalogRefCount;
  }

  WFImageLockedResidentCoreGlyphsCatalogRefCount = v0 - 1;
  if (v0 == 1)
  {
    v1 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "WFImageEndUsingCoreGlyphsCatalogs";
      _os_log_impl(&dword_1B1DE3000, v1, OS_LOG_TYPE_INFO, "%s Evicting core glyph catalogs from memory, refcount = 0", &v6, 0xCu);
    }

    v2 = WFImageLockedResidentCoreGlyphsCatalogs;
    WFImageLockedResidentCoreGlyphsCatalogs = 0;
  }

  os_unfair_lock_unlock(&WFImageResidentCoreGlyphsCatalogsLock);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B1DF59E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1DF5CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t XPCDarwinNotificationEventStream.Event.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1AFA0();

  MEMORY[0x1B273D1A0](v1, v2);
  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000016;
}

void sub_1B1DF5D98(void *a1, uint64_t *a2, uint64_t *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v26 - v9;
  v11 = sub_1B1F1A570();
  if (xpc_dictionary_get_string(a1, v11))
  {
    v12 = sub_1B1F1A920();
    v14 = v13;
    v15 = *(swift_getAssociatedConformanceWitness() + 8);
    XPCCoder.decode<A>(_:from:)();
    static XPCEventStream.notifyHandlers(of:eventName:)(v10, v12, v14, a2, a3);

    (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  else
  {
    if (qword_1EB7832C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1F1A500();
    __swift_project_value_buffer(v16, qword_1EB7832D0);
    swift_unknownObjectRetain();
    v27 = sub_1B1F1A4E0();
    v17 = sub_1B1F1AD10();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x1B273FA10](a1);
      v21 = sub_1B1F1A920();
      v23 = v22;
      MEMORY[0x1B273F720](v20, -1, -1);
      v24 = sub_1B1DF61DC(v21, v23, &v28);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_1B1DE3000, v27, v17, "Unable to decode XPC event: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1B273F720](v19, -1, -1);
      MEMORY[0x1B273F720](v18, -1, -1);
    }

    else
    {
      v25 = v27;
    }
  }
}

uint64_t sub_1B1DF61DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1B1F1A760();
  v6 = sub_1B1DF62A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1B1DF63A0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B1DF62A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B1E1D49C(a5, a6);
    *a1 = v9;
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
    result = sub_1B1F1B010();
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

uint64_t sub_1B1DF63A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1B1DF64A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  sub_1B1DF64B4(a1, *(v1 + 32));
}

void sub_1B1DF64B4(uint64_t a1, void (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B1F1AEB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25[-v9 - 8];
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v25[-v13 - 8];
  sub_1B1DF6824(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784590, &qword_1B1F2C8D0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    a2(v14);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v10, v5);
    if (qword_1EB7832C0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B1F1A500();
    __swift_project_value_buffer(v15, qword_1EB7832D0);
    sub_1B1DF6824(a1, v27);
    v16 = sub_1B1F1A4E0();
    v17 = sub_1B1F1AD10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      sub_1B1DF6824(v27, v25);
      v20 = sub_1B1F1A8D0();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v23 = sub_1B1DF61DC(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1B1DE3000, v16, v17, "Received unexpected event type: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1B273F720](v19, -1, -1);
      MEMORY[0x1B273F720](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

uint64_t sub_1B1DF6824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B1DF6888(uint64_t result, int a2, int a3)
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

uint64_t sub_1B1DF68F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ToolKitIndexingReason.init(trigger:changeset:)@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v12 = *a2;
  v7 = a2[1].n128_u64[0];
  sub_1B1F1A340();
  v8 = type metadata accessor for ToolKitIndexingReason(0);
  v9 = a3 + *(v8 + 20);
  *v9 = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  v10 = (a3 + *(v8 + 24));
  result = v12;
  *v10 = v12;
  v10[1].n128_u64[0] = v7;
  return result;
}

uint64_t sub_1B1DF69A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_1B1F1B830();
}

void *sub_1B1DF69E0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_90()
{

  return swift_getWitnessTable();
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient21ToolKitIndexingReasonV7TriggerO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient21ToolKitIndexingReasonV9ChangesetO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ToolKitIndexingReason.debugDescription.getter()
{
  OUTLINED_FUNCTION_62();
  sub_1B1F1AFA0();
  v9 = v6;
  MEMORY[0x1B273D1A0](0xD00000000000001BLL, 0x80000001B1F39390);
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  sub_1B1DF6BE0(v1);
  v2 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](0x656767697274202CLL, 0xEB00000000203A72);
  v3 = type metadata accessor for ToolKitIndexingReason(0);
  OUTLINED_FUNCTION_83((v0 + *(v3 + 20)));
  OUTLINED_FUNCTION_89();
  MEMORY[0x1B273D1A0](0x65676E616863202CLL, 0xED0000203A746573);
  v4 = (v0 + *(v3 + 24));
  v7 = *v4;
  v8 = *(v4 + 2);
  OUTLINED_FUNCTION_89();
  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return v9;
}

unint64_t sub_1B1DF6BE0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_78(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void __getLNAutoShortcutClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNAutoShortcut");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNAutoShortcutClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNAutoShortcutClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAutoShortcutContextualAction.m" lineNumber:27 description:{@"Unable to find class %s", "LNAutoShortcut"}];

    __break(1u);
  }
}

void LinkServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B007C0;
    v6 = 0;
    LinkServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFAutoShortcutContextualAction.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __getLNAutoShortcutLocalizedPhraseClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNAutoShortcutLocalizedPhrase");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNAutoShortcutLocalizedPhraseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNAutoShortcutLocalizedPhraseClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAutoShortcutContextualAction.m" lineNumber:28 description:{@"Unable to find class %s", "LNAutoShortcutLocalizedPhrase"}];

    __break(1u);
  }
}

id WFUUIDv4FromInteger(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = BYTE2(a1);
  v6 = BYTE3(a1);
  v7 = BYTE4(a1);
  v8 = BYTE5(a1);
  v10 = HIBYTE(a1);
  v12 = BYTE1(a1);
  v13 = BYTE2(a1);
  v14 = BYTE3(a1);
  v15 = BYTE4(a1);
  v16 = BYTE5(a1);
  v17 = BYTE6(a1);
  v18 = HIBYTE(a1);
  v9 = BYTE6(a1) & 0xF | 0x40;
  v11 = a1 & 0x3F | 0x80;
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v4];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t *ToManyThrowingStream.init()@<X0>(uint64_t **a1@<X8>)
{
  type metadata accessor for ToManyThrowingStream.Factory();
  result = sub_1B1DF7540();
  *a1 = result;
  return result;
}

uint64_t *sub_1B1DF7574()
{
  v1 = *v0;
  sub_1B1F1A350();
  v2 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1ABC0();
  sub_1B1DF7854();
  v5 = sub_1B1F1A6E0();
  v3 = sub_1B1F1A7C0();
  v0[2] = sub_1B1DF78B4(&v5, v3);
  return v0;
}

id getWFRunningLifecycleLogObject()
{
  if (getWFRunningLifecycleLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRunningLifecycleLogObject_onceToken, &__block_literal_global_32);
  }

  v1 = getWFRunningLifecycleLogObject_log;

  return v1;
}

unint64_t sub_1B1DF7854()
{
  result = qword_1ED84EFE8;
  if (!qword_1ED84EFE8)
  {
    sub_1B1F1A350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EFE8);
  }

  return result;
}

uint64_t sub_1B1DF78B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  v8 = sub_1B1DF799C(v7, a2);
  (*(v4 + 8))(a1, a2);
  return v8;
}

uint64_t sub_1B1DF799C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B1F1B000();
  v4 = sub_1B1F1AFF0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_1B1DF7A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

id getWFXPCRunnerLogObject()
{
  if (getWFXPCRunnerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFXPCRunnerLogObject_onceToken, &__block_literal_global_50);
  }

  v1 = getWFXPCRunnerLogObject_log;

  return v1;
}

void sub_1B1DF8130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getWFToolKitExecutionLogObject()
{
  if (getWFToolKitExecutionLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitExecutionLogObject_onceToken, &__block_literal_global_164);
  }

  v1 = getWFToolKitExecutionLogObject_log;

  return v1;
}

uint64_t __getWFToolKitExecutionLogObject_block_invoke()
{
  getWFToolKitExecutionLogObject_log = os_log_create(WFLogSubsystem, "ToolKitExecution");

  return MEMORY[0x1EEE66BB8]();
}

id getWFWorkflowExecutionLogObject()
{
  if (getWFWorkflowExecutionLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWorkflowExecutionLogObject_onceToken, &__block_literal_global_29);
  }

  v1 = getWFWorkflowExecutionLogObject_log;

  return v1;
}

id getWFEventTrackerLogObject()
{
  if (getWFEventTrackerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFEventTrackerLogObject_onceToken, &__block_literal_global_68);
  }

  v1 = getWFEventTrackerLogObject_log;

  return v1;
}

uint64_t __getWFRunningLifecycleLogObject_block_invoke()
{
  getWFRunningLifecycleLogObject_log = os_log_create(WFLogSubsystem, "RunningLifecycle");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __getWFWorkflowExecutionLogObject_block_invoke()
{
  getWFWorkflowExecutionLogObject_log = os_log_create(WFLogSubsystem, "WorkflowExecution");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __WFReleaseConsumedExtensions_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 longLongValue];

  return MEMORY[0x1EEE74458](v2);
}

id WFExternalUIPresenterXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F293B520];
  v1 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_performSiriRequest_completionHandler_ argumentIndex:0 ofReply:1];

  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_performDialogRequest_completionHandler_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t sub_1B1DF8C90()
{
  v2 = v0;
  v73 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = sub_1B1F1A350();
  v63 = *(v3 - 1);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B1F1A500();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84F030 != -1)
  {
    v9 = swift_once();
  }

  v12 = qword_1ED84F038;
  v13 = MEMORY[0x1EEE9AC00](v9);
  *(&v60 - 2) = "XPCRunner";
  MEMORY[0x1EEE9AC00](v13);
  *(&v60 - 2) = sub_1B1DE7A98;
  *(&v60 - 1) = v14;

  os_unfair_lock_lock(v12 + 4);
  sub_1B1DE7A64(v15);
  v65 = v1;
  if (v1)
  {
    goto LABEL_25;
  }

  os_unfair_lock_unlock(v12 + 4);

  v16 = sub_1B1F1A4E0();
  v12 = sub_1B1F1AD00();
  if (os_log_type_enabled(v16, v12))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = CACurrentMediaTime();
    _os_log_impl(&dword_1B1DE3000, v16, v12, "[Performance] Opening connection to runner: %f", v17, 0xCu);
    MEMORY[0x1B273F720](v17, -1, -1);
  }

  v19 = *(v7 + 8);
  v18 = (v7 + 8);
  v19(v11, v6);
  v20 = v2 + OBJC_IVAR___WFRunnerConnection_connection;
  v21 = *(v2 + OBJC_IVAR___WFRunnerConnection_connection);
  v22 = *(v2 + OBJC_IVAR___WFRunnerConnection_connection + 8);
  if (v22 != 255)
  {
    v23 = 0;
    v24 = *(v2 + OBJC_IVAR___WFRunnerConnection_connection);
LABEL_19:
    sub_1B1DFAF68(v21, v22);
    sub_1B1DEBA94(v23);
    v58 = *MEMORY[0x1E69E9840];
    return v24;
  }

  v25 = *(v2 + OBJC_IVAR___WFRunnerConnection_policy);
  if (!v25)
  {
    dlopen("/System/Library/PrivateFrameworks/WorkflowKit.framework/WorkflowKit", 0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      sub_1B1DEA98C(0, &qword_1ED84EC40, 0x1E696B0B8);
      v24 = sub_1B1DFCEC0();
      v28 = WFOutOfProcessWorkflowControllerVendorXPCInterface();
      [v24 setRemoteObjectInterface_];

      v29 = WFOutOfProcessWorkflowControllerHostXPCInterface();
      [v24 setExportedInterface_];

      ObjectType = v27;
      [v24 setExportedObject_];
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = sub_1B1E077E8;
      v71 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v67 = 1107296256;
      v68 = sub_1B1DFB864;
      v69 = &block_descriptor_70;
      v31 = _Block_copy(&aBlock);

      [v24 setInterruptionHandler_];
      _Block_release(v31);
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = sub_1B1DFB8F8;
      v71 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v67 = 1107296256;
      v68 = sub_1B1DFB864;
      v69 = &block_descriptor_74;
      v33 = _Block_copy(&aBlock);

      [v24 setInvalidationHandler_];
      _Block_release(v33);
      v34 = *(v2 + OBJC_IVAR___WFRunnerConnection_languageIdentifier + 8);
      if (v34)
      {
        v35 = *(v2 + OBJC_IVAR___WFRunnerConnection_languageIdentifier);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F38, &qword_1B1F2CC10);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1B1F2A3B0;
        *(v36 + 32) = v35;
        *(v36 + 40) = v34;
        sub_1B1F1A760();
        sub_1B1DFA814(v36, v24);
      }

      v37 = v62;
      sub_1B1F1A340();
      v38 = sub_1B1F1A330();
      v40 = v39;
      (*(v63 + 8))(v37, v64);
      aBlock = v38;
      v67 = v40;
      v41 = [v24 _xpcConnection];
      xpc_connection_set_oneshot_instance();
      swift_unknownObjectRelease();
      v42 = [v24 _xpcConnection];
      xpc_connection_set_qos_class_floor();
      swift_unknownObjectRelease();
      [v24 resume];
      swift_unknownObjectRelease();
      v43 = *v20;
      *v20 = v24;
      LOBYTE(v38) = *(v20 + 8);
      *(v20 + 8) = 0;
      v44 = v24;
      sub_1B1DF96C8(v43, v38);
      v23 = 0;
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v25 == 1)
  {
    v12 = "SArray@NSError>16";
    v18 = "com.apple.systemactions";
    sub_1B1DEA98C(0, &qword_1EB783F40, 0x1E698F498);
    v64 = sub_1B1E06F10(0xD000000000000017, 0x80000001B1F379B0, 0xD00000000000001ALL, 0x80000001B1F379D0, 0, 0);
    if (v64)
    {
      v45 = [objc_opt_self() connectionWithEndpoint_];
      if (v45)
      {
        v18 = v45;
        v72 = &unk_1F295A068;
        v46 = swift_dynamicCastObjCProtocolConditional();
        if (v46)
        {
          v24 = v46;
          v47 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v48 = swift_allocObject();
          v49 = ObjectType;
          *(v48 + 16) = v47;
          *(v48 + 24) = v49;
          v50 = swift_allocObject();
          *(v50 + 16) = sub_1B1E0780C;
          *(v50 + 24) = v48;
          v70 = sub_1B1E07814;
          v71 = v50;
          aBlock = MEMORY[0x1E69E9820];
          v67 = 1107296256;
          v68 = sub_1B1E07324;
          v69 = &block_descriptor_84;
          v51 = _Block_copy(&aBlock);
          v52 = v18;

          [v24 configureConnection_];

          _Block_release(v51);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
          }

          v54 = v52;
          [v24 activate];

          v55 = *v20;
          *v20 = v24;
          v56 = *(v20 + 8);
          *(v20 + 8) = 1;
          v57 = v54;
          sub_1B1DF96C8(v55, v56);
          v23 = sub_1B1E0780C;
          goto LABEL_19;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:

      __break(1u);
LABEL_25:
      os_unfair_lock_unlock(v12 + 4);
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_26:
  aBlock = v25;
  result = sub_1B1F1B700();
  __break(1u);
  return result;
}

uint64_t sub_1B1DF9648()
{
  MEMORY[0x1B273F7F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1DF9680()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B1DF96C8(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id static RunnerPrewarmManager.shared.getter()
{
  if (qword_1ED84EDA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED84EDB0;

  return v1;
}

void *RunnerPrewarmManager.connection.getter()
{
  v1 = OBJC_IVAR___WFRunnerPrewarmManager_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B1DF9964()
{
  v1 = OBJC_IVAR___WFRunnerPrewarmManager_connection;
  OUTLINED_FUNCTION_6_1();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1B1DF9C30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1DF9C5C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B1DF9C80()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1B1DF9CA0()
{
  v0 = sub_1B1DF9C80();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id ProgressKeyValueObservation.__deallocating_deinit()
{
  sub_1B1DF9D30();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressKeyValueObservation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B1DF9D30()
{
  v1 = OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_observing;
  if (*(v0 + OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_observing) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_progress);
    v3 = *(v0 + OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_keyPath);
    v4 = *(v0 + OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_keyPath + 8);
    v5 = sub_1B1F1A860();
    [v2 removeObserver:v0 forKeyPath:v5];

    *(v0 + v1) = 0;
  }
}

id WFEncodableError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 userInfo];
    if ([v3 count])
    {
      v4 = [v2 userInfo];
      v5 = WFEncodableErrorDictionary(v4);
      v6 = [v5 mutableCopy];
    }

    else
    {
      v6 = [MEMORY[0x1E695E0F8] mutableCopy];
    }

    v8 = [v2 localizedFailureReason];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v9 = [v2 localizedDescription];
    [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v10 = MEMORY[0x1E696ABC0];
    v11 = [v2 domain];
    v12 = [v2 code];
    v13 = [v6 allKeys];
    if ([v13 count])
    {
      v14 = v6;
    }

    else
    {
      v14 = 0;
    }

    v7 = [v10 errorWithDomain:v11 code:v12 userInfo:v14];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id WFAllowedClassesForDecodingNSError()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];

  return v3;
}

uint64_t sub_1B1DFA1D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_31_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B1DFA218()
{
  sub_1B1F1A650();
  sub_1B1E2CE90(&qword_1EB783678, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784778, &qword_1B1F2CC98);
  sub_1B1DFA1D4(&qword_1EB783670, &qword_1EB784778, &qword_1B1F2CC98);
  return sub_1B1F1AF00();
}

void sub_1B1DFA304()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) initWithOptions_];
  v1 = [objc_allocWithZone(WFAppIntentsMetadataProvider) initWithMetadataProvider_];

  qword_1EB7835C0 = v1;
}

id sub_1B1DFA394(void *a1)
{
  v3 = [v1 initWithMetadataProvider:a1 cacheLifetime:1.79769313e308];

  return v3;
}

uint64_t OUTLINED_FUNCTION_31_3@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_31_5()
{

  JUMPOUT(0x1B273D1A0);
}

uint64_t OUTLINED_FUNCTION_31_6()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

void OUTLINED_FUNCTION_21_0()
{

  JUMPOUT(0x1B273D1A0);
}

uint64_t OUTLINED_FUNCTION_21_1()
{
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_21_3()
{
}

uint64_t OUTLINED_FUNCTION_25_3()
{
  v2 = *(v0 - 112);

  return sub_1B1F1B240();
}

uint64_t sub_1B1DFA6D8(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 64) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846C0, &qword_1B1F2CBE8);
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = sub_1B1F1A730();
  *(v1 + 48) = v3;
  *(v1 + 56) = a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = v4;
  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  return v1;
}

unint64_t OUTLINED_FUNCTION_27_1()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];

  return sub_1B1E04B74();
}

void sub_1B1DFA814(uint64_t a1, void *a2)
{
  v3 = sub_1B1F1A9A0();

  [a2 _setLanguages_];
}

uint64_t sub_1B1DFA880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_28_1@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(a1 + 16) = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
  v2 = *(*(v1 - 168) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[16];
  v4 = v2[13];
  v5 = v2[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_3()
{
  result = *(v0 - 104);
  v2 = *(v0 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1B1DFAC8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1DFACC8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_6_1();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1B1DEBA94(v7);
}

id sub_1B1DFAF68(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t VCIsShortcutsAppBundleIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.shortcuts"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.shortcuts.watch"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.shortcuts"];
  }

  return v2;
}

id getWFSecurityLogObject()
{
  if (getWFSecurityLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSecurityLogObject_onceToken, &__block_literal_global_92);
  }

  v1 = getWFSecurityLogObject_log;

  return v1;
}

uint64_t __getWFSecurityLogObject_block_invoke()
{
  getWFSecurityLogObject_log = os_log_create(WFLogSubsystem, "Security");

  return MEMORY[0x1EEE66BB8]();
}

Swift::Void __swiftcall RunnerConnection.invalidate()()
{
  if (*(v0 + OBJC_IVAR___WFRunnerConnection_connection + 8) != 255)
  {
    [*(v0 + OBJC_IVAR___WFRunnerConnection_connection) invalidate];
  }
}

void sub_1B1DFB868(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_2_1(Strong);
    v5 = *a2;
    if (*a2)
    {
      v6 = *(a2 + 8);
      v7 = OUTLINED_FUNCTION_7_0();
      sub_1B1DFB8E8(v7);

      v5();
      v8 = OUTLINED_FUNCTION_7_0();
      sub_1B1DEBA94(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_1B1DFB8E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __getWFStateMachineLogObject_block_invoke()
{
  getWFStateMachineLogObject_log = os_log_create(WFLogSubsystem, "StateMachine");

  return MEMORY[0x1EEE66BB8]();
}

id __WFConsumeExtensionTokens_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  [v2 UTF8String];
  v3 = sandbox_extension_consume();
  if (v3 < 0)
  {
    v5 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315394;
      v9 = "WFConsumeExtensionTokens_block_invoke";
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_FAULT, "%s Error consuming granted extension token: %@", &v8, 0x16u);
    }

    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:v3];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __getWFEventTrackerLogObject_block_invoke()
{
  getWFEventTrackerLogObject_log = os_log_create(WFLogSubsystem, "EventTracker");

  return MEMORY[0x1EEE66BB8]();
}

char *NSProgress.observe(_:options:changeHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(type metadata accessor for ProgressKeyValueObservation());
  v10 = v4;
  v11 = a1;

  return sub_1B1DFBEBC(v10, v11, a2, a3, a4);
}

char *sub_1B1DFBEBC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v6[OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_observing] = 1;
  *&v6[OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_progress] = a1;
  *&v6[OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_key] = a2;
  v26 = 0x6F666E4972657375;
  v27 = 0xE90000000000002ELL;
  v12 = sub_1B1F1A890();
  v14 = v13;
  v15 = a1;
  v16 = a2;
  MEMORY[0x1B273D1A0](v12, v14);

  v17 = &v6[OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_keyPath];
  *v17 = 0x6F666E4972657375;
  v17[1] = 0xE90000000000002ELL;
  v18 = &v6[OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_changeHandler];
  *v18 = a4;
  v18[1] = a5;
  v25.receiver = v6;
  v25.super_class = type metadata accessor for ProgressKeyValueObservation();

  v19 = objc_msgSendSuper2(&v25, sel_init);
  v20 = *&v19[OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_keyPath];
  v21 = *&v19[OBJC_IVAR____TtC19VoiceShortcutClient27ProgressKeyValueObservation_keyPath + 8];
  v22 = v19;
  sub_1B1F1A760();
  v23 = sub_1B1F1A860();

  [v15 addObserver:v22 forKeyPath:v23 options:a3 context:{0, v25.receiver, v25.super_class}];

  return v22;
}

uint64_t __getWFXPCRunnerLogObject_block_invoke()
{
  getWFXPCRunnerLogObject_log = os_log_create(WFLogSubsystem, "XPCRunner");

  return MEMORY[0x1EEE66BB8]();
}

id WFOutOfProcessWorkflowControllerHostXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29354A0];
  v1 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_actionWithUUID_didFinishRunningWithError_serializedVariable_executionResultMetadata_ argumentIndex:2 ofReply:0];

  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_actionWithUUID_didFinishRunningWithError_serializedVariable_executionResultMetadata_ argumentIndex:3 ofReply:0];

  return v0;
}

id WFOutOfProcessWorkflowControllerVendorXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2937080];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_computeFinderResizedSizesForImages_inSizes_completion_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_computeFinderResizedSizesForImages_inSizes_completion_ argumentIndex:1 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_computeFinderResizedSizesForImages_inSizes_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t sub_1B1DFC3A0@<X0>(void *a1@<X0>, _BOOL8 *a2@<X8>)
{
  v4 = sub_1B1F1A500();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  *(&v57 + 1) = &type metadata for ShortcutsFeatureFlags;
  v58 = sub_1B1DFC998();
  LOBYTE(v56) = 7;
  v12 = sub_1B1F1A380();
  v13 = __swift_destroy_boxed_opaque_existential_1(&v56);
  if (v12)
  {
    v53 = v4;
    v54 = a2;
    objc_opt_self();
    v52 = a1;
    v14 = swift_dynamicCastObjCClass();
    v15 = v14 != 0;
    v16 = 0xD00000000000001FLL;
    if (!v14)
    {
      v16 = 0xD000000000000023;
    }

    v49 = v16;
    if (v14)
    {
      v17 = "s not a Link action";
    }

    else
    {
      v17 = "rviceConnectionContext>8";
    }

    v18 = [objc_opt_self() processInfo];
    [v18 if_auditToken];
    v50 = v57;
    v51 = v56;

    v19 = objc_allocWithZone(MEMORY[0x1E698E620]);
    v56 = v51;
    v57 = v50;
    sub_1B1E05DC8([v19 initWithAuditToken_], &v56);
    LODWORD(v51) = v56;
    if (v56)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15;
    }

    if (qword_1ED84F030 != -1)
    {
      v20 = OUTLINED_FUNCTION_1_1();
    }

    v22 = qword_1ED84F038;
    v23 = MEMORY[0x1EEE9AC00](v20);
    *(&v48 - 2) = "XPCRunner";
    MEMORY[0x1EEE9AC00](v23);
    *(&v48 - 2) = sub_1B1E07904;
    *(&v48 - 1) = v24;

    os_unfair_lock_lock(v22 + 4);
    sub_1B1E07944(v25);
    os_unfair_lock_unlock(v22 + 4);

    sub_1B1F1A760();
    v26 = sub_1B1F1A4E0();
    v27 = sub_1B1F1AD00();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *&v50 = swift_slowAlloc();
      *&v56 = v50;
      *v28 = 136315906;
      v55 = v15;
      v29 = sub_1B1F1A8D0();
      v31 = sub_1B1DF61DC(v29, v30, &v56);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = sub_1B1DF61DC(v49, v17 | 0x8000000000000000, &v56);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2080;
      v55 = v21;
      v33 = sub_1B1F1A8D0();
      v35 = sub_1B1DF61DC(v33, v34, &v56);

      *(v28 + 24) = v35;
      *(v28 + 32) = 2080;
      LOBYTE(v55) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783FB0, &qword_1B1F2A688);
      v36 = sub_1B1F1A8D0();
      v38 = sub_1B1DF61DC(v36, v37, &v56);

      *(v28 + 34) = v38;
      _os_log_impl(&dword_1B1DE3000, v26, v27, "run request ideally goes to %s because '%s', decided on %s for %s", v28, 0x2Au);
      v39 = v50;
      swift_arrayDestroy();
      MEMORY[0x1B273F720](v39, -1, -1);
      MEMORY[0x1B273F720](v28, -1, -1);
    }

    else
    {
    }

    result = (*(v5 + 8))(v11, v53);
    a2 = v54;
  }

  else
  {
    if (qword_1ED84F030 != -1)
    {
      v13 = OUTLINED_FUNCTION_1_1();
    }

    v40 = qword_1ED84F038;
    v41 = MEMORY[0x1EEE9AC00](v13);
    *(&v48 - 2) = "XPCRunner";
    MEMORY[0x1EEE9AC00](v41);
    *(&v48 - 2) = sub_1B1E07904;
    *(&v48 - 1) = v42;

    os_unfair_lock_lock(v40 + 4);
    sub_1B1E07944(v43);
    os_unfair_lock_unlock(v40 + 4);

    v44 = sub_1B1F1A4E0();
    v45 = sub_1B1F1AD00();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1B1DE3000, v44, v45, "Shortcuts/system_runner=off, dispatching run to isolated process", v46, 2u);
      MEMORY[0x1B273F720](v46, -1, -1);
    }

    else
    {
    }

    result = (*(v5 + 8))(v9, v4);
    v21 = 0;
  }

  *a2 = v21;
  return result;
}

unint64_t sub_1B1DFC998()
{
  result = qword_1ED84ECA0[0];
  if (!qword_1ED84ECA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED84ECA0);
  }

  return result;
}

const char *ShortcutsFeatureFlags.feature.getter()
{
  result = "universal_previews";
  switch(*v0)
  {
    case 1:
      result = "markdown_rendering_v2";
      break;
    case 2:
      result = "rich_choose_from_menu";
      break;
    case 3:
      result = "intermediate_outputs";
      break;
    case 4:
      result = "wallet_transaction_trigger";
      break;
    case 5:
      result = "watch_automation";
      break;
    case 6:
      result = "remote_widget_configuration";
      break;
    case 7:
      result = "system_runner";
      break;
    case 8:
      result = "zoom_transition";
      break;
    case 9:
      result = "new_icon_picker";
      break;
    case 0xA:
      result = "toolkit_cascade_sync";
      break;
    case 0xB:
      result = "siriactionsd_rearchitecture";
      break;
    case 0xC:
      result = "mac_automations";
      break;
    case 0xD:
      result = "mac_filesystem_automations";
      break;
    case 0xE:
      result = "mac_show_share_for_new_blank_automations";
      break;
    case 0xF:
      result = "ios_new_automations";
      break;
    case 0x10:
      result = "automation_data_source_migration";
      break;
    case 0x11:
      result = "search_action";
      break;
    case 0x12:
      result = "montara_snippets";
      break;
    case 0x13:
      result = "drop_onto_chiclets";
      break;
    default:
      return result;
  }

  return result;
}

id sub_1B1DFCC04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = sub_1B1F1A890();
  v9 = v8;
  v10 = a1;
  v11 = a5(v7, v9);

  return v11;
}

void sub_1B1DFCCD4(char a1)
{
  v4 = sub_1B1DF8C90();
  if (!v1)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F10, &unk_1B1F2A660);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1B1F2A3A0;
      sub_1B1DEA98C(0, &qword_1EB783F18, 0x1E69C7560);
      *(v5 + 32) = sub_1B1E06E7C();
      sub_1B1DEA98C(0, &qword_1EB783F20, 0x1E69C7550);
      v6 = sub_1B1F1A9A0();

      v7 = [v4 remoteTargetWithLaunchingAssertionAttributes_];

      if (v7)
      {
        sub_1B1F1AED0();
        swift_unknownObjectRelease();

        sub_1B1E077D8(&v8, &v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB783F28, qword_1B1F2A670);
        swift_dynamicCast();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      [objc_allocWithZone(WFOutOfProcessWorkflowControllerXPCProxy) initWithConnection:v4 isSynchronous:(a1 & 1) == 0];
    }
  }
}

id sub_1B1DFCEC0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B1F1A860();

  v2 = [v0 initWithServiceName_];

  return v2;
}

uint64_t sub_1B1DFD084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E04270();
  *a1 = result;
  return result;
}

uint64_t sub_1B1DFD0AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B1E00FA0() & 1;
}

uint64_t sub_1B1DFD0D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1DFD100(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1DFD12C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1DFD170()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1DFD1F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1DFD2A8()
{
  MEMORY[0x1B273F7F0](v0 + 16);
  v1 = OUTLINED_FUNCTION_3_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B1DFD3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1F1A480();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B1DFD454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B1F1A480();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B1DFD644()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B1DFD7B0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B1DFD860()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784558, &qword_1B1F2C6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B1DFD8F4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1DFD964()
{
  v0 = sub_1B1E2799C();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B1DFD99C()
{
  sub_1B1E297A0();
  OUTLINED_FUNCTION_24_3();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B1DFD9C8@<X0>(uint64_t *a1@<X8>)
{
  sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
  result = sub_1B1F1A730();
  *a1 = result;
  return result;
}

uint64_t sub_1B1DFDA44()
{
  v1 = OUTLINED_FUNCTION_3_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B1DFDA74()
{
  MEMORY[0x1B273F7F0](v0 + 16);
  v1 = OUTLINED_FUNCTION_3_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B1DFDF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E406EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1DFDFA0(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1B1E090E0();
}

uint64_t sub_1B1DFDFC4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_1B1E00C48();
}

uint64_t sub_1B1DFDFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1B1E406EC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1B1DFE10C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7852B0, &qword_1B1F30648);
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B1DFE1D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1DFE210(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B1F1A350();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1B1DFE298(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B1F1A350();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B1DFE318()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B1DFE364()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1DFE3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B1DFE470(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_25_4();
  result = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_39_0();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B1DFE508(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_4();
  v4 = sub_1B1F1A350();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1B1DFE54C()
{
  OUTLINED_FUNCTION_25_4();
  sub_1B1F1A350();
  v0 = OUTLINED_FUNCTION_39_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1B1DFE5DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1DFE614()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1B1DFE870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_50();
  v6 = sub_1B1F1A350();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 2;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1B1DFE924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25_4();
  result = sub_1B1F1A350();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 24)) = (a2 + 1);
  }

  return result;
}

uint64_t sub_1B1DFECD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1DFED0C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1DFED44()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v3 = sub_1B1F1AA50();
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v0 + 4);

  (*(v5 + 8))(&v0[v7], v3);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v9, v6 | 7);
}

uint64_t sub_1B1DFEE40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1DFEE80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1DFEEC8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  v4 = v0[7];
  swift_unknownObjectRelease();
  v5 = v0[8];

  v6 = v0[9];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B1DFEFA0(uint64_t a1)
{
  *(a1 + 8) = sub_1B1E771F0(&qword_1EB785FE0, type metadata accessor for ScheduledTrigger);
  result = sub_1B1E771F0(&qword_1EB785FE8, type metadata accessor for ScheduledTrigger);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B1DFF024(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B1F1A110();
    v6 = OUTLINED_FUNCTION_21_6();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

_BYTE *sub_1B1DFF0A4(_BYTE *result, uint64_t a2, int a3)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1B1F1A110();
    v4 = OUTLINED_FUNCTION_21_6();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_1B1DFF118()
{
  OUTLINED_FUNCTION_51();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_39_2();
  }

  v5 = v2;
  v6 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
  v8 = v0 + *(v5 + 28);

  return __swift_getEnumTagSinglePayload(v8, v6, v7);
}

void sub_1B1DFF198(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_51();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
    v9 = v2 + *(v7 + 28);

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }
}

uint64_t sub_1B1DFF224(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_4();
  v4 = sub_1B1F1A110();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1B1DFF268(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_4();
  v4 = sub_1B1F1A110();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1B1DFF2B0()
{
  OUTLINED_FUNCTION_51();
  if (v0 == v1)
  {
    return OUTLINED_FUNCTION_39_2();
  }

  type metadata accessor for TriggerType(0);
  v3 = OUTLINED_FUNCTION_21_6();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B1DFF31C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_51();
  if (v4 == v5)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for TriggerType(0);
    v6 = OUTLINED_FUNCTION_21_6();

    __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }
}

uint64_t sub_1B1E00CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E300A8(a1, a2);
  *a3 = result & 1;
  return result;
}

VoiceShortcutClient::XPCAppProtectionEventStream::Event::CodingKeys_optional __swiftcall XPCAppProtectionEventStream.Event.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1B1F1B160();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t XPCAppProtectionEventStream.Event.CodingKeys.stringValue.getter()
{
  v1 = 0x61506E6564646968;
  if (*v0 != 1)
  {
    v1 = 0x6E65646469686E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E657645435058;
  }
}

uint64_t sub_1B1E00E88()
{
  v0 = sub_1B1F1A290();
  v2 = v1;
  v3 = sub_1B1F1A290();
  v5 = v4;
  v6 = MEMORY[0x1B273CB00](v0, v2, v3, v4);
  sub_1B1E03C48(v3, v5);
  sub_1B1E03C48(v0, v2);
  return v6 & 1;
}

uint64_t sub_1B1E00F08(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = 0xD000000000000021;
  }

  if (v2)
  {
    v4 = "eRange";
  }

  else
  {
    v4 = "oiceShortcuts.xpc";
  }

  if (a2)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000021;
  }

  if (a2)
  {
    v6 = "oiceShortcuts.xpc";
  }

  else
  {
    v6 = "eRange";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_0();
  }

  return v8 & 1;
}

uint64_t sub_1B1E00FA0()
{
  v0 = sub_1B1F1A890();
  v2 = v1;
  if (v0 == sub_1B1F1A890() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_4_0();
  }

  return v5 & 1;
}

uint64_t sub_1B1E01018(unsigned __int8 a1, char a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7470697263736544;
  v4 = a1;
  v5 = 0x7470697263736544;
  v6 = 0xEB000000006E6F69;
  v7 = "DiskVolumePathChanged";
  switch(v4)
  {
    case 1:
      v5 = 0x617369446B736944;
      v6 = 0xEF64657261657070;
      break;
    case 2:
      v5 = 0xD000000000000015;
      v6 = 0x80000001B1F37860;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_19();
      v6 = 0xEC000000656D614ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x617369446B736944;
      v2 = 0xEF64657261657070;
      break;
    case 2:
      v3 = 0xD000000000000015;
      v2 = (v7 - 32) | 0x8000000000000000;
      break;
    case 3:
      v3 = 0x746E657645435058;
      v2 = 0xEC000000656D614ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B1F1B510();
  }

  return v9 & 1;
}

uint64_t sub_1B1E01188(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6F666E4972657355;
  }

  else
  {
    v3 = 1701667150;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6F666E4972657355;
  }

  else
  {
    v5 = 1701667150;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_0();
  }

  return v8 & 1;
}

uint64_t sub_1B1E01218(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x716552796C706572;
  }

  else
  {
    v3 = 0x746E657645435058;
  }

  if (v2)
  {
    v4 = 0xEC000000656D614ELL;
  }

  else
  {
    v4 = 0xED00006465726975;
  }

  if (a2)
  {
    v5 = 0x716552796C706572;
  }

  else
  {
    v5 = 0x746E657645435058;
  }

  if (a2)
  {
    v6 = 0xED00006465726975;
  }

  else
  {
    v6 = 0xEC000000656D614ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_0();
  }

  return v8 & 1;
}

uint64_t sub_1B1E012C0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656C67676F74;
  }

  else
  {
    v3 = 1852994932;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1852994932;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_0();
  }

  return v8 & 1;
}

uint64_t sub_1B1E01348(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D6954656E4F7369;
  v4 = a1;
  v5 = 0x6D6954656E4F7369;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6E6F69676572;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x6574617473;
      break;
    case 3:
      v5 = 0x676E6152656D6974;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6E6F69676572;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x6574617473;
      break;
    case 3:
      v3 = 0x676E6152656D6974;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B1F1B510();
  }

  return v8 & 1;
}

uint64_t sub_1B1E01484(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000656D614ELL;
  v3 = 0x746E657645435058;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x61506E6564646968;
    }

    else
    {
      v5 = 0x6E65646469686E75;
    }

    if (v4 == 1)
    {
      v6 = 0xED000064616F6C79;
    }

    else
    {
      v6 = 0xEF64616F6C796150;
    }
  }

  else
  {
    v5 = 0x746E657645435058;
    v6 = 0xEC000000656D614ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x61506E6564646968;
    }

    else
    {
      v3 = 0x6E65646469686E75;
    }

    if (a2 == 1)
    {
      v2 = 0xED000064616F6C79;
    }

    else
    {
      v2 = 0xEF64616F6C796150;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B1F1B510();
  }

  return v8 & 1;
}

uint64_t sub_1B1E015D8@<X0>(uint64_t *a1@<X8>)
{
  result = XPCAppProtectionEventStream.Event.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1E01618(uint64_t a1)
{
  v2 = sub_1B1E03D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E01654(uint64_t a1)
{
  v2 = sub_1B1E03D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCAppProtectionEventStream.Event.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return v1;
}

uint64_t XPCAppProtectionEventStream.Event.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1B1DF6824(a1, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7840C0, &qword_1B1F29870);
  if (swift_dynamicCast())
  {
    sub_1B1E01CE4(v20, v21, &v22);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      return swift_unknownObjectRelease();
    }

    else
    {
      v7 = v22;
      v8 = OUTLINED_FUNCTION_19();
      v9 = sub_1B1E07BD8(v8, 0xEC000000656D614ELL, v7);
      v17 = sub_1B1E02230(v9, v10, 0);
      v23 = v11;

      v12 = xpc_dictionary_get_value(v7, "hiddenPayload");
      v18 = sub_1B1E0200C(v12, 1);
      swift_unknownObjectRelease();
      v16 = sub_1B1E01B18(v18);
      swift_unknownObjectRelease();
      v13 = xpc_dictionary_get_value(v7, "unhiddenPayload");
      v19 = sub_1B1E0200C(v13, 2);
      swift_unknownObjectRelease();
      v14 = sub_1B1E01B18(v19);
      __swift_destroy_boxed_opaque_existential_1(a1);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v15 = v23;
      *a2 = v17;
      a2[1] = v15;
      a2[2] = v16;
      a2[3] = v14;
    }
  }

  else
  {
    sub_1B1E01AC4();
    OUTLINED_FUNCTION_13();
    *v6 = 0;
    v6[1] = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

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

unint64_t sub_1B1E01AC4()
{
  result = qword_1EB783B40;
  if (!qword_1EB783B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783B40);
  }

  return result;
}

size_t sub_1B1E01B18(void *a1)
{
  v2 = MEMORY[0x1B273FB80]();
  if (v2 != sub_1B1F1A540())
  {
    sub_1B1F1A540();
    v3 = sub_1B1F1A8D0();
    v5 = v4;
    sub_1B1E01AC4();
    swift_allocError();
    *v6 = v3;
    v6[1] = v5;
    swift_willThrow();
    return v3;
  }

  result = xpc_array_get_count(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    v8 = result;
    v3 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v20 = MEMORY[0x1E69E7CC0];
      sub_1B1E3B244(0, result, 0);
      v9 = 0;
      v3 = v20;
      while (xpc_array_get_string(a1, v9))
      {
        v10 = sub_1B1F1A920();
        v12 = v11;
        v14 = *(v20 + 16);
        v13 = *(v20 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1B1E3B244(v13 > 1, v14 + 1, 1);
        }

        ++v9;
        *(v20 + 16) = v14 + 1;
        v15 = v20 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        if (v8 == v9)
        {
          return v3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB783D60, &qword_1B1F29ED8);
      v16 = sub_1B1F1A8D0();
      v18 = v17;
      sub_1B1E01AC4();
      swift_allocError();
      *v19 = v16;
      v19[1] = v18;
      swift_willThrow();
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E01CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x1B273FB80]();
  if (v6 == sub_1B1F1A590())
  {
    *a3 = a1;
    a3[1] = a2;
    swift_unknownObjectRetain();
    return sub_1B1F1A760();
  }

  else
  {
    sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD8, &qword_1B1F29ED0);
    sub_1B1F1A760();
    sub_1B1F1AFA0();
    MEMORY[0x1B273D1A0](0xD000000000000028, 0x80000001B1F37930);
    xpc_type_get_name(v6);
    v10 = sub_1B1F1A920();
    MEMORY[0x1B273D1A0](v10);

    MEMORY[0x1B273D1A0](0x64616574736E6920, 0xE90000000000002ELL);
    sub_1B1F1AFD0();
    v11 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_1_0();
    v13 = *(v12 + 104);
    v14 = OUTLINED_FUNCTION_10_0();
    v15(v14);
    return swift_willThrow();
  }
}

uint64_t XPCAppProtectionEventStream.Event.notification.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1B1F1A760();
  sub_1B1F1A760();
  sub_1B1F1A860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783B48, &qword_1B1F29878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F29850;
  v4 = *MEMORY[0x1E698B0B0];
  sub_1B1F1A890();
  sub_1B1F1AF40();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783B50, &qword_1B1F29880);
  *(inited + 96) = v5;
  *(inited + 72) = v2;
  v6 = *MEMORY[0x1E698B0B8];
  sub_1B1F1A890();
  sub_1B1F1AF40();
  *(inited + 168) = v5;
  *(inited + 144) = v1;
  sub_1B1F1A730();
  return sub_1B1F1A070();
}

uint64_t sub_1B1E0200C(uint64_t a1, char a2)
{
  if (a1)
  {
    return swift_unknownObjectRetain();
  }

  v4 = sub_1B1F1AFE0();
  swift_allocError();
  v6 = v5;
  *(v5 + 24) = &type metadata for XPCAppProtectionEventStream.Event.CodingKeys;
  *(v5 + 32) = sub_1B1E03D08();
  *v6 = a2;
  sub_1B1F1A760();
  sub_1B1F1AFA0();

  sub_1B1E02520();
  v7 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v7);

  MEMORY[0x1B273D1A0](2238496, 0xE300000000000000);
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0x61506E6564646968;
    }

    else
    {
      v8 = 0x6E65646469686E75;
    }

    if (a2 == 1)
    {
      v9 = 0xED000064616F6C79;
    }

    else
    {
      v9 = 0xEF64616F6C796150;
    }
  }

  else
  {
    v9 = 0xEC000000656D614ELL;
    v8 = 0x746E657645435058;
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CC8, &unk_1B1F29EC0) + 48);
  MEMORY[0x1B273D1A0](v8, v9);

  MEMORY[0x1B273D1A0](3025186, 0xE300000000000000);
  sub_1B1F1AFD0();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF0], v4);
  return swift_willThrow();
}

void *sub_1B1E02230(void *a1, uint64_t a2, char a3)
{
  if (a2)
  {
    sub_1B1F1A760();
  }

  else
  {
    v5 = sub_1B1F1AFE0();
    swift_allocError();
    v7 = v6;
    *(v6 + 24) = &type metadata for XPCAppProtectionEventStream.Event.CodingKeys;
    *(v6 + 32) = sub_1B1E03D08();
    *v7 = a3;
    sub_1B1F1A760();
    sub_1B1F1AFA0();

    v13[0] = 0xD00000000000001DLL;
    v13[1] = 0x80000001B1F37910;
    sub_1B1E02520();
    v8 = sub_1B1F1B300();
    MEMORY[0x1B273D1A0](v8);

    MEMORY[0x1B273D1A0](2238496, 0xE300000000000000);
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 0x61506E6564646968;
      }

      else
      {
        v9 = 0x6E65646469686E75;
      }

      if (a3 == 1)
      {
        v10 = 0xED000064616F6C79;
      }

      else
      {
        v10 = 0xEF64616F6C796150;
      }
    }

    else
    {
      v10 = 0xEC000000656D614ELL;
      v9 = 0x746E657645435058;
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CC8, &unk_1B1F29EC0) + 48);
    MEMORY[0x1B273D1A0](v9, v10);

    a1 = v13;
    MEMORY[0x1B273D1A0](3025186, 0xE300000000000000);
    sub_1B1F1AFD0();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6AF0], v5);
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_1B1E02470()
{
  result = qword_1EB783B58;
  if (!qword_1EB783B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783B58);
  }

  return result;
}

unint64_t sub_1B1E024C8()
{
  result = qword_1EB783B60;
  if (!qword_1EB783B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783B60);
  }

  return result;
}

unint64_t sub_1B1E02520()
{
  result = qword_1EB783B68;
  if (!qword_1EB783B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783B68);
  }

  return result;
}

unint64_t sub_1B1E02574(uint64_t a1)
{
  result = sub_1B1E0259C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1E0259C()
{
  result = qword_1EB783B70;
  if (!qword_1EB783B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783B70);
  }

  return result;
}

unint64_t sub_1B1E025F4()
{
  result = qword_1EB783B78;
  if (!qword_1EB783B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAppProtectionEventStream(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for XPCAppProtectionEventStream(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}