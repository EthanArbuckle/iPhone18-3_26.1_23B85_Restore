void sub_26B794304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B795978(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x26B795918);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B797230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B7979A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Block_object_dispose((v39 - 160), 8);
  _Unwind_Resume(a1);
}

void sendSpotlightEmbeddingAnalyticsEvent(int a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.Spotlight"])
  {
    v5 = 0;
  }

  else if ([v4 hasPrefix:@"com.apple.omniSearch"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"com.apple.email"))
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"com.apple.mobileslideshow"])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 isEqual:@"com.apple.spotlightknowledged"];
  }

  if (!arc4random_uniform(0x2710u))
  {
    AnalyticsSendEventLazy();
  }

  v6 = isAppleInternalInstall();
  if (a1 == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((v5 & v7) == 1)
  {
    v8 = +[SPEmbeddingTailspinDumper sharedInstance];
    [v8 dump];
  }
}

Class __getVCPMediaAnalyzerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaAnalysisLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279D01BD8;
    v7 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (MediaAnalysisLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("VCPMediaAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVCPMediaAnalyzerClass_block_invoke_cold_1();
  }

  getVCPMediaAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id __sendSpotlightEmbeddingAnalyticsEvent_block_invoke(unsigned int *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"errorCode";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[8]];
  v9[0] = v2;
  v8[1] = @"caller";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[9]];
  v9[1] = v3;
  v8[2] = @"client";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[10]];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}