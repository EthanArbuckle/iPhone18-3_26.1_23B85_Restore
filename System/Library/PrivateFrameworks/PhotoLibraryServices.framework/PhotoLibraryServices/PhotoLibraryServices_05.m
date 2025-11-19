BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyString(apple::aiml::flatbuffers2::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyOffset(apple::aiml::flatbuffers2::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

id getPIPhotoEditHelperClass_85048()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPIPhotoEditHelperClass_softClass_85049;
  v7 = getPIPhotoEditHelperClass_softClass_85049;
  if (!getPIPhotoEditHelperClass_softClass_85049)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPIPhotoEditHelperClass_block_invoke_85050;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getPIPhotoEditHelperClass_block_invoke_85050(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C45E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPIPhotoEditHelperClass_block_invoke_85050(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary_85051)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotoImagingLibraryCore_block_invoke_85052;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7572FB0;
    v8 = 0;
    PhotoImagingLibraryCore_frameworkLibrary_85051 = _sl_dlopen();
  }

  if (!PhotoImagingLibraryCore_frameworkLibrary_85051)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoImagingLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLEditSource.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PIPhotoEditHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPIPhotoEditHelperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLEditSource.m" lineNumber:17 description:{@"Unable to find class %s", "PIPhotoEditHelper"}];

LABEL_10:
    __break(1u);
  }

  getPIPhotoEditHelperClass_softClass_85049 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoImagingLibraryCore_block_invoke_85052()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary_85051 = result;
  return result;
}

void sub_19C460C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C461688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85435(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4618BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19C4625B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_19C4634E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__107(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_19C463844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDMPerformMigrationReturningAfterPluginSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataMigrationLibrary_85572();
  result = dlsym(v2, "DMPerformMigrationReturningAfterPlugin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMPerformMigrationReturningAfterPluginSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *DataMigrationLibrary_85572()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DataMigrationLibraryCore_frameworkLibrary_85581)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DataMigrationLibraryCore_block_invoke_85582;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E75730A0;
    v6 = 0;
    DataMigrationLibraryCore_frameworkLibrary_85581 = _sl_dlopen();
  }

  v0 = DataMigrationLibraryCore_frameworkLibrary_85581;
  if (!DataMigrationLibraryCore_frameworkLibrary_85581)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataMigrationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLDeviceRestoreMigrationSupport.m" lineNumber:44 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataMigrationLibraryCore_block_invoke_85582()
{
  result = _sl_dlopen();
  DataMigrationLibraryCore_frameworkLibrary_85581 = result;
  return result;
}

void PLDMIsMigrationNeeded()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getDMIsMigrationNeededSymbolLoc_ptr_85595;
  v7 = getDMIsMigrationNeededSymbolLoc_ptr_85595;
  if (!getDMIsMigrationNeededSymbolLoc_ptr_85595)
  {
    v1 = DataMigrationLibrary_85572();
    v5[3] = dlsym(v1, "DMIsMigrationNeeded");
    getDMIsMigrationNeededSymbolLoc_ptr_85595 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PLDMIsMigrationNeeded(void)"];
    [v2 handleFailureInFunction:v3 file:@"PLDeviceRestoreMigrationSupport.m" lineNumber:46 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C463DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDMIsMigrationNeededSymbolLoc_block_invoke_85596(uint64_t a1)
{
  v2 = DataMigrationLibrary_85572();
  result = dlsym(v2, "DMIsMigrationNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMIsMigrationNeededSymbolLoc_ptr_85595 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C46420C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDMGetUserDataDispositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataMigrationLibrary_85572();
  result = dlsym(v2, "DMGetUserDataDisposition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMGetUserDataDispositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMBManagerClass_block_invoke_85628(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MobileBackupLibraryCore_frameworkLibrary_85636)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MobileBackupLibraryCore_block_invoke_85637;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7573088;
    v8 = 0;
    MobileBackupLibraryCore_frameworkLibrary_85636 = _sl_dlopen();
  }

  if (!MobileBackupLibraryCore_frameworkLibrary_85636)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileBackupLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLDeviceRestoreMigrationSupport.m" lineNumber:49 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MBManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMBManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLDeviceRestoreMigrationSupport.m" lineNumber:50 description:{@"Unable to find class %s", "MBManager"}];

LABEL_10:
    __break(1u);
  }

  getMBManagerClass_softClass_85627 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileBackupLibraryCore_block_invoke_85637()
{
  result = _sl_dlopen();
  MobileBackupLibraryCore_frameworkLibrary_85636 = result;
  return result;
}

void sub_19C4648C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85646(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C465F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C467F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85998(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C469D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C469F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C46BDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__86403(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C46CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__86653(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __copy_helper_block_e8_56n11_8_8_s0_t8w8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void sub_19C46DDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PLCheckForStrongRefAndCancellationFromFunctionName(id val, uint64_t a2, void *a3, void *a4)
{
  objc_initWeak(&location, val);
  v7 = a3;
  v8 = a4;
  v9 = objc_loadWeakRetained(&location);
  v10 = v9;
  if (v9)
  {
    if (([v9 _shouldStopWithProgress:v7 afterCallingCompletionHandler:v8] & 1) == 0)
    {
      v11 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69BF2D0];
    v13 = _PLMissingWeakSelfErrorFromFunctionName(a2);
    v14 = [v12 failureWithError:v13];

    v8[2](v8, v14);
  }

  v11 = 0;
LABEL_6:

  objc_destroyWeak(&location);

  return v11;
}

id _PLMissingWeakSelfErrorFromFunctionName(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FeatureAvailability - %s - completion missing self", a1];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v6 = v1;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v3 = PLErrorCreate();

  return v3;
}

void sub_19C4701A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C4711D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C471774(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C471E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_19C472414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  objc_destroyWeak((v20 + 64));

  objc_destroyWeak((v21 - 80));
  _Unwind_Resume(a1);
}

void sub_19C4726A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C472988(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C472C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C472F2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C47320C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C4734EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C4737D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C473BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_19C473EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_19C474190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t plslogGreenTeaReadingPhotosOrVideos()
{
  result = PLIsForegroundApplication();
  if (result)
  {

    return MEMORY[0x1EEDF4350]();
  }

  return result;
}

uint64_t plslogGreenTeaTransmittingPhotosOrVideos()
{
  result = PLIsForegroundApplication();
  if (result)
  {

    return cpllogGreenTeaTransmittingPhotosOrVideos();
  }

  return result;
}

const char *PLStringUUIDComponents(void *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  result = [a1 cStringUsingEncoding:4];
  if (result)
  {
    memset(uu, 0, sizeof(uu));
    v6 = uuid_parse(result, uu);
    result = (v6 == 0);
    if (!v6)
    {
      v7 = *&uu[8];
      *a2 = *uu;
      *a3 = v7;
    }
  }

  return result;
}

uint64_t PLStringNewFromUUIDComponents(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  *uu = a1;
  v5 = a2;
  uuid_unparse(uu, out);
  return [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:out encoding:4];
}

id PLParseHashtags(void *a1)
{
  v1 = a1;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v1];
  [v2 setCharactersToBeSkipped:0];
  if (([v2 isAtEnd] & 1) == 0)
  {
    v4 = &styleForEnum__pl_once_object_17;
    v5 = &styleForEnum__pl_once_object_17;
    while (1)
    {
      [v2 scanUpToString:@"#" intoString:0];
      if (([v2 isAtEnd] & 1) == 0)
      {
        break;
      }

LABEL_22:
      [v2 setScanLocation:{objc_msgSend(v2, "scanLocation") + (objc_msgSend(v2, "isAtEnd") ^ 1)}];
      if ([v2 isAtEnd])
      {
        goto LABEL_2;
      }
    }

    if (v4[236] != -1)
    {
      dispatch_once(&PLParseHashtags_onceToken, &__block_literal_global_87545);
    }

    v6 = [v2 scanLocation];
    [v2 setScanLocation:{objc_msgSend(v2, "scanLocation") + 1}];
    v7 = v5[235];
    v21 = 0;
    v8 = [v2 scanUpToCharactersFromSet:v7 intoString:&v21];
    v9 = v21;
    if ([v2 isAtEnd])
    {
      v10 = 1;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ([v1 characterAtIndex:{objc_msgSend(v2, "scanLocation")}] == 35)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      if (!v8)
      {
        goto LABEL_20;
      }
    }

    v11 = [v9 length];
    if (v11)
    {
      v12 = v11;
      v13 = v1;
      v14 = v5;
      v15 = v4;
      v16 = [v2 scanLocation];
      [v2 setScanLocation:v6 + 1];
      v20 = v9;
      [v2 scanUpToCharactersFromSet:PLParseHashtags_nonNumbersCharacterSet intoString:&v20];
      v17 = v20;

      if ([v2 scanLocation] < v16)
      {
        v23.length = v12 + v10;
        v23.location = v6;
        v18 = NSStringFromRange(v23);
        [v19 setObject:v17 forKey:v18];
      }

      [v2 setScanLocation:v16];
      v4 = v15;
      v5 = v14;
      v1 = v13;
      goto LABEL_21;
    }

LABEL_20:
    v17 = v9;
LABEL_21:

    goto LABEL_22;
  }

LABEL_2:

  return v19;
}

uint64_t __PLParseHashtags_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v1 = [v0 invertedSet];
  v2 = PLParseHashtags_nonNumbersCharacterSet;
  PLParseHashtags_nonNumbersCharacterSet = v1;

  v3 = [MEMORY[0x1E696AD48] alphanumericCharacterSet];
  v4 = PLParseHashtags_nonAlphanumericCharacterSet;
  PLParseHashtags_nonAlphanumericCharacterSet = v3;

  [PLParseHashtags_nonAlphanumericCharacterSet addCharactersInString:@"_"];
  v5 = PLParseHashtags_nonAlphanumericCharacterSet;

  return [v5 invert];
}

__CFString *PLStringFromReadyForAnalysisState(int a1)
{
  if (!a1)
  {
    v7 = @"None";
    goto LABEL_21;
  }

  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"ReadyForCPL"];
  }

  if ((a1 & 2) != 0)
  {
    if ([v3 length])
    {
      v4 = @"|";
    }

    else
    {
      v4 = &stru_1F0F06D80;
    }

    [v3 appendFormat:@"%@%@", v4, @"CPLDownloadCompleted"];
  }

  if ((a1 & 4) != 0)
  {
    if ([v3 length])
    {
      v5 = @"|";
    }

    else
    {
      v5 = &stru_1F0F06D80;
    }

    [v3 appendFormat:@"%@%@", v5, @"ComputeCacheCompleted"];
  }

  if (a1 == 6)
  {
    v6 = @"QuickCheckCompleted";
    goto LABEL_19;
  }

  if (a1 == 7)
  {
    v6 = @"Ready";
LABEL_19:
    [v3 appendFormat:@" -> %@", v6];
  }

  v7 = [v3 copy];

LABEL_21:

  return v7;
}

id PLStringFromReadyForAnalysisCheckLevelShort(int a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = @"PLReadyForAnalysisCheckLevelNone";
  }

  else
  {
    v1 = off_1E7573388[(a1 - 1)];
  }

  v2 = -[__CFString substringFromIndex:](v1, "substringFromIndex:", [@"PLReadyForAnalysisCheckLevel" length]);
  v3 = [v2 lowercaseString];

  return v3;
}

void sub_19C47A9B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

__CFString *PLStringFromReadyForAnalysisCheckLevel(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PLReadyForAnalysisCheckLevelNone";
  }

  else
  {
    return off_1E7573388[(a1 - 1)];
  }
}

void sub_19C47CA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__87903(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C47D888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

__CFString *_PLStringFromPLAlbumKind(int a1)
{
  result = @"kPhotoLibraryAlbumKind_Regular";
  if (a1 <= 1549)
  {
    if (a1 <= 1501)
    {
      v3 = @"kPhotoLibraryAlbumKind_PhotoStream";
      v16 = @"kPhotoLibraryAlbumKind_Wallpaper_UNUSED";
      if (a1 != 1501)
      {
        v16 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 1500)
      {
        v3 = v16;
      }

      v17 = @"kPhotoLibraryAlbumKind_SavedPhotos";
      v18 = @"kPhotoLibraryAlbumKind_1stSpecial";
      if (a1 != 1100)
      {
        v18 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 1000)
      {
        v17 = v18;
      }

      if (a1 <= 1499)
      {
        v3 = v17;
      }

      v7 = @"kPhotoLibraryAlbumKind_Event";
      v19 = @"kPhotoLibraryAlbumKind_LegacyFaces";
      v20 = @"kPhotoLibraryAlbumKind_Places";
      if (a1 != 16)
      {
        v20 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 15)
      {
        v19 = v20;
      }

      if (a1 != 12)
      {
        v7 = v19;
      }

      v11 = a1 <= 999;
    }

    else
    {
      v3 = @"kPhotoLibraryAlbumKind_ConversationAlbum";
      v4 = @"kPhotoLibraryAlbumKind_Duplicate";
      if (a1 != 1510)
      {
        v4 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 1509)
      {
        v3 = v4;
      }

      v5 = @"kPhotoLibraryAlbumKind_UserSmartAlbum";
      v6 = @"kPhotoLibraryAlbumKind_Project";
      if (a1 != 1508)
      {
        v6 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 1507)
      {
        v5 = v6;
      }

      if (a1 <= 1508)
      {
        v3 = v5;
      }

      v7 = @"kPhotoLibraryAlbumKind_CloudSharedAlbum";
      v8 = @"kPhotoLibraryAlbumKind_ImportSessionAlbum";
      if (a1 != 1506)
      {
        v8 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 1505)
      {
        v7 = v8;
      }

      v9 = @"kPhotoLibraryAlbumKind_PictureFrame";
      v10 = @"kPhotoLibraryAlbumKind_CameraSession";
      if (a1 != 1503)
      {
        v10 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 1502)
      {
        v9 = v10;
      }

      if (a1 <= 1504)
      {
        v7 = v9;
      }

      v11 = a1 <= 1506;
    }
  }

  else
  {
    if (a1 <= 3570)
    {
      switch(a1)
      {
        case 1550:
          result = @"kPhotoLibraryAlbumKind_1WaySyncAlbum";
          break;
        case 1551:
          result = @"kPhotoLibraryAlbumKind_1WaySyncEvent";
          break;
        case 1552:
          result = @"kPhotoLibraryAlbumKind_1WaySyncLibraryAlbum";
          break;
        case 1553:
          result = @"kPhotoLibraryAlbumKind_1WaySyncFolder";
          break;
        case 1600:
          result = @"kPhotoLibraryAlbumKind_AllAssetsAlbum";
          break;
        case 1601:
          result = @"kPhotoLibraryAlbumKind_AllNonPhotoStreamAssetsAlbum";
          break;
        case 1602:
          result = @"kPhotoLibraryAlbumKind_AllPhotoStream";
          break;
        case 1603:
          result = @"kPhotoLibraryAlbumKind_LastImportAlbum";
          break;
        case 1604:
          result = @"kPhotoLibraryAlbumKind_AllImportedAlbum";
          break;
        case 1605:
          result = @"kPhotoLibraryAlbumKind_PanoramasAlbum";
          break;
        case 1606:
          result = @"kPhotoLibraryAlbumKind_VideosAlbum";
          break;
        case 1607:
          result = @"kPhotoLibraryAlbumKind_VerticalPanoramasAlbum";
          break;
        case 1608:
          result = @"kPhotoLibraryAlbumKind_HorizontalPanoramasAlbum";
          break;
        case 1609:
          result = @"kPhotoLibraryAlbumKind_FavoritesAlbum";
          break;
        case 1610:
          result = @"kPhotoLibraryAlbumKind_TimelapsesAlbum";
          break;
        case 1611:
          result = @"kPhotoLibraryAlbumKind_AllHiddenAlbum";
          break;
        case 1612:
          result = @"kPhotoLibraryAlbumKind_TrashBinAlbum";
          break;
        case 1613:
          result = @"kPhotoLibraryAlbumKind_UserLibraryAlbum";
          break;
        case 1614:
          result = @"kPhotoLibraryAlbumKind_BurstsAlbum";
          break;
        case 1615:
          result = @"kPhotoLibraryAlbumKind_SlomoVideosAlbum";
          break;
        case 1616:
          result = @"kPhotoLibraryAlbumKind_RecentlyAddedAlbum";
          break;
        case 1617:
          result = @"kPhotoLibraryAlbumKind_SelfPortraitsAlbum";
          break;
        case 1618:
          result = @"kPhotoLibraryAlbumKind_ScreenshotsAlbum";
          break;
        case 1619:
          result = @"kPhotoLibraryAlbumKind_PlacesSmartAlbum";
          break;
        case 1620:
          result = @"kPhotoLibraryAlbumKind_DepthEffectAlbum";
          break;
        case 1621:
          result = @"kPhotoLibraryAlbumKind_LivePhotosAlbum";
          break;
        case 1622:
          result = @"kPhotoLibraryAlbumKind_AnimatedAlbum";
          break;
        case 1623:
          result = @"kPhotoLibraryAlbumKind_LongExposuresAlbum";
          break;
        case 1624:
          result = @"kPhotoLibraryAlbumKind_UnableToUploadAlbum";
          break;
        case 1625:
          result = @"kPhotoLibraryAlbumKind_RecentsAlbum_DEPRECATED";
          break;
        case 1626:
          result = @"kPhotoLibraryAlbumKind_RecentlyEditedAlbum";
          break;
        case 1627:
          result = @"kPhotoLibraryAlbumKind_ScreenRecordingsAlbum";
          break;
        case 1628:
          result = @"kPhotoLibraryAlbumKind_AllPhotosAlbum";
          break;
        case 1629:
          result = @"kPhotoLibraryAlbumKind_SharedLibraryAlbum_DEPRECATED";
          break;
        case 1630:
          result = @"kPhotoLibraryAlbumKind_RAWAlbum";
          break;
        case 1631:
          result = @"kPhotoLibraryAlbumKind_CinematicVideoAlbum";
          break;
        case 1632:
          result = @"kPhotoLibraryAlbumKind_ProResAlbum";
          break;
        case 1634:
          result = @"kPhotoLibraryAlbumKind_AllLibraryDuplicatesAlbum";
          break;
        case 1635:
          result = @"kPhotoLibraryAlbumKind_NotUploadedAlbum_DEPRECATED";
          break;
        case 1636:
          result = @"kPhotoLibraryAlbumKind_SharedLibrarySharingSuggestionsAlbum";
          break;
        case 1637:
          result = @"kPhotoLibraryAlbumKind_ActionCamVideoAlbum";
          break;
        case 1639:
          result = @"kPhotoLibraryAlbumKind_SpatialAlbum";
          break;
        case 1640:
          result = @"kPhotoLibraryAlbumKind_RecentlySavedAlbum";
          break;
        case 1641:
          result = @"kPhotoLibraryAlbumKind_RecoveredAlbum";
          break;
        case 1642:
          result = @"kPhotoLibraryAlbumKind_FrontBackAlbum";
          break;
        default:
          return result;
      }

      return result;
    }

    if (a1 > 4000)
    {
      v3 = @"kPhotoLibraryAlbumKind_EventsSmartFolder";
      v21 = @"kPhotoLibraryAlbumKind_FacesSmartFolder";
      v22 = @"kPhotoLibraryAlbumKind_FavoriteMemoriesSmartFolder";
      if (a1 != 4006)
      {
        v22 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 4005)
      {
        v21 = v22;
      }

      if (a1 != 4004)
      {
        v3 = v21;
      }

      v7 = @"kPhotoLibraryAlbumKind_FacesStandIn";
      v23 = @"kPhotoLibraryAlbumKind_EventsStandIn";
      v24 = @"kPhotoLibraryAlbumKind_ImportStandIn";
      if (a1 != 4003)
      {
        v24 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 4002)
      {
        v23 = v24;
      }

      if (a1 != 4001)
      {
        v7 = v23;
      }

      v11 = a1 <= 4003;
    }

    else
    {
      v3 = @"kPhotoLibraryAlbumKind_ProjectAlbumRootFolder";
      v12 = @"kPhotoLibraryAlbumKind_RootFolder";
      v13 = @"kPhotoLibraryAlbumKind_Folder";
      if (a1 != 4000)
      {
        v13 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 3999)
      {
        v12 = v13;
      }

      if (a1 != 3998)
      {
        v3 = v12;
      }

      v7 = @"kPhotoLibraryAlbumKind_SyncProgressAlbum";
      v14 = @"kPhotoLibraryAlbumKind_OTARestoreProgressAlbum";
      v15 = @"kPhotoLibraryAlbumKind_FilesystemImportProgressAlbum";
      if (a1 != 3573)
      {
        v15 = @"kPhotoLibraryAlbumKind_Regular";
      }

      if (a1 != 3572)
      {
        v14 = v15;
      }

      if (a1 != 3571)
      {
        v7 = v14;
      }

      v11 = a1 <= 3997;
    }
  }

  if (v11)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

id PLStringFromPLAlbumKind(int a1)
{
  v1 = _PLStringFromPLAlbumKind(a1);
  v2 = [v1 substringFromIndex:{objc_msgSend(@"kPhotoLibraryAlbumKind_", "length")}];

  return v2;
}

__CFString *PLAlbumImportOperationDebugDescription(int a1)
{
  if (a1 == 1)
  {
    v1 = @"<none>";
    goto LABEL_11;
  }

  v2 = a1;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if ((v2 & 2) != 0)
  {
    [v3 addObject:@"sync"];
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_16:
      [v4 addObject:@"file-system-import"];
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

  [v4 addObject:@"ota-restore"];
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    [v4 addObject:@"rebuild"];
  }

LABEL_8:
  if (v2)
  {
    [v4 addObject:@"all"];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [v4 componentsJoinedByString:{@", "}];
  v1 = [v5 stringWithFormat:@"<%@>", v6];

LABEL_11:

  return v1;
}

id PLProgressDescription(unsigned int a1)
{
  v2 = (a1 & 2) >> 1;
  v3 = 1;
  if ((a1 & 2) != 0)
  {
    v3 = 2;
  }

  if ((a1 & 8) != 0)
  {
    v2 = v3;
  }

  v4 = v2 + ((a1 >> 2) & 1);
  if (v4 != 3)
  {
    if (v4 == 2)
    {
      if ((~a1 & 0xA) != 0 && (~a1 & 6) != 0 && (~a1 & 0xC) != 0)
      {
LABEL_10:
        v5 = 0;

        return v5;
      }
    }

    else if (v4 != 1 || (a1 & 6) == 0 && (a1 & 0x18) != 0x18)
    {
      goto LABEL_10;
    }
  }

  v5 = PLServicesLocalizedFrameworkString();

  return v5;
}

void sub_19C483520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLLibraryScopeConditionStringFromType(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Date Range";
  }

  if (a1 == 2)
  {
    return @"Person";
  }

  else
  {
    return v1;
  }
}

__CFString *PLLibraryScopeConditionStringFromCriteria(int a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"Exclusive";
  }

  if (a1 == 1)
  {
    return @"Inclusive";
  }

  else
  {
    return v1;
  }
}

void sub_19C487288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v56 + 80));
  objc_destroyWeak(&a54);
  objc_destroyWeak(&location);
  _Block_object_dispose((v57 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__89120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4886B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLStringShortener(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if ([v3 length] > a2)
  {
    v4 = [v3 substringFromIndex:a2];
  }

  return v4;
}

id PLCancellableDiscreteProgress(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:a3];
  v13 = v12;
  if (v11)
  {
    [v12 setCancellable:1];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __PLCancellableDiscreteProgress_block_invoke;
    v18 = &unk_1E7577C08;
    v20 = v11;
    v19 = v10;
    [v13 setCancellationHandler:&v15];
  }

  if (!a4)
  {
    a4 = [v9 totalUnitCount];
  }

  [v9 addChild:v13 withPendingUnitCount:{a4, v15, v16, v17, v18}];

  return v13;
}

void sub_19C48AEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PLModelMigrationSubclassesForClass()
{
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  PFObjc_enumerateSubclassesForHeader();

  return v1;
}

__CFString *PLStringFromModelMigrationActionResult(uint64_t a1)
{
  v1 = @"PLModelMigrationActionResultSuccess";
  if (a1 == 2)
  {
    v1 = @"PLModelMigrationActionResultCancelled";
  }

  if (a1 == 3)
  {
    return @"PLModelMigrationActionResultFailure";
  }

  else
  {
    return v1;
  }
}

id PLStringFromModelMigrationActionResultShort(uint64_t a1)
{
  v1 = @"PLModelMigrationActionResultSuccess";
  if (a1 == 2)
  {
    v1 = @"PLModelMigrationActionResultCancelled";
  }

  if (a1 == 3)
  {
    v1 = @"PLModelMigrationActionResultFailure";
  }

  v2 = v1;
  v3 = PLStringShortener(v2, [@"PLModelMigrationActionResult" length]);

  return v3;
}

__CFString *PLStringFromModelMigrationActionBackgroundStatus(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PLModelMigrationActionBackgroundStatusNotStarted";
  }

  else
  {
    return off_1E7573670[a1 - 1];
  }
}

id PLStringFromModelMigrationActionBackgroundStatusShort(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = @"PLModelMigrationActionBackgroundStatusNotStarted";
  }

  else
  {
    v1 = off_1E7573670[a1 - 1];
  }

  v2 = [@"PLModelMigrationActionBackgroundStatus" length];

  return PLStringShortener(v1, v2);
}

sqlite3 *PLOpenSQLTransactionWithDBPath(const char *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  ppDb = 0;
  v2 = MEMORY[0x1E69BF2D8];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  LODWORD(v2) = [v2 dataProtectionOpenFlagForPath:v3];

  v4 = sqlite3_open_v2(a1, &ppDb, v2 | 2, 0);
  if (v4)
  {
    v5 = v4;
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v24 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to open DB - %d", buf, 8u);
    }

    goto LABEL_24;
  }

  errmsg = 0;
  busy = sqlite3_busy_timeout(ppDb, 12000);
  if (busy)
  {
    v8 = busy;
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v24 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_FAULT, "Failed to set timeout - %d", buf, 8u);
    }
  }

  v10 = sqlite3_exec(ppDb, "PRAGMA journal_mode = WAL", 0, 0, &errmsg);
  if (!v10)
  {
    v16 = 0;
    while (1)
    {
      v17 = sqlite3_exec(ppDb, "BEGIN EXCLUSIVE", 0, 0, &errmsg);
      if (v17 != 5)
      {
        break;
      }

      v18 = PLMigrationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v24 = 100000;
        v25 = 1024;
        LODWORD(v26) = v16;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Database busy, retrying in %d us, retryCount %d", buf, 0xEu);
      }

      usleep(0x186A0u);
      if (++v16 == 10)
      {
        v19 = 5;
        goto LABEL_20;
      }
    }

    v19 = v17;
    if (!v17)
    {
      return ppDb;
    }

LABEL_20:
    v12 = PLMigrationGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    *buf = 67109378;
    v24 = v19;
    v25 = 2080;
    v26 = errmsg;
    v13 = "Failed to begin transaction - %d %s";
    v14 = v12;
    v15 = OS_LOG_TYPE_FAULT;
    goto LABEL_22;
  }

  v11 = v10;
  v12 = PLMigrationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v24 = v11;
    v25 = 2080;
    v26 = errmsg;
    v13 = "Failed to enable WAL - %d %s";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
LABEL_22:
    _os_log_impl(&dword_19BF1F000, v14, v15, v13, buf, 0x12u);
  }

LABEL_23:

  sqlite3_free(errmsg);
LABEL_24:
  result = ppDb;
  if (ppDb)
  {
    sqlite3_close(ppDb);
    return 0;
  }

  return result;
}

BOOL PLCommitSQLTransactionAndCloseDB(sqlite3 *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PLCommitSQLTransactionAndCloseDB(sqlite3 * _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"PLModelMigrationAction.m" lineNumber:141 description:@"Invalid db given for commit"];
  }

  errmsg = 0;
  v2 = sqlite3_exec(a1, "COMMIT", 0, 0, &errmsg);
  if (v2)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v9 = v2;
      v10 = 2080;
      v11 = errmsg;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Failed to commit transaction - %d %s", buf, 0x12u);
    }

    PLRollbackSQLTransactionAndCloseDB(a1);
  }

  else
  {
    sqlite3_close(a1);
  }

  return v2 == 0;
}

BOOL PLRollbackSQLTransactionAndCloseDB(sqlite3 *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PLRollbackSQLTransactionAndCloseDB(sqlite3 * _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"PLModelMigrationAction.m" lineNumber:156 description:@"Invalid db given for rollback"];
  }

  errmsg = 0;
  v2 = sqlite3_exec(a1, "ROLLBACK", 0, 0, &errmsg);
  if (v2)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v9 = v2;
      v10 = 2080;
      v11 = errmsg;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Failed to rollback transaction - %d %s", buf, 0x12u);
    }
  }

  sqlite3_close(a1);
  return v2 == 0;
}

id PLManagedObjectContextForMigrationActionWithCoordinator(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = a1;
  pl_dispatch_once();
  v11 = MEMORY[0x1E695D628];
  v12 = PLManagedObjectContextForMigrationActionWithCoordinator_pl_once_object_24;
  v13 = [[v11 alloc] initWithConcurrencyType:1];
  [v13 setName:v9];

  [v13 setPersistentStoreCoordinator:v10];
  [v13 setMergePolicy:v12];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PLManagedObjectContextForMigrationActionWithCoordinator_block_invoke_2;
  v20[3] = &unk_1E75761B8;
  v14 = v13;
  v21 = v14;
  v22 = v7;
  v23 = v8;
  v15 = v8;
  v16 = v7;
  [v14 performBlockAndWait:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

void __PLManagedObjectContextForMigrationActionWithCoordinator_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) userInfo];
  [v3 setObject:v2 forKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];

  v4 = [*(a1 + 32) userInfo];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = v4;
    [v4 setObject:v5 forKey:@"com.apple.photos.PLMigrationGraphCacheKey"];
    v4 = v6;
  }
}

void __PLManagedObjectContextForMigrationActionWithCoordinator_block_invoke()
{
  v0 = [(NSMergePolicy *)[PLMergePolicy alloc] initWithMergeType:2];
  v1 = PLManagedObjectContextForMigrationActionWithCoordinator_pl_once_object_24;
  PLManagedObjectContextForMigrationActionWithCoordinator_pl_once_object_24 = v0;
}

__CFString *PLRebuildReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 0x14)
  {
    return @"PLRebuildReasonUnknown";
  }

  else
  {
    return off_1E7573690[a1 - 1];
  }
}

__CFString *PLRebuildReasonToShortString(uint64_t a1)
{
  v2 = [@"PLRebuildReason" length];
  if ((a1 - 1) > 0x14)
  {
    v3 = @"PLRebuildReasonUnknown";
  }

  else
  {
    v3 = off_1E7573690[a1 - 1];
  }

  v4 = v3;
  if ([(__CFString *)v4 length]> v2)
  {
    v5 = [(__CFString *)v4 substringFromIndex:v2];

    v4 = v5;
  }

  return v4;
}

uint64_t __Block_byref_object_copy__90025(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4955F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C496FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C497854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_19C498AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C49BB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__90668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C49D5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C49E5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C49E978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLExtrinsicPhotosPathsOnThisDeviceForDemoBundle()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v0 addObject:@"/var/mobile/Documents/DemoPhotoLibraryTemplate"];
  [v0 addObject:@"/var/mobile/Media/MediaAnalysis"];
  [v0 addObject:@"/var/mobile/Media/Memories"];

  return v0;
}

void sub_19C4A094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4A1904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_19C4A4D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4A4F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4A6414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__91511(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLStringFromDataMigrationRestoreType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E7573E80[a1 - 1];
  }
}

void sub_19C4A9BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__91955(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4AA654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4AA980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92136(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4AF9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4B042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4B17DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92396(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4B2848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4B3150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t PLSAggregateDictionaryKeyForBucketizedMetric(uint64_t a1, double *a2, uint64_t a3, double a4)
{
  v4 = 0.0;
  if (a3)
  {
    v5 = a2[a3 - 1];
    if (v5 >= a4)
    {
      v6 = &stru_1F0F06D80;
      while (1)
      {
        v5 = *a2;
        if (*a2 >= a4)
        {
          break;
        }

        ++a2;
        if (!--a3)
        {
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@%g", a1, v6, *&v4];
        }
      }
    }

    else
    {
      v6 = @">";
    }

    v4 = v5;
  }

  else
  {
    v6 = &stru_1F0F06D80;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@%g", a1, v6, *&v4];
}

uint64_t PLSAggregateDictionaryKeyForVideoEditOriginalTrimDuration(double a1)
{
  v1 = 1800.0;
  if (a1 <= 1800.0)
  {
    v3 = 0;
    v2 = &stru_1F0F06D80;
    while (1)
    {
      v1 = *&__videoDurationBucketSizes[v3];
      if (v1 >= a1)
      {
        break;
      }

      if (++v3 == 16)
      {
        v1 = 0.0;
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@%g", @"com.apple.mobileslideshow.videoedit.originalTrimDuration", v2, *&v1];
      }
    }
  }

  else
  {
    v2 = @">";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@%g", @"com.apple.mobileslideshow.videoedit.originalTrimDuration", v2, *&v1];
}

uint64_t PLSAggregateDictionaryKeyForVideoEditFinalTrimDuration(double a1)
{
  v1 = 1800.0;
  if (a1 <= 1800.0)
  {
    v3 = 0;
    v2 = &stru_1F0F06D80;
    while (1)
    {
      v1 = *&__videoDurationBucketSizes[v3];
      if (v1 >= a1)
      {
        break;
      }

      if (++v3 == 16)
      {
        v1 = 0.0;
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@%g", @"com.apple.mobileslideshow.videoedit.finalTrimDuration", v2, *&v1];
      }
    }
  }

  else
  {
    v2 = @">";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@%g", @"com.apple.mobileslideshow.videoedit.finalTrimDuration", v2, *&v1];
}

uint64_t PLSAggregateDictionarySetValueForScalarKey(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = PLAggdGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "set %@ to %@", &v6, 0x16u);
    }

    return ADClientSetValueForScalarKey();
  }

  return result;
}

uint64_t PLSAggregateDictionaryAddValueForScalarKey(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = PLAggdGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "add %@ to %@", &v6, 0x16u);
    }

    return ADClientAddValueForScalarKey();
  }

  return result;
}

void sub_19C4B6D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CreatePrivateQueueMOC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSManagedObjectContext *CreatePrivateQueueMOC(NSManagedObjectContext *__strong, NSString *__strong, NSString *__strong)"}];
    [v18 handleFailureInFunction:v19 file:@"PLLibraryContentsEnumerator.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"sourceContext"}];
  }

  if ([v5 concurrencyType] == 1)
  {
    v8 = v5;
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__93704;
    v31 = __Block_byref_object_dispose__93705;
    v32 = 0;
    v9 = [objc_alloc(objc_opt_class()) initWithConcurrencyType:1];
    if ([v5 concurrencyType] == 2 && (objc_msgSend(MEMORY[0x1E696AF00], "isMainThread") & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __CreatePrivateQueueMOC_block_invoke;
      block[3] = &unk_1E7578910;
      v26 = &v27;
      v25 = v5;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    if (!v28[5])
    {
      v10 = [v5 userInfo];
      v11 = [v10 objectForKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];
      v12 = v28[5];
      v28[5] = v11;
    }

    v13 = [v6 stringByAppendingString:@"-Batch"];
    [v9 setName:v13];

    v14 = [v5 persistentStoreCoordinator];
    [v9 setPersistentStoreCoordinator:v14];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __CreatePrivateQueueMOC_block_invoke_2;
    v20[3] = &unk_1E7578820;
    v15 = v9;
    v21 = v15;
    v22 = v7;
    v23 = &v27;
    [v15 performBlockAndWait:v20];
    v16 = v22;
    v8 = v15;

    _Block_object_dispose(&v27, 8);
  }

  return v8;
}

uint64_t __Block_byref_object_copy__93704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CreatePrivateQueueMOC_block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) userInfo];
  v2 = [v5 objectForKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __CreatePrivateQueueMOC_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTransactionAuthor:*(a1 + 40)];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) userInfo];
  [v3 setObject:v2 forKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];
}

void sub_19C4BF400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__93950(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4BFB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4C01FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4C05C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4C638C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__94746(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4C7D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__94902(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4C8008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C4C9F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__95072(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4CAE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, uint64_t a16, uint64_t a17, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, a13, "Received saveAssetWithDataAndPorts:clientConnection:imageSurface:previewImageSurface:reply: from %ld with job type %{public}@ uuid %{public}@", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t PLStringFromPLDuplicateType(int a1)
{
  v1 = @"PLDuplicateTypeNone";
  v2 = @"PLDuplicateTypeSimilar";
  v3 = @"PLDuplicateTypeMixed";
  if (a1 != 256)
  {
    v3 = @"PLDuplicateTypeNone";
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = @"PLDuplicateTypePerceptual";
  }

  if (a1 == 1)
  {
    v1 = @"PLDuplicateTypeMetadata";
  }

  if (a1 <= 2)
  {
    v4 = v1;
  }

  else
  {
    v4 = v2;
  }

  v5 = [@"PLDuplicateType" length];

  return [(__CFString *)v4 substringFromIndex:v5];
}

uint64_t PLManagedAssetAnalysisNormalizedStageIgnoringSlots(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 - 910 < 0x29)
  {
    return 910;
  }

  return v1;
}

const void *backingIndexForIndex(void *a1, CFIndex a2)
{
  v3 = a1;
  [v3 createSortedIndexesMap];
  v4 = v3[2];

  if (v4)
  {
    return CFArrayGetValueAtIndex(v4, a2);
  }

  else
  {
    return 0;
  }
}

void releaseThumbnailData(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFString *PLDebugStringForSearchSuggestionTemplateContentType(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"PLSearchSuggestionTemplateContentTypeNone";
  }

  else
  {
    return off_1E7574CD0[a1 - 1];
  }
}

void sub_19C4ECDB0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99573(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4EDDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4EF3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99887(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4EF584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4F1098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4F241C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__100187(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4F3230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C4F8F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__100804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C4F98A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLDescriptionForMemoryMood(uint64_t a1)
{
  if (a1 > 31)
  {
    if (a1 > 255)
    {
      switch(a1)
      {
        case 256:
          return @"PLMemoryMoodClub";
        case 512:
          return @"PLMemoryMoodExtreme";
        case 1023:
          return @"PLMemoryMoodAll";
      }
    }

    else
    {
      switch(a1)
      {
        case 32:
          return @"PLMemoryMoodHappy";
        case 64:
          return @"PLMemoryMoodUplifting";
        case 128:
          return @"PLMemoryMoodEpic";
      }
    }
  }

  else if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        return @"PLMemoryMoodGentle";
      case 8:
        return @"PLMemoryMoodChill";
      case 16:
        return @"PLMemoryMoodNeutral";
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return @"PLMemoryMoodNone";
      case 1:
        return @"PLMemoryMoodDreamy";
      case 2:
        return @"PLMemoryMoodSentimental";
    }
  }

  return @"unknown";
}

BOOL _DateIsInThePastNumberOfDays(void *a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a3;
  v26 = a4;
  v11 = [MEMORY[0x1E695DEE8] currentCalendar];
  v12 = v11;
  if ((a5 & 1) == 0)
  {
    [v11 setTimeZone:v10];
  }

  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v12 components:30 fromDate:v13];
  v15 = [v12 dateFromComponents:v14];
  v16 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v16 setDay:1];
  [v16 setSecond:-1];
  v17 = [v12 dateByAddingComponents:v16 toDate:v15 options:0];
  v18 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v18 setDay:-a2];
  v19 = [v12 dateByAddingComponents:v18 toDate:v15 options:0];
  if (a5)
  {
    v20 = [v26 secondsFromGMT];
    v21 = [v17 dateByAddingTimeInterval:v20];

    v22 = [v19 dateByAddingTimeInterval:v20];

    v19 = v22;
    v17 = v21;
  }

  v23 = [v9 compare:v19] != -1 && objc_msgSend(v9, "compare:", v17) != 1;

  return v23;
}

__CFString *_FormattedDateWithUDateFormatter(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    [v5 timeIntervalSince1970];
    [v6 timeIntervalSince1970];
    v7 = udtitvfmt_format();
    if (v7 >= 201)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v12 = v7;
        *&v12[4] = 2114;
        *&v12[6] = v5;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "PLDateRangeFormatter: Truncated output! (Length:%d, From:%{public}@, To:%{public}@)!", buf, 0x1Cu);
      }

      v7 = 200;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:v15 length:v7];
  }

  else
  {
    v8 = &stru_1F0F06D80;
  }

  return v8;
}

uint64_t __Block_byref_object_copy__101075(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _CreateUDateFormatter(void *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 localeIdentifier];
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  if (([v8 getCString:v41 maxLength:100 encoding:4] & 1) == 0)
  {
    v9 = PLBackendGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v16 = 0;
      goto LABEL_14;
    }

    v11 = _DebugDescriptionForLocale(v5);
    v39[0] = 138412290;
    *&v39[1] = v11;
    v12 = "PLDateRangeFormatter: Failed to create a UDateIntervalFormat: Could not prepare identifier for locale: %@!";
    v13 = v39;
    v14 = v9;
    goto LABEL_11;
  }

  v9 = [v6 name];
  v10 = [v9 length];
  if (v10 >= 0x65)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v39[0] = 138412290;
      *&v39[1] = v9;
      v12 = "PLDateRangeFormatter: Failed to create a UDateIntervalFormat: Time zone name length out of bounds: %@!";
      v13 = v39;
LABEL_10:
      v14 = v11;
LABEL_11:
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, v12, v13, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  [v9 getCharacters:v39 range:0, v10];
  v15 = [v7 length];
  if (v15 >= 0x65)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      v12 = "PLDateRangeFormatter: Failed to create a UDateIntervalFormat: Template length out of bounds: %@!";
      v13 = buf;
      goto LABEL_10;
    }

LABEL_12:

    goto LABEL_13;
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *buf = 0u;
  [v7 getCharacters:buf range:{0, v15}];
  v16 = udtitvfmt_open();
  if (v16)
  {
    udtitvfmt_setContext();
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = _DebugDescriptionForLocale(v5);
      *v20 = 138412802;
      v21 = v19;
      v22 = 2112;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "PLDateRangeFormatter: Failed to create a UDateIntervalFormat (locale: %@, time zone: %@, template: %{public}@)!", v20, 0x20u);
    }

    v16 = 0;
  }

LABEL_14:

  return v16;
}

id _DebugDescriptionForLocale(void *a1)
{
  v1 = MEMORY[0x1E695DF58];
  v2 = a1;
  v3 = [v1 localeWithLocaleIdentifier:@"en_US"];
  v4 = [v2 localeIdentifier];

  v5 = [v3 localizedStringForLocaleIdentifier:v4];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ (%@)>", v4, v5];

  return v6;
}

id PLNodeContainerClassFromBuiltInLabelCode(uint64_t a1)
{
  if (PLNodeContainerClassFromBuiltInLabelCode_s_onceToken != -1)
  {
    dispatch_once(&PLNodeContainerClassFromBuiltInLabelCode_s_onceToken, &__block_literal_global_101715);
  }

  v2 = PLNodeContainerClassFromBuiltInLabelCode_s_nodeContainerClassesByBuiltInLabelCode;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __PLNodeContainerClassFromBuiltInLabelCode_block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F0FBE848;
  v3[0] = objc_opt_class();
  v2[1] = &unk_1F0FBE8A8;
  v3[1] = objc_opt_class();
  v2[2] = &unk_1F0FBE938;
  v3[2] = objc_opt_class();
  v2[3] = &unk_1F0FBE950;
  v3[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = PLNodeContainerClassFromBuiltInLabelCode_s_nodeContainerClassesByBuiltInLabelCode;
  PLNodeContainerClassFromBuiltInLabelCode_s_nodeContainerClassesByBuiltInLabelCode = v0;
}

uint64_t PLNameSourceIsSyncable(uint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if (a1 > 7)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6[0] = 67109120;
        v6[1] = v1;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "PLNameSourceIsSyncable: Unexpected name source: %d", v6, 8u);
      }
    }

    return 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    v3 = [&unk_1F0FC0150 containsObject:v2];

    return v3;
  }
}

void sub_19C4FF834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C501F48(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__102376(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C502ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_19C503058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double PLMomentAggregationScoreFromAggregationScoreType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0.4;
  }

  else
  {
    return dbl_19C60FF60[a1 - 1];
  }
}

void sub_19C509690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__103360(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C50D8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t PLSharingCompositionFromCollectionCounts(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

BOOL PLUpdateSharingCompositionForSharedAssetContainers(void *a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 firstObject];
  v11 = [v10 managedObjectContext];

  v12 = [v7 firstObject];
  v13 = [v12 entity];
  v52 = [v13 name];

  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PLUpdateSharingCompositionForSharedAssetContainers(NSArray<NSManagedObject<PLBackgroundUpdatesSharingComposition> *> *__strong, NSError *__autoreleasing *, NSPredicate *__strong, NSPredicate *__strong)"}];
    [v42 handleFailureInFunction:v43 file:@"PLSharedAssetsContainer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"privateOnlyPredicate"}];

    if (v9)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_38:
      v27 = 0;
      if (!a2)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PLUpdateSharingCompositionForSharedAssetContainers(NSArray<NSManagedObject<PLBackgroundUpdatesSharingComposition> *> *__strong, NSError *__autoreleasing *, NSPredicate *__strong, NSPredicate *__strong)"}];
  [v44 handleFailureInFunction:v45 file:@"PLSharedAssetsContainer.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"sharedOnlyPredicate"}];

  if (!v11)
  {
    goto LABEL_38;
  }

LABEL_4:
  v51 = v9;
  v48 = a2;
  context = objc_autoreleasePoolPush();
  v14 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v7, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v61;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v61 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v60 + 1) + 8 * i) objectID];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v17);
  }

  v21 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v52];
  [v21 setPredicate:v8];
  [v21 setResultType:1];
  v59 = 0;
  v50 = v11;
  v22 = [v11 executeFetchRequest:v21 error:&v59];
  v23 = v59;
  v49 = v8;
  if (v22)
  {
    v24 = [MEMORY[0x1E695DFD8] setWithArray:v22];
    [v14 minusSet:v24];
  }

  else
  {
    v24 = 0;
  }

  v25 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v52];
  [v25 setPredicate:v51];
  [v25 setResultType:1];
  v58 = v23;
  v26 = [v50 executeFetchRequest:v25 error:&v58];
  v27 = v58;

  if (v26)
  {
    v53 = [MEMORY[0x1E695DFD8] setWithArray:v26];
    [v14 minusSet:?];
  }

  else
  {
    v53 = 0;
  }

  if (!v27)
  {
    v46 = v7;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = v15;
    v29 = [v28 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v55;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v55 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v54 + 1) + 8 * j);
          v34 = [v33 objectID];
          v35 = [v24 containsObject:v34];

          if (v35)
          {
            v36 = 0;
          }

          else
          {
            v37 = [v33 objectID];
            v38 = [v53 containsObject:v37];

            if (v38)
            {
              v36 = 1;
            }

            else
            {
              v36 = 2;
            }
          }

          if ([v33 sharingComposition] != v36)
          {
            [v33 willChangeValueForKey:@"sharingComposition"];
            v39 = [MEMORY[0x1E696AD98] numberWithShort:v36];
            [v33 setPrimitiveValue:v39 forKey:@"sharingComposition"];

            [v33 didChangeValueForKey:@"sharingComposition"];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v30);
    }

    v27 = 0;
    v7 = v46;
  }

  objc_autoreleasePoolPop(context);
  a2 = v48;
  v8 = v49;
  v11 = v50;
  v9 = v51;
  if (v48)
  {
LABEL_34:
    v40 = v27;
    *a2 = v27;
  }

LABEL_35:

  return v27 == 0;
}

uint64_t PLResourceConformsToTypesFromUTI(void *a1)
{
  v1 = a1;
  v2 = [v1 conformsToImage];
  if ([v1 conformsToMovie])
  {
    v2 |= 2uLL;
  }

  if ([v1 conformsToRawImage])
  {
    v3 = v2 | 4;
  }

  else
  {
    v3 = v2;
  }

  v4 = [v1 isPlayableVideo];

  if (v4)
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

void sub_19C510D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__103809(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t IMCoreLibraryCore()
{
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return IMCoreLibraryCore_frameworkLibrary;
}

uint64_t getIMSPIRemoveAttachmentGUIDFromSyndicationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPIRemoveAttachmentGUIDFromSyndicationSymbolLoc_ptr;
  v6 = getIMSPIRemoveAttachmentGUIDFromSyndicationSymbolLoc_ptr;
  if (!getIMSPIRemoveAttachmentGUIDFromSyndicationSymbolLoc_ptr)
  {
    v1 = IMCoreLibrary();
    v4[3] = dlsym(v1, "IMSPIRemoveAttachmentGUIDFromSyndication");
    getIMSPIRemoveAttachmentGUIDFromSyndicationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19C5120A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getIMSPIUnhideSyndicationForAttachmentGUIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPIUnhideSyndicationForAttachmentGUIDSymbolLoc_ptr;
  v6 = getIMSPIUnhideSyndicationForAttachmentGUIDSymbolLoc_ptr;
  if (!getIMSPIUnhideSyndicationForAttachmentGUIDSymbolLoc_ptr)
  {
    v1 = IMCoreLibrary();
    v4[3] = dlsym(v1, "IMSPIUnhideSyndicationForAttachmentGUID");
    getIMSPIUnhideSyndicationForAttachmentGUIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19C512190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIMSPIUnhideSyndicationForAttachmentGUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibrary();
  result = dlsym(v2, "IMSPIUnhideSyndicationForAttachmentGUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIUnhideSyndicationForAttachmentGUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IMCoreLibrary()
{
  v0 = IMCoreLibraryCore();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IMCoreLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"PLManagedAsset+Syndication.m" lineNumber:71 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

void *__getIMSPIRemoveAttachmentGUIDFromSyndicationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibrary();
  result = dlsym(v2, "IMSPIRemoveAttachmentGUIDFromSyndication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIRemoveAttachmentGUIDFromSyndicationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _PLOriginalResourceTypeFromAssetType(unsigned int a1)
{
  if (a1 >= 3)
  {
    return 31;
  }

  else
  {
    return a1;
  }
}

uint64_t __Block_byref_object_copy__104308(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C5195B0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x5F0], 8);
  _Block_object_dispose(&STACK[0x610], 8);
  _Unwind_Resume(a1);
}

void sub_19C519AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C51BD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose((v66 - 176), 8);
  _Block_object_dispose((v66 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_19C51CB48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int buf, __int128 a14)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(a1);
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      buf = 138412546;
      WORD2(a14) = 2112;
      *(&a14 + 6) = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Rebuild: (Asset) Exception installing thumbnail for asset %@: %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x19C51C93CLL);
  }

  _Unwind_Resume(a1);
}

void sub_19C51D914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C51E278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C51E420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C51E84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C51EBB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_19C51FB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C5203E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 138543618;
      *(&a9 + 4) = @"isReadyForAnalysisDate";
      WORD6(a9) = 2112;
      *(&a9 + 14) = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "PLAppPrivateData: Failed to save %{public}@ (%@)", &a9, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x19C5203ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_19C520EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, a13, "##### %s %@ entitled:%d", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

__CFString *PLSyndicationIngestClientStringFromIdentifier(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Identifier %hhu", a1];
  }

  else
  {
    v2 = off_1E7575A38[a1];
  }

  return v2;
}

void sub_19C52CDE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__106333(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C52E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, uint64_t a16, uint64_t a17, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, a13, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C52ECC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, os_signpost_id_t a21, os_activity_scope_state_s a22, SEL sel)
{
  if (a19 == 1)
  {
    os_activity_scope_leave(&a22);
  }

  if (a21)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    if (a21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel);
      *(v23 - 96) = 136446210;
      *(v23 - 92) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, a21, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", (v23 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C52F3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, a13, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C52F6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, a13, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C52FAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, os_signpost_id_t a19, os_activity_scope_state_s a20, SEL sel)
{
  if (a17 == 1)
  {
    os_activity_scope_leave(&a20);
  }

  if (a19)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      *(v21 - 96) = 136446210;
      *(v21 - 92) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, a19, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", (v21 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C5309E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, os_signpost_id_t a21, os_activity_scope_state_s a22, SEL sel)
{
  if (a19 == 1)
  {
    os_activity_scope_leave(&a22);
  }

  if (a21)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    if (a21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      Name = sel_getName(sel);
      *(v24 - 128) = 136446210;
      *(v23 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_INTERVAL_END, a21, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", (v24 - 128), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C531354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a13, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

id _PLDiagnosticsAllUIStateTitles()
{
  pl_dispatch_once();
  v0 = _PLDiagnosticsAllUIStateTitles_allUIStateTitles;

  return v0;
}

id PLDiagnosticsTitleOfUIState(uint64_t a1)
{
  v2 = _PLDiagnosticsAllUIStateTitles();
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void PLDiagnosticsEnumerateAllUIStatesUsingBlock(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLDiagnosticsEnumerateAllUIStatesUsingBlock(void (^__strong _Nonnull)(PLDiagnosticsUIState, BOOL *))"}];
    [v11 handleFailureInFunction:v12 file:@"PLDiagnosticsAgent.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v2 = _PLDiagnosticsAllUIStateTitles();
  v3 = [v2 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v14 + 1) + 8 * v9) integerValue];
      if (v10)
      {
        v13 = 0;
        v1[2](v1, v10, &v13);
        if (v13)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

void sub_19C533AC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C533E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C534B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C5353AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__106846(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C535A84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_19C538210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__107328(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C53869C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C538ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C538C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C538DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSIRowIDCompare_107345(unint64_t a1, unint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

void sub_19C539278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C539F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C53DB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_19C53DF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *_newUTF8String(void *a1, _DWORD *a2)
{
  v3 = [a1 dataUsingEncoding:4 allowLossyConversion:1];
  v4 = [v3 length];
  v5 = malloc_type_malloc(v4 + 1, 0x5790E1DBuLL);
  [v3 getBytes:v5 range:{0, v4}];
  v5[v4] = 0;
  if (a2)
  {
    *a2 = v4 + 1;
  }

  return v5;
}

void sub_19C53F018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C53F3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_19C53F7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_19C53FA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5403C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C54092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C541F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19C5431A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C543AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C543F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5441BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C544328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C544614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C544A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5458A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C545CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C545F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C546820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void finalizeSqliteStatementInDictionary(int a1, sqlite3_stmt *pStmt)
{
  v4 = *MEMORY[0x1E69E9840];
  if (sqlite3_finalize(pStmt))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v2 = 138412290;
      v3 = @"Couldn't finalize prepared statement";
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed statement check: %@", &v2, 0xCu);
    }
  }
}

void sub_19C54AB24(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = PLSearchBackendPSIDatabaseGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to prepare PSI statements. Exception: %@", &buf, 0xCu);
    }

    CFDictionaryApplyFunction(v11, finalizeSqliteStatementInDictionary, 0);
    objc_end_catch();
    JUMPOUT(0x19C54AAE8);
  }

  _Unwind_Resume(a1);
}

void sub_19C54AEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C54B1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C54BEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C54CE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C54D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C54D780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C54D960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_resizeIfNeeded(void *a1, void *ptr, size_t a3, size_t size)
{
  if (size <= a3)
  {
    return ptr;
  }

  if (ptr == a1 || !ptr)
  {
    return malloc_type_malloc(size, 0x4E198139uLL);
  }

  return malloc_type_realloc(ptr, size, 0x53A88A2CuLL);
}

BOOL PLResourceIsOriginalNonDerivativeWithType(void *a1)
{
  v1 = a1;
  v2 = [v1 resourceType] == 4 && !objc_msgSend(v1, "version") && (objc_msgSend(v1, "recipeID") & 1) == 0;

  return v2;
}

void sub_19C552D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__108485(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C555F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__108963(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C5563FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 224), 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C5576B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C557CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C558E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19C55AC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C55B26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C55C85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 240), 8);
  _Block_object_dispose((v47 - 184), 8);
  _Block_object_dispose((v47 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_19C55F3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C55F848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19C55FD30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_19C55FF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C560E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSymptomDiagnosticErrorInvalidParametersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticErrorInvalidParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticErrorInvalidParametersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SymptomDiagnosticReporterLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SymptomDiagnosticReporterLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7576C00;
    v6 = 0;
    SymptomDiagnosticReporterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SymptomDiagnosticReporterLibraryCore_frameworkLibrary;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SymptomDiagnosticReporterLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLAutoBugCapture.m" lineNumber:22 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SymptomDiagnosticReporterLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C561AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSymptomDiagnosticErrorRequestThrottledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticErrorRequestThrottled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticErrorRequestThrottledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getSDRDiagnosticReporterClass_block_invoke(uint64_t a1)
{
  SymptomDiagnosticReporterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SDRDiagnosticReporter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSDRDiagnosticReporterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSDRDiagnosticReporterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLAutoBugCapture.m" lineNumber:23 description:{@"Unable to find class %s", "SDRDiagnosticReporter"}];

    __break(1u);
  }
}

void sub_19C562048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSymptomDiagnosticReplySuccessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplySuccess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticReplyReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplyReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplyReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C5626D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSymptomDiagnosticActionLogArchiveSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticActionLogArchive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticActionLogArchiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticActionGetNetworkInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticActionGetNetworkInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticActionGetNetworkInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticActionCrashAndSpinLogsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticActionCrashAndSpinLogs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticActionCrashAndSpinLogsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticActionDiagnosticExtensionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticActionDiagnosticExtensions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticActionDiagnosticExtensionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C562B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__109590(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void getkSymptomDiagnosticKeyEventName()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSymptomDiagnosticKeyEventNameSymbolLoc_ptr;
  v9 = getkSymptomDiagnosticKeyEventNameSymbolLoc_ptr;
  if (!getkSymptomDiagnosticKeyEventNameSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v7[3] = dlsym(v1, "kSymptomDiagnosticKeyEventName");
    getkSymptomDiagnosticKeyEventNameSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticKeyEventName(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLAutoBugCapture.m" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C5630A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkSymptomDiagnosticKeyEventResult()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSymptomDiagnosticKeyEventResultSymbolLoc_ptr;
  v9 = getkSymptomDiagnosticKeyEventResultSymbolLoc_ptr;
  if (!getkSymptomDiagnosticKeyEventResultSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v7[3] = dlsym(v1, "kSymptomDiagnosticKeyEventResult");
    getkSymptomDiagnosticKeyEventResultSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticKeyEventResult(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLAutoBugCapture.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C563208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkSymptomDiagnosticKeyEventCount()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSymptomDiagnosticKeyEventCountSymbolLoc_ptr;
  v9 = getkSymptomDiagnosticKeyEventCountSymbolLoc_ptr;
  if (!getkSymptomDiagnosticKeyEventCountSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v7[3] = dlsym(v1, "kSymptomDiagnosticKeyEventCount");
    getkSymptomDiagnosticKeyEventCountSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticKeyEventCount(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLAutoBugCapture.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C56336C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSymptomDiagnosticKeyEventCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticKeyEventCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticKeyEventCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticKeyEventResultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticKeyEventResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticKeyEventResultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticKeyEventNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticKeyEventName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticKeyEventNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getkSymptomDiagnosticKeyTimestamp()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSymptomDiagnosticKeyTimestampSymbolLoc_ptr;
  v9 = getkSymptomDiagnosticKeyTimestampSymbolLoc_ptr;
  if (!getkSymptomDiagnosticKeyTimestampSymbolLoc_ptr)
  {
    v1 = SymptomDiagnosticReporterLibrary();
    v7[3] = dlsym(v1, "kSymptomDiagnosticKeyTimestamp");
    getkSymptomDiagnosticKeyTimestampSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticKeyTimestamp(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLAutoBugCapture.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C563AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSymptomDiagnosticKeyTimestampSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticKeyTimestamp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticKeyTimestampSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _resourceIsOriginalSlomo(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 isOriginalVideo] && objc_msgSend(v3, "hasAdjustments"))
  {
    v4 = [v3 isOriginalSlomo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PLVideoResourceDescription(void *a1)
{
  v1 = a1;
  if ([v1 matchesOrExceedsQualityLevel:0])
  {
    v2 = @"high";
  }

  else if ([v1 matchesOrExceedsQualityLevel:1])
  {
    v2 = @"large";
  }

  else if ([v1 matchesOrExceedsQualityLevel:2])
  {
    v2 = @"med";
  }

  else
  {
    v3 = [v1 matchesOrExceedsQualityLevel:3];
    v2 = @"low";
    if (!v3)
    {
      v2 = 0;
    }
  }

  v21 = v2;
  v4 = [v1 cachedIsPlayable];
  v20 = MEMORY[0x1E696AEC0];
  v5 = [v1 version];
  if (v5 > 2)
  {
    v6 = @"cur";
  }

  else
  {
    v6 = off_1E75664B0[v5];
  }

  v7 = v6;
  v8 = [v1 isLocallyAvailable];
  v9 = [v1 isLocallyGeneratable];
  v10 = [v1 isStreamable];
  v11 = [v1 isDownloadable];
  v12 = @"Y";
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      v13 = @"Y";
    }

    else
    {
      v13 = @"N";
    }
  }

  else
  {
    v13 = &stru_1F0F06D80;
  }

  if (v11)
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  if (v10)
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  if (v9)
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  if (!v8)
  {
    v12 = @"N";
  }

  v17 = [v1 additionalDescription];
  v18 = [v20 stringWithFormat:@"<PLVideoResource> version:%@, quality: %@, local: %@, generatable: %@, streamable: %@, downloadable: %@, playable: %@, %@", v7, v21, v12, v16, v15, v14, v13, v17];

  return v18;
}

PLPropertyValidationRule *_PLPropertyValidationRuleMake(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = objc_alloc_init(PLPropertyValidationRule);
  [(PLPropertyValidationRule *)v16 setType:a1];
  [(PLPropertyValidationRule *)v16 setKeyPath:v15];

  [(PLPropertyValidationRule *)v16 setExpectedValue:v14];
  [(PLPropertyValidationRule *)v16 setExpectedValueRangeLow:v13];

  [(PLPropertyValidationRule *)v16 setExpectedValueRangeHigh:v12];
  [(PLPropertyValidationRule *)v16 setExpectedValues:v11];

  return v16;
}

__CFString *PLSharedStreamsResourceTypeName(unsigned int a1)
{
  if (a1 > 9)
  {
    return @"vid-post-frame";
  }

  else
  {
    return off_1E7576C48[a1];
  }
}

void sub_19C567574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, a13, "Cleared purgeable flags for %@", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__110208(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C568EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, os_signpost_id_t a13, os_activity_scope_state_s a14, SEL sel, uint64_t a16, uint64_t a17, __int128 buf)
{
  if (a11 == 1)
  {
    os_activity_scope_leave(&a14);
  }

  if (a13)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    if (a13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, a13, "Cleared purgeable flags for %@", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C56A058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, os_signpost_id_t a19, os_activity_scope_state_s a20, SEL sel, __int128 buf)
{
  if (a17 == 1)
  {
    os_activity_scope_leave(&a20);
  }

  if (a19)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, a19, "Cleared purgeable flags for %@", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C56B838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C56BDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__110502(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C57044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__110782(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C571344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_19C574250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 184), 8);
  _Block_object_dispose((v41 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_19C574A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C575B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C577DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C57834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

__CFString *PLShortDescriptionForVerifiedType(int a1)
{
  if ((a1 + 2) >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported type: %ld", a1];
  }

  else
  {
    v2 = off_1E7577120[a1 + 2];
  }

  return v2;
}

__CFString *PLPersonVerifiedTypeDescription(int a1)
{
  if ((a1 + 2) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7577148[a1 + 2];
  }
}

void sub_19C5798B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__111317(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C57AA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_19C57C8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__111939(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C57D188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C57D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C57DA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C57DD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C57E028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C57E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C57E678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C57E93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C57EBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C57EE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C57F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C57F3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C57F82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C57FC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C5800FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C58056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C5809DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C580E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C581144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C5815B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C581A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C581E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C582314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C5825FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C58290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C582B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C582E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C5830D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C583378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C583620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C58392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C583B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C583D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C583ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C584088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C584244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C584400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C584830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_19C584B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C585058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_19C5853A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C585714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C585A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C585D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C586008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C586240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5863E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5867BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C586AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C586F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C587254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C58756C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C587884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C587BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C587ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C588204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C588530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C588844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C588B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C588E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C58916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C589734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C589A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C589D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C58A070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C58A3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C58A6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C58C490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C58C7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19C58CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__112180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _placeInfosIndexOfPlaceInfoWithName(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v15 + 1) + 8 * v10) placeName];
      v13 = [v12 compare:v4 options:1];

      if (!v13)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

void sub_19C58E0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C58EFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__112433(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C58F2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C58F498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C58F6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__112501(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C595C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C596588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL PLCanIncludeResourceInHints(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (([v3 recipeID] >> 16) - 3 >= 2)
  {
    v6 = [v4 hasAdjustments];
    v7 = [v4 isRAWPlusJPEGWithRAWOnTop];
    if ([v3 version] != 3)
    {
      v8 = [v3 version];
      if (v6)
      {
        if (v8 != 2)
        {
          goto LABEL_29;
        }
      }

      else if (v8)
      {
        goto LABEL_29;
      }
    }

    if (![v3 resourceType])
    {
      if ([v4 isVideo])
      {
        if ([v4 isVideoKeyFrameSet] && objc_msgSend(v4, "isLocalVideoKeyFrameValid"))
        {
          if ([v3 cplType])
          {
            goto LABEL_29;
          }
        }

        else if ([v3 recipeID] == 65749)
        {
          goto LABEL_29;
        }
      }

      if ([v3 localAvailability] >= 1)
      {
        v9 = [v3 uniformTypeIdentifier];
        if ([v9 conformsToRawImage])
        {
          v10 = [v3 recipeID];

          if (((v10 == 65943) & v7) == 0)
          {
            if (v10 != 65943)
            {
              goto LABEL_29;
            }

LABEL_25:
            v13 = [v3 dataStoreKey];
            v14 = objc_opt_class();

            if (v14 == objc_opt_class() || v14 == objc_opt_class())
            {
              goto LABEL_29;
            }

            if ([v3 cplType] == 1)
            {
              v15 = [v4 master];
              v16 = [v15 mediaMetadataType];

              v17 = [v4 master];
            }

            else
            {
              if ([v3 cplType] != 2)
              {
                v22 = 0;
                v16 = 0;
                goto LABEL_39;
              }

              v19 = [v4 additionalAttributes];
              v16 = [v19 mediaMetadataType];

              v17 = [v4 additionalAttributes];
            }

            v20 = v17;
            v21 = [v17 mediaMetadata];
            v22 = [v21 data];

            if (v16)
            {
              v5 = 1;
              if ([v16 isEqualToString:@"CGImageProperties"] && v22)
              {
                v28 = 0;
                v23 = [MEMORY[0x1E696AE40] propertyListWithData:v22 options:0 format:0 error:&v28];
                v24 = v28;
                if (v23)
                {
                  v5 = CGImageIsDecodable() == 0;
                }

                else
                {
                  v25 = PLImageManagerGetLog();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v26 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:{objc_msgSend(v3, "cplType")}];
                    v27 = [v4 uuid];
                    *buf = 138412802;
                    v30 = v26;
                    v31 = 2112;
                    v32 = v27;
                    v33 = 2112;
                    v34 = v24;
                    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Error serializing media metadata for resource cpl type: %@, asset: %@, error: %@", buf, 0x20u);
                  }

                  v5 = 1;
                }
              }

              goto LABEL_44;
            }

LABEL_39:
            v5 = 1;
LABEL_44:

            goto LABEL_30;
          }
        }

        else
        {

          if (!v7)
          {
            goto LABEL_25;
          }
        }

        if (([v3 isDerivative] & 1) == 0 && !objc_msgSend(v3, "version"))
        {
          v11 = [v3 uniformTypeIdentifier];
          v12 = [v11 isPrimaryImageFormat];

          if (v12)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_29:
    v5 = 0;
    goto LABEL_30;
  }

  v5 = 1;
LABEL_30:

  return v5;
}

void sub_19C597028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C599090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLDiagnosticsUserNotificationCallback(const void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "user requested never file for Photos issues", buf, 2u);
    }

    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [MEMORY[0x1E695DF00] distantFuture];
    [v4 setObject:v5 forKey:@"PhotoDiagnosticsIgnoreUntil"];

    CFRelease(a1);
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v8 setObject:v7 forKey:@"PhotoDiagnosticsIgnoreUntil"];

    if (a2 == 1)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "user requested not now for Photos issue", v12, 2u);
      }

      CFRelease(a1);
    }

    else
    {
      os_unfair_lock_lock(&s_userNotificationLock);
      v10 = _Block_copy(s_userNotificationHandler);
      v11 = s_userNotificationHandler;
      s_userNotificationHandler = 0;

      os_unfair_lock_unlock(&s_userNotificationLock);
      if (v10)
      {
        v10[2](v10, 0);
      }

      CFRelease(a1);
    }
  }
}

void PLDiagnosticsUserNotificationSharePhotoCallback(const void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v5 setObject:v4 forKey:@"PhotoDiagnosticsIgnoreUntil"];

  if (a2 == 1)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "user requested not now for Photos issue", v9, 2u);
    }

    CFRelease(a1);
  }

  else
  {
    os_unfair_lock_lock(&s_userNotificationLock);
    v7 = _Block_copy(s_userNotificationHandler);
    v8 = s_userNotificationHandler;
    s_userNotificationHandler = 0;

    os_unfair_lock_unlock(&s_userNotificationLock);
    if (v7)
    {
      v7[2](v7, a2 == 2);
    }

    CFRelease(a1);
  }
}

void sub_19C59AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__113504(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarDraft");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRadarDraftClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLDiagnostics.m" lineNumber:42 description:{@"Unable to find class %s", "RadarDraft"}];

    __break(1u);
  }
}

void sub_19C59B7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTapToRadarServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTapToRadarServiceClass_softClass;
  v7 = getTapToRadarServiceClass_softClass;
  if (!getTapToRadarServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTapToRadarServiceClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getTapToRadarServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C59B894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TapToRadarService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTapToRadarServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLDiagnostics.m" lineNumber:41 description:{@"Unable to find class %s", "TapToRadarService"}];

    __break(1u);
  }
}

void TapToRadarKitLibrary()
{
  if (!TapToRadarKitLibraryCore())
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TapToRadarKitLibrary(void)"];
    [v0 handleFailureInFunction:v1 file:@"PLDiagnostics.m" lineNumber:40 description:{@"%s", 0}];

    __break(1u);
    free(v2);
  }
}

uint64_t TapToRadarKitLibraryCore()
{
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    TapToRadarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return TapToRadarKitLibraryCore_frameworkLibrary;
}

uint64_t __TapToRadarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TapToRadarKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarComponent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRadarComponentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLDiagnostics.m" lineNumber:43 description:{@"Unable to find class %s", "RadarComponent"}];

    __break(1u);
  }
}

void PLModelMigrationActionRegistration_Repairs(void *a1)
{
  v1 = a1;
  [v1 registerPreRepairActionClass:objc_opt_class() onCondition:1];
  [v1 registerPreRepairActionClass:objc_opt_class() onCondition:1];
  [v1 registerPostRepairActionClass:objc_opt_class() onCondition:1];
  [v1 registerPostRepairActionClass:objc_opt_class() onCondition:1];
}

id getMADEmbeddingClass_114193()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADEmbeddingClass_softClass_114197;
  v7 = getMADEmbeddingClass_softClass_114197;
  if (!getMADEmbeddingClass_softClass_114197)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADEmbeddingClass_block_invoke_114198;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getMADEmbeddingClass_block_invoke_114198(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C59FAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADEmbeddingClass_block_invoke_114198(uint64_t a1)
{
  MediaAnalysisLibrary_114199();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADEmbedding");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADEmbeddingClass_softClass_114197 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMADEmbeddingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLSearchEmbeddingDefines.h" lineNumber:28 description:{@"Unable to find class %s", "MADEmbedding"}];

    __break(1u);
  }
}

void MediaAnalysisLibrary_114199()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_114210)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaAnalysisLibraryCore_block_invoke_114211;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7577EC0;
    v5 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary_114210 = _sl_dlopen();
  }

  if (!MediaAnalysisLibraryCore_frameworkLibrary_114210)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PLSearchEmbeddingDefines.h" lineNumber:26 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisLibraryCore_block_invoke_114211()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary_114210 = result;
  return result;
}

void __getMADEmbeddingSearchOptionsClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary_114199();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADEmbeddingSearchOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADEmbeddingSearchOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMADEmbeddingSearchOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLMediaAnalysisEmbeddingSearch.m" lineNumber:23 description:{@"Unable to find class %s", "MADEmbeddingSearchOptions"}];

    __break(1u);
  }
}

uint64_t __Block_byref_object_copy__114406(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLSearchLocalizedSynonymsForKey(void *a1)
{
  v1 = [a1 stringByAppendingString:@"_SYNONYMS"];
  v2 = PLServicesLocalizedFrameworkString();
  if (![v2 length] || (objc_msgSend(v2, "isEqualToString:", @"NULL") & 1) != 0 || (v3 = MEMORY[0x1E695DFD8], objc_msgSend(v2, "componentsSeparatedByString:", @"|"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "setWithArray:", v4), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  return v5;
}

void sub_19C5AA8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5AAE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5AB944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_19C5ABD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5AC2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__114695(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C5ACE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C5B1114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromPLCloudFeedEntryFilter(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_1E75782C8[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__115485(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C5B7348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

__CFString *PLDescriptionForLocationOfInterestType(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E75785D8[a1 + 1];
  }
}

__CFString *PLBackgroundJobWorkerTypeDescription(unint64_t a1)
{
  if (a1 > 0x15)
  {
    return @"InvalidType";
  }

  else
  {
    return off_1E7578650[a1];
  }
}

void sub_19C5BFE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C5C01F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C5C06D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C5C0A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5C0D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C5C10F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__117750(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_19C5C15C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C5C1BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__117855(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_19C5C20C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PLJournalEntryHeaderReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              v48 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v48 & 0x7F) << v24;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_73:
            v45 = 16;
            goto LABEL_82;
          case 2:
            v21 = PBReaderReadData();
            v22 = 48;
            break;
          case 3:
            v21 = PBReaderReadString();
            v22 = 40;
            break;
          default:
            goto LABEL_48;
        }

        v44 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            v49 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v49 & 0x7F) << v38;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v40;
          }

LABEL_81:
          v45 = 32;
          goto LABEL_82;
        }

        if (v13 != 7)
        {
LABEL_48:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_87;
        }

        v23 = PBReaderReadString();
        if (v23)
        {
          [a1 addNilProperties:v23];
        }
      }

      else
      {
        if (v13 == 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            v50 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v50 & 0x7F) << v32;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v34;
          }

LABEL_77:
          v45 = 56;
LABEL_82:
          *(a1 + v45) = v30;
          goto LABEL_87;
        }

        if (v13 != 5)
        {
          goto LABEL_48;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 60) |= 1u;
        while (1)
        {
          v51 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v51 & 0x7F) << v14;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_86;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_86:
        *(a1 + 8) = v20;
      }

LABEL_87:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PLAssetComputeSyncPayloadWrapperReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_44:
          *(a1 + 16) = v24;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 8;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_27;
          case 4:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_27;
          case 5:
            v14 = PBReaderReadString();
            v15 = 32;
LABEL_27:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_28;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_28:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FF0](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}

uint64_t aks_migrate_path_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_AppleKeyStore))
  {
    dlopenHelper_AppleKeyStore(a1);
  }

  return MEMORY[0x1EEDEDB00]();
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_AppleKeyStore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AppleKeyStore.framework/AppleKeyStore", 0);
  atomic_store(1u, &dlopenHelperFlag_AppleKeyStore);
  return a1;
}