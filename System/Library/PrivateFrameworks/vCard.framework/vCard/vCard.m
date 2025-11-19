uint64_t sIsPrefParameter_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 values];
  v3 = [v2 _cn_map:&__block_literal_global_459];

  v4 = [v3 _cn_any:&__block_literal_global_462];
  return v4;
}

__CFString *sAPIKeyToSerializedKey_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _cn_caseInsensitiveIsEqual:@"sound"])
  {
    v3 = @"snd";
  }

  else if ([v2 _cn_caseInsensitiveIsEqual:@"vibration"])
  {
    v3 = @"vib";
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

__CFString *sSerializedKeyToAPIKey_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([(__CFString *)v2 _cn_caseInsensitiveIsEqual:@"snd"])
  {
    v3 = @"sound";
  }

  else if ([(__CFString *)v2 _cn_caseInsensitiveIsEqual:@"vib"])
  {
    v3 = @"vibration";
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

__CFString *sAPITypeToSerializedType_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _cn_caseInsensitiveIsEqual:@"com.apple.activityalert.call"])
  {
    v3 = @"call";
  }

  else if ([v2 _cn_caseInsensitiveIsEqual:@"com.apple.activityalert.text"])
  {
    v3 = @"text";
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

__CFString *sSerializedTypeToAPIType_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([(__CFString *)v2 _cn_caseInsensitiveIsEqual:@"call"])
  {
    v3 = @"com.apple.activityalert.call";
  }

  else if ([(__CFString *)v2 _cn_caseInsensitiveIsEqual:@"text"])
  {
    v3 = @"com.apple.activityalert.text";
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t sKeyComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [&unk_28865B6C8 indexOfObject:v4];
  v7 = [&unk_28865B6C8 indexOfObject:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v4 caseInsensitiveCompare:v5];
  }

  else
  {
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = -1;
      if (v6 >= v7)
      {
        v10 = v7 < v6;
      }

      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v10;
      }
    }
  }

  return v9;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id buildTokenTable(int a1)
{
  memset(&callBacks, 0, 24);
  callBacks.copyDescription = copyDescriptionCallBack;
  callBacks.equal = equalCallBack;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = CFArrayCreateMutable(0, 9, &callBacks);
  [v2 addObject:v3];

  Token = createToken(@";", 4097, a1);
  CFArrayAppendValue(v3, Token);
  v5 = createToken(@":", 8193, a1);
  CFArrayAppendValue(v3, v5);
  v6 = createToken(@" ", 16385, a1);
  CFArrayAppendValue(v3, v6);
  v7 = createToken(@"=", 1025, a1);
  CFArrayAppendValue(v3, v7);
  v8 = createToken(@"\r", 32770, a1);
  CFArrayAppendValue(v3, v8);
  v9 = createToken(@"\n", 32769, a1);
  CFArrayAppendValue(v3, v9);
  v10 = createToken(@"\", 513, a1);
  CFArrayAppendValue(v3, v10);
  v11 = createToken(@".", 257, a1);
  CFArrayAppendValue(v3, v11);
  v12 = createToken(@",", 129, a1);
  CFArrayAppendValue(v3, v12);
  v13 = CFArrayCreateMutable(0, 1, &callBacks);
  [v2 addObject:v13];

  v14 = createToken(@"END", 7, a1);
  CFArrayAppendValue(v13, v14);
  v15 = CFArrayCreateMutable(0, 2, &callBacks);
  [v2 addObject:v15];

  v16 = createToken(@"BEGIN", 5, a1);
  CFArrayAppendValue(v15, v16);
  v17 = createToken(@"VCARD", 6, a1);
  CFArrayAppendValue(v15, v17);
  v18 = CFArrayCreateMutable(0, 1, &callBacks);
  [v2 addObject:v18];

  v19 = createToken(@"VERSION", 2049, a1);
  CFArrayAppendValue(v18, v19);

  return v2;
}

void *createToken(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
  *v6 = a2;
  v7 = [(__CFString *)v5 length];
  if (a3)
  {
    v8 = malloc_type_malloc(2 * v7 + 2, 0x1000040BDFB0063uLL);
    [(__CFString *)v5 getCharacters:v8];
  }

  else
  {
    v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
    v9 = [(__CFString *)v5 length];
    v10 = [(__CFString *)v5 length];
    v12.location = 0;
    v12.length = v9;
    CFStringGetBytes(v5, v12, 0x600u, 0, 0, v8, v10 + 1, 0);
  }

  v6[1] = v8;
  return v6;
}

void sub_2772085B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

id sFilterIMPPsForService_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sFilterIMPPsForService_block_invoke_2;
  v6[3] = &unk_27A710F38;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

uint64_t sFilterIMPPsForService_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [v3 valueForKey:@"service"];

  if (v4)
  {
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_27720C200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27720C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27720C5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27720C800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27720CB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27720CD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUTTypeConformsToSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreServicesLibrary();
  result = dlsym(v2, "UTTypeConformsTo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUTTypeConformsToSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A7110D0;
    v6 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreServicesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CoreServicesLibraryCore_frameworkLibrary)
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

uint64_t __CoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getkUTTypeJPEGSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreServicesLibrary();
  result = dlsym(v2, "kUTTypeJPEG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkUTTypeJPEGSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageGetAlphaInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGImageGetAlphaInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageGetAlphaInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreGraphicsLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreGraphicsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A711108;
    v6 = 0;
    CoreGraphicsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreGraphicsLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
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

uint64_t __CoreGraphicsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreGraphicsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getCGImageGetWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGImageGetWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageGetWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageGetHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGImageGetHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageGetHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ImageIOLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ImageIOLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A711120;
    v6 = 0;
    ImageIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!ImageIOLibraryCore_frameworkLibrary)
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

uint64_t __ImageIOLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getkCGImageSourceCreateThumbnailFromImageAlwaysSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImageSourceCreateThumbnailFromImageAlways");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImageSourceCreateThumbnailFromImageAlwaysSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImageSourceThumbnailMaxPixelSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImageSourceThumbnailMaxPixelSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImageSourceThumbnailMaxPixelSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCreateThumbnailAtIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCreateThumbnailAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateThumbnailAtIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceGetTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceGetType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceGetTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCIImageClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCIImageClass_block_invoke_cold_1();
    return CoreImageLibrary();
  }

  return result;
}

uint64_t CoreImageLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A711138;
    v6 = 0;
    CoreImageLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreImageLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CoreImageLibraryCore_frameworkLibrary)
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

uint64_t __CoreImageLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreImageLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCIContextClass_block_invoke(uint64_t a1)
{
  CoreImageLibrary();
  result = objc_getClass("CIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCIContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCIContextClass_block_invoke_cold_1();
    return __getkCIFormatRGBA8SymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkCIFormatRGBA8SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreImageLibrary();
  result = dlsym(v2, "kCIFormatRGBA8");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCIFormatRGBA8SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImageDestinationLossyCompressionQualitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImageDestinationLossyCompressionQuality");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImageDestinationLossyCompressionQualitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sRangeValueByConsolidatingAdjacentRangeValues_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 firstObject];
  v4 = [v3 rangeValue];

  v5 = [v2 lastObject];

  v6 = [v5 rangeValue];
  v8 = v7;

  v9 = MEMORY[0x277CCAE60];

  return [v9 valueWithRange:{v4, v8 - v4 + v6}];
}

void *__getCGImageSourceCreateWithDataSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = ImageIOLibrary_0();
  result = dlsym(v2, "CGImageSourceCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateWithDataSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ImageIOLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ImageIOLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A711228;
    v6 = 0;
    ImageIOLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!ImageIOLibraryCore_frameworkLibrary_0)
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

uint64_t __ImageIOLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getCGImageSourceCopyPropertiesAtIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_0();
  result = dlsym(v2, "CGImageSourceCopyPropertiesAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPixelWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_0();
  result = dlsym(v2, "kCGImagePropertyPixelWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPixelWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPixelHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_0();
  result = dlsym(v2, "kCGImagePropertyPixelHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPixelHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *byteBufferWithCapacity(NSUInteger a1)
{
  v2 = NSZoneMalloc(0, 0x18uLL);
  if (a1 <= 1)
  {
    a1 = 1;
  }

  v3 = NSZoneMalloc(0, a1);
  v2[1] = 0;
  v2[2] = a1;
  *v2 = v3;
  return v2;
}

uint64_t appendToBufferWithLineFolding(uint64_t a1, char a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 75)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6 == v7 && v7 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v7 = 2 * v6;
      v9 = NSZoneRealloc(0, *a1, 2 * v6);
      if (v9)
      {
        *a1 = v9;
        *(a1 + 16) = v7;
      }

      else
      {
        v7 = *(a1 + 16);
      }
    }

    v10 = *(a1 + 8);
    if (v10 == v7)
    {
      NSLog(&cfstr_Abdataaddition.isa, a1);
    }

    else
    {
      v11 = *a1;
      *(a1 + 8) = v10 + 1;
      v11[v10] = 13;
    }

    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v12 == v13 && v13 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v13 = 2 * v12;
      v14 = NSZoneRealloc(0, *a1, 2 * v12);
      if (v14)
      {
        *a1 = v14;
        *(a1 + 16) = v13;
      }

      else
      {
        v13 = *(a1 + 16);
      }
    }

    v15 = *(a1 + 8);
    if (v15 == v13)
    {
      NSLog(&cfstr_Abdataaddition.isa, a1);
    }

    else
    {
      v16 = *a1;
      *(a1 + 8) = v15 + 1;
      v16[v15] = 10;
    }

    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v17 == v18 && v18 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v18 = 2 * v17;
      v19 = NSZoneRealloc(0, *a1, 2 * v17);
      if (v19)
      {
        *a1 = v19;
        *(a1 + 16) = v18;
      }

      else
      {
        v18 = *(a1 + 16);
      }
    }

    v20 = *(a1 + 8);
    if (v20 == v18)
    {
      NSLog(&cfstr_Abdataaddition.isa, a1);
    }

    else
    {
      v21 = *a1;
      *(a1 + 8) = v20 + 1;
      v21[v20] = 32;
    }

    v3 = 1;
  }

  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (v22 == v23 && v23 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v23 = 2 * v22;
    v25 = NSZoneRealloc(0, *a1, 2 * v22);
    if (v25)
    {
      *a1 = v25;
      *(a1 + 16) = v23;
    }

    else
    {
      v23 = *(a1 + 16);
    }
  }

  v26 = *(a1 + 8);
  if (v26 == v23)
  {
    NSLog(&cfstr_Abdataaddition.isa, a1);
  }

  else
  {
    v27 = *a1;
    *(a1 + 8) = v26 + 1;
    v27[v26] = a2;
  }

  return v3 + 1;
}

id sub_277218C30(void *a1)
{
  sub_277218D88(a1);

  return sub_277219204(a1);
}

id CNVCardNameComponentPostProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNVCardNameComponentPostProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNVCardNameComponentPostProcessor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNVCardNameComponentPostProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNVCardNameComponentPostProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_277218D88(void *a1)
{
  v2 = sub_27721ACC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 formattedName];
  if (v7)
  {
    v61 = v7;
    v8 = sub_27721ACE4();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = [a1 firstName];
    if (v12)
    {
      v13 = v12;
      v14 = sub_27721ACE4();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        goto LABEL_17;
      }
    }

    v18 = [a1 lastName];
    if (v18)
    {
      v19 = v18;
      v20 = sub_27721ACE4();
      v22 = v21;

      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        goto LABEL_17;
      }
    }

    v24 = [a1 companyName];
    if (!v24)
    {
      goto LABEL_20;
    }

    v25 = v24;
    v26 = sub_27721ACE4();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
LABEL_17:
      v30 = v61;
    }

    else
    {
LABEL_20:
      v31 = [objc_opt_self() componentsFromString_];

      sub_27721ACB4();
      sub_27721AC74();
      if (v32)
      {
        v33 = sub_27721ACD4();
      }

      else
      {
        v33 = 0;
      }

      [a1 setLastName_];

      sub_27721AC64();
      if (v34)
      {
        v35 = sub_27721ACD4();
      }

      else
      {
        v35 = 0;
      }

      [a1 setFirstName_];

      v36 = [a1 middleName];
      if (!v36)
      {
        goto LABEL_30;
      }

      v37 = v36;
      v38 = sub_27721ACE4();
      v40 = v39;

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (!v41)
      {
LABEL_30:
        sub_27721AC84();
        if (v42)
        {
          v43 = sub_27721ACD4();
        }

        else
        {
          v43 = 0;
        }

        [a1 setMiddleName_];
      }

      v44 = [a1 title];
      if (!v44)
      {
        goto LABEL_38;
      }

      v45 = v44;
      v46 = sub_27721ACE4();
      v48 = v47;

      v49 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v49 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (!v49)
      {
LABEL_38:
        sub_27721AC94();
        if (v50)
        {
          v51 = sub_27721ACD4();
        }

        else
        {
          v51 = 0;
        }

        [a1 setTitle_];
      }

      v52 = [a1 suffix];
      if (!v52)
      {
        goto LABEL_46;
      }

      v53 = v52;
      v54 = sub_27721ACE4();
      v56 = v55;

      v57 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v57 = v54 & 0xFFFFFFFFFFFFLL;
      }

      if (!v57)
      {
LABEL_46:
        sub_27721ACA4();
        if (v58)
        {
          v59 = sub_27721ACD4();
        }

        else
        {
          v59 = 0;
        }

        [a1 setSuffix_];
      }

      (*(v3 + 8))(v6, v2);
    }
  }
}

id sub_277219204(void *a1)
{
  result = [a1 formattedName];
  if (result)
  {
    v3 = result;
    sub_27721ACE4();

    v4 = [a1 firstName];
    if (v4)
    {
      v5 = v4;
      v6 = sub_27721ACE4();
      v8 = v7;
      v9 = CNIsChineseString();

      if (v9)
      {
        v10 = [a1 middleName];
        if (v10)
        {
          v11 = v10;
          v12 = sub_27721ACE4();
          v14 = v13;
          v15 = CNIsChineseString();

          if (v15)
          {
            v16 = [a1 lastName];
            if (v16)
            {
              v21 = v12;
              v17 = v16;
              sub_27721ACE4();
              v18 = CNIsChineseString();

              if (v18)
              {

                MEMORY[0x277CA9C00](v21, v14);

                MEMORY[0x277CA9C00](v6, v8);

                sub_2772194F4();
                v19 = sub_27721AD34();

                if (v19)
                {

                  MEMORY[0x277CA9C00](v6, v8);

                  v20 = sub_27721ACD4();

                  [a1 setFirstName_];

                  return [a1 setMiddleName_];
                }

                else
                {
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2772194F4()
{
  result = qword_280A6A190;
  if (!qword_280A6A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A6A190);
  }

  return result;
}

id sub_277219548(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_allocWithZone(type metadata accessor for CNVCardTagInclusionRestrictedPolicy());

    return sub_2772197B8(v2);
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for CNVCardTagInclusionPermissivePolicy());

    return [v4 init];
  }
}

id CNVCardTagInclusion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNVCardTagInclusion.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNVCardTagInclusion();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2772197B8(char *a1)
{
  v1[OBJC_IVAR____TtC5vCard35CNVCardTagInclusionRestrictedPolicy_shouldCaptureUnknownTags] = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_27721A41C(0, *(a1 + 2) + 1, 1, a1);
  }

  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  if (v4 >= v3 >> 1)
  {
    a1 = sub_27721A41C((v3 > 1), v4 + 1, 1, a1);
  }

  *(a1 + 2) = v4 + 1;
  v5 = &a1[16 * v4];
  *(v5 + 4) = 0x4E4F4953524556;
  *(v5 + 5) = 0xE700000000000000;
  v6 = sub_27721A528(a1);

  *&v1[OBJC_IVAR____TtC5vCard35CNVCardTagInclusionRestrictedPolicy_tags] = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CNVCardTagInclusionRestrictedPolicy();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_2772198F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_27721AD84();
  sub_27721ACF4();
  v7 = sub_27721AD94();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_27721AD64() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_277219B10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_277219B58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_27721AD84();
  sub_27721ACF4();
  v9 = sub_27721AD94();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_27721AD64() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_277219F08(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_277219CA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A6A1B0, "d%");
  result = sub_27721AD54();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_27721AD84();
      sub_27721ACF4();
      result = sub_27721AD94();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_277219F08(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_277219CA8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_27721A088();
      goto LABEL_16;
    }

    sub_27721A1E4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_27721AD84();
  sub_27721ACF4();
  result = sub_27721AD94();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_27721AD64();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_27721AD74();
  __break(1u);
  return result;
}

void *sub_27721A088()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A6A1B0, "d%");
  v2 = *v0;
  v3 = sub_27721AD44();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_27721A1E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A6A1B0, "d%");
  result = sub_27721AD54();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_27721AD84();

      sub_27721ACF4();
      result = sub_27721AD94();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_27721A41C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A6A1B8, "f%");
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27721A528(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277CA9C20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_277219B58(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
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