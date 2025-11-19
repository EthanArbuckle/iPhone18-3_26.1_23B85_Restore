BOOL IsAssetURL(void *a1)
{
  v1 = [a1 scheme];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 compare:@"assets-library" options:1] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id GetPHAssetForAssetURLSync(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __GetPHAssetForAssetURLSync_block_invoke;
  block[3] = &unk_279A9C130;
  v11 = v2;
  v12 = &v13;
  v10 = v1;
  v4 = v2;
  v5 = v1;
  dispatch_async(v3, block);

  v6 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v4, v6);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_25F671C70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_25F672008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t IsPDFURL(uint64_t a1)
{
  v1 = [UIPrintInteractionController utiForNSURL:a1];
  v2 = [*MEMORY[0x277CE1E08] identifier];
  v3 = [v1 isEqualToString:v2];

  return v3;
}

void sub_25F67631C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ConvertCIBasedImage(void *a1)
{
  v1 = a1;
  [v1 size];
  v3 = v2;
  v5 = v4;
  [v1 scale];
  v7 = v6;
  v11.width = v3;
  v11.height = v5;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v7);
  [v1 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

id getPHAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetClass_softClass;
  v7 = getPHAssetClass_softClass;
  if (!getPHAssetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetClass_block_invoke;
    v3[3] = &unk_279A9C300;
    v3[4] = &v4;
    __getPHAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25F677D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ImageFromImageSource(CGImageSource *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (CGImageSourceGetCount(a1))
  {
    v18 = @"kCGImageSourceSkipMetadata";
    v19[0] = *MEMORY[0x277CBED28];
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, v2);
    if (ImageAtIndex)
    {
      v4 = ImageAtIndex;
      v5 = CGImageSourceCopyPropertiesAtIndex(a1, 0, v2);
      if (v5)
      {
        v6 = v5;
        Value = CFDictionaryGetValue(v5, *MEMORY[0x277CD2F30]);
        if (Value)
        {
          valuePtr = 0.0;
          v8 = CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
          v9 = valuePtr;
          if (!v8)
          {
            v9 = 0.0;
          }

          v10 = 1.0;
          if (v9 >= 1.0 && v9 <= 2540.0)
          {
            v10 = v9 / 72.0;
          }
        }

        else
        {
          v10 = 1.0;
        }

        v13 = CFDictionaryGetValue(v6, *MEMORY[0x277CD3410]);
        if (!v13)
        {
          goto LABEL_19;
        }

        valuePtr = 0.0;
        v14 = CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
        v15 = LODWORD(valuePtr) - 1;
        if (!v14)
        {
          v15 = -1;
        }

        if (v15 <= 7)
        {
          v12 = ImageFromImageSource___orientationMapping[v15];
        }

        else
        {
LABEL_19:
          v12 = 0;
        }

        CFRelease(v6);
      }

      else
      {
        v12 = 0;
        v10 = 1.0;
      }

      v11 = [MEMORY[0x277D755B8] imageWithCGImage:v4 scale:v12 orientation:v10];
      CGImageRelease(v4);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id GetImageForPHAssetSync(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __GetImageForPHAssetSync_block_invoke;
  block[3] = &unk_279A9C388;
  v11 = v2;
  v12 = &v13;
  v10 = v1;
  v4 = v2;
  v5 = v1;
  dispatch_async(v3, block);

  v6 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v4, v6);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_25F679D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F679EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double GetMaxCropSize(CGPDFDocument *a1)
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  NumberOfPages = CGPDFDocumentGetNumberOfPages(a1);
  if (NumberOfPages)
  {
    v5 = NumberOfPages;
    v6 = 1;
    do
    {
      Page = CGPDFDocumentGetPage(a1, v6);
      if (Page)
      {
        BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
        v8 = round(BoxRect.size.width);
        if (v2 < v8)
        {
          v2 = v8;
        }

        v9 = round(BoxRect.size.height);
        if (v3 < v9)
        {
          v3 = v9;
        }
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  return v2;
}

void sub_25F67C7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PrintableMIMETypeForUTI(uint64_t a1)
{
  v1 = [MEMORY[0x277CE1CB8] typeWithIdentifier:a1];
  if ([v1 conformsToType:*MEMORY[0x277CE1E08]])
  {
    v2 = MEMORY[0x277D41100];
LABEL_9:
    v3 = *v2;
    goto LABEL_10;
  }

  if ([v1 conformsToType:*MEMORY[0x277CE1DC0]])
  {
    v2 = MEMORY[0x277D410F8];
    goto LABEL_9;
  }

  if ([v1 conformsToType:*MEMORY[0x277CE1E10]])
  {
    v2 = MEMORY[0x277D41108];
    goto LABEL_9;
  }

  if ([v1 conformsToType:*MEMORY[0x277CE1D90]])
  {
    v2 = MEMORY[0x277D410F0];
    goto LABEL_9;
  }

  v3 = 0;
LABEL_10:

  return v3;
}

uint64_t PrintImagePutBytes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 sendData:a2 ofLength:a3];
  *(a1 + 8) = v5 == 0;
  if (v5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

Class __getPHAssetClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPHAssetClass_block_invoke_cold_1();
  }

  getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhotosLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PhotosLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279A9C320;
    v5 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotosLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhotosLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

intptr_t __GetPHAssetForAssetURLSync_block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  PHAssetClass = getPHAssetClass();
  v9[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [PHAssetClass fetchAssetsWithALAssetURLs:v3 options:0];
  v5 = [v4 lastObject];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __GetImageUTIForPHAssetSync_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getPHImageRequestOptionsClass());
  [v2 setVersion:0];
  [v2 setNetworkAccessAllowed:1];
  [v2 setDeliveryMode:2];
  [v2 setSynchronous:1];
  v3 = [getPHImageManagerClass() defaultManager];
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __GetImageUTIForPHAssetSync_block_invoke_2;
  v7[3] = &unk_279A9C360;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [v3 requestImageDataAndOrientationForAsset:v4 options:v2 resultHandler:v7];
}

id getPHImageRequestOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHImageRequestOptionsClass_softClass;
  v7 = getPHImageRequestOptionsClass_softClass;
  if (!getPHImageRequestOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHImageRequestOptionsClass_block_invoke;
    v3[3] = &unk_279A9C300;
    v3[4] = &v4;
    __getPHImageRequestOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25F67F494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPHImageManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHImageManagerClass_softClass;
  v7 = getPHImageManagerClass_softClass;
  if (!getPHImageManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPHImageManagerClass_block_invoke;
    v3[3] = &unk_279A9C300;
    v3[4] = &v4;
    __getPHImageManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25F67F574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __GetImageUTIForPHAssetSync_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (a2 && v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

Class __getPHImageRequestOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHImageRequestOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPHImageRequestOptionsClass_block_invoke_cold_1();
  }

  getPHImageRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPHImageManagerClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHImageManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPHImageManagerClass_block_invoke_cold_1();
  }

  getPHImageManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __GetImageForPHAssetSync_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getPHImageRequestOptionsClass());
  [v2 setVersion:0];
  [v2 setNetworkAccessAllowed:1];
  [v2 setResizeMode:0];
  [v2 setDeliveryMode:1];
  [v2 setSynchronous:1];
  v3 = [getPHImageManagerClass() defaultManager];
  v4 = *(a1 + 32);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = getPHImageManagerMaximumSizeSymbolLoc_ptr;
  v21 = getPHImageManagerMaximumSizeSymbolLoc_ptr;
  if (!getPHImageManagerMaximumSizeSymbolLoc_ptr)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getPHImageManagerMaximumSizeSymbolLoc_block_invoke;
    v16 = &unk_279A9C300;
    v17 = &v18;
    v6 = PhotosLibrary();
    v19[3] = dlsym(v6, "PHImageManagerMaximumSize");
    getPHImageManagerMaximumSizeSymbolLoc_ptr = *(v17[1] + 24);
    v5 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v5)
  {
    __GetImageForPHAssetSync_block_invoke_cold_1();
  }

  v7 = *v5;
  v8 = v5[1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __GetImageForPHAssetSync_block_invoke_2;
  v11[3] = &unk_279A9C3B0;
  v10 = *(a1 + 40);
  v9 = v10;
  v12 = v10;
  [v3 requestImageForAsset:v4 targetSize:0 contentMode:v2 options:v11 resultHandler:{v7, v8}];
}

void sub_25F67F894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __GetImageForPHAssetSync_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void *__getPHImageManagerMaximumSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosLibrary();
  result = dlsym(v2, "PHImageManagerMaximumSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPHImageManagerMaximumSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_25F680A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F6825F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_25F682808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F6840C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CopyDictionaryString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5 && ([v5 objectForKey:v6], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [v8 copy];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

id GetDefaultJobName()
{
  v0 = GetAppName();
  if (!v0)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v0 = [v1 localizedStringForKey:@"Untitled" value:@"Untitled" table:@"Localizable"];
  }

  return v0;
}

void *arrayForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id GetAppName()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 localizedInfoDictionary];
  v2 = [v1 objectForKey:@"CFBundleDisplayName"];

  if (!v2)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 infoDictionary];
    v2 = [v4 objectForKey:@"CFBundleDisplayName"];

    if (!v2)
    {
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v5 infoDictionary];
      v2 = [v6 objectForKey:@"CFBundleName"];
    }
  }

  return v2;
}

void _UIPrinterInfoStartRequest(void *a1)
{
  v1 = a1;
  v2 = __printerInfoRequests;
  v9 = v1;
  if (!__printerInfoRequests)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = __printerInfoRequests;
    __printerInfoRequests = v3;

    v1 = v9;
    v2 = __printerInfoRequests;
  }

  v5 = [v1 name];
  v6 = [v2 objectForKey:v5];

  if (!v6)
  {
    v6 = [UIPrinterInfoRequest requestInfoForPrinter:v9];
    v7 = __printerInfoRequests;
    v8 = [v9 name];
    [v7 setObject:v6 forKey:v8];
  }
}

id _UIPrinterInfoHasInfo(void *a1)
{
  v1 = __printerInfoRequests;
  v2 = [a1 name];
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    v4 = [v3 printerInfo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _UIPrinterInfoGetState(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 hasPrintInfoSupported])
  {
    v5 = 1;
  }

  else
  {
    v6 = __printerInfoRequests;
    v7 = [v3 name];
    v8 = [v6 objectForKey:v7];

    if (!v8)
    {
      _UIPrinterInfoStartRequest(v3);
      v9 = __printerInfoRequests;
      v10 = [v3 name];
      v8 = [v9 objectForKey:v10];
    }

    [v8 setCompletionHandler:v4];
    v5 = [v8 requestState];
  }

  return v5;
}

void _UIPrinterInfoCancelRequest(void *a1)
{
  v1 = a1;
  v2 = __printerInfoRequests;
  v7 = v1;
  v3 = [v1 name];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    [v4 setCompletionHandler:0];
    v5 = __printerInfoRequests;
    v6 = [v7 name];
    [v5 removeObjectForKey:v6];
  }
}

uint64_t _UIPrinterInfoCancelRequests()
{
  [__printerInfoRequests enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3];
  v0 = __printerInfoRequests;

  return [v0 removeAllObjects];
}

void _UIPrintInfoPrinterLookup(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v4 _checkAvailable:MEMORY[0x277D85CD0] queue:v3 completionHandler:60.0];
  }

  else
  {
    v5 = [v4 name];

    v6 = MEMORY[0x277D410A8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___UIPrintInfoPrinterLookup_block_invoke;
    v7[3] = &unk_279A9C630;
    v8 = v3;
    [v6 printerWithName:v5 discoveryTimeout:v7 completionHandler:60.0];

    v4 = v5;
  }
}

void sub_25F68E974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F68F4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F68F768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25F6907B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25F692B0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_25F692FB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_25F693350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F69365C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F693B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F693E8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25F69B9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F69C400(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25F69E048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_25F6A0288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak((v40 - 192));
  objc_destroyWeak((v40 - 184));
  _Unwind_Resume(a1);
}

void sub_25F6A182C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak((v32 - 168));
  _Unwind_Resume(a1);
}

void sub_25F6A262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a36);
  objc_destroyWeak((v38 - 176));
  _Unwind_Resume(a1);
}

CFComparisonResult compareTrayNames(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x277D41130];
  v6 = [v3 objectForKey:*MEMORY[0x277D41130]];
  v7 = [v4 objectForKey:v5];
  if ([v6 isEqualToString:@"auto"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"any"))
  {
    v8 = kCFCompareLessThan;
  }

  else if ([v7 isEqualToString:@"auto"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"any"))
  {
    v8 = kCFCompareGreaterThan;
  }

  else
  {
    v10 = *MEMORY[0x277D41140];
    v11 = [v3 objectForKey:*MEMORY[0x277D41140]];
    v12 = [v4 objectForKey:v10];
    v8 = CFStringCompare(v11, v12, 1uLL);
  }

  return v8;
}

CFComparisonResult compareMediaTypes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x277D41188];
  v6 = [v3 objectForKey:*MEMORY[0x277D41188]];
  v7 = [v4 objectForKey:v5];
  if ([v6 isEqualToString:@"auto"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"any"))
  {
    v8 = kCFCompareLessThan;
  }

  else if ([v7 isEqualToString:@"auto"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"any"))
  {
    v8 = kCFCompareGreaterThan;
  }

  else
  {
    v10 = *MEMORY[0x277D41198];
    v11 = [v3 objectForKey:*MEMORY[0x277D41198]];
    v12 = [v4 objectForKey:v10];
    v8 = CFStringCompare(v11, v12, 1uLL);
  }

  return v8;
}

void sub_25F6AC350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const __CFURL *redrawPDFWithNUp(void *a1, void *a2, void *a3)
{
  v155 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  LODWORD(a3) = [v6 numNUpRows];
  NUp = [v6 numNUpColumns] * a3;
  v8 = [v6 nUpLayoutDirection];
  if (v8 >= 4)
  {
    printf("layout direction: %ld\n", v8);
    v9 = 1;
  }

  else
  {
    v9 = dword_25F6D41F0[v8];
  }

  BorderType = [v6 borderType];
  bookletPrinting = [v6 bookletStyle];
  MirrorPage = [v6 flipHorizontal];
  v10 = -90.0;
  if ((NUp & 0xFFFFFFFB) != 2)
  {
    v10 = 0.0;
  }

  RotationRequested = (NUp & 0xFFFFFFFB) == 2;
  PreferredRotation = LODWORD(v10);
  v11 = CGPDFDocumentCreateWithURL(v5);
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CBED28];
  v14 = [v6 pdfPassword];
  if (v14)
  {
    v15 = v14;
    IsEncrypted = CGPDFDocumentIsEncrypted(v12);

    if (IsEncrypted)
    {
      v17 = [v6 pdfPassword];
      CGPDFDocumentUnlockWithPassword(v12, [v17 cStringUsingEncoding:4]);
    }
  }

  v18 = CGPDFDocumentAllowsPrinting(v12);
  v19 = *MEMORY[0x277CBED10];
  if (v18)
  {
    v20 = v13;
  }

  else
  {
    v20 = *MEMORY[0x277CBED10];
  }

  if (CGPDFDocumentAllowsCopying(v12))
  {
    v19 = v13;
  }

  NumberOfPages = CGPDFDocumentGetNumberOfPages(v12);
  if (!NumberOfPages)
  {
    CGPDFDocumentRelease(v12);
LABEL_19:
    v29 = 0;
    goto LABEL_146;
  }

  Page = CGPDFDocumentGetPage(v12, 1uLL);
  value = v20;
  v142 = v19;
  if (Page)
  {
    *&v23 = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v26 = *(MEMORY[0x277CBF398] + 16);
    v28 = *(MEMORY[0x277CBF398] + 24);
  }

  mediaBox.origin.x = 0.0;
  mediaBox.origin.y = 0.0;
  [v7 unAdjustedPaperSize];
  v31 = v30;
  v33 = v32;
  [v6 scalingFactor];
  v35 = v31 * v34;
  mediaBox.size.width = v35;
  [v6 scalingFactor];
  v37 = v33 * v36;
  mediaBox.size.height = v33 * v36;
  [v7 unAdjustedPrintableRect];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v138 = v7;
  [v7 printableRect];
  printableRect_0 = v46;
  printableRect_1 = v47;
  printableRect_2 = v48;
  printableRect_3 = v49;
  [v6 scalingFactor];
  *&printableRect_0 = v50 * *&printableRect_0;
  [v6 scalingFactor];
  *&printableRect_1 = v51 * *&printableRect_1;
  [v6 scalingFactor];
  *&printableRect_2 = v52 * *&printableRect_2;
  [v6 scalingFactor];
  *&printableRect_3 = v53 * *&printableRect_3;
  v139 = v5;
  if (NUp < 2)
  {
    v59 = 1;
    if (v26 <= v28 || v35 > v37)
    {
      v144 = 0;
      v145 = 0;
    }

    else
    {
      v144 = 0;
      v145 = 0;
      mediaBox.size.width = v37;
      mediaBox.size.height = v35;
      v60 = v45;
      v45 = v43;
      v43 = v60;
    }

    goto LABEL_78;
  }

  v54 = v26 > v28;
  v55 = (NUp & 0x7FFFFFFB) == 2;
  if (v54 == v55)
  {
    v57 = v37;
    v37 = v35;
  }

  else
  {
    mediaBox.size.width = v37;
    mediaBox.size.height = v35;
    v56 = v39 + v43;
    v39 = v41;
    v41 = v35 - v56;
    v57 = v35;
    v58 = v45;
    v45 = v43;
    v43 = v58;
  }

  v61 = v54 ^ v55;
  v62 = 0;
  v63 = 0;
  v64 = v37;
  v162 = CGRectInset(*(&v57 - 3), 18.0, 18.0);
  v157.origin.x = v39;
  v157.origin.y = v41;
  v157.size.width = v43;
  v157.size.height = v45;
  v158 = CGRectIntersection(v157, v162);
  width = v158.size.width;
  height = v158.size.height;
  if (NUp <= 5)
  {
    if (NUp == 2)
    {
      v67 = BorderType;
      v68 = bookletPrinting;
      v69 = v26;
      v70 = v28;
      v71 = v9;
      v72 = 2;
      if (!v61)
      {
        v73 = 2;
        v74 = 1;
LABEL_46:
        v75 = NupManagerCreate(v72, v73, v74, v71, 90, v67, v68, 0.0, 0.0, v69, v70, v158.origin.x, v158.origin.y, width, height);
        if (v75)
        {
          if (NumberOfPages < 1)
          {
            v76 = 0;
          }

          else
          {
            v76 = 0;
            v77 = 1;
            v78 = NumberOfPages;
            do
            {
              if (check_range(v77, NUp, 0, 0))
              {
                ++v76;
              }

              ++v77;
              --v78;
            }

            while (v78);
          }

          v144 = v75;
          v79 = NupManagerNumSheetsForPageCount(v75, v76);
          v145 = malloc_type_calloc(NUp * v79, 4uLL, 0x100004052888210uLL);
          if (NumberOfPages >= 1)
          {
            v80 = 0;
            v81 = 1;
            v82 = NumberOfPages;
            do
            {
              if (check_range(v81, NUp, 0, 0))
              {
                v145[v80++] = v81;
              }

              ++v81;
              --v82;
            }

            while (v82);
          }

          if (bookletPrinting)
          {
            if (NumberOfPages <= 0)
            {
              v83 = -(-NumberOfPages & 3);
            }

            else
            {
              v83 = NumberOfPages & 3;
            }

            if (v83)
            {
              v84 = 4 - v83;
            }

            else
            {
              v84 = 0;
            }

            v85 = v84 + NumberOfPages;
            if ((v84 + NumberOfPages) < 0 != __OFADD__(v84, NumberOfPages))
            {
              v86 = v84 + NumberOfPages + 3;
            }

            else
            {
              v86 = v84 + NumberOfPages;
            }

            v87 = malloc_type_calloc(v85, 4uLL, 0x100004052888210uLL);
            if (v85 >= 4)
            {
              v88 = v86 >> 2;
              v89 = &v145[NumberOfPages - 1 + v84];
              v90 = v145 + 1;
              v91 = v87 + 2;
              do
              {
                *(v91 - 2) = *v89;
                *(v91 - 1) = *(v90 - 1);
                v92 = *v90;
                v90 += 2;
                *v91 = v92;
                v91[1] = *(v89 - 1);
                v89 -= 2;
                v91 += 4;
                --v88;
              }

              while (v88);
            }

            if (NumberOfPages == 1)
            {
              NumberOfPages = 1;
            }

            else
            {
              NumberOfPages = v85 / 2;
            }

            free(v145);
            v59 = 0;
            v145 = v87;
          }

          else
          {
            v59 = 0;
            NumberOfPages = v79;
          }

          goto LABEL_78;
        }

        goto LABEL_53;
      }

      v73 = 1;
    }

    else
    {
      if (NUp != 4)
      {
        goto LABEL_43;
      }

      v67 = BorderType;
      v68 = bookletPrinting;
      v69 = v26;
      v70 = v28;
      v71 = v9;
      v72 = 4;
      v73 = 2;
    }

LABEL_45:
    v74 = 2;
    goto LABEL_46;
  }

  switch(NUp)
  {
    case 6:
      v67 = BorderType;
      v68 = bookletPrinting;
      v69 = v26;
      v70 = v28;
      v71 = v9;
      v72 = 6;
      if (v61)
      {
        v73 = 2;
LABEL_40:
        v74 = 3;
        goto LABEL_46;
      }

      v73 = 3;
      goto LABEL_45;
    case 9:
      v67 = BorderType;
      v68 = bookletPrinting;
      v69 = v26;
      v70 = v28;
      v71 = v9;
      v72 = 9;
      v73 = 3;
      goto LABEL_40;
    case 16:
      v67 = BorderType;
      v68 = bookletPrinting;
      v69 = v26;
      v70 = v28;
      v71 = v9;
      v72 = 16;
      v73 = 4;
      v74 = 4;
      goto LABEL_46;
  }

LABEL_43:
  printf("lite_print_redraw_pdf_nup: unsupported nup value %d\n", NUp);
LABEL_53:
  v144 = 0;
  v145 = 0;
  v59 = 1;
LABEL_78:
  memset(out, 0, sizeof(out));
  uuid_generate_random(out);
  uuid_unparse(out, v153);
  v93 = MEMORY[0x277CCACA8];
  v94 = NSTemporaryDirectory();
  v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:v153];
  v96 = [v93 stringWithFormat:@"%@/%@.pdf", v94, v95];

  v97 = [MEMORY[0x277CBEBC0] fileURLWithPath:v96 isDirectory:0];
  v98 = [v6 pdfPassword];
  v29 = v97;
  if (v29)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v100 = Mutable;
      v101 = v29;
      v102 = CGPDFDocumentCopyOutputIntents();
      if (v102)
      {
        v103 = v102;
        CFDictionarySetValue(v100, *MEMORY[0x277CBF5B0], v102);
        CFRelease(v103);
      }

      if (v98 && CFStringGetLength(v98) >= 1)
      {
        CFDictionaryAddValue(v100, *MEMORY[0x277CBF5B8], v98);
        CFDictionaryAddValue(v100, *MEMORY[0x277CBF5F0], v98);
      }

      CFDictionaryAddValue(v100, *MEMORY[0x277CBF558], value);
      CFDictionaryAddValue(v100, *MEMORY[0x277CBF550], v142);
      CFDictionarySetValue(v100, *MEMORY[0x277CBF578], @"pdftopdf filter");
      Info = CGPDFDocumentGetInfo(v12);
      if (Info)
      {
        v105 = Info;
        string.a = 0.0;
        v151.a = 0.0;
        if (CGPDFDictionaryGetString(Info, "Title", &string))
        {
          v106 = CGPDFStringCopyTextString(*&string.a);
          if (v106)
          {
            v107 = v106;
            CFDictionarySetValue(v100, *MEMORY[0x277CBF5E0], v106);
            CFRelease(v107);
          }
        }

        if (CGPDFDictionaryGetString(v105, "Author", &string))
        {
          v108 = CGPDFStringCopyTextString(*&string.a);
          if (v108)
          {
            v109 = v108;
            CFDictionarySetValue(v100, *MEMORY[0x277CBF568], v108);
            CFRelease(v109);
          }
        }

        if (CGPDFDictionaryGetString(v105, "Subject", &string))
        {
          v110 = CGPDFStringCopyTextString(*&string.a);
          if (v110)
          {
            v111 = v110;
            CFDictionarySetValue(v100, *MEMORY[0x277CBF5D8], v110);
            CFRelease(v111);
          }
        }

        if (CGPDFDictionaryGetString(v105, "Keywords", &string))
        {
          v112 = CGPDFStringCopyTextString(*&string.a);
          if (v112)
          {
            v113 = v112;
            CFDictionarySetValue(v100, *MEMORY[0x277CBF5A0], v112);
            CFRelease(v113);
          }
        }

        else if (CGPDFDictionaryGetArray(v105, "AAPL:Keywords", &v151) && *&v151.a)
        {
          CFDictionarySetValue(v100, *MEMORY[0x277CBF5A0], *&v151.a);
        }
      }

      v29 = v101;
      v114 = CGPDFContextCreateWithURL(v101, &mediaBox, v100);
      CFRelease(v100);
    }

    else
    {
      v114 = CGPDFContextCreateWithURL(v29, &mediaBox, 0);
    }

    if (v114)
    {
      v137 = v96;
      valuea = v41;
      v143 = v39;
      v115 = PDFHasAnnotations(v12);
      if (NumberOfPages >= 1)
      {
        v116 = v115;
        v117 = 0;
        v118 = NumberOfPages;
        while (1)
        {
          v119 = v117 + 1;
          if (v59 && !check_range(v117 + 1, NUp, 0, 0))
          {
            goto LABEL_137;
          }

          v120 = NUp;
          v147 = mediaBox;
          CGContextBeginPage(v114, &v147);
          CGContextSaveGState(v114);
          if (MirrorPage)
          {
            string.b = 0.0;
            string.c = 0.0;
            string.a = -1.0;
            string.d = 1.0;
            *&string.tx = *&v147.size.width;
            CGContextConcatCTM(v114, &string);
          }

          if (v59)
          {
            break;
          }

          NupManagerDrawASheet(v114, v144, v12, &v145[v120 * v117], v116);
LABEL_136:
          CGContextRestoreGState(v114);
          CGContextEndPage(v114);
LABEL_137:
          v117 = v119;
          if (v118 == v119)
          {
            goto LABEL_142;
          }
        }

        CGContextSaveGState(v114);
        v122 = v147.size.width;
        v121 = v147.size.height;
        v123 = CGPDFDocumentGetPage(v12, v117 + 1);
        if (!v123)
        {
LABEL_134:
          CGContextRestoreGState(v114);
          if (BorderType)
          {
            Draw1UpBorders(v114, BorderType, v143, valuea, v43, v45);
          }

          goto LABEL_136;
        }

        v124 = v123;
        v125 = v43;
        v126 = v45;
        BoxRect = CGPDFPageGetBoxRect(v123, kCGPDFCropBox);
        x = BoxRect.origin.x;
        y = BoxRect.origin.y;
        v129 = BoxRect.size.width;
        v130 = BoxRect.size.height;
        v131 = BoxRect.size.width - v121;
        if (BoxRect.size.width - v121 < 0.0)
        {
          v131 = -(BoxRect.size.width - v121);
        }

        if (v131 >= 2.0)
        {
          if (!MirrorPage)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v132 = BoxRect.size.height - v122;
          if (BoxRect.size.height - v122 < 0.0)
          {
            v132 = -(BoxRect.size.height - v122);
          }

          if (v132 < 2.0 && BoxRect.size.width == v121)
          {
            memset(&string, 0, sizeof(string));
            CGAffineTransformMakeScale(&string, BoxRect.size.height / v121, BoxRect.size.height / v121);
            memset(&v151, 0, sizeof(v151));
            pdfPageToPaperTransformFilter(v124, &v151, v129, v130);
            t1 = v151;
            t2 = string;
            CGAffineTransformConcat(&transform, &t1, &t2);
            v151 = transform;
            v160.origin.x = x;
            v160.origin.y = y;
            v160.size.width = v129;
            v160.size.height = v130;
            v161 = CGRectApplyAffineTransform(v160, &transform);
            CGContextClipToRect(v114, v161);
            transform = v151;
            CGContextConcatCTM(v114, &transform);
            goto LABEL_133;
          }

          if (!MirrorPage)
          {
            if (v132 < 2.0)
            {
              if (BoxRect.size.width == BoxRect.size.height && !RotationRequested)
              {
                goto LABEL_131;
              }

              goto LABEL_129;
            }

LABEL_139:
            if (RotationRequested != 1 || *&PreferredRotation >= 0.0)
            {
              goto LABEL_131;
            }

            CGContextTranslateCTM(v114, v122 * 0.5, v121 * 0.5);
            v135 = v114;
            v134 = 3.14159265;
            goto LABEL_130;
          }
        }

LABEL_129:
        CGContextTranslateCTM(v114, v122 * 0.5, v121 * 0.5);
        v134 = *&PreferredRotation * 3.14159265 / 180.0;
        v135 = v114;
LABEL_130:
        CGContextRotateCTM(v135, v134);
        CGContextTranslateCTM(v114, v129 * -0.5, v130 * -0.5);
LABEL_131:
        CGContextTranslateCTM(v114, -x, -y);
LABEL_133:
        drawPage(v114, v124, v116);
        v45 = v126;
        v43 = v125;
        goto LABEL_134;
      }

LABEL_142:
      CGPDFContextClose(v114);
      CGContextRelease(v114);
      v96 = v137;
    }
  }

  else
  {
  }

  if (v145)
  {
    free(v145);
  }

  CGPDFDocumentRelease(v12);

  v7 = v138;
  v5 = v139;
LABEL_146:

  return v29;
}

CGFloat pdfPageToPaperTransformFilter@<D0>(CGPDFPage *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  BoxRect = CGPDFPageGetBoxRect(a1, kCGPDFCropBox);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v45 = CGPDFPageGetBoxRect(a1, kCGPDFMediaBox);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v41 = CGRectIntersection(v40, v45);
  v11 = v41.origin.x;
  v12 = v41.origin.y;
  v13 = v41.size.width;
  v14 = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v11;
  v42.origin.y = v12;
  v42.size.width = v13;
  v42.size.height = v14;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = v11;
  v43.origin.y = v12;
  v43.size.width = v13;
  v43.size.height = v14;
  v17 = CGRectGetWidth(v43);
  v44.origin.x = v11;
  v44.origin.y = v12;
  v44.size.width = v13;
  v44.size.height = v14;
  v18 = CGRectGetHeight(v44);
  memset(&v38, 0, sizeof(v38));
  CGAffineTransformMakeTranslation(&v38, -(MinX + v17 * 0.5), -(MinY + v18 * 0.5));
  v19 = CGPDFPageGetRotationAngle(a1) % 360;
  if (v19 >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 360;
  }

  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeRotation(&v37, v20 * -3.14159265 / 180.0);
  v21 = v20 == 90 || v20 == 270;
  if (v21)
  {
    v22 = v18;
  }

  else
  {
    v22 = v17;
  }

  if (v21)
  {
    v23 = v17;
  }

  else
  {
    v23 = v18;
  }

  v24 = a4 / v23;
  v25 = a3 / v22;
  if (v25 > 1.0)
  {
    v25 = 1.0;
  }

  if (v24 > 1.0)
  {
    v24 = 1.0;
  }

  memset(&v36.c, 0, 32);
  if (v25 >= v24)
  {
    v25 = v24;
  }

  *&v36.a = 0uLL;
  CGAffineTransformMakeScale(&v36, v25, v25);
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeTranslation(&v35, a3 * 0.5, a4 * 0.5);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  t1 = v38;
  t2 = v37;
  CGAffineTransformConcat(a2, &t1, &t2);
  v26 = *(a2 + 16);
  *&t2.a = *a2;
  *&t2.c = v26;
  *&t2.tx = *(a2 + 32);
  v32 = v36;
  CGAffineTransformConcat(&t1, &t2, &v32);
  v27 = *&t1.c;
  *a2 = *&t1.a;
  *(a2 + 16) = v27;
  *(a2 + 32) = *&t1.tx;
  v28 = *(a2 + 16);
  *&t2.a = *a2;
  *&t2.c = v28;
  *&t2.tx = *(a2 + 32);
  v32 = v35;
  CGAffineTransformConcat(&t1, &t2, &v32);
  v29 = *&t1.c;
  *a2 = *&t1.a;
  *(a2 + 16) = v29;
  result = t1.tx;
  *(a2 + 32) = *&t1.tx;
  return result;
}

double getPDFPageBoxRect(CGPDFPage *a1)
{
  *&v2 = CGPDFPageGetBoxRect(a1, kCGPDFCropBox);
  CGPDFPageGetRotationAngle(a1);
  return v2;
}

void getPDFPageProperties(__CFDictionary *a1, CGPDFPage *a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF580];
  v11[0] = *MEMORY[0x277CBF5A8];
  v11[1] = v2;
  v3 = *MEMORY[0x277CBF5E8];
  v11[2] = *MEMORY[0x277CBF570];
  v11[3] = v3;
  v11[4] = *MEMORY[0x277CBF560];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *MEMORY[0x277CBF3A0];
  v10 = v4;
  if (a1 && a2)
  {
    CFDictionaryRemoveAllValues(a1);
    for (i = 0; i != 5; ++i)
    {
      BoxRect = CGPDFPageGetBoxRect(a2, i);
      *&v9 = BoxRect.origin.x;
      *(&v9 + 1) = *&BoxRect.origin.y;
      *&v10 = BoxRect.size.width;
      *(&v10 + 1) = *&BoxRect.size.height;
      v8 = CFDataCreate(0, &v9, 32);
      CFDictionarySetValue(a1, v11[i], v8);
      CFRelease(v8);
    }
  }
}

void drawPage(CGContext *a1, CGPDFPage *a2, int a3)
{
  if (a3)
  {
    CGContextDrawPDFPageWithAnnotations();
  }

  else
  {
    CGContextDrawPDFPage(a1, a2);
  }
}

void sub_25F6AEA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F6B13BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F6B1FFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25F6B2A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F6B45D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getUIActivityViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ShareSheetLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ShareSheetLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A9CBF0;
    v6 = 0;
    ShareSheetLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ShareSheetLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIActivityViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIActivityViewControllerClass_block_invoke_cold_1();
  }

  getUIActivityViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ShareSheetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ShareSheetLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t GetStartPageFromFormatter(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (pthread_main_np() == 1 || ![v1 requiresMainThread])
  {
    v2 = [v1 startPage];
    v8[3] = v2;
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __GetStartPageFromFormatter_block_invoke;
    v4[3] = &unk_279A9CC38;
    v6 = &v7;
    v5 = v1;
    dispatch_sync(MEMORY[0x277D85CD0], v4);

    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_25F6B5BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GetPageCountFromFormatter(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (pthread_main_np() == 1 || ![v1 requiresMainThread])
  {
    v2 = [v1 pageCount];
    v8[3] = v2;
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __GetPageCountFromFormatter_block_invoke;
    v4[3] = &unk_279A9CC38;
    v6 = &v7;
    v5 = v1;
    dispatch_sync(MEMORY[0x277D85CD0], v4);

    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_25F6B5D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SendDataToPrinter(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 sendData:a2 ofLength:a3])
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

void ReleasePrinter(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __GetStartPageFromFormatter_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) startPage];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __GetPageCountFromFormatter_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) pageCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id SummaryForRange(void *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  if ([v1 count] == 1)
  {
    v3 = [v1 objectAtIndex:0];
    v4 = [v3 rangeValue];
    v6 = v5;

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (v6 == 1)
    {
      v9 = [v7 localizedStringForKey:@"%@" value:@"%@" table:@"Localizable"];
      v10 = LocalizedUnsignedInteger(v4 + 1);
      [v2 appendFormat:v9, v10];

LABEL_19:
      v32 = MEMORY[0x277CCACA8];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = v33;
      v35 = @"Page %@";
      goto LABEL_23;
    }

    v36 = [v7 localizedStringForKey:@"%@-%@" value:@"%@-%@" table:@"Localizable"];
    v37 = LocalizedUnsignedInteger(v4 + 1);
    v38 = LocalizedUnsignedInteger(v4 + v6);
    [v2 appendFormat:v36, v37, v38];

    goto LABEL_21;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = v1;
  v11 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v11)
  {
LABEL_21:

    goto LABEL_22;
  }

  v12 = v11;
  v42 = v1;
  obj = v8;
  v13 = 0;
  v44 = *v46;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      v15 = v2;
      if (*v46 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v45 + 1) + 8 * i);
      [v16 rangeValue];
      v18 = v17;
      [v16 rangeValue];
      v20 = v19;
      v21 = MEMORY[0x277CCACA8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = v22;
      if (v20 == 1)
      {
        v24 = [v22 localizedStringForKey:@"%@" value:@"%@" table:@"Localizable"];
        v25 = LocalizedUnsignedInteger([v16 rangeValue] + 1);
        v26 = [v21 stringWithFormat:v24, v25];
      }

      else
      {
        v24 = [v22 localizedStringForKey:@"%@-%@" value:@"%@-%@" table:@"Localizable"];
        v25 = LocalizedUnsignedInteger([v16 rangeValue] + 1);
        v27 = [v16 rangeValue];
        v29 = LocalizedUnsignedInteger(v27 + v28);
        v26 = [v21 stringWithFormat:v24, v25, v29];
      }

      v2 = v15;
      if (v26)
      {
        if ([v15 length])
        {
          v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v31 = [v30 localizedStringForKey:@" value:" table:{@", ", @"Localizable"}];
          [v15 appendString:v31];
        }

        [v15 appendString:v26];
      }

      v13 += v18;
    }

    v12 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v12);

  v1 = v42;
  if (v13 == 1)
  {
    goto LABEL_19;
  }

LABEL_22:
  v32 = MEMORY[0x277CCACA8];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = v33;
  v35 = @"Pages %@";
LABEL_23:
  v39 = [v33 localizedStringForKey:v35 value:v35 table:@"Localizable"];
  v40 = [v32 stringWithFormat:v39, v2];

  return v40;
}

void sub_25F6BCE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F6C28C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25F6C31C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double *NupManagerCreate(int a1, int a2, int a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  if (a3 * a2 != a1)
  {
    printf("The pages per sheet value is invalid.");
    exit(1);
  }

  v30 = malloc_type_calloc(0x80uLL, 1uLL, 0xCEF8D9EFuLL);
  v31 = v30;
  *v30 = a8;
  v30[1] = a9;
  v30[2] = a10;
  v30[3] = a11;
  v30[4] = a12;
  v30[5] = a13;
  v30[6] = a14;
  v30[7] = a15;
  *(v30 + 16) = a1;
  *(v30 + 17) = a2;
  *(v30 + 18) = a3;
  *(v30 + 19) = a4;
  *(v30 + 20) = a5;
  *(v30 + 22) = a6;
  *(v30 + 31) = a7;
  v32 = -a12;
  if (!a7)
  {
    v32 = -7.5;
  }

  v33 = a14 / a3 + v32;
  v34 = -a13;
  if (!a7)
  {
    v34 = -7.5;
  }

  v35 = a15 / a2 + v34;
  v30[12] = v33;
  v30[13] = v35;
  v30[14] = a10 / a11;
  if ((v33 <= v35 || a10 >= a11) && (v35 <= v33 || a10 <= a11))
  {
    if (a5 != 180)
    {
      *(v30 + 30) = 0;
      return v31;
    }

    *(v30 + 30) = 1;
    goto LABEL_25;
  }

  *(v30 + 30) = 1;
  v30[14] = 1.0 / (a10 / a11);
  switch(a5)
  {
    case -90:
      if (a4 > 4)
      {
        if (a4 <= 6)
        {
          if (a4 != 5)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        if (a4 == 7)
        {
LABEL_55:
          v38 = 1;
          goto LABEL_66;
        }

        if (a4 == 8)
        {
LABEL_54:
          v38 = 2;
          goto LABEL_66;
        }
      }

      else
      {
        if (a4 > 2)
        {
          if (a4 != 3)
          {
            goto LABEL_65;
          }

          goto LABEL_51;
        }

        if (a4 == 1)
        {
          goto LABEL_63;
        }

        if (a4 == 2)
        {
          goto LABEL_57;
        }
      }

      fprintf(*MEMORY[0x277D85DF8], "DEBUG: Unhandled layout direction (%d) using kPKLayoutLeftRightTopBottom\n", a4);
      goto LABEL_63;
    case 180:
LABEL_25:
      if (a4 <= 4)
      {
        if (a4 > 2)
        {
          if (a4 != 3)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        if (a4 == 1)
        {
          goto LABEL_61;
        }

        if (a4 != 2)
        {
LABEL_49:
          fprintf(*MEMORY[0x277D85DF8], "DEBUG: Unhandled layout direction (%d) using kPKLayoutLeftRightTopBottom\n", a4);
          goto LABEL_61;
        }

LABEL_60:
        v38 = 3;
        goto LABEL_66;
      }

      if (a4 > 6)
      {
        if (a4 == 7)
        {
          goto LABEL_63;
        }

        if (a4 == 8)
        {
          goto LABEL_57;
        }

        goto LABEL_49;
      }

      if (a4 != 5)
      {
        goto LABEL_65;
      }

LABEL_51:
      v38 = 8;
LABEL_66:
      *(v31 + 19) = v38;
      return v31;
    case 90:
      if (a4 <= 4)
      {
        if (a4 <= 2)
        {
          if (a4 != 1)
          {
            if (a4 != 2)
            {
              goto LABEL_64;
            }

            goto LABEL_51;
          }

LABEL_65:
          v38 = 7;
          goto LABEL_66;
        }

        if (a4 == 3)
        {
LABEL_57:
          v38 = 5;
          goto LABEL_66;
        }

LABEL_63:
        v38 = 6;
        goto LABEL_66;
      }

      if (a4 <= 6)
      {
        if (a4 != 5)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (a4 != 7)
      {
        if (a4 != 8)
        {
LABEL_64:
          fprintf(*MEMORY[0x277D85DF8], "DEBUG: Unhandled layout direction (%d) using kPKLayoutLeftRightTopBottom\n", a4);
          goto LABEL_65;
        }

        goto LABEL_60;
      }

LABEL_61:
      v38 = 4;
      goto LABEL_66;
  }

  return v31;
}

void NupManagerDrawASheet(CGContext *a1, uint64_t a2, CGPDFDocumentRef document, uint64_t a4, int a5)
{
  v9 = *(a2 + 96);
  v10 = *(a2 + 104);
  v11 = *(a2 + 112);
  if (v9 / v10 <= v11)
  {
    v10 = v9 / v11;
  }

  else
  {
    v9 = v10 * v11;
  }

  if (*(a2 + 120))
  {
    v12 = *(a2 + 80);
  }

  else
  {
    v12 = 0.0;
  }

  v13 = *(a2 + 76);
  if (v13 <= 4)
  {
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v14 = *(a2 + 72) - 1;
        v15 = *(a2 + 68) - 1;
        v35 = -1;
        v16 = -1;
        v18 = -1;
      }

      else
      {
        v15 = 0;
        v16 = *(a2 + 68);
        v14 = *(a2 + 72) - 1;
        v18 = -1;
        v35 = 1;
      }

      v17 = -1;
LABEL_34:
      if (v15 != v16)
      {
        v27 = 0;
        v32 = v16;
        v34 = v14;
        do
        {
          if (v14 != v17)
          {
            v28 = (a4 + 4 * v27);
            do
            {
              v29 = *v28++;
              NupDrawAtRowCol(a1, a2, v15, v14, document, v29, a5, 0.0, 0.0, v9, v10, v12);
              v14 += v18;
              ++v27;
            }

            while (v17 != v14);
          }

          v14 = v34;
          v15 += v35;
        }

        while (v15 != v32);
      }

      return;
    }

    if (v13 == 1)
    {
LABEL_33:
      v14 = 0;
      v17 = *(a2 + 72);
      v15 = *(a2 + 68) - 1;
      v18 = 1;
      v35 = -1;
      v16 = -1;
      goto LABEL_34;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(a2 + 68);
      v17 = *(a2 + 72);
      v35 = 1;
      v18 = 1;
      goto LABEL_34;
    }

LABEL_32:
    fprintf(*MEMORY[0x277D85DF8], "DEBUG: Unhandled layout direction (%d) using kPKLayoutLeftRightTopBottom\n", *(a2 + 76));
    goto LABEL_33;
  }

  if (v13 > 6)
  {
    if (v13 != 7)
    {
      if (v13 != 8)
      {
        goto LABEL_32;
      }

      v20 = 0;
      v22 = *(a2 + 68);
      v19 = *(a2 + 72) - 1;
      v36 = -1;
      v21 = 1;
      goto LABEL_20;
    }

    v20 = 0;
    v19 = 0;
    v22 = *(a2 + 68);
    v23 = *(a2 + 72);
    v21 = 1;
    v36 = 1;
  }

  else
  {
    if (v13 != 5)
    {
      v19 = *(a2 + 72) - 1;
      v20 = *(a2 + 68) - 1;
      v21 = -1;
      v22 = -1;
      v36 = -1;
LABEL_20:
      v23 = -1;
      goto LABEL_25;
    }

    v19 = 0;
    v23 = *(a2 + 72);
    v20 = *(a2 + 68) - 1;
    v36 = 1;
    v21 = -1;
    v22 = -1;
  }

LABEL_25:
  if (v19 != v23)
  {
    v24 = 0;
    v31 = v23;
    v33 = v20;
    do
    {
      if (v20 != v22)
      {
        v25 = (a4 + 4 * v24);
        do
        {
          v26 = *v25++;
          NupDrawAtRowCol(a1, a2, v20, v19, document, v26, a5, 0.0, 0.0, v9, v10, v12);
          v20 += v21;
          ++v24;
        }

        while (v22 != v20);
      }

      v20 = v33;
      v19 += v36;
    }

    while (v19 != v31);
  }
}

void NupDrawAtRowCol(CGContext *a1, uint64_t a2, int a3, int a4, CGPDFDocumentRef document, int a6, int a7, double a8, double a9, CGFloat a10, CGFloat a11, double a12)
{
  Page = CGPDFDocumentGetPage(document, a6);
  if (a6)
  {
    v22 = Page;
    if (Page)
    {
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
      y = BoxRect.origin.y;
      x = BoxRect.origin.x;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      v25 = a4;
      v26 = a3;
      v28 = *(a2 + 96);
      v27 = *(a2 + 104);
      if (*(a2 + 124))
      {
        v29 = *(a2 + 32);
        v30 = *(a2 + 40);
        v31 = v28 + v29;
        v32 = v29 + v25 * (v28 + v29) + v25 * v29;
        v33 = v30 + v26 * (v27 + v30) + v26 * v30;
        v34 = v32;
        v35 = v33;
        v36 = v28 <= v27;
        v37 = (v28 - a10) * 0.5 + v32;
        v38 = (v27 + v30 - a11) * 0.5 + v33;
        v39 = (v27 - a11) * 0.5 + v33;
        if (!v36)
        {
          v37 = (v31 - a10) * 0.5 + v34;
        }

        v47 = v37;
        if (v36)
        {
          v39 = v38;
        }
      }

      else
      {
        v40 = *(a2 + 32) + v25 * (v28 + 7.5) + 3.75;
        v41 = *(a2 + 40) + v26 * (v27 + 7.5) + 3.75;
        v34 = v40;
        v47 = v28 * 0.5 + v40 - a10 * 0.5;
        v35 = v41;
        v39 = v27 * 0.5 + v41 - a11 * 0.5;
      }

      v46 = v39;
      v42 = *(a2 + 16) / width;
      if (v42 >= *(a2 + 24) / height)
      {
        v42 = *(a2 + 24) / height;
      }

      v43 = v42;
      CGContextSaveGState(a1);
      CGContextTranslateCTM(a1, *(a2 + 96) * 0.5 + v34, *(a2 + 104) * 0.5 + v35);
      CGContextScaleCTM(a1, a10, a11);
      CGContextRotateCTM(a1, a12 * 3.14159265 / 180.0);
      CGContextScaleCTM(a1, 1.0 / *(a2 + 16), 1.0 / *(a2 + 24));
      CGContextScaleCTM(a1, v43, v43);
      CGContextTranslateCTM(a1, width * -0.5, height * -0.5);
      CGContextTranslateCTM(a1, -x, -y);
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      CGContextClipToRect(a1, v52);
      if (a7)
      {
        CGContextDrawPDFPageWithAnnotations();
      }

      else
      {
        CGContextDrawPDFPage(a1, v22);
      }

      CGContextRestoreGState(a1);
      v44 = *(a2 + 88);
      if (v44)
      {
        v45 = 0.24;
        if ((v44 & 0xFFFFFFFD) != 1)
        {
          v45 = 0.5;
        }

        CGContextSetLineWidth(a1, v45);
        CGContextSetGrayStrokeColor(a1, 0.0, 1.0);
        v53.origin.y = v46;
        v53.origin.x = v47;
        v53.size.width = a10;
        v53.size.height = a11;
        v54 = CGRectInset(v53, -2.25, -2.25);
        CGContextStrokeRect(a1, v54);
        if ((v44 - 3) <= 1)
        {
          v55.origin.y = v46;
          v55.origin.x = v47;
          v55.size.width = a10;
          v55.size.height = a11;
          v56 = CGRectInset(v55, -0.25, -0.25);

          CGContextStrokeRect(a1, v56);
        }
      }
    }
  }
}

void Draw1UpBorders(CGContext *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2)
  {
    v12 = 0.24;
    if ((a2 & 0xFFFFFFFD) != 1)
    {
      v12 = 0.5;
    }

    CGContextSetLineWidth(a1, v12);
    CGContextSetGrayStrokeColor(a1, 0.0, 1.0);
    v14.origin.x = a3;
    v14.origin.y = a4;
    v14.size.width = a5;
    v14.size.height = a6;
    v15 = CGRectInset(v14, 2.25, 2.25);
    CGContextStrokeRect(a1, v15);
    if ((a2 - 3) <= 1)
    {
      v16.origin.x = a3;
      v16.origin.y = a4;
      v16.size.width = a5;
      v16.size.height = a6;
      v17 = CGRectInset(v16, 4.25, 4.25);

      CGContextStrokeRect(a1, v17);
    }
  }
}

uint64_t check_range(int a1, int a2, char *__str, char *a4)
{
  if (!a1)
  {
    return 1;
  }

  if (a4 && (!strcasecmp(a4, "even") && (a1 - 1) % (2 * a2) < a2 || !strcasecmp(a4, "odd") && (a1 - 1) % (2 * a2) >= a2))
  {
    return 0;
  }

  if (__str)
  {
    while (1)
    {
      __endptr = __str;
      result = *__str;
      if (result == 45)
      {
        break;
      }

      if (!*__str)
      {
        return result;
      }

      v9 = strtol(__str, &__endptr, 10);
      if (*__endptr != 45)
      {
        v12 = v9;
        goto LABEL_16;
      }

      v11 = __endptr[1];
      v10 = ++__endptr;
      if ((v11 - 48) <= 9)
      {
        goto LABEL_14;
      }

      v12 = 0xFFFF;
LABEL_16:
      if (v9 <= a1 && v12 >= a1)
      {
        return 1;
      }

      __str = __endptr + 1;
      if (*__endptr != 44)
      {
        return 0;
      }
    }

    v10 = __str + 1;
    __endptr = __str + 1;
    v9 = 1;
LABEL_14:
    v12 = strtol(v10, &__endptr, 10);
    goto LABEL_16;
  }

  return 1;
}

size_t PDFHasAnnotations(CGPDFDocument *a1)
{
  result = CGPDFDocumentGetNumberOfPages(a1);
  if (result)
  {
    v3 = result;
    v4 = 1;
    while (!CGPDFDocumentGetPage(a1, v4) || !CGPDFPageGetAnnotationCount())
    {
      if (++v4 > v3)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

id LocalizedInteger(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB8];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v3 = [v1 localizedStringFromNumber:v2 numberStyle:0];

  return v3;
}

id LocalizedUnsignedInteger(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = [v1 localizedStringFromNumber:v2 numberStyle:0];

  return v3;
}

void PMAppendToSummaryString(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  if (v6)
  {
    if ([v3 length])
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@" • " value:@" • " table:@"Localizable"];
      [v3 appendString:v5];
    }

    [v3 appendString:v6];
  }
}

void eraseCGBitmapContext(CGContext *a1)
{
  CGContextSaveGState(a1);
  ColorSpace = CGBitmapContextGetColorSpace(a1);
  if (ColorSpace)
  {
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model == kCGColorSpaceModelCMYK)
    {
      CGContextSetCMYKFillColor(a1, 0.0, 0.0, 0.0, 0.0, 1.0);
    }

    else if (Model)
    {
      CGContextSetRGBFillColor(a1, 1.0, 1.0, 1.0, 1.0);
    }

    else
    {
      CGContextSetGrayFillColor(a1, 1.0, 1.0);
    }

    CGContextSetCTM();
    Width = CGBitmapContextGetWidth(a1);
    v5.size.height = CGBitmapContextGetHeight(a1);
    v5.origin.x = 0.0;
    v5.origin.y = 0.0;
    v5.size.width = Width;
    CGContextFillRect(a1, v5);
  }

  CGContextRestoreGState(a1);
}

CGFloat pdfPageToPaperTransform@<D0>(CGPDFPage *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  BoxRect = CGPDFPageGetBoxRect(a1, kCGPDFCropBox);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v45 = CGPDFPageGetBoxRect(a1, kCGPDFMediaBox);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v41 = CGRectIntersection(v40, v45);
  v11 = v41.origin.x;
  v12 = v41.origin.y;
  v13 = v41.size.width;
  v14 = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v11;
  v42.origin.y = v12;
  v42.size.width = v13;
  v42.size.height = v14;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = v11;
  v43.origin.y = v12;
  v43.size.width = v13;
  v43.size.height = v14;
  v17 = CGRectGetWidth(v43);
  v44.origin.x = v11;
  v44.origin.y = v12;
  v44.size.width = v13;
  v44.size.height = v14;
  v18 = CGRectGetHeight(v44);
  memset(&v38, 0, sizeof(v38));
  CGAffineTransformMakeTranslation(&v38, -(MinX + v17 * 0.5), -(MinY + v18 * 0.5));
  v19 = CGPDFPageGetRotationAngle(a1) % 360;
  if (v19 >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 360;
  }

  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeRotation(&v37, v20 * -3.14159265 / 180.0);
  v21 = v20 == 90 || v20 == 270;
  if (v21)
  {
    v22 = v18;
  }

  else
  {
    v22 = v17;
  }

  if (v21)
  {
    v23 = v17;
  }

  else
  {
    v23 = v18;
  }

  v24 = a3 / v22;
  v25 = a4 / v23;
  memset(&v36.c, 0, 32);
  if (v24 >= v25)
  {
    v24 = v25;
  }

  *&v36.a = 0uLL;
  CGAffineTransformMakeScale(&v36, v24, v24);
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeTranslation(&v35, a3 * 0.5, a4 * 0.5);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  t1 = v38;
  t2 = v37;
  CGAffineTransformConcat(a2, &t1, &t2);
  v26 = *(a2 + 16);
  *&t2.a = *a2;
  *&t2.c = v26;
  *&t2.tx = *(a2 + 32);
  v32 = v36;
  CGAffineTransformConcat(&t1, &t2, &v32);
  v27 = *&t1.c;
  *a2 = *&t1.a;
  *(a2 + 16) = v27;
  *(a2 + 32) = *&t1.tx;
  v28 = *(a2 + 16);
  *&t2.a = *a2;
  *&t2.c = v28;
  *&t2.tx = *(a2 + 32);
  v32 = v35;
  CGAffineTransformConcat(&t1, &t2, &v32);
  v29 = *&t1.c;
  *a2 = *&t1.a;
  *(a2 + 16) = v29;
  result = t1.tx;
  *(a2 + 32) = *&t1.tx;
  return result;
}

void drawPDFPageToCGContext(CGPDFPage *a1, CGContext *a2, void *a3, int a4, double a5, double a6)
{
  if (a1 && a2)
  {
    v9 = a3;
    BoxRect = CGPDFPageGetBoxRect(a1, kCGPDFCropBox);
    y = BoxRect.origin.y;
    x = BoxRect.origin.x;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    v12 = CGPDFPageGetRotationAngle(a1) % 360;
    v13 = v12 + (v12 < 0 ? 0x168 : 0);
    v14 = v13 == 90 || v13 == 270;
    if (v14)
    {
      v15 = width;
    }

    else
    {
      v15 = height;
    }

    if (v14)
    {
      v16 = height;
    }

    else
    {
      v16 = width;
    }

    [v9 paperSize];
    v18 = v17;
    v20 = v19;
    [v9 paperSize];
    v22 = v21;
    [v9 paperSize];
    v24 = v23;

    if (vabdd_f64(v15, v16) > 1.0 && ((v25 = v22 / v24, v16 / v15 < 1.0) ? (v26 = v25 <= 1.0) : (v26 = 1), !v26 || (v16 / v15 > 1.0 ? (v27 = v25 < 1.0) : (v27 = 0), v27)))
    {
      v28 = v18;
      v18 = v20;
    }

    else
    {
      v28 = v20;
    }

    if (v18 != 0.0 && v28 != 0.0)
    {
      memset(&v36, 0, sizeof(v36));
      pdfPageToPaperTransform(a1, &v36, v18, v28);
      if (a6 != 0.0)
      {
        memset(&transform, 0, sizeof(transform));
        CGAffineTransformMakeScale(&transform, a6 / v28, a6 / v28);
        t1 = v36;
        t2 = transform;
        CGAffineTransformConcat(&v34, &t1, &t2);
        v36 = v34;
      }

      transform = v36;
      v38.origin.y = y;
      v38.origin.x = x;
      v38.size.width = width;
      v38.size.height = height;
      v39 = CGRectApplyAffineTransform(v38, &transform);
      CGContextClipToRect(a2, v39);
      transform = v36;
      CGContextConcatCTM(a2, &transform);
      if (a4)
      {
        CGContextDrawPDFPageWithAnnotations();
      }

      else
      {
        CGContextDrawPDFPage(a2, a1);
      }
    }
  }
}

uint64_t _imageRotationTransfrom@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result != 5)
      {
        *(a2 + 8) = xmmword_25F6D4260;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
LABEL_9:
        *(a2 + 40) = a4;
        return result;
      }

      __asm { FMOV            V2.2D, #-1.0 }

      *(a2 + 8) = _Q2;
      goto LABEL_19;
    }

    if (result == 7)
    {
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 8) = _Q0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      return result;
    }

    if (result == 8)
    {
      *(a2 + 8) = xmmword_25F6D4270;
LABEL_14:
      *(a2 + 32) = a3;
      return result;
    }

LABEL_15:
    v4 = MEMORY[0x277CBF2C0];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *a2 = *MEMORY[0x277CBF2C0];
    *(a2 + 16) = v5;
    *(a2 + 32) = *(v4 + 32);
    return result;
  }

  if (result == 2)
  {
    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
    goto LABEL_14;
  }

  if (result != 3)
  {
    if (result == 4)
    {
      *a2 = 0x3FF0000000000000;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xBFF0000000000000;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  *a2 = 0xBFF0000000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xBFF0000000000000;
LABEL_19:
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  return result;
}

CGFloat _cgImageToPaperTransform@<D0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>, CGFloat a8@<D4>, CGFloat a9@<D5>)
{
  v15 = a4;
  memset(&v35, 0, sizeof(v35));
  if (a2)
  {
    a4 = a5;
  }

  v17 = a4 * -0.5;
  if (a2)
  {
    v18 = v15;
  }

  else
  {
    v18 = a5;
  }

  CGAffineTransformMakeTranslation(&v35, v17, v18 * -0.5);
  memset(&v34, 0, sizeof(v34));
  _imageRotationTransfrom(a1, &v34, 0.0, 0.0);
  v36.origin.x = a6;
  v36.origin.y = a7;
  v36.size.width = a8;
  v36.size.height = a9;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = a6;
  v37.origin.y = a7;
  v37.size.width = a8;
  v37.size.height = a9;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = a6;
  v38.origin.y = a7;
  v38.size.width = a8;
  v38.size.height = a9;
  Width = CGRectGetWidth(v38);
  v39.origin.x = a6;
  v39.origin.y = a7;
  v39.size.width = a8;
  v39.size.height = a9;
  Height = CGRectGetHeight(v39);
  v22 = Width / v15;
  memset(&v33.c, 0, 32);
  if (Width / v15 >= Height / a5)
  {
    v22 = Height / a5;
  }

  *&v33.a = 0uLL;
  CGAffineTransformMakeScale(&v33, v22, v22);
  memset(&v32, 0, sizeof(v32));
  CGAffineTransformMakeTranslation(&v32, MinX + Width * 0.5, MinY + Height * 0.5);
  t1 = v35;
  t2 = v34;
  CGAffineTransformConcat(a3, &t1, &t2);
  v23 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v23;
  *&t2.tx = *(a3 + 32);
  v29 = v33;
  CGAffineTransformConcat(&t1, &t2, &v29);
  v24 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v24;
  *(a3 + 32) = *&t1.tx;
  v25 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v25;
  *&t2.tx = *(a3 + 32);
  v29 = v32;
  CGAffineTransformConcat(&t1, &t2, &v29);
  v26 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v26;
  result = t1.tx;
  *(a3 + 32) = *&t1.tx;
  return result;
}

void drawCGImageToCGContext(CGImage *a1, CGContext *a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v14 = a7;
  v18 = a6 - (a8 + a10);
  v19 = a7 - (a9 + a11);
  if (a8 <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = a8;
  }

  if (v19 <= a9)
  {
    v21 = a9;
  }

  else
  {
    v21 = v19;
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v24 = Height;
  if (a3 <= 4)
  {
    v25 = Width;
  }

  else
  {
    v25 = Height;
  }

  if (a3 <= 4)
  {
    v26 = Height;
  }

  else
  {
    v26 = Width;
  }

  if ((a6 <= v14 || v25 >= v26) && (a6 >= v14 || v25 <= v26))
  {
    v27 = v21;
    v21 = v20;
    v28 = v14;
    v14 = a6;
  }

  else
  {
    v27 = v20;
    v28 = a6;
  }

  v29 = v14 - v21 - v21;
  v30 = v28 - v27 - v27;
  if (a4)
  {
    v29 = v14;
    v30 = v28;
  }

  v31 = v29 / v25;
  v32 = v30 / v26;
  if (v31 <= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  if (v31 < v32)
  {
    v32 = v31;
  }

  if ((a4 & a5) != 0)
  {
    v32 = v33;
  }

  v34 = (v14 - v25 * v32) * 0.5;
  v35 = (v28 - v26 * v32) * 0.5;
  v36 = v25 * v32;
  v37 = v26 * v32;
  CGContextSaveGState(a2);
  _cgImageToPaperTransform(a3, a3 > 4, &v38, v25, v26, v34, v35, v36, v37);
  CGContextConcatCTM(a2, &v38);
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = Width;
  v39.size.height = v24;
  CGContextDrawImage(a2, v39, a1);
  CGContextRestoreGState(a2);
}

void sub_25F6CA6B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __GetImageForPHAssetSync_block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  [UIPrintInfo _createPrintSettingsForPrinter:v0];
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}