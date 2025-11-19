void sub_1B1ECE394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCGImageSourceShouldCacheSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImageSourceShouldCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImageSourceShouldCacheSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ImageIOLibrary_9720()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary_9765)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ImageIOLibraryCore_block_invoke_9766;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B012E0;
    v7 = 0;
    ImageIOLibraryCore_frameworkLibrary_9765 = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary_9765;
  if (!ImageIOLibraryCore_frameworkLibrary_9765)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFImageHelpers.m" lineNumber:24 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *__getkCGImageSourceTypeIdentifierHintSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImageSourceTypeIdentifierHint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCreateWithDataSymbolLoc_block_invoke_9726(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "CGImageSourceCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateWithDataSymbolLoc_ptr_9725 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceGetCountSymbolLoc_block_invoke_9730(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "CGImageSourceGetCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceGetCountSymbolLoc_ptr_9729 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCreateImageAtIndexSymbolLoc_block_invoke_9734(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "CGImageSourceCreateImageAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCopyPropertiesAtIndexSymbolLoc_block_invoke_9738(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "CGImageSourceCopyPropertiesAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyGIFDictionarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImagePropertyGIFDictionary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyGIFDictionarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyGIFDelayTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImagePropertyGIFDelayTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyOrientationSymbolLoc_block_invoke_9744(uint64_t a1)
{
  v2 = ImageIOLibrary_9720();
  result = dlsym(v2, "kCGImagePropertyOrientation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyOrientationSymbolLoc_ptr_9743 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initUIImage_9749()
{
  if (UIKitLibrary_sOnce_9750 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_9750, &__block_literal_global_9751);
  }

  result = objc_getClass("UIImage");
  classUIImage_9753 = result;
  getUIImageClass_9747 = UIImageFunction_9755;
  return result;
}

void *__UIKitLibrary_block_invoke_9758()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_9760 = result;
  return result;
}

uint64_t __ImageIOLibraryCore_block_invoke_9766(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary_9765 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1ECECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *CoreTelephonyLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreTelephonyLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B01300;
    v7 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTelephonyLibraryCore_frameworkLibrary;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFCellularSettings.m" lineNumber:15 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

id WFNSErrorFromCTError(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = MEMORY[0x1E696ABC0];
      v3 = MEMORY[0x1E696A5A0];
      goto LABEL_6;
    }

    if (a1 == 1)
    {
      v2 = MEMORY[0x1E696ABC0];
      v3 = MEMORY[0x1E696A798];
LABEL_6:
      v4 = [v2 errorWithDomain:*v3 code:a1 >> 32 userInfo:0];
      goto LABEL_9;
    }

    v5 = HIDWORD(a1);
    v6 = MEMORY[0x1E696ABC0];
    v12[0] = @"CTErrorDomain";
    v7 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    v12[1] = @"CTError";
    v13[0] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v4 = [v6 errorWithDomain:@"WFCellularSettingsErrorDomain" code:0 userInfo:v9];
  }

  else
  {
    v4 = 0;
  }

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1ECF1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CGFloatCeilWithScale(double result, double a2)
{
  if (a2 > 0.0)
  {
    return ceil(result * a2) / a2;
  }

  return result;
}

double CGFloatRoundWithScale(double result, double a2)
{
  if (a2 > 0.0)
  {
    return round(result * a2) / a2;
  }

  return result;
}

double CGFloatFloorWithScale(double result, double a2)
{
  if (a2 > 0.0)
  {
    return floor(result * a2) / a2;
  }

  return result;
}

void sub_1B1ED108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1ED3D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10583(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *WFContextualActionDescribeSurface(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return off_1E7B01520[a1];
  }
}

BOOL WFCanAccessUserDefaultsDomain(void *a1)
{
  getpid();
  v2 = *MEMORY[0x1E69E9BD0];
  v6 = [@"com.apple.siri.shortcuts" UTF8String];
  v3 = sandbox_check();
  v4 = v3;
  if (a1 && v3 == -1)
  {
    *a1 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:{0, v6}];
  }

  return v4 == 0;
}

void *__UIKitLibrary_block_invoke_12015()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_12017 = result;
  return result;
}

void sub_1B1EDBCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTFontCreateWithGraphicsFontSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary_12284)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreTextLibraryCore_block_invoke_12285;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B01838;
    v8 = 0;
    CoreTextLibraryCore_frameworkLibrary_12284 = _sl_dlopen();
  }

  v2 = CoreTextLibraryCore_frameworkLibrary_12284;
  if (!CoreTextLibraryCore_frameworkLibrary_12284)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreTextLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFWorkflowIconDrawerContext.m" lineNumber:18 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CTFontCreateWithGraphicsFont");
  *(*(a1[4] + 8) + 24) = result;
  getCTFontCreateWithGraphicsFontSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreTextLibraryCore_block_invoke_12285(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary_12284 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EE23AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13173(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1EE2570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B1EE2DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentItemClass_block_invoke_13326(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentItemClass_softClass_13325 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:57 description:{@"Unable to find class %s", "WFContentItem"}];

    __break(1u);
  }
}

Class __getLPLinkMetadataClass_block_invoke_13329(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary_13332)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __LinkPresentationLibraryCore_block_invoke_13333;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B01A20;
    v9 = 0;
    LinkPresentationLibraryCore_frameworkLibrary_13332 = _sl_dlopen();
  }

  if (!LinkPresentationLibraryCore_frameworkLibrary_13332)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFOnScreenContentNode.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFOnScreenContentNode.m" lineNumber:22 description:{@"Unable to find class %s", "LPLinkMetadata"}];

LABEL_10:
    __break(1u);
  }

  getLPLinkMetadataClass_softClass_13328 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke_13333(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary_13332 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void ContentKitLibrary_13348()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary_13351)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContentKitLibraryCore_block_invoke_13352;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B01A08;
    v6 = 0;
    ContentKitLibraryCore_frameworkLibrary_13351 = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary_13351)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContentKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:25 description:{@"%s", v4[0]}];

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

uint64_t __ContentKitLibraryCore_block_invoke_13352(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary_13351 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EE36BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFStringContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFStringContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFStringContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFStringContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:58 description:{@"Unable to find class %s", "WFStringContentItem"}];

    __break(1u);
  }
}

void __getWFURLContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFURLContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFURLContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFURLContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:59 description:{@"Unable to find class %s", "WFURLContentItem"}];

    __break(1u);
  }
}

void __getWFContactContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContactContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContactContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFContactContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:60 description:{@"Unable to find class %s", "WFContactContentItem"}];

    __break(1u);
  }
}

void __getWFCNContactClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFCNContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFCNContactClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:62 description:{@"Unable to find class %s", "WFCNContact"}];

    __break(1u);
  }
}

void __getWFPhotoMediaContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_13348();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFPhotoMediaContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFPhotoMediaContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFPhotoMediaContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentNode.m" lineNumber:61 description:{@"Unable to find class %s", "WFPhotoMediaContentItem"}];

    __break(1u);
  }
}

void sub_1B1EE8330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSAssertion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAssertionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDispatchSourceTimer.m" lineNumber:16 description:{@"Unable to find class %s", "RBSAssertion"}];

    __break(1u);
  }
}

void __getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTarget");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDispatchSourceTimer.m" lineNumber:18 description:{@"Unable to find class %s", "RBSTarget"}];

    __break(1u);
  }
}

void __getRBSDomainAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSDomainAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSDomainAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSDomainAttributeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDispatchSourceTimer.m" lineNumber:17 description:{@"Unable to find class %s", "RBSDomainAttribute"}];

    __break(1u);
  }
}

void RunningBoardServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RunningBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B01CD8;
    v6 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFDispatchSourceTimer.m" lineNumber:15 description:{@"%s", v4[0]}];

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

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WFMatchActionTypesWithFileTypes(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFMatchActionTypesWithFileTypes(NSSet<UTType *> * _Nonnull __strong, NSArray<UTType *> * _Nullable __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"WFContextualAction.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"actionTypes"}];
  }

  if ([v3 count] && !objc_msgSend(v4, "count"))
  {
    v16 = 0;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v21 = v4;
      while (1)
      {
        v9 = 0;
LABEL_8:
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v3;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v14 = *v23;
LABEL_12:
        v15 = 0;
        while (1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([v10 conformsToType:*(*(&v22 + 1) + 8 * v15)])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v13)
            {
              goto LABEL_12;
            }

            goto LABEL_22;
          }
        }

        if (++v9 != v7)
        {
          goto LABEL_8;
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
        v16 = 1;
        v4 = v21;
        if (!v7)
        {
          goto LABEL_24;
        }
      }

LABEL_22:

      v16 = 0;
      v4 = v21;
    }

    else
    {
      v16 = 1;
    }

LABEL_24:
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1B1EEAD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __NanoRegistryLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B01E08;
    v9 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFDevice.m" lineNumber:26 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFDevice.m" lineNumber:27 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

LABEL_10:
    __break(1u);
  }

  getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EEBA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B01DC0;
    v9 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFDevice.m" lineNumber:47 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFDevice.m" lineNumber:48 description:{@"Unable to find class %s", "MCProfileConnection"}];

LABEL_10:
    __break(1u);
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getVKCRemoveBackgroundRequestHandlerClass_block_invoke_14750(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary_14751)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __VisionKitCoreLibraryCore_block_invoke_14752;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B01DD8;
    v9 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary_14751 = _sl_dlopen();
  }

  if (!VisionKitCoreLibraryCore_frameworkLibrary_14751)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VisionKitCoreLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFDevice.m" lineNumber:54 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("VKCRemoveBackgroundRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVKCRemoveBackgroundRequestHandlerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFDevice.m" lineNumber:55 description:{@"Unable to find class %s", "VKCRemoveBackgroundRequestHandler"}];

LABEL_10:
    __break(1u);
  }

  getVKCRemoveBackgroundRequestHandlerClass_softClass_14749 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getCBClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCBClientClass_softClass;
  v7 = getCBClientClass_softClass;
  if (!getCBClientClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCBClientClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getCBClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EEBEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCBClientClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreBrightnessLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B01DF0;
    v9 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreBrightnessLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFDevice.m" lineNumber:62 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CBClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCBClientClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFDevice.m" lineNumber:63 description:{@"Unable to find class %s", "CBClient"}];

LABEL_10:
    __break(1u);
  }

  getCBClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke_14752(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary_14751 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__14950(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFEvaluateMathematicalFunction(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSNumber * _Nonnull WFEvaluateMathematicalFunction(NSString * _Nonnull __strong, NSArray<NSNumber *> * _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"function"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSNumber * _Nonnull WFEvaluateMathematicalFunction(NSString * _Nonnull __strong, NSArray<NSNumber *> * _Nonnull __strong)"}];
  [v15 handleFailureInFunction:v16 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"numbers"}];

LABEL_3:
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v5];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v9 = [v6 expressionForFunction:v3 arguments:v8];

  v10 = [v9 expressionValueWithObject:0 context:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_1B1EEE14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMContextualActionParameterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBMContextualActionParameterClass_softClass;
  v7 = getBMContextualActionParameterClass_softClass;
  if (!getBMContextualActionParameterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBMContextualActionParameterClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getBMContextualActionParameterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EEE238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBMContextualActionEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMContextualActionEvent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMContextualActionEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMContextualActionEventClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:26 description:{@"Unable to find class %s", "BMContextualActionEvent"}];

    __break(1u);
  }
}

void __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMStreams");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMStreamsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:29 description:{@"Unable to find class %s", "BMStreams"}];

    __break(1u);
  }
}

void BiomeStreamsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BiomeStreamsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B01F08;
    v6 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:24 description:{@"%s", v4[0]}];

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

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getBMContextualActionParameterClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMContextualActionParameter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMContextualActionParameterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMContextualActionParameterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:28 description:{@"Unable to find class %s", "BMContextualActionParameter"}];

    __break(1u);
  }
}

void sub_1B1EEE780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBMContextualActionContentClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMContextualActionContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBMContextualActionContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMContextualActionContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient_ContextualActions.m" lineNumber:27 description:{@"Unable to find class %s", "BMContextualActionContent"}];

    __break(1u);
  }
}

id WFLocallyFilterActions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 files];
  v6 = [v5 if_map:&__block_literal_global_105];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __WFLocallyFilterActions_block_invoke_2;
  v14[3] = &unk_1E7B01EE8;
  v15 = v6;
  v7 = v6;
  v8 = [v4 if_objectsPassingTest:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __WFLocallyFilterActions_block_invoke_3;
  v12[3] = &unk_1E7B01EE8;
  v13 = v3;
  v9 = v3;
  v10 = [v8 if_objectsPassingTest:v12];

  return v10;
}

uint64_t __WFLocallyFilterActions_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 filteringBehavior];
  v4 = [v3 matchingTypes];

  if (v4)
  {
    v5 = [v3 matchingTypes];
    v6 = WFMatchActionTypesWithFileTypes(v5, *(a1 + 32));
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __WFLocallyFilterActions_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 filteringBehavior];
  v4 = [v3 inClientPredicate];

  if (v4)
  {
    [v4 allowEvaluation];
    v5 = [*(a1 + 32) files];
    v6 = [v4 evaluateWithObject:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id __WFLocallyFilterActions_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 fileURL];
    v7 = [v6 pathExtension];

    if (!v7 || ([MEMORY[0x1E6982C40] typeWithFilenameExtension:v7], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v5 = *MEMORY[0x1E6982E48];
    }
  }

  return v5;
}

id WFArrayFromChanges(void *a1)
{
  v1 = [a1 if_map:&__block_literal_global_77_15322];
  v2 = [v1 allObjects];

  return v2;
}

id WFChangesFromArray(void *a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [a1 if_map:&__block_literal_global_15331];
  v3 = [v1 setWithArray:v2];

  return v3;
}

WFDatabaseObjectDescriptor *__WFChangesFromArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFDatabaseObjectDescriptor alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

WFINShortcutRunDescriptor *WFWorkflowRunDescriptorForINShortcut(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"WFWorkflowRunDescriptor * _Nonnull WFWorkflowRunDescriptorForINShortcut(INShortcut * _Nonnull __strong)"];
    [v10 handleFailureInFunction:v11 file:@"WFSpotlightResultWorkflowRunnerClient.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];
  }

  v2 = [v1 intent];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [WFWorkflowDatabaseRunDescriptor alloc];
    v4 = [v2 workflow];
    v5 = [v4 vocabularyIdentifier];
    v6 = [v2 workflow];
    v7 = [v6 spokenPhrase];
    v8 = [(WFWorkflowDatabaseRunDescriptor *)v3 initWithIdentifier:v5 name:v7];
  }

  else
  {

    v8 = [[WFINShortcutRunDescriptor alloc] initWithShortcut:v1];
  }

  return v8;
}

__CFString *WFRunSourceForSpotlightExecutionContext(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v1 = @"unknown";
  }

  else
  {
    v1 = off_1E7AFFFD8[a1];
  }

  v2 = v1;
  if ([(__CFString *)v2 isEqualToString:@"unknown"])
  {
    v3 = @"contextual-action-spotlight-unknown";
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

id WFSpotlightResultRunnableAttributeKey()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableFromData(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = MEMORY[0x1E696ACD0];
    v2 = MEMORY[0x1E695DFD8];
    v3 = a1;
    v4 = [v2 setWithObjects:{objc_opt_class(), 0}];
    v10 = 0;
    v5 = [v1 unarchivedObjectOfClasses:v4 fromData:v3 error:&v10];

    v6 = v10;
    if (!v5)
    {
      v7 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "WFSpotlightResultRunnableFromData";
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1B1DE3000, v7, OS_LOG_TYPE_ERROR, "%s Cannot unpack data into runnable: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

id WFDataFromSpotlightResultRunnable(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nullable WFDataFromSpotlightResultRunnable(id<WFSpotlightResultRunnable>  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v6 handleFailureInFunction:v7 file:@"WFSpotlightResultWorkflowRunnerClient.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"runnable"}];
  }

  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:a2];

  return v4;
}

id WFSpotlightResultRunnableDisplayOrderKey()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_display_order" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableAccessorySystemImageNameKey()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_accessory_system_image_name" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableIneligibleForTopHit()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_ineligible_for_top_hit" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableAssociatedSettingsPreferenceKey()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_associated_settings_preference" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableIsAppShortcutTopHit()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_is_app_shortcut_top_hit" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableIsAppTopHitExclusive()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_is_app_top_hit_exclusive" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableTopHitBadge()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_top_hit_badge" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableSubtitle()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_subtitle" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableImageDisplayStyle()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_image_display_style" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnablePrimaryPhrase()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_primary_phrase" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableActionIdentifier()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_action_identifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableLNPropertyIdentifier()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_lnproperty_identifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableTintColorNameIdentifier()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_tint_color_name" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

id WFSpotlightResultRunnableSettingBiomeStreamIdentifier()
{
  v0 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"com_apple_shortcuts_runnable_setting_biome_stream_identifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return v0;
}

void sub_1B1EF3470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

uint64_t WFTopHitContextualActionTypeForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
  if (v2)
  {
    v3 = [v1 isEqualToString:@"com.apple.shortcuts"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFDisambiguableContextualActionClassForType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v3 = 0;
  }

  else
  {
    v2 = *off_1E7B02090[a1 - 1];
    v3 = objc_opt_class();
  }

  return v3;
}

void sub_1B1EF62AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  (*(v31 + 16))(v31);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16089(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double WFContentItemListThumbnailCornerRadiusForRoundingStyle(uint64_t a1, double a2, double a3)
{
  v3 = 0.0;
  if ((a1 - 1) <= 2)
  {
    v3 = dbl_1B1F36A40[a1 - 1];
  }

  if (a2 >= a3)
  {
    a2 = a3;
  }

  return a2 * v3;
}

void sub_1B1EF872C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getISImageDescriptorClass_block_invoke_16607(uint64_t a1)
{
  IconServicesLibrary_16610();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImageDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass_16606 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCConfiguredSleepWorkflow.m" lineNumber:18 description:{@"Unable to find class %s", "ISImageDescriptor"}];

    __break(1u);
  }
}

void *__getkISImageDescriptorHomeScreenSymbolLoc_block_invoke_16609(uint64_t a1)
{
  v2 = IconServicesLibrary_16610();
  result = dlsym(v2, "kISImageDescriptorHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorHomeScreenSymbolLoc_ptr_16608 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IconServicesLibrary_16610()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary_16619)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IconServicesLibraryCore_block_invoke_16620;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B02138;
    v7 = 0;
    IconServicesLibraryCore_frameworkLibrary_16619 = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary_16619;
  if (!IconServicesLibraryCore_frameworkLibrary_16619)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IconServicesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"VCConfiguredSleepWorkflow.m" lineNumber:17 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke_16620(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary_16619 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void std::deque<WFDebouncerPokeReason * {__strong}>::pop_front(uint64_t a1)
{
  v2 = vaddq_s64(*(a1 + 32), xmmword_1B1F367B0);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x400uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

uint64_t std::deque<WFDebouncerPokeReason * {__strong}>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7++;

        if (v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    v13 = 512;
  }

  *(a1 + 32) = v13;
LABEL_17:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B1EF9BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<WFDebouncerPokeReason * {__strong}*>::emplace_back<WFDebouncerPokeReason * {__strong}*&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<WFDebouncerPokeReason * {__strong}*>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<WFDebouncerPokeReason * {__strong}*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

id WFShojiSystemActionsContextualActionFromData(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"WFContextualAction * _Nullable WFShojiSystemActionsContextualActionFromData(NSData * _Nonnull __strong)"];
    [v7 handleFailureInFunction:v8 file:@"WFShojiSystemActionsRunnerClient.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v9 = 0;
  v2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v1 error:&v9];
  v3 = v9;
  if (!v2)
  {
    v4 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "WFShojiSystemActionsContextualActionFromData";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Cannot unpack data into contextual action: %@", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

id WFShojiSystemActionsDataFromContextualAction(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nullable WFShojiSystemActionsDataFromContextualAction(WFContextualAction * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v6 handleFailureInFunction:v7 file:@"WFShojiSystemActionsRunnerClient.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:a2];

  return v4;
}

void sub_1B1EFBF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFAbbreviatedNameFromText(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [v1 componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v10 = [v8 stringByTrimmingCharactersInSet:v9];

      if ([v10 length])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v10 && [v10 length] >= 0x65)
    {
      [v10 substringToIndex:{objc_msgSend(v10, "rangeOfComposedCharacterSequenceAtIndex:", 100)}];
      v10 = v3 = v10;
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
LABEL_13:
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_1B1EFE9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFExclusivelyForTestingGetResidentCoreGlyphsCatalogs()
{
  os_unfair_lock_lock(&WFImageResidentCoreGlyphsCatalogsLock);
  v0 = WFImageLockedResidentCoreGlyphsCatalogs;
  os_unfair_lock_unlock(&WFImageResidentCoreGlyphsCatalogsLock);

  return v0;
}

uint64_t VCPerformOnFirstUnlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int VCPerformOnFirstUnlock(dispatch_queue_t  _Nonnull __strong, void (^ _Nonnull __strong)(void))"}];
    [v8 handleFailureInFunction:v9 file:@"VCUtilities.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int VCPerformOnFirstUnlock(dispatch_queue_t  _Nonnull __strong, void (^ _Nonnull __strong)(void))"}];
    [v10 handleFailureInFunction:v11 file:@"VCUtilities.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    goto LABEL_3;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  out_token = -1;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __VCPerformOnFirstUnlock_block_invoke;
  handler[3] = &unk_1E7B02380;
  v13 = v4;
  v5 = v4;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v3, handler);
  v6 = out_token;

  return v6;
}

uint64_t __VCPerformOnFirstUnlock_block_invoke(uint64_t a1, int token)
{
  notify_cancel(token);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

id VCInactiveAppsFromList(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = MEMORY[0x1E6963608];
          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v8 defaultWorkspace];
          v11 = [v10 applicationIsInstalled:v9];

          if ((v11 & 1) == 0)
          {
            [v2 addObject:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

id WFApertureStatusViewControllerIdentityFromRunningContext(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 stringByAppendingString:@".WFApertureStatusViewController"];

  return v2;
}

id getWFStringContentItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFStringContentItemClass_softClass_18983;
  v7 = getWFStringContentItemClass_softClass_18983;
  if (!getWFStringContentItemClass_softClass_18983)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWFStringContentItemClass_block_invoke_18984;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getWFStringContentItemClass_block_invoke_18984(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1F0510C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFStringContentItemClass_block_invoke_18984(uint64_t a1)
{
  ContentKitLibrary_18985();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFStringContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFStringContentItemClass_softClass_18983 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFStringContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:55 description:{@"Unable to find class %s", "WFStringContentItem"}];

    __break(1u);
  }
}

void ContentKitLibrary_18985()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary_18996)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContentKitLibraryCore_block_invoke_18997;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B024F0;
    v6 = 0;
    ContentKitLibraryCore_frameworkLibrary_18996 = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary_18996)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContentKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:52 description:{@"%s", v4[0]}];

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

uint64_t __ContentKitLibraryCore_block_invoke_18997(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary_18996 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1F05830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getWFContentItemClass_block_invoke_19009(uint64_t a1)
{
  ContentKitLibrary_18985();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentItemClass_softClass_19008 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:53 description:{@"Unable to find class %s", "WFContentItem"}];

    __break(1u);
  }
}

id getWFCoercionRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFCoercionRequestClass_softClass;
  v7 = getWFCoercionRequestClass_softClass;
  if (!getWFCoercionRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWFCoercionRequestClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getWFCoercionRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1F05E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F06360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *UIKitLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_19021)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke_19022;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B024D8;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary_19021 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_19021;
  if (!UIKitLibraryCore_frameworkLibrary_19021)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFOnScreenContentExtractor.m" lineNumber:34 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke_19022(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_19021 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getWFCoercionRequestClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_18985();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFCoercionRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFCoercionRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFCoercionRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:54 description:{@"Unable to find class %s", "WFCoercionRequest"}];

    __break(1u);
  }
}

void __getUIApplicationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIApplication");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIApplicationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:35 description:{@"Unable to find class %s", "UIApplication"}];

    __break(1u);
  }
}

void __getUIWindowSceneClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIWindowScene");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIWindowSceneClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIWindowSceneClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentExtractor.m" lineNumber:36 description:{@"Unable to find class %s", "UIWindowScene"}];

    __break(1u);
  }
}

void sub_1B1F09800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPopContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_19507();
  result = dlsym(v2, "UIGraphicsPopContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPopContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *UIKitLibrary_19507()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_19517)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke_19518;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B02548;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary_19517 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_19517;
  if (!UIKitLibraryCore_frameworkLibrary_19517)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFBitmapContext.m" lineNumber:21 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke_19518(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_19517 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1F09B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPushContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_19507();
  result = dlsym(v2, "UIGraphicsPushContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPushContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double WFEffectiveScaleForScale(double result)
{
  if (result <= 0.0)
  {
    v1 = +[WFDevice currentDevice];
    [v1 screenScale];
    v3 = v2;

    return v3;
  }

  return result;
}

uint64_t __WFCreateBitmapContext_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) != 1 || *(a2 + 13) != 1)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a3 + 56) = v3;
  }

  v4 = *(a3 + 44) - 2;
  if (v4 > 2)
  {
    return 1;
  }

  result = 0;
  *(a3 + 44) = dword_1B1F36A28[v4];
  *(a3 + 64) = 0;
  return result;
}

void sub_1B1F0A2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsGetCurrentContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_19507();
  result = dlsym(v2, "UIGraphicsGetCurrentContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetCurrentContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *WFDescriptionForDatabaseObjectType(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B025D8[a1];
  }
}

__CFString *WFDescribeWorkflowOutputBehavior(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B02640[a1];
  }
}

void sub_1B1F0E00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke_20387(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_20396)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __BiomeLibraryLibraryCore_block_invoke_20397;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B026D0;
    v8 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary_20396 = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary_20396;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_20396)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFToggleAlarmContextualAction.m" lineNumber:18 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(a1[4] + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr_20386 = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke_20397(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary_20396 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1F116DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20936(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1F119A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F11C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F11ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F121C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F124A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F12944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F12CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F12F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F1313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F13694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1F13BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F13FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F144AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B1F15108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFGallerySessionManagerClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFGallerySessionManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFGallerySessionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFGallerySessionManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:42 description:{@"Unable to find class %s", "WFGallerySessionManager"}];

    __break(1u);
  }
}

void __getWFInterchangeURLRequestClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFInterchangeURLRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFInterchangeURLRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFInterchangeURLRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:41 description:{@"Unable to find class %s", "WFInterchangeURLRequest"}];

    __break(1u);
  }
}

void sub_1B1F15730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFSharedShortcutClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFSharedShortcut");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFSharedShortcutClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFSharedShortcutClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:44 description:{@"Unable to find class %s", "WFSharedShortcut"}];

    __break(1u);
  }
}

void __getWFGalleryWorkflowClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFGalleryWorkflow");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFGalleryWorkflowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFGalleryWorkflowClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:43 description:{@"Unable to find class %s", "WFGalleryWorkflow"}];

    __break(1u);
  }
}

void WorkflowKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __WorkflowKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B02C80;
    v6 = 0;
    WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WorkflowKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutClient.m" lineNumber:39 description:{@"%s", v4[0]}];

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

uint64_t __WorkflowKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void VCVoiceShortcutDataDidUpdateNotificationHandler(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 isEqualToString:@"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification"];
  v5 = getWFVoiceShortcutClientLogObject();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "VCVoiceShortcutDataDidUpdateNotificationHandler";
      v12 = 2112;
      v13 = @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification";
      _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_DEBUG, "%s Received notification: (%@)", &v10, 0x16u);
    }

    v7 = MEMORY[0x1E696AD88];
    v8 = a2;
    v6 = [v7 defaultCenter];
    [v6 postNotificationName:@"VCVoiceShortcutClientDataDidUpdateNotification" object:v8];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "VCVoiceShortcutDataDidUpdateNotificationHandler";
    v12 = 2112;
    v13 = @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification";
    _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_ERROR, "%s Cannot handle unrecognized notification: (%@)", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B1F17F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

__CFString *WFDescribeFinderImageResizeSize(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Small";
  }

  else
  {
    return off_1E7B02CC0[a1];
  }
}

id WFLocalizedDescribeFinderImageResizeSize(unint64_t a1)
{
  if (a1 <= 3)
  {
    a1 = WFLocalizedString(off_1E7B02CD8[a1]);
  }

  return a1;
}

uint64_t WFFinderImageResizeSizeFromDescription(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Small"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Medium"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Large"])
  {
    v2 = 1;
  }

  else
  {
    [v1 isEqualToString:@"Original"];
    v2 = 0;
  }

  return v2;
}

__CFString *WFDescribeFinderImageResizeFormat(uint64_t a1)
{
  v1 = @"JPEG";
  if (a1 == 1)
  {
    v1 = @"PNG";
  }

  if (a1 == 2)
  {
    return @"HEIF";
  }

  else
  {
    return v1;
  }
}

uint64_t WFFinderImageResizeFormatFromDescription(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"JPEG"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"PNG"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"HEIF"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
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

void operator new()
{
    ;
  }
}