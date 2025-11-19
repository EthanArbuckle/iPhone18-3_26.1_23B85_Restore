void ___ZN30XUserCodedSerializationVisitor27makeUserCodedFromTypedArrayIU8__strongP6PKTrayEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:?];
}

id ___ZN30XUserCodedSerializationVisitor15makeToUserCodedIU8__strongP6PKTrayEEU13block_pointerFPU28objcproto17PKUserCodableType8NSObjectPS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userCodableDictionary];

  return v2;
}

id XUserCodedSerializationVisitor::makeTypedArrayFromUserCoded<PKTray * {__strong}>()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP6PKTrayEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke;
  v2[3] = &unk_279A92910;
  v3 = &__block_literal_global_388;
  v0 = MEMORY[0x25F8E4580](v2);

  return v0;
}

id ___ZN30XUserCodedSerializationVisitor27makeTypedArrayFromUserCodedIU8__strongP6PKTrayEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = (*(*(a1 + 32) + 16))(*(a1 + 32));
        [v4 addObject:{v10, v12}];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

PKTray *___ZN30XUserCodedSerializationVisitor17makeFromUserCodedIU8__strongP6PKTrayEEU13block_pointerFP8NSObjectPU28objcproto17PKUserCodableTypeS4_Ev_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKTray alloc] initWithUserCodableDictionary:v2];

  return v3;
}

void sub_25F633444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_25F633970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F6342EC(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_25F634CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void _visitHexLines(void *a1, int a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x4812000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = &unk_25F65E041;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  if (a2)
  {
  }

  else
  {
    v10 = "";
    v9 = "";
    v8 = "";
    v7 = "";
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___Z14_visitHexLinesP6NSDatabU13block_pointerFvP8NSStringE_block_invoke;
  v17[3] = &unk_279A92A28;
  v21 = v9;
  v22 = v8;
  v19 = &v27;
  v20 = v25;
  v23 = v7;
  v24 = v10;
  v11 = v6;
  v18 = v11;
  v12 = MEMORY[0x25F8E4580](v17);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___Z14_visitHexLinesP6NSDatabU13block_pointerFvP8NSStringE_block_invoke_2;
  v14[3] = &unk_279A92A50;
  v16 = &v27;
  v13 = v12;
  v15 = v13;
  [v5 enumerateByteRangesUsingBlock:v14];
  if ((v28[6] & 0x80000000) == 0)
  {
    v13[2](v13);
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);
}

void sub_25F6352E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v30 - 144), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

void ___Z14_visitHexLinesP6NSDatabU13block_pointerFvP8NSStringE_block_invoke(uint64_t a1)
{
  v2 = 0;
  v20[0] = *MEMORY[0x277D85DE8];
  v3 = __str;
  v4 = v18;
  do
  {
    if ((v2 & 3) == 0)
    {
      *v3++ = 32;
    }

    if (v2 >= *(*(*(a1 + 40) + 8) + 48))
    {
      v9 = strlen(*(a1 + 56)) + 2;
      if (v9 + strlen(*(a1 + 64)))
      {
        v10 = 0;
        do
        {
          v3[v10++] = 32;
          v11 = strlen(*(a1 + 56));
        }

        while (v11 + strlen(*(a1 + 64)) + 2 > v10);
        v3 += v10;
      }

      *v4 = 32;
    }

    else
    {
      v5 = snprintf(v3, v20 - v3, "%s", *(a1 + 56));
      v6 = *(*(*(a1 + 40) + 8) + v2 + 52);
      v7 = &v3[v5];
      *v7 = a0123456789abcd[*(*(*(a1 + 40) + 8) + v2 + 52) >> 4];
      v7[1] = a0123456789abcd[v6 & 0xF];
      if (v6 < 0)
      {
        v8 = __maskrune(v6, 0x40000uLL);
      }

      else
      {
        v8 = *(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x40000;
      }

      v12 = v7 + 2;
      if (v8)
      {
        v13 = v6;
      }

      else
      {
        v13 = 46;
      }

      *v4 = v13;
      v3 = &v12[snprintf(v12, v20 - v12, "%s", *(a1 + 64))];
    }

    ++v4;
    ++v2;
  }

  while (v2 != 16);
  *v3 = 0;
  *v4 = 0;
  v14 = MEMORY[0x277CCACA8];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 24);
  *(v15 + 24) = v16 + 1;
  v17 = [v14 stringWithFormat:@"%s%8.8x%s  %s  %s%s%s", *(a1 + 72), (16 * v16), *(a1 + 80), __str, *(a1 + 72), v18, *(a1 + 80)];
  (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 48) = 0;
}

uint64_t ___Z14_visitHexLinesP6NSDatabU13block_pointerFvP8NSStringE_block_invoke_2(uint64_t result, char *a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = &a2[a4];
    while (1)
    {
      v7 = *(*(v5 + 40) + 8);
      v8 = *(v7 + 48);
      if (v8 > 15)
      {
        break;
      }

      v9 = *v4++;
      *(v7 + 48) = v8 + 1;
      *(v7 + v8 + 52) = v9;
      if (v4 >= v6)
      {
        if (*(*(*(v5 + 40) + 8) + 48) >= 16)
        {
          break;
        }

LABEL_7:
        if (v4 >= v6)
        {
          return result;
        }
      }
    }

    result = (*(*(v5 + 32) + 16))();
    goto LABEL_7;
  }

  return result;
}

void sub_25F6360D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F6362A4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id withDebuggableSemaphore<NSDictionary * {__strong}>(void *a1, void *a2, double a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z23withDebuggableSemaphoreIU8__strongP12NSDictionaryET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke;
  v9[3] = &unk_279A91E88;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  withDebuggableSemaphore(a1, v9, a3);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_25F637474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_25F637688(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25F637834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__127(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x25F8E4580](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id PrinterStatusQueuePoll::requestedAttributess(PrinterStatusQueuePoll *this)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = IPPNomenclature::keyPrinterStateReasons;
  v3[1] = IPPNomenclature::keyMediaSourceSupported;
  v3[2] = IPPNomenclature::keyPrinterInputTray;
  v3[3] = IPPNomenclature::keyPrinterMandatoryJobAttributes;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];

  return v1;
}

void writeURLToPrinter(void *a1, void *a2, void *a3)
{
  v9 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:1 error:0];
    writeRequestDataToPrinter(v9, v8, v7);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

uint64_t withDebuggableSemaphore<BOOL>(void *a1, void *a2, double a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z23withDebuggableSemaphoreIbET_P8NSStringdU13block_pointerFvU13block_pointerFvS0_EE_block_invoke;
  v9[3] = &unk_279A91E88;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  withDebuggableSemaphore(a1, v9, a3);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_25F63A388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F63B614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKCloudResolveContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t initPUTIsPersistentURL(const __CFURL *a1)
{
  if (LoadPhotoLibraryServicesCore(void)::loadPredicate != -1)
  {
    initPUTIsPersistentURL();
  }

  v2 = dlsym(LoadPhotoLibraryServicesCore(void)::frameworkLibrary, "PUTIsPersistentURL");
  softLinkPUTIsPersistentURL = v2;

  return v2(a1);
}

void ___ZL28LoadPhotoLibraryServicesCorev_block_invoke()
{
  LoadPhotoLibraryServicesCore(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PhotoLibraryServicesCore.framework/PhotoLibraryServicesCore", 2);
  if (!LoadPhotoLibraryServicesCore(void)::frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi_0.isa);
  }
}

void ___ZL27writePersistentURLToPrinterP17PKPrintJobRequestP5NSURLU13block_pointerFvP8NSNumberE_block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(getPHFetchOptionsClass());
  [v2 setWantsIncrementalChangeDetails:0];
  PHAssetClass = getPHAssetClass();
  v12[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [PHAssetClass fetchAssetsWithALAssetURLs:v4 options:v2];

  v6 = [v5 firstObject];
  if (v6)
  {
    v7 = objc_alloc_init(getPHImageRequestOptionsClass());
    [v7 setVersion:0];
    [v7 setNetworkAccessAllowed:1];
    [v7 setDeliveryMode:1];
    [v7 setSynchronous:1];
    v8 = [getPHImageManagerClass() defaultManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZL27writePersistentURLToPrinterP17PKPrintJobRequestP5NSURLU13block_pointerFvP8NSNumberE_block_invoke_2;
    v9[3] = &unk_279A92E00;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v8 requestImageDataForAsset:v6 options:v7 resultHandler:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void writeRequestDataToPrinter(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___ZL25writeRequestDataToPrinterP17PKPrintJobRequestP6NSDataU13block_pointerFvP8NSNumberE_block_invoke;
  v15[3] = &unk_279A92CF0;
  v8 = v7;
  v16 = v8;
  v9 = MEMORY[0x25F8E4580](v15);
  v10 = v9;
  if (v6)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZL25writeRequestDataToPrinterP17PKPrintJobRequestP6NSDataU13block_pointerFvP8NSNumberE_block_invoke_376;
    v11[3] = &unk_279A92E78;
    v14 = v9;
    v12 = v5;
    v13 = v6;
    [v12 startRequestCompletionHandler:v11];
  }

  else
  {
    v9[2](v9, 0);
  }
}

Class initPHFetchOptions(void)
{
  if (LoadPhotos(void)::loadPredicate != -1)
  {
    initPHFetchOptions();
  }

  result = objc_getClass("PHFetchOptions");
  classPHFetchOptions = result;
  getPHFetchOptionsClass = PHFetchOptionsFunction;
  return result;
}

void ___ZL10LoadPhotosv_block_invoke()
{
  LoadPhotos(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 2);
  if (!LoadPhotos(void)::frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi_1.isa);
  }
}

Class initPHAsset(void)
{
  if (LoadPhotos(void)::loadPredicate != -1)
  {
    initPHFetchOptions();
  }

  result = objc_getClass("PHAsset");
  classPHAsset = result;
  getPHAssetClass = PHAssetFunction;
  return result;
}

Class initPHImageRequestOptions(void)
{
  if (LoadPhotos(void)::loadPredicate != -1)
  {
    initPHFetchOptions();
  }

  result = objc_getClass("PHImageRequestOptions");
  classPHImageRequestOptions = result;
  getPHImageRequestOptionsClass = PHImageRequestOptionsFunction;
  return result;
}

Class initPHImageManager(void)
{
  if (LoadPhotos(void)::loadPredicate != -1)
  {
    initPHFetchOptions();
  }

  result = objc_getClass("PHImageManager");
  classPHImageManager = result;
  getPHImageManagerClass = PHImageManagerFunction;
  return result;
}

void ___ZL25writeRequestDataToPrinterP17PKPrintJobRequestP6NSDataU13block_pointerFvP8NSNumberE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25F5FC000, v4, OS_LOG_TYPE_ERROR, "writeRequestDataToPrinter: failed to stream data", v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void ___ZL25writeRequestDataToPrinterP17PKPrintJobRequestP6NSDataU13block_pointerFvP8NSNumberE_block_invoke_376(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZL25writeRequestDataToPrinterP17PKPrintJobRequestP6NSDataU13block_pointerFvP8NSNumberE_block_invoke_2;
    v6[3] = &unk_279A92E50;
    v8 = *(a1 + 48);
    v7 = *(a1 + 32);
    [v3 writeRequestData:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void ___ZL25writeRequestDataToPrinterP17PKPrintJobRequestP6NSDataU13block_pointerFvP8NSNumberE_block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___ZL25writeRequestDataToPrinterP17PKPrintJobRequestP6NSDataU13block_pointerFvP8NSNumberE_block_invoke_3;
    v4[3] = &unk_279A92CF0;
    v2 = *(a1 + 32);
    v5 = *(a1 + 40);
    [v2 finishRequest:0 completionHandler:v4];
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

void ___ZL25writeRequestDataToPrinterP17PKPrintJobRequestP6NSDataU13block_pointerFvP8NSNumberE_block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25F5FC000, v4, OS_LOG_TYPE_DEFAULT, "writeRequestDataToPrinter: local job ID %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

const __CFURL *jpegWithImageSource(CGImageSource *a1, int a2)
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = NSTemporaryDirectory();
  v6 = [v4 fileURLWithPath:v5 isDirectory:1];

  v7 = [MEMORY[0x277CCAC38] processInfo];
  v8 = [v7 globallyUniqueString];

  v9 = [v6 URLByAppendingPathComponent:v8];
  v10 = v9;
  if (v9)
  {
    v11 = CGImageDestinationCreateWithURL(v9, @"public.jpeg", 1uLL, 0);
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
      [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2D80]];
      LODWORD(v13) = 1062836634;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
      [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD2D48]];

      if (a2)
      {
        [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2D60]];
      }

      CGImageDestinationAddImageFromSource(v11, a1, 0, v12);
      CGImageDestinationFinalize(v11);
      CFRelease(v11);
    }

    else
    {
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      [v15 removeItemAtURL:v10 error:0];

      v12 = v10;
      v10 = 0;
    }
  }

  return v10;
}

void ___ZL34convertFromImageSourceAndWriteJPEGP17PKPrintJobRequestP13CGImageSourcebhU13block_pointerFvP8NSNumberE_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 removeItemAtURL:*(a1 + 32) error:0];

  (*(*(a1 + 40) + 16))();
}

void ___ZL21convertToSharableJPEGP17PKPrintJobRequestP5NSURLU13block_pointerFvP8NSNumberE_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 removeItemAtURL:*(a1 + 32) error:0];

  (*(*(a1 + 40) + 16))();
}

void ___Z23withDebuggableSemaphoreIU8__strongP12NSDictionaryET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___Z23withDebuggableSemaphoreIU8__strongP12NSDictionaryET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2;
  v8[3] = &unk_279A92EC8;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void ___Z23withDebuggableSemaphoreIU8__strongP12NSDictionaryET_P8NSStringdU13block_pointerFvU13block_pointerFvS3_EE_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void ___Z23withDebuggableSemaphoreIbET_P8NSStringdU13block_pointerFvU13block_pointerFvS0_EE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___Z23withDebuggableSemaphoreIbET_P8NSStringdU13block_pointerFvU13block_pointerFvS0_EE_block_invoke_2;
  v8[3] = &unk_279A92EF0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void sub_25F63E244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PKPrinterBrowser;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F63E5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, void *a10, void *a11)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_25F63E888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v25 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_25F63EE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_25F63F1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_sync_exit(v16);

  _Unwind_Resume(a1);
}

void sub_25F63F6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t _is_valid_color(const char *a1)
{
  if (*a1 != 35)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 < 0)
  {
    return 0;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v1 + 60) & 0x10000) == 0)
  {
    return 0;
  }

  v2 = a1[2];
  if (v2 < 0)
  {
    return 0;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v2 + 60) & 0x10000) == 0)
  {
    return 0;
  }

  v3 = a1[3];
  if (v3 < 0)
  {
    return 0;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v3 + 60) & 0x10000) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  if (v4 < 0)
  {
    return 0;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x10000) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  if (v5 < 0)
  {
    return 0;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x10000) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  if (v6 < 0)
  {
    return 0;
  }

  else
  {
    return HIWORD(*(MEMORY[0x277D85DE0] + 4 * v6 + 60)) & 1;
  }
}

Class initUIColor(void)
{
  if (LoadUIKit(void)::loadPredicate != -1)
  {
    initUIColor();
  }

  result = objc_getClass("UIColor");
  classUIColor = result;
  getUIColorClass = UIColorFunction;
  return result;
}

void ___ZL9LoadUIKitv_block_invoke()
{
  LoadUIKit(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  if (!LoadUIKit(void)::frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi_2.isa);
  }
}

void ___ZL21makeUserCodableColorsP7NSArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 debugDescription];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

id SuppliesPoll::requestedAttributess(SuppliesPoll *this)
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = IPPNomenclature::keyMarkerColors;
  v3[1] = IPPNomenclature::keyMarkerHighLevels;
  v3[2] = IPPNomenclature::keyMarkerLevels;
  v3[3] = IPPNomenclature::keyMarkerLowLevels;
  v3[4] = IPPNomenclature::keyMarkerNames;
  v3[5] = IPPNomenclature::keyMarkerTypes;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];

  return v1;
}

id suppliesForPollResponse(void **a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = Printd_Parameters::_get_MarkerNames(a1);
  v2 = Printd_Parameters::_get_MarkerColors(a1);
  v36 = Printd_Parameters::_get_MarkerTypes(a1);
  v35 = Printd_Parameters::_get_MarkerLevels(a1);
  v33 = Printd_Parameters::_get_MarkerHighLevels(a1);
  v34 = Printd_Parameters::_get_MarkerLowLevels(a1);
  if (!v37 || !v2 || !v36 || !v35)
  {
    if (!v37)
    {
      v26 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25F5FC000, v26, OS_LOG_TYPE_DEFAULT, "marker-names attribute is missing", buf, 2u);
      }
    }

    if (!v2)
    {
      v27 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25F5FC000, v27, OS_LOG_TYPE_DEFAULT, "marker-colors attribute is missing", buf, 2u);
      }
    }

    if (!v36)
    {
      v28 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25F5FC000, v28, OS_LOG_TYPE_DEFAULT, "marker-types attribute is missing", buf, 2u);
      }
    }

    if (v35)
    {
      v25 = 0;
      goto LABEL_53;
    }

    v6 = _PKLogCategory(PKLogCategoryFramework);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v29 = "marker-levels attribute is missing";
    goto LABEL_50;
  }

  if ([v2 count] == 1)
  {
    v3 = [v2 firstObject];
    v4 = [v3 compare:@"none"];

    if (!v4)
    {
      v6 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "marker-colors is none";
        goto LABEL_50;
      }

LABEL_51:
      v25 = 0;
      goto LABEL_52;
    }
  }

  v5 = [v37 count];
  if ([v2 count] != v5 || objc_msgSend(v36, "count") != v5 || objc_msgSend(v35, "count") != v5 || v33 && objc_msgSend(v33, "count") != v5 || v34 && objc_msgSend(v34, "count") != v5)
  {
    v6 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "Not all marker attributes contain the same number of values";
LABEL_50:
      _os_log_impl(&dword_25F5FC000, v6, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  v6 = objc_opt_new();
  v32 = v5;
  if (v5)
  {
    v8 = 0;
    *&v7 = 136315138;
    v31 = v7;
    do
    {
      v9 = [v37 objectAtIndexedSubscript:{v8, v31}];
      v10 = v9;
      v11 = [v9 UTF8String];

      v12 = [v2 objectAtIndexedSubscript:v8];
      v13 = v12;
      v14 = [v12 UTF8String];

      v15 = [v36 objectAtIndexedSubscript:v8];
      v16 = v15;
      v17 = [v15 UTF8String];

      v18 = [v35 objectAtIndexedSubscript:v8];
      v19 = [v18 integerValue];

      if (v34)
      {
        v20 = [v34 objectAtIndexedSubscript:v8];
        v21 = [v20 integerValue];
      }

      else
      {
        v21 = 0;
      }

      if (v33)
      {
        v22 = [v33 objectAtIndexedSubscript:v8];
        v23 = [v22 integerValue];
      }

      else
      {
        v23 = 100;
      }

      if ([PKSupply isValidColorString:v14])
      {
        v24 = [[PKSupply alloc] initWithName:v11 markerType:v17 colors:v14 level:v19 lowLevel:v21 highLevel:v23];
        if (v24)
        {
          [v6 addObject:v24];
        }
      }

      else
      {
        v24 = _PKLogCategory(PKLogCategoryFramework);
        if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v31;
          v39 = v14;
          _os_log_impl(&dword_25F5FC000, &v24->super, OS_LOG_TYPE_DEFAULT, "Ignoring invalid supply color: %s", buf, 0xCu);
        }
      }

      ++v8;
    }

    while (v32 != v8);
  }

  if (![v6 count])
  {
    goto LABEL_51;
  }

  v25 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
LABEL_52:

LABEL_53:

  return v25;
}

void sub_25F642560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PKTray;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F642B44(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

id dictionaryWithLowercasedKeys(NSDictionary *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [(NSDictionary *)v1 allKeys];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 lowercaseString];
        [v3 objectForKeyedSubscript:v9];
        if (objc_claimAutoreleasedReturnValue())
        {
          __assert_rtn("dictionaryWithLowercasedKeys", "PKPrinterBrowseInfo.mm", 25, "dict[lck] == nil");
        }

        v10 = [(NSDictionary *)v1 objectForKeyedSubscript:v8];
        [v3 setObject:v10 forKeyedSubscript:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [v3 count];
  if (v11 != [(NSDictionary *)v1 count])
  {
    __assert_rtn("dictionaryWithLowercasedKeys", "PKPrinterBrowseInfo.mm", 29, "dict.count == src.count");
  }

  return v3;
}

void sub_25F642E90(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_25F643160(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_25F64325C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_25F64398C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_25F643AAC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_25F643F8C(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

id findOrMakePrinter(PKPrinterBrowseInfo *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (findOrMakePrinter(PKPrinterBrowseInfo *)::sOnce != -1)
  {
    findOrMakePrinter();
  }

  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (findOrMakePrinter(PKPrinterBrowseInfo *)::sGen != gPrinterCacheGeneration)
  {
    v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v12 = findOrMakePrinter(PKPrinterBrowseInfo *)::sGen;
      v13 = 1024;
      v14 = gPrinterCacheGeneration;
      _os_log_impl(&dword_25F5FC000, v3, OS_LOG_TYPE_DEFAULT, "flushing printerInfo to printerCache: %d -> %d", buf, 0xEu);
    }

    findOrMakePrinter(PKPrinterBrowseInfo *)::sGen = gPrinterCacheGeneration;
    [findOrMakePrinter(PKPrinterBrowseInfo *)::sDict removeAllObjects];
  }

  objc_sync_exit(v2);

  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [(PKPrinterBrowseInfo *)v1 bonjourName];
  v10 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  v7 = [findOrMakePrinter(PKPrinterBrowseInfo *)::sDict objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [[PKPrinter alloc] initPKPrinterWithBrowseInfo:v1];
    [findOrMakePrinter(PKPrinterBrowseInfo *)::sDict setObject:v7 forKeyedSubscript:v6];
  }

  objc_sync_exit(v4);

  return v7;
}

void sub_25F644418(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void ___ZL17findOrMakePrinterP19PKPrinterBrowseInfo_block_invoke()
{
  if (!findOrMakePrinter(PKPrinterBrowseInfo *)::sDict)
  {
    v0 = objc_opt_new();
    v1 = findOrMakePrinter(PKPrinterBrowseInfo *)::sDict;
    findOrMakePrinter(PKPrinterBrowseInfo *)::sDict = v0;
  }

  findOrMakePrinter(PKPrinterBrowseInfo *)::sGen = gPrinterCacheGeneration;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [v3 addObserverForName:@"com.apple.printkit.iCloudPrintersChanged.notification" object:0 queue:0 usingBlock:&__block_literal_global_175];
}

uint64_t PKParsePrinterStateReasons(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v13 + 1) + 8 * v5) lowercaseString];
        if ([v6 hasPrefix:@"toner-empty"])
        {
          v2 |= 0x200u;
        }

        else if ([v6 hasPrefix:@"toner-low"])
        {
          v2 |= 8u;
        }

        else if ([v6 hasPrefix:@"marker-supply-empty"])
        {
          v2 |= 0x400u;
        }

        else if ([v6 hasPrefix:@"marker-supply-low"])
        {
          v2 |= 0x10u;
        }

        else if ([v6 hasPrefix:@"media-empty"])
        {
          v2 |= 0x40u;
        }

        else if ([v6 hasPrefix:@"media-jam"])
        {
          v2 |= 0x80u;
        }

        else if ([v6 hasPrefix:@"media-low"])
        {
          v2 |= 4u;
        }

        else if ([v6 hasPrefix:@"media-needed"])
        {
          v2 |= 0x100u;
        }

        else if ([v6 hasPrefix:@"input-tray-missing"])
        {
          v2 |= 0x800u;
        }

        else if ([v6 hasPrefix:@"door-open"])
        {
          v2 |= 0x1000u;
        }

        else if ([v6 hasPrefix:@"cover-open"])
        {
          v2 |= 0x2000u;
        }

        else if ([v6 hasPrefix:@"paused"] || objc_msgSend(v6, "hasPrefix:", @"device-stopped"))
        {
          v2 |= 0x20000u;
        }

        else if (([v6 hasSuffix:@"-report"] & 1) == 0 && (objc_msgSend(v6, "hasPrefix:", @"spool-area-full") & 1) == 0 && (objc_msgSend(v6, "hasPrefix:", @"connecting-to-device") & 1) == 0 && (objc_msgSend(v6, "hasPrefix:", @"stopped-partly") & 1) == 0 && !objc_msgSend(v6, "hasPrefix:", @"none"))
        {
          v2 |= 0x8000u;
        }

        ++v5;
      }

      while (v3 != v5);
      v7 = [v1 countByEnumeratingWithState:&v13 objects:v21 count:16];
      v3 = v7;
    }

    while (v7);
  }

  v8 = v2 & 0xFFFFFFEF;
  if ((v2 & 0x400) == 0)
  {
    v8 = v2;
  }

  if ((v8 & 0x200) != 0)
  {
    v9 = v8 & 0xFFFFFFF7;
  }

  else
  {
    v9 = v8;
  }

  v10 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v1 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v18 = v11;
    v19 = 1024;
    v20 = v9;
    _os_log_impl(&dword_25F5FC000, v10, OS_LOG_TYPE_DEFAULT, "Reasons [%@] => %8.8x", buf, 0x12u);
  }

  return v9;
}

id PKCopyLocalizedPrinterStateReasons(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v25 = PKParsePrinterStateReasons(a1);
  v26 = v24;
  v3 = objc_opt_new();
  if (v25)
  {
    v4 = v25;
    while (1)
    {
      v5 = 1;
      if (v4 < 2)
      {
        goto LABEL_4;
      }

      for (i = v4; i >= 2; i >>= 1)
      {
        v5 *= 2;
      }

      v27 = v4;
      if ((v25 & 0x100) != 0 || v5 != 64)
      {
        break;
      }

      if (!v26 || ![v26 count])
      {
        v19 = PKLocalizedString(&cfstr_ThePrinterIsOu_0.isa, "Out of paper alert.");
        v20 = -65;
        goto LABEL_37;
      }

      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = v26;
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v9)
      {
        v10 = *v34;
        do
        {
          for (j = 0; j != v9; ++j)
          {
            if (*v34 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v33 + 1) + 8 * j);
            if (([v12 isEqualToString:@"auto"] & 1) == 0)
            {
              v13 = PKLocalizedString(&cfstr_ThePrinterIsOu.isa, "Out of paper alert with empty tray.");
              v14 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v12];
              [v7 addObject:v14];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v9);
      }

      v28 = v27 & 0xFFFFFFBF;
      if (v7)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = v7;
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v16)
        {
          v17 = *v30;
          do
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v15);
              }

              [v3 addObject:*(*(&v29 + 1) + 8 * k)];
            }

            v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v16);
        }
      }

      v4 = v28;
LABEL_39:
      if (!v4)
      {
        goto LABEL_60;
      }
    }

    if (v5 <= 511)
    {
      if (v5 <= 15)
      {
        if (v5 == 4)
        {
          v19 = PKLocalizedString(&cfstr_ThePrinterIsAl.isa, "Low paper notice.");
          v20 = -5;
          goto LABEL_37;
        }

        if (v5 == 8)
        {
          v19 = PKLocalizedString(&cfstr_ThePrinterIsLo.isa, "Low toner notice.");
          v20 = -9;
          goto LABEL_37;
        }
      }

      else
      {
        switch(v5)
        {
          case 16:
            v19 = PKLocalizedString(&cfstr_ThePrinterIsLo_0.isa, "Low ink notice.");
            v20 = -17;
            goto LABEL_37;
          case 128:
            v19 = PKLocalizedString(&cfstr_ThePrinterHasA.isa, "Paper jam alert.");
            v20 = -129;
            goto LABEL_37;
          case 256:
            v19 = PKLocalizedString(&cfstr_ThePrinterNeed.isa, "Paper needed alert.");
            v20 = -257;
            goto LABEL_37;
        }
      }
    }

    else if (v5 > 4095)
    {
      switch(v5)
      {
        case 0x1000:
          v19 = PKLocalizedString(&cfstr_ThePrinterDoor.isa, "Door open alert.");
          v20 = -4097;
LABEL_37:
          v21 = v19;
          v4 = v20 & v27;
          if (v19)
          {
            v22 = v20 & v27;
            [v3 addObject:v19];

            v4 = v22;
          }

          goto LABEL_39;
        case 0x2000:
          v19 = PKLocalizedString(&cfstr_ThePrinterCove.isa, "Cover open alert.");
          v20 = -8193;
          goto LABEL_37;
        case 0x20000:
          v19 = PKLocalizedString(&cfstr_ThePrinterIsPa.isa, "Paused/stopped printer alert.");
          v20 = -131073;
          goto LABEL_37;
      }
    }

    else
    {
      switch(v5)
      {
        case 512:
          v19 = PKLocalizedString(&cfstr_ThePrinterMayB.isa, "Out of toner alert.");
          v20 = -513;
          goto LABEL_37;
        case 1024:
          v19 = PKLocalizedString(&cfstr_ThePrinterMayB_0.isa, "Out of ink alert.");
          v20 = -1025;
          goto LABEL_37;
        case 2048:
          v19 = PKLocalizedString(&cfstr_APaperTrayIsMi.isa, "Input tray missing alert.");
          v20 = -2049;
          goto LABEL_37;
      }
    }

LABEL_4:
    v4 &= ~v5;
    goto LABEL_39;
  }

LABEL_60:

  return v3;
}

id PKDefaultPortForScheme(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 lowercaseString];
  v3 = [&unk_2871AC700 objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_ERROR, "Unknown scheme %@ - defaulting to 631", &v7, 0xCu);
    }

    v4 = &unk_2871ADA30;
  }

  return v4;
}

id PKURLWithString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CCACE0] componentsWithString:v1 encodingInvalidCharacters:0];
    if (!v2)
    {
      v2 = [MEMORY[0x277CCACE0] componentsWithString:v1 encodingInvalidCharacters:1];
    }

    v3 = [v2 port];

    if (!v3)
    {
      v4 = [v2 scheme];
      v5 = PKDefaultPortForScheme(v4);
      [v2 setPort:v5];
    }

    v6 = [v2 URL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PKURLWithUTF8String(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    v2 = PKURLWithString(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *toString(int a1)
{
  v1 = @"Unknown";
  v2 = @"Beacon";
  v3 = @"Cups";
  v4 = @"NAN";
  if (a1 != 32)
  {
    v4 = @"Unknown";
  }

  if (a1 != 16)
  {
    v3 = v4;
  }

  if (a1 != 8)
  {
    v2 = v3;
  }

  if (a1 == 4)
  {
    v1 = @"Bonjour";
  }

  if (a1 == 2)
  {
    v1 = @"Extension";
  }

  if (a1 == 1)
  {
    v1 = @"Managed";
  }

  if (a1 <= 7)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x28211F860](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}