id RCCloudRecordingsStoreURL()
{
  if (RCCloudRecordingsStoreURL_onceToken != -1)
  {
    RCCloudRecordingsStoreURL_cold_1();
  }

  v1 = RCCloudRecordingsStoreURL_storeURL;

  return v1;
}

id RCRecordingsDirectoryURL()
{
  if (RCRecordingsDirectoryURL_onceToken != -1)
  {
    RCRecordingsDirectoryURL_cold_1();
  }

  v1 = RCRecordingsDirectoryURL_recordingsDirectory;

  return v1;
}

void __RCCloudRecordingsStoreURL_block_invoke()
{
  v2 = RCRecordingsDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"CloudRecordings.db"];
  v1 = RCCloudRecordingsStoreURL_storeURL;
  RCCloudRecordingsStoreURL_storeURL = v0;
}

void __RCRecordingsDirectoryURL_block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.VoiceMemos.shared"];

  v2 = [v1 URLByAppendingPathComponent:@"Recordings"];

  v3 = RCRecordingsDirectoryURL_recordingsDirectory;
  RCRecordingsDirectoryURL_recordingsDirectory = v2;
}

id OSLogForCategory(void *a1)
{
  v1 = a1;
  if (OSLogForCategory_onceToken != -1)
  {
    OSLogForCategory_cold_1();
  }

  v2 = [OSLogForCategory_gOSLogDictionary objectForKey:v1];
  if (!v2)
  {
    if ([OSLogForCategory_gOSLogDictionary count] > 0xA)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        v2 = MEMORY[0x277D86220];
        v7 = MEMORY[0x277D86220];
        goto LABEL_13;
      }

      v9 = 0;
      v4 = MEMORY[0x277D86220];
      v5 = "ERROR | Too many categories defined, use default";
      v6 = &v9;
    }

    else
    {
      v3 = os_log_create("com.apple.VoiceMemos", [v1 UTF8String]);
      if (v3)
      {
        v2 = v3;
        [OSLogForCategory_gOSLogDictionary setObject:v3 forKey:v1];
        goto LABEL_13;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v4 = MEMORY[0x277D86220];
      v5 = "ERROR | Failed os_log_create, use default";
      v6 = buf;
    }

    _os_log_impl(&dword_272442000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    goto LABEL_12;
  }

LABEL_13:

  return v2;
}

uint64_t __OSLogForCategory_block_invoke()
{
  OSLogForCategory_gOSLogDictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];

  return MEMORY[0x2821F96F8]();
}

uint64_t RCOverdubRecordingIsEnabled()
{
  if (RCOverdubRecordingIsEnabled_onceToken != -1)
  {
    RCOverdubRecordingIsEnabled_cold_1();
  }

  return RCOverdubRecordingIsEnabled_enabled;
}

void __RCOverdubRecordingIsEnabled_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 1214880059;
  v12 = xmmword_272492598;
  v11 = 426359977;
  v10 = xmmword_2724925AC;
  v9 = -1354433901;
  v8 = xmmword_2724925C0;
  v7 = 1021543808;
  v6 = xmmword_2724925D4;
  v5 = 1459208360;
  v4 = xmmword_2724925E8;
  v3 = -1379821877;
  v2 = xmmword_2724925FC;
  if (MGIsDeviceOneOfType())
  {
    RCOverdubRecordingIsEnabled_enabled = 1;
  }

  else
  {
    v0 = [RCAppGroupStorage sharedInstance:&v10];
    RCOverdubRecordingIsEnabled_enabled = [v0 enableOverdubForAllDevices];
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t RCIsInternalInstall()
{
  if (RCIsInternalInstall_onceToken != -1)
  {
    RCIsInternalInstall_cold_1();
  }

  return RCIsInternalInstall_isInternalInstall;
}

uint64_t __RCIsInternalInstall_block_invoke()
{
  result = os_variant_has_internal_ui();
  RCIsInternalInstall_isInternalInstall = result;
  return result;
}

id RCObserveChangesToKeyPath(void *a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  v25[0] = a2;
  v6 = MEMORY[0x277CBEA60];
  v7 = a2;
  v8 = a1;
  v9 = [v6 arrayWithObjects:v25 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __RCObserveChangesToKeyPath_block_invoke;
  v16[3] = &unk_279E44EF8;
  v17 = v5;
  v18 = &v19;
  v10 = v5;
  v11 = RCObserveChangesToKeyPaths(v8, v9, 3, v16);

  v12 = v20[5];
  v20[5] = v11;

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id RCObserveChangesToKeyPaths(void *a1, void *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setObject:v7];
  v11 = [v8 copy];
  [v10 setKeyPaths:v11];

  [v10 setObserver:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v7 addObserver:v10 forKeyPath:*(*(&v19 + 1) + 8 * i) options:a3 context:{&__keyPathObserverContext, v19}];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2743CA3B0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2724458F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

id RCLocalizedPlaybackTimeWithMinimumAndHiddenComponents(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = (floor(a5) / 60.0);
  v9 = 2;
  if (v8)
  {
    v9 = 3;
  }

  if (v8 >= 0x3C)
  {
    v9 = 4;
  }

  if (v9 <= a1)
  {
    v9 = a1;
  }

  if (v9 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  v11 = +[RCDurationFormatter sharedFormatter];
  v12 = [v11 stringFromDuration:a2 hideComponentOptions:8 - 2 * v10 style:a3 shouldPadMinute:{fmax(a4, 0.0)}];

  return v12;
}

id RCLocalizedPlaybackTime(int a1, uint64_t a2, double a3, double a4)
{
  v5 = 3;
  if (a3 < 60.0)
  {
    v5 = 1;
  }

  if (a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return RCLocalizedPlaybackTimeWithMinimumAndHiddenComponents(3uLL, v6, a2, a3, a4);
}

void sub_272445D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __copy_constructor_8_8_s0_s8_s16_s24(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  result = a2[3];
  a1[3] = result;
  return result;
}

void __destructor_8_s0_s8_s16_s24(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_27244629C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272446594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_27244670C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t RCTranscriptionFeatureFlagIsEnabled()
{
  if (RCTranscriptionFeatureFlagIsEnabled_onceToken != -1)
  {
    RCTranscriptionFeatureFlagIsEnabled_cold_1();
  }

  return RCTranscriptionFeatureFlagIsEnabled_transcriptionEnabled;
}

uint64_t __RCTranscriptionFeatureFlagIsEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  RCTranscriptionFeatureFlagIsEnabled_transcriptionEnabled = result;
  return result;
}

id RCLocalizedDurationWithHiddenComponents(int a1, uint64_t a2, double a3)
{
  v5 = 3;
  if ((a3 / 3600.0))
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  if (a3 < 60.0)
  {
    v5 = 1;
  }

  if (a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = +[RCDurationFormatter sharedFormatter];
  v9 = [v8 stringFromDuration:v7 hideComponentOptions:v6 style:a2 shouldPadMinute:a3];

  return v9;
}

id SharedFlagsBitwiseAndCompoundPredicate(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil && bitwiseAnd:with:(%K, %@) == %@", @"sharedFlags", @"sharedFlags", v1, v1];

  return v2;
}

double RCTestSlowMessageServiceSleepAmount()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return *&_RCTestSlowMessageServiceSleepAmount;
}

void __RCObserveChangesToKeyPath_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  (*(*(a1 + 32) + 16))();
  if (*a5 == 1)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void *getChange(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  v3 = [MEMORY[0x277CBEB68] null];
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

void _accessActiveCaptureCompositionAVURLs(void *a1)
{
  v1 = a1;
  if (_accessActiveCaptureCompositionAVURLs_onceToken != -1)
  {
    _accessActiveCaptureCompositionAVURLs_cold_1();
  }

  v2 = _accessActiveCaptureCompositionAVURLs_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___accessActiveCaptureCompositionAVURLs_block_invoke_2;
  block[3] = &unk_279E43E18;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

uint64_t ___accessActiveCaptureCompositionAVURLs_block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = _accessActiveCaptureCompositionAVURLs_compositionAVURLs;
  _accessActiveCaptureCompositionAVURLs_compositionAVURLs = v0;

  _accessActiveCaptureCompositionAVURLs_queue = dispatch_queue_create(0, 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t _checkCanAppend(RCWaveformGenerator *a1, objc_selector *a2)
{
  v3 = a1;
  if (!v3)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _checkCanAppend(RCWaveformGenerator * _Nonnull __strong, SEL _Nonnull)"}];
    [v9 handleFailureInFunction:v10 file:@"RCWaveformGenerator.mm" lineNumber:1021 description:@"invalid parameter"];
  }

  v4 = [(RCWaveformGenerator *)v3 state];
  v5 = v4;
  if (v4 == 3 || !v4)
  {
    _assertInvalidStateMessage(@"loading samples", v4, a2);
  }

  if (v5)
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

void _assertInvalidStateMessage(void *a1, unint64_t a2, const char *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a3);
    v9 = v8;
    if (a2 > 3)
    {
      v10 = @"unknown RCWaveformGeneratorState";
    }

    else
    {
      v10 = off_279E439D8[a2];
    }

    v11 = 136315906;
    v12 = "_assertInvalidStateMessage";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_error_impl(&dword_272442000, v6, OS_LOG_TYPE_ERROR, "%s -- WARNING: %@ (%@) is disallowed when generator state is '%@'  ignoring, instead of asserting.", &v11, 0x2Au);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_272449344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_27244AFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_27244B2D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    *(*(*(v2 + 48) + 8) + 24) = 0;
    objc_end_catch();
    JUMPOUT(0x27244B2A0);
  }

  _Unwind_Resume(a1);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_27244BF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = RCWaveformSegmentAccumulator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279E436E0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_27244F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_272450608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272450BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272450D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245111C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724512CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724514C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724516A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272451EB8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x272451EC4);
}

void sub_272452014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272452240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724524FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724527CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724529AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272452C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272455424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t block, uint64_t a17, void (*a18)(uint64_t a1), void *a19, id a20)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    block = MEMORY[0x277D85DD0];
    a17 = 3221225472;
    a18 = __130__RCSavedRecordingsModel__importImportableRecordingWithAudioAsset_name_date_uniqueID_presetName_outputFileType_completionHandler___block_invoke_108;
    a19 = &unk_279E43E18;
    a20 = v20;
    dispatch_async(MEMORY[0x277D85CD0], &block);

    objc_end_catch();
    JUMPOUT(0x2724553A8);
  }

  _Unwind_Resume(a1);
}

void sub_272455EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724564CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724567C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724582C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_27245972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_272459C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272459FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245A290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245A578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245A860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245AB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245AD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245AF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27245B294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_27245B518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __isUniqueMusicMemo_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) recordingsWithUniqueID:*(a1 + 40)];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v8 + 1) + 8 * i) musicMemo] & 1) == 0)
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __removeSharingKeysPredicate_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

BOOL RCShouldSendAnalyticsEventForKey(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:v1];

  v4 = [MEMORY[0x277CBEAA8] date];
  if (!v3)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setObject:v4 forKey:v1];
    goto LABEL_5;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v3 sinceDate:86400.0];
  v6 = [v4 compare:v5];
  v7 = v6 == 1;
  if (v6 == 1)
  {
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v8 setObject:v4 forKey:v1];

LABEL_5:
    v7 = 1;
  }

  return v7;
}

void sub_27245D4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void migrateBackupExclusionFlag(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v16 = 0;
  v2 = *MEMORY[0x277CBE878];
  v15 = 0;
  v3 = [v1 getResourceValue:&v16 forKey:v2 error:&v15];
  v4 = v16;
  v5 = v15;
  if (v3 && [v4 BOOLValue])
  {
    v6 = *MEMORY[0x277CBECB0];
    v14 = v5;
    v7 = [v1 setResourceValue:MEMORY[0x277CBEC28] forKey:v2 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      v9 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "migrateBackupExclusionFlag";
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_272442000, v9, OS_LOG_TYPE_DEFAULT, "%s -- ERROR clearing old exclusion flag: %@", buf, 0x16u);
      }
    }

    v13 = v8;
    v10 = [v1 setResourceValue:MEMORY[0x277CBEC38] forKey:v6 error:&v13];
    v5 = v13;

    if ((v10 & 1) == 0)
    {
      v11 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "migrateBackupExclusionFlag";
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_272442000, v11, OS_LOG_TYPE_DEFAULT, "%s -- ERROR setting new exclusion flag: %@", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __RCMusicMemosKeys_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"musicMemoStarRating", @"musicMemoTags", @"musicMemoTextNote", 0}];
  v1 = RCMusicMemosKeys_musicMemosKeys;
  RCMusicMemosKeys_musicMemosKeys = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id RCGetAudioConfiguration@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a1)
  {
    if (a3 ^ 1 | a2)
    {
      v6 = MEMORY[0x277CB80A8];
    }

    else
    {
      v6 = MEMORY[0x277CB80D0];
    }

    v7 = *v6;
    v8 = RCHighQualityBluetoothRecordingEnabled();
    v9 = 0;
    v10 = 12;
    if (v8)
    {
      v10 = 524300;
    }

    if (a2)
    {
      v11 = v10 | 0x20000;
    }

    else
    {
      v11 = v10;
    }

    v12 = *MEMORY[0x277CB8028];
    v13 = *MEMORY[0x277CB8028];
  }

  else
  {
    v13 = *MEMORY[0x277CB8030];
    v12 = *MEMORY[0x277CB80A8];
    v9 = 1;
    v11 = 0x10000;
    v7 = *MEMORY[0x277CB80A8];
  }

  result = v12;
  *a4 = v13;
  a4[1] = v7;
  a4[2] = v11;
  a4[3] = v9;
  return result;
}

void __destructor_8_s0_s8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_272462540(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_27246285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272463914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double RCTimeRangeByConvertingToValidRange(double a1, double a2, double a3)
{
  v3 = fabs(a2 + 1.79769313e308);
  if (fabs(a1 + -1.79769313e308) > 0.00000011920929 || v3 > 0.00000011920929)
  {
    v5 = fabs(a2 + -1.79769313e308);
    if (fabs(a1 + 1.79769313e308) > 0.00000011920929 || v5 > 0.00000011920929)
    {
      return a1;
    }
  }

  return a3;
}

double RCTimeRangeDeltaWithFractionalPrecision(uint64_t a1, double a2, double a3)
{
  v3 = a3 - a2;
  if (a1 >= 1)
  {
    v4 = __exp10(a1);
    v5 = v3 * v4;
    return roundf(v5) / v4;
  }

  return v3;
}

double RCTimeRangeConstrainTime(double result, double a2, double a3)
{
  if (a2 >= a3)
  {
    a2 = a3;
  }

  if (result < a2)
  {
    return a2;
  }

  return result;
}

double RCTimeRangeIntersectTimeRange(double result, double a2, double a3, double a4)
{
  if (result < a3)
  {
    result = a3;
  }

  if (a2 >= a4)
  {
    a2 = a4;
  }

  if (a2 < result)
  {
    return 1.79769313e308;
  }

  return result;
}

id NSStringFromRCTimeRange(double a1, double a2)
{
  v7 = 0;
  if (a2 == 1.79769313e308)
  {
    v3 = @"MAX";
  }

  else if (a2 == -1.79769313e308)
  {
    v3 = @"-MAX";
  }

  else
  {
    v3 = _RCTimeRangeTimeDescription(&v7, a2);
  }

  if (a1 == 1.79769313e308)
  {
    v4 = @"MAX";
  }

  else if (a1 == -1.79769313e308)
  {
    v4 = @"-MAX";
  }

  else
  {
    v4 = _RCTimeRangeTimeDescription(&v7, a1);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ - %@]", v4, v3];

  return v5;
}

id _RCTimeRangeTimeDescription(void *a1, double a2)
{
  v2 = a2;
  v3 = a2 - (60 * (a2 / 60));
  v4 = (v2 / 3600);
  v5 = (v2 / 60 - 60 * v4);
  if (v2 > 3599)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    if (v5 <= 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    [MEMORY[0x277CCACA8] stringWithFormat:@"%02d:%05.2f", v5, *&v3, v10];
    goto LABEL_18;
  }

  if (*a1 == 3)
  {
LABEL_6:
    *a1 = 3;
LABEL_7:
    [MEMORY[0x277CCACA8] stringWithFormat:@"%02d:%02d:%05.2f", v4, v5, *&v3];
    goto LABEL_18;
  }

  if (v5 > 0 || *a1 == 2)
  {
    *a1 = 2;
    goto LABEL_16;
  }

  *a1 = 1;
LABEL_17:
  [MEMORY[0x277CCACA8] stringWithFormat:@"%g", *&v3, v9, v10];
  v7 = LABEL_18:;

  return v7;
}

void RCTimeRangeEncodeWithKey(void *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [v7 stringByAppendingString:@".beginTime"];
  [v8 encodeDouble:v9 forKey:a3];

  v10 = [v7 stringByAppendingString:@".endTime"];

  [v8 encodeDouble:v10 forKey:a4];
}

double RCTimeRangeDecodeWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 stringByAppendingString:@".beginTime"];
  [v4 decodeDoubleForKey:v5];
  v7 = v6;

  v8 = [v3 stringByAppendingString:@".endTime"];

  [v4 decodeDoubleForKey:v8];
  return v7;
}

CMTimeRange *CMTimeRangeFromRCTimeRange@<X0>(CMTimeRange *a1@<X8>, Float64 a2@<D0>, double a3@<D1>)
{
  CMTimeMakeWithSeconds(&start, a2, kCMDefaultTimeScale);
  v6 = (a3 - a2) * 10000.0;
  CMTimeMakeWithSeconds(&v8, roundf(v6) / 10000.0, kCMDefaultTimeScale);
  return CMTimeRangeMake(a1, &start, &v8);
}

double RCTimeRangeFromCMTimeRange(uint64_t a1)
{
  v4 = *a1;
  Seconds = CMTimeGetSeconds(&v4);
  v4 = *(a1 + 24);
  CMTimeGetSeconds(&v4);
  return Seconds;
}

void sub_27246452C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __destructor_8_s0_s8_s16_s24(va);
  _Unwind_Resume(a1);
}

id _hiddenComponentStringWithString(void *a1)
{
  v1 = MEMORY[0x277CCAB68];
  v2 = a1;
  v3 = [v1 string];
  v4 = [v2 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___hiddenComponentStringWithString_block_invoke;
  v8[3] = &unk_279E44488;
  v9 = v3;
  v5 = v3;
  [v2 enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v8}];

  v6 = [v5 copy];

  return v6;
}

__CFString *NSStringFromRCDurationFormattingStyle(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"RCDurationFormattingStyle_???";
  }

  else
  {
    return off_279E444C0[a1];
  }
}

id RCGenericError()
{
  v0 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:-1 userInfo:0];

  return v0;
}

id RCErrorWithTypeAndDescription(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = a2;
  v5 = [v3 alloc];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:a1 userInfo:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id RCGenericErrorWithUnderlyingError(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v7 = *MEMORY[0x277CCA7E8];
    v8[0] = v1;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:-1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id RCLocalizedRecordingDateWithOptions(void *a1, unint64_t a2)
{
  v3 = a1;
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  if ((~v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = RCLocalizedRecordingDateWithOptions___timeFormatter;
      if (!RCLocalizedRecordingDateWithOptions___timeFormatter)
      {
        v11 = objc_alloc_init(MEMORY[0x277CCA968]);
        v12 = RCLocalizedRecordingDateWithOptions___timeFormatter;
        RCLocalizedRecordingDateWithOptions___timeFormatter = v11;

        [RCLocalizedRecordingDateWithOptions___timeFormatter setDateStyle:0];
        [RCLocalizedRecordingDateWithOptions___timeFormatter setTimeStyle:1];
        v5 = RCLocalizedRecordingDateWithOptions___timeFormatter;
      }
    }

    else
    {
      if ((v4 & 2) == 0)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString * _Nonnull RCLocalizedRecordingDateWithOptions(NSDate *__strong _Nonnull, RCDateFormatOptions)"}];
        [v8 handleFailureInFunction:v9 file:@"RCUtilities.m" lineNumber:170 description:@"must supply either time or day"];

        v10 = 0;
        goto LABEL_15;
      }

      v5 = RCLocalizedRecordingDateWithOptions___dateFormatter;
      if (!RCLocalizedRecordingDateWithOptions___dateFormatter)
      {
        v13 = objc_alloc_init(MEMORY[0x277CCA968]);
        v14 = RCLocalizedRecordingDateWithOptions___dateFormatter;
        RCLocalizedRecordingDateWithOptions___dateFormatter = v13;

        [RCLocalizedRecordingDateWithOptions___dateFormatter setDateStyle:1];
        [RCLocalizedRecordingDateWithOptions___dateFormatter setTimeStyle:0];
        v5 = RCLocalizedRecordingDateWithOptions___dateFormatter;
      }
    }
  }

  else
  {
    v5 = RCLocalizedRecordingDateWithOptions___dateAndTimeFormatter;
    if (!RCLocalizedRecordingDateWithOptions___dateAndTimeFormatter)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCA968]);
      v7 = RCLocalizedRecordingDateWithOptions___dateAndTimeFormatter;
      RCLocalizedRecordingDateWithOptions___dateAndTimeFormatter = v6;

      [RCLocalizedRecordingDateWithOptions___dateAndTimeFormatter setDateStyle:1];
      [RCLocalizedRecordingDateWithOptions___dateAndTimeFormatter setTimeStyle:1];
      v5 = RCLocalizedRecordingDateWithOptions___dateAndTimeFormatter;
    }
  }

  v8 = [v5 stringFromDate:v3];
  v10 = RCDisplayStringForString(v8);
LABEL_15:

  return v10;
}

id RCLocalizedInteger(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    if (__locStringInt2W_onceToken != -1)
    {
      RCLocalizedInteger_cold_1();
    }

    v4 = __locStringInt2W_paddedNumberFormatter;
    goto LABEL_9;
  }

  if (a2 == 1)
  {
    if (__locStringInt1W_onceToken != -1)
    {
      RCLocalizedInteger_cold_2();
    }

    v4 = __locStringInt1W_paddedNumberFormatter;
LABEL_9:
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v6 = [v4 stringFromNumber:v5];
    goto LABEL_13;
  }

  v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v5 = v7;
  if (a2 >= 1)
  {
    [v7 setMinimumIntegerDigits:a2];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v6 = [v5 stringFromNumber:v8];

LABEL_13:

  return v6;
}

id RCLocalizedFrameworkString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.VoiceMemos.framework"];
  v4 = [v3 localizedStringForKey:v2 value:0 table:0];

  return v4;
}

uint64_t RCNumberOfDigitsInInteger(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v1];
  v3 = [v2 length];

  return v3;
}

uint64_t RCAvailableDiskSpaceForRecording()
{
  v13 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v3 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      RCAvailableDiskSpaceForRecording_cold_2();
    }

    goto LABEL_11;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, *MEMORY[0x277D82398]);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
  }

  else
  {
    v4 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      RCAvailableDiskSpaceForRecording_cold_1();
    }
  }

  CFRelease(v1);
  v5 = valuePtr;
  if (!valuePtr)
  {
LABEL_11:
    memset(&v12, 0, 512);
    v6 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media"];
    v7 = statfs([v6 fileSystemRepresentation], &v12);

    if (v7)
    {
      v8 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        RCAvailableDiskSpaceForRecording_cold_3();
      }

      v5 = valuePtr;
    }

    else
    {
      v5 = v12.f_bavail * v12.f_bsize;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return fmax((v5 / 2) + -5242880.0, 0.0);
}

BOOL RCHasEnoughDiskSpaceToRecord()
{
  v0 = RCAvailableDiskSpaceForRecording();
  if (v0 < 5242880)
  {
    v1 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      RCHasEnoughDiskSpaceToRecord_cold_1();
    }
  }

  return v0 >= 5242880;
}

id RCDiskCacheDirectory()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 lastObject];
  v2 = [v1 stringByAppendingPathComponent:@"com.apple.voicememos"];

  return v2;
}

id RCApplicationSupportDirectory()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v1 = [v0 lastObject];
  v2 = [v1 stringByAppendingPathComponent:@"com.apple.voicememos"];

  return v2;
}

uint64_t RCIsVoiceMemosApplication()
{
  v0 = [MEMORY[0x277D46F48] currentProcess];
  v1 = [v0 isApplication];

  return v1;
}

uint64_t RCIsVoiceMemosApplicationInstalled()
{
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v1 = [v0 applicationIsInstalled:@"com.apple.VoiceMemos"];

  return v1;
}

id RCLegacyRecordingsDirectoryURL()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = MEMORY[0x277CCACA8];
  v7[0] = CPSharedResourcesDirectory();
  v7[1] = @"Library";
  v7[2] = @"Recordings";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v3 = [v1 pathWithComponents:v2];
  v4 = [v0 fileURLWithPath:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id RCLibraryRecordingsDirectoryURL()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = MEMORY[0x277CCACA8];
  v7[0] = CPSharedResourcesDirectory();
  v7[1] = @"Media";
  v7[2] = @"Recordings";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v3 = [v1 pathWithComponents:v2];
  v4 = [v0 fileURLWithPath:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id RCStockRecordingsURL()
{
  v0 = RCRecordingsDirectoryURL();
  v1 = [v0 URLByDeletingLastPathComponent];
  v2 = [v1 URLByAppendingPathComponent:@"StockRecordings"];

  return v2;
}

id RCLogsDirectoryURL()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = MEMORY[0x277CCACA8];
  v7[0] = CPSharedResourcesDirectory();
  v7[1] = @"Library";
  v7[2] = @"Logs";
  v7[3] = @"com.apple.voicememos";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v1 pathWithComponents:v2];
  v4 = [v0 fileURLWithPath:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void RCDispatchNoSoonerThan(void *a1, void *a2, void *a3)
{
  queue = a2;
  v5 = a3;
  [a1 timeIntervalSinceReferenceDate];
  v7 = v6;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v7 - v8;
  if (v9 <= 0.0)
  {
    dispatch_async(queue, v5);
  }

  else
  {
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    dispatch_after(v10, queue, v5);
  }
}

void RCLaunchApp()
{
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openApplicationWithBundleIdentifier:@"com.apple.VoiceMemos" usingConfiguration:0 completionHandler:0];
}

id RCComputeFileDigest(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  if (v6 && v6[2](v6, v5, v7))
  {
    v8 = v7;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x8810000000;
    v17 = "";
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v5 options:1 error:a2];
    if (v9)
    {
      CC_SHA256_Init((v15 + 4));
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __RCComputeFileDigest_block_invoke;
      v13[3] = &unk_279E44528;
      v13[4] = &v14;
      [v9 enumerateByteRangesUsingBlock:v13];
      v10 = [v7 mutableBytes];
      CC_SHA256_Final(v10, (v15 + 4));
      v8 = v7;
    }

    else
    {
      v11 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        RCComputeFileDigest_cold_1();
      }

      v8 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v8;
}

void sub_27246617C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id RCComputeAudioFileDigest(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v34 = *MEMORY[0x277D85DE8];
  v4 = open([v1 fileSystemRepresentation], 0);
  if (v4 == -1)
  {
    v6 = *__error();
    if (v6)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
  }

  v5 = v4;
  v28 = 0;
  memset(&v27, 0, sizeof(v27));
  if (fstat(v4, &v27))
  {
LABEL_3:
    v6 = *__error();
    goto LABEL_45;
  }

  st_size = v27.st_size;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  if (st_size < 1)
  {
    goto LABEL_44;
  }

  v10 = 0;
  *&v9 = 136315394;
  v24 = v9;
  while (1)
  {
    v11 = read(v5, &v28, 8uLL);
    if (v11 != 8)
    {
      break;
    }

    v12 = HIDWORD(v28);
    v13 = bswap32(v28);
    v14 = bswap32(HIDWORD(v28));
    v28 = __PAIR64__(v14, v13);
    if (!v10 && v12 != 1887007846)
    {
      v6 = 5;
      goto LABEL_45;
    }

    v25 = 0;
    if (v13 == 1)
    {
      if (read(v5, &v25, 8uLL) != 8)
      {
        goto LABEL_3;
      }

      v13 = bswap64(v25);
      v25 = v13;
      v6 = 5;
      if (v13 < 9 || v13 >= st_size)
      {
        goto LABEL_45;
      }

      v15 = v13 - 16;
      v14 = HIDWORD(v28);
    }

    else
    {
      if (!v13)
      {
        v13 = st_size - v10;
      }

      v25 = v13;
      v15 = v13 - 8;
    }

    v10 += v13;
    if (v14 > 1836019573)
    {
      if (v14 > 1936419183)
      {
        if (v14 != 1936419184)
        {
          v16 = 2003395685;
          goto LABEL_36;
        }
      }

      else if (v14 != 1836019574)
      {
        v16 = 1886285684;
LABEL_36:
        if (v14 != v16)
        {
LABEL_37:
          v19 = OSLogForCategory(@"VoiceMemosSyncClient");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v30 = "_mdatAudioDigest";
            v31 = 1024;
            v32 = HIDWORD(v28);
            _os_log_error_impl(&dword_272442000, v19, OS_LOG_TYPE_ERROR, "%s -- Unknown atom type = 0x%08X", buf, 0x12u);
          }
        }
      }

LABEL_40:
      if (lseek(v5, v10, 0) != v10)
      {
        goto LABEL_3;
      }

      goto LABEL_41;
    }

    if (v14 == 1718773093 || v14 == 1718909296)
    {
      goto LABEL_40;
    }

    if (v14 != 1835295092)
    {
      goto LABEL_37;
    }

    if (v15 >= 1)
    {
      do
      {
        v17 = v15 >= 0x2000 ? 0x2000 : v15;
        if (read(v5, data, v17) != v17)
        {
          goto LABEL_3;
        }

        CC_SHA256_Update(&c, data, v17);
        v18 = v15 <= v17;
        v15 -= v17;
      }

      while (!v18);
    }

LABEL_41:
    if (v10 >= st_size)
    {
      goto LABEL_44;
    }
  }

  if (v11)
  {
    goto LABEL_3;
  }

LABEL_44:
  CC_SHA256_Final(buf, &c);
  v6 = 0;
LABEL_45:
  close(v5);
  if (!v6)
  {
LABEL_5:
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:{32, v24}];
    goto LABEL_49;
  }

LABEL_46:
  if (v3)
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v6 userInfo:0];
    v21 = v20;
    v7 = 0;
    *v3 = v20;
  }

  else
  {
    v7 = 0;
  }

LABEL_49:
  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t RCDebugAssertsDisabled()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"RCDebugAssertsDisabled"];

  return v1;
}

uint64_t RCShouldAssertWarnings()
{
  result = RCIsInternalInstall();
  if (result)
  {
    return RCDebugAssertsDisabled() ^ 1;
  }

  return result;
}

double RCTestSlowMessageExportSeconds()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return *&_RCTestSlowMessageExportSeconds;
}

uint64_t RCTestResetSyncs()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return _RCTestResetSyncs;
}

uint64_t RCTestResetSyncsAlwaysResetSync()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return _RCTestResetSyncsAlwaysResetSync;
}

double RCTestBeginPreviewDelay()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return *&_RCTestBeginPreviewDelay;
}

uint64_t RCTestAutoSelectedRecordingIndex()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return _RCTestAutoSelectedRecordingIndex;
}

double RCTestResetNavigationStateThresholdSeconds()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return *&_RCTestResetNavigationStateThresholdSeconds;
}

uint64_t RCTestDebugAutolayout_Show()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return _RCTestDebugAutolayout_Show;
}

uint64_t RCTestDebugAutolayout_Logging()
{
  if (_RCUserDefaultLoadAllTestValues_onceToken != -1)
  {
    RCTestSlowMessageServiceSleepAmount_cold_1();
  }

  return _RCTestDebugAutolayout_Logging;
}

uint64_t RCSupportsDebugAODLogs()
{
  result = RCIsInternalInstall();
  if (result)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"RCDebugAODLogs"];

    return v2;
  }

  return result;
}

uint64_t RCRunningInSavedRecordingDaemon()
{
  if (RCRunningInSavedRecordingDaemon_onceToken != -1)
  {
    RCRunningInSavedRecordingDaemon_cold_1();
  }

  return RCRunningInSavedRecordingDaemon_runningInDaemon;
}

Class __RCRunningInSavedRecordingDaemon_block_invoke()
{
  result = NSClassFromString(&cfstr_Savedrecording_0.isa);
  RCRunningInSavedRecordingDaemon_runningInDaemon = result != 0;
  return result;
}

void RCRegisterForFirstUnlockSinceBootCallback(void *a1)
{
  v1 = a1;
  out_token = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __RCRegisterForFirstUnlockSinceBootCallback_block_invoke;
  v3[3] = &unk_279E44550;
  v4 = v1;
  v2 = v1;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, MEMORY[0x277D85CD0], v3);
}

uint64_t __RCRegisterForFirstUnlockSinceBootCallback_block_invoke(uint64_t a1, int a2)
{
  (*(*(a1 + 32) + 16))();

  return notify_cancel(a2);
}

void RCDebugNotification(const char *a1, void *a2)
{
  v3 = a2;
  out_token = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __RCDebugNotification_block_invoke;
  v5[3] = &unk_279E44550;
  v6 = v3;
  v4 = v3;
  notify_register_dispatch(a1, &out_token, MEMORY[0x277D85CD0], v5);
}

uint64_t isNotNullAndNotNSNull(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x277CBEB68];
  v2 = a1;
  v3 = [v1 null];
  LODWORD(v1) = [v3 isEqual:v2];

  v4 = v1 ^ 1;
  return v4;
}

uint64_t RCUseDevelopmentContainer()
{
  if (RCUseDevelopmentContainer_onceToken != -1)
  {
    RCUseDevelopmentContainer_cold_1();
  }

  return RCUseDevelopmentContainer_developmentContainerEnabled;
}

void __RCUseDevelopmentContainer_block_invoke()
{
  if (RCIsInternalInstall())
  {
    v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    RCUseDevelopmentContainer_developmentContainerEnabled = [v0 BOOLForKey:@"RCUseDevelopmentContainer"];
  }

  else
  {
    RCUseDevelopmentContainer_developmentContainerEnabled = 0;
  }
}

id RCNonUserGeneratedDeviceName()
{
  v0 = MGCopyAnswer();

  return v0;
}

id RCOperatingSystemVersionString()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 operatingSystemVersionString];

  return v1;
}

id RCSupportDirectoryForDatabase(void *a1)
{
  v1 = a1;
  v2 = [v1 lastPathComponent];
  v3 = [v2 stringByDeletingPathExtension];
  v4 = [v1 URLByDeletingLastPathComponent];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@".%@_SUPPORT", v3];
  v6 = [v4 URLByAppendingPathComponent:v5];

  return v6;
}

uint64_t RCIsFileNotFoundError(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v4 code] == 4)
      {
        found = 1;
LABEL_13:

        goto LABEL_14;
      }

      v11 = [v4 code];

      if (v11 == 260)
      {
        found = 1;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v7 = [v4 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CCA5B8]])
    {
      v8 = [v4 code] == 2;
    }

    else
    {
      v8 = 0;
    }

    found = a2 | v8;
    if (a2 && !v8)
    {
      v5 = [v4 userInfo];
      v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      found = RCIsFileNotFoundError(v9, 1);

      goto LABEL_13;
    }
  }

  else
  {
    found = 0;
  }

LABEL_14:

  return found & 1;
}

double VMAudioWriteDelay()
{
  if (VMAudioWriteDelay_onceToken != -1)
  {
    VMAudioWriteDelay_cold_1();
  }

  return *&VMAudioWriteDelay_writeDelay;
}

uint64_t __VMAudioWriteDelay_block_invoke()
{
  result = MGGetBoolAnswer();
  v1 = 0.0;
  if (result)
  {
    v1 = 0.75;
  }

  VMAudioWriteDelay_writeDelay = *&v1;
  return result;
}

uint64_t RCStereoRecordingIsAvailable()
{
  if (RCStereoRecordingIsAvailable_onceToken != -1)
  {
    RCStereoRecordingIsAvailable_cold_1();
  }

  return RCStereoRecordingIsAvailable_stereoRecordingAvailable;
}

uint64_t __RCStereoRecordingIsAvailable_block_invoke()
{
  result = MGGetBoolAnswer();
  RCStereoRecordingIsAvailable_stereoRecordingAvailable = result;
  return result;
}

uint64_t RCTranscribeAllAudioTracks()
{
  if (RCTranscribeAllAudioTracks_onceToken != -1)
  {
    RCTranscribeAllAudioTracks_cold_1();
  }

  return RCTranscribeAllAudioTracks_enabled;
}

uint64_t __RCTranscribeAllAudioTracks_block_invoke()
{
  result = _os_feature_enabled_impl();
  RCTranscribeAllAudioTracks_enabled = result;
  return result;
}

uint64_t RCCatchTranscriptionDecodingError()
{
  result = RCIsInternalInstall();
  if (result)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"RCCatchTranscriptionDecodingError"];

    return v2;
  }

  return result;
}

uint64_t RCSpatialFeatureFlagIsEnabled()
{
  if (RCSpatialFeatureFlagIsEnabled_onceToken != -1)
  {
    RCSpatialFeatureFlagIsEnabled_cold_1();
  }

  return RCSpatialFeatureFlagIsEnabled_enabled;
}

uint64_t __RCSpatialFeatureFlagIsEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  RCSpatialFeatureFlagIsEnabled_enabled = result;
  return result;
}

uint64_t RCSpatialAudioCaptureAvailable()
{
  if (RCSpatialAudioCaptureAvailable_onceToken != -1)
  {
    RCSpatialAudioCaptureAvailable_cold_1();
  }

  return RCSpatialAudioCaptureAvailable_enabled;
}

uint64_t __RCSpatialAudioCaptureAvailable_block_invoke()
{
  if (RCSpatialFeatureFlagIsEnabled_onceToken != -1)
  {
    RCSpatialFeatureFlagIsEnabled_cold_1();
  }

  if (RCSpatialFeatureFlagIsEnabled_enabled == 1)
  {
    v0 = *MEMORY[0x277CE5A00];
    result = AVGestaltGetBoolAnswer();
  }

  else
  {
    result = 0;
  }

  RCSpatialAudioCaptureAvailable_enabled = result;
  return result;
}

uint64_t RCSpatialEffectsAreAvailable()
{
  if (RCSpatialEffectsAreAvailable_onceToken != -1)
  {
    RCSpatialEffectsAreAvailable_cold_1();
  }

  return RCSpatialEffectsAreAvailable_available;
}

uint64_t __RCSpatialEffectsAreAvailable_block_invoke()
{
  if (RCSpatialFeatureFlagIsEnabled_onceToken != -1)
  {
    RCSpatialFeatureFlagIsEnabled_cold_1();
  }

  if (RCSpatialFeatureFlagIsEnabled_enabled == 1)
  {
    result = MGGetBoolAnswer();
  }

  else
  {
    result = 0;
  }

  RCSpatialEffectsAreAvailable_available = result;
  return result;
}

uint64_t RCHighQualityBluetoothRecordingEnabled()
{
  if (RCHighQualityBluetoothRecordingEnabled_onceToken != -1)
  {
    RCHighQualityBluetoothRecordingEnabled_cold_1();
  }

  return RCHighQualityBluetoothRecordingEnabled_enabled;
}

uint64_t __RCHighQualityBluetoothRecordingEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  RCHighQualityBluetoothRecordingEnabled_enabled = result;
  return result;
}

id RCCaptureDirectoryURL()
{
  if (RCCaptureDirectoryURL_onceToken != -1)
  {
    RCCaptureDirectoryURL_cold_1();
  }

  v1 = RCCaptureDirectoryURL_captureDirectoryURL;

  return v1;
}

void __RCCaptureDirectoryURL_block_invoke()
{
  v0 = RCRecordingsDirectoryURL();
  v1 = [v0 URLByAppendingPathComponent:@"Capture"];
  v2 = RCCaptureDirectoryURL_captureDirectoryURL;
  RCCaptureDirectoryURL_captureDirectoryURL = v1;

  if (RCIsVoiceMemosApplication())
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = 0;
    v4 = [v3 createDirectoryAtURL:RCCaptureDirectoryURL_captureDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v7];
    v5 = v7;

    if ((v4 & 1) == 0)
    {
      v6 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __RCCaptureDirectoryURL_block_invoke_cold_1();
      }
    }
  }
}

id RCCaptureRecoveryDirectoryURL()
{
  if (RCCaptureRecoveryDirectoryURL_onceToken != -1)
  {
    RCCaptureRecoveryDirectoryURL_cold_1();
  }

  v1 = RCCaptureRecoveryDirectoryURL_captureRecoveryDirectoryURL;

  return v1;
}

void __RCCaptureRecoveryDirectoryURL_block_invoke()
{
  v0 = RCRecordingsDirectoryURL();
  v1 = [v0 URLByAppendingPathComponent:@"CaptureRecovery"];
  v2 = RCCaptureRecoveryDirectoryURL_captureRecoveryDirectoryURL;
  RCCaptureRecoveryDirectoryURL_captureRecoveryDirectoryURL = v1;

  if ((RCIsVoiceMemosApplication() & 1) == 0)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = 0;
    v4 = [v3 createDirectoryAtURL:RCCaptureRecoveryDirectoryURL_captureRecoveryDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v7];
    v5 = v7;

    if ((v4 & 1) == 0)
    {
      v6 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __RCCaptureRecoveryDirectoryURL_block_invoke_cold_1();
      }
    }
  }
}

uint64_t ____locStringInt1W_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = __locStringInt1W_paddedNumberFormatter;
  __locStringInt1W_paddedNumberFormatter = v0;

  v2 = __locStringInt1W_paddedNumberFormatter;

  return [v2 setMinimumIntegerDigits:1];
}

uint64_t ____locStringInt2W_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = __locStringInt2W_paddedNumberFormatter;
  __locStringInt2W_paddedNumberFormatter = v0;

  v2 = __locStringInt2W_paddedNumberFormatter;

  return [v2 setMinimumIntegerDigits:2];
}

id RCDisplayStringForString(void *a1)
{
  v1 = a1;
  if (RCDisplayStringForString_onceToken != -1)
  {
    RCDisplayStringForString_cold_1();
  }

  if (RCDisplayStringForString_doubleStrings)
  {
    v2 = [v1 stringByAppendingString:v1];
    v3 = [v2 mutableCopy];

    [v3 replaceOccurrencesOfString:@"@" withString:&stru_2881A6FB8 options:0 range:{0, objc_msgSend(v3, "length")}];
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

void __RCDisplayStringForString_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  RCDisplayStringForString_doubleStrings = [v0 BOOLForKey:@"NSDoubleLocalizedStrings"];
}

void sub_272468AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id computeAudioDigest(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 fileSystemRepresentation];
  if (audioDigestAttribute_onceToken != -1)
  {
    computeAudioDigest_cold_1();
  }

  if (getxattr(v2, audioDigestAttribute__audioDigestAttribute, value, 0x20uLL, 0, 0) == 32)
  {
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:value length:32];
  }

  else
  {
    v3 = RCComputeAudioFileDigest(v1);
    if (v3)
    {
      v4 = [v1 fileSystemRepresentation];
      if (audioDigestAttribute_onceToken != -1)
      {
        [RCCloudRecording synchronizeRecordingMetadata];
      }

      setxattr(v4, audioDigestAttribute__audioDigestAttribute, [v3 bytes], 0x20uLL, 0, 0);
      v5 = v3;
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

BOOL identicalClones(void *a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v4 = !fsctl([a1 fileSystemRepresentation], 0x40104A0EuLL, &v8, 0) && !fsctl(objc_msgSend(v3, "fileSystemRepresentation"), 0x40104A0EuLL, &v6, 0) && (v8 == 2 || v6 == 2) && v9 == v7;

  return v4;
}

uint64_t isAudioFilePurgeable(void *a1)
{
  value = 0;
  v1 = [a1 fileSystemRepresentation];
  if (audioFileFlagsAttribute_onceToken != -1)
  {
    isAudioFilePurgeable_cold_1();
  }

  v2 = getxattr(v1, audioFileFlagsAttribute__audioFileFlagsAttribute, &value, 8uLL, 0, 0) == 8;
  return v2 & value;
}

char *__audioDigestAttribute_block_invoke()
{
  result = xattr_name_with_flags("com.apple.voicememos.audioDigest", 2uLL);
  audioDigestAttribute__audioDigestAttribute = result;
  return result;
}

char *__audioFileFlagsAttribute_block_invoke()
{
  result = xattr_name_with_flags("com.apple.voicememos.audioFlags", 4uLL);
  audioFileFlagsAttribute__audioFileFlagsAttribute = result;
  return result;
}

void sub_27246C164(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246C37C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_27246C470(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246C4F0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246C690(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246CB00(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246CBC4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246CE8C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246CFA8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_27246D118(_Unwind_Exception *a1)
{
  v3 = v2;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_27246D620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_27246D740(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246D86C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27246D92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_27246D9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_27246DA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_27246DB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  v11 = v10;

  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_27246DDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27246E0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __convertSampleBuffer_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 24);

  CFRelease(v4);
}

double PowerMeter::Reset(PowerMeter *this)
{
  *(&this->mMaxPeak + 6) = 0.0;
  this->mMaxPeak = 0.0;
  *&result = 0xFFFFFFFFLL;
  *&this->mPrevBlockSize = 0xFFFFFFFFLL;
  return result;
}

void PowerMeter::PowerMeter(PowerMeter *this)
{
  this->mSampleRate = 0.0;
  this->mPeakDecay = 0.006;
  this->mDecay = 0.016;
  this->mMaxPeak = 0.0;
  *(&this->mMaxPeak + 6) = 0.0;
  *&this->mPrevBlockSize = 0xFFFFFFFFLL;
}

void PowerMeter::SetSampleRate(PowerMeter *this, double a2)
{
  this->mSampleRate = a2;
  v4 = a2 * 2.5;
  v5 = 0.0;
  v6 = a2 * 2.5 < 0.00001;
  v7 = 0.0;
  if (!v6)
  {
    v7 = exp(-6.90775528 / v4);
  }

  this->mPeakDecay1 = v7;
  if (a2 * 1.24 >= 0.00001)
  {
    v5 = exp(-6.90775528 / (a2 * 1.24));
  }

  this->mDecay1 = v5;
}

void PowerMeter::Process(PowerMeter *this, float *a2, int a3, int a4)
{
  v6 = a2;
  v17 = a2;
  v15 = 0.0;
  v16 = a4;
  v8 = a4;
  if ((a2 & 0xF) == 0)
  {
    PowerMeter::ProcessVector(this, &v17, &v16, &v15);
    v8 = v16;
  }

  v9 = v15;
  if (v8 >= 1)
  {
    v10 = v8 + 1;
    do
    {
      v11 = *v6;
      if (*v6 < 0.0)
      {
        v11 = -*v6;
      }

      if (v11 > v9)
      {
        v9 = v11;
      }

      --v10;
      v6 += a3;
    }

    while (v10 > 1);
  }

  if (v9 > this->mClipping.peakValueSinceLastCall)
  {
    this->mClipping.peakValueSinceLastCall = v9;
  }

  this->mPeakHoldCount += a4;
  mMaxPeak = v9;
  if (this->mMaxPeak > mMaxPeak)
  {
    mMaxPeak = this->mMaxPeak;
  }

  v13 = fabs(mMaxPeak);
  if (v13 >= 1.0e15 || v13 <= 1.0e-15)
  {
    mMaxPeak = 0.0;
  }

  this->mMaxPeak = mMaxPeak;
}

void PowerMeter::ProcessVector(PowerMeter *this, const float **a2, int *a3, float *__C)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(__A, 0, sizeof(__A));
  v14[0] = xmmword_272492650;
  v14[1] = unk_272492660;
  v14[2] = xmmword_272492670;
  v14[3] = unk_272492680;
  v6 = *a3;
  if ((*a3 + 15) >= 0x1F)
  {
    v7 = *a2;
    if (v6 < 0)
    {
      v6 = *a3 + 15;
    }

    v8 = v6 >> 4;
    do
    {
      --v8;
      MEMORY[0x2743CA660](v7, 1, v12, 1, 4);
      vDSP_vabs(v7, 1, __Ca, 1, 4uLL);
      vDSP_vmax(__A, 1, __Ca, 1, __A, 1, 4uLL);
      MEMORY[0x2743CA640](v12, 1, v14, 1, v13, 1, v13, 1, 4);
      v7 += 16;
    }

    while (v8);
  }

  vDSP_maxv(__A, 1, __C, 0x10uLL);
  v9 = *a3 & 0xF;
  if (*a3 <= 0)
  {
    v9 = -(-*a3 & 0xF);
  }

  *a3 = v9;
  v10 = *MEMORY[0x277D85DE8];
}

void sub_272470084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272472404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_272472978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_272472EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_272473460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_272473954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272473C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272474080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724743CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272474850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2724759E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272475D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_272476520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2724769B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_27247784C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_8_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

BOOL checkAudioFormat(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1 && a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11828 userInfo:a2];
  }

  return a1 != 0;
}

uint64_t _predicateOperatorTypeForSearchOption(unsigned int a1)
{
  if (a1 < 3)
  {
    return qword_2724926C8[a1];
  }

  v2 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _predicateOperatorTypeForSearchOption_cold_1();
  }

  return 4;
}

uint64_t _predicateOptionsForSearchOption(unsigned int a1)
{
  if (a1 < 3)
  {
    return qword_2724926E0[a1];
  }

  v2 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _predicateOptionsForSearchOption_cold_1();
  }

  return 0;
}

void sub_27247AF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *RCSavedRecordingsCloudKitContainerIdentifier()
{
  if (RCUseDevelopmentContainer())
  {
    v0 = @"com.apple.VoiceMemosDevelopmentContainer";
  }

  else
  {
    v0 = @"com.apple.VoiceMemosContainer";
  }

  return v0;
}

id RCAudioFuturePropertyNames()
{
  if (RCAudioFuturePropertyNames_onceToken != -1)
  {
    RCAudioFuturePropertyNames_cold_1();
  }

  v1 = RCAudioFuturePropertyNames_audioFuturePropertyNames;

  return v1;
}

uint64_t __RCAudioFuturePropertyNames_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"audioFuture", @"mtAudioFuture", @"versionedAudioFuture", 0}];
  v1 = RCAudioFuturePropertyNames_audioFuturePropertyNames;
  RCAudioFuturePropertyNames_audioFuturePropertyNames = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t RCDecodeFail(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.VoiceMemos.SerializationErrorDomain" code:a1 userInfo:0];
  }

  return 0;
}

void sub_27247C1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27247CA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

id RCSearchableItemForRecording(void *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 playable])
  {
    v2 = [v1 URIRepresentation];
    v3 = [RCCloudRecording searchableItemIdentifierForSavedRecordingURI:v2];

    v4 = objc_alloc(MEMORY[0x277CC34B8]);
    v5 = [v4 initWithContentType:*MEMORY[0x277CE1D00]];
    v6 = [v1 title];
    [v5 setDisplayName:v6];

    v7 = [v1 creationDate];
    [v5 setContentCreationDate:v7];

    v8 = MEMORY[0x277CCABB0];
    [v1 length];
    v9 = [v8 numberWithDouble:?];
    [v5 setDuration:v9];

    v10 = v1;
    if (RCTranscriptionFeatureFlagIsEnabled() && (+[RCAppGroupStorage sharedInstance](RCAppGroupStorage, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 transcriptionIsSupported], v11, v12) && objc_msgSend(v10, "transcriptionContentExists"))
    {
      v13 = [v10 url];
      v14 = 0;
      if ([v13 checkResourceIsReachableAndReturnError:0])
      {
        v15 = [MEMORY[0x277CE6650] rc_transcriptionDataForURL:v13];
        if (v15)
        {
          *buf = 0;
          v14 = [TranscriptionDecoder decodeTransciptionData:v15 error:buf];
          v16 = *buf;
          if (!v14)
          {
            v17 = OSLogForCategory(@"Service");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              RCSearchableItemForRecording_cold_1(v16, v17);
            }
          }
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    [v5 setTextContent:v14];
    v19 = MEMORY[0x277CBEA60];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"RECORDING_SEARCH_KEYWORD_RECORDING" value:&stru_2881A6FB8 table:@"Localizable"];
    v22 = [v19 arrayWithObject:v21];
    [v5 setKeywords:v22];

    [v10 length];
    v24 = RCLocalizedDuration(round(v23));
    v25 = MEMORY[0x277CCACA8];
    v26 = RCLocalizedFrameworkString(@"RECORDING_ENTITY_DISPLAY_REPRESENTATION_DURATION %@");
    v27 = [v25 localizedStringWithFormat:v26, v24];

    v28 = MEMORY[0x277CCACA8];
    v29 = RCLocalizedFrameworkString(@"SPOTLIGHT_RECORDING_ENTITY_NAME %lu");
    v30 = [v28 localizedStringWithFormat:v29, 1];

    v31 = [v10 uuid];
    v32 = [v10 title];
    v33 = v32;
    if (v31 && v30 && v32)
    {
      [MEMORY[0x277D23C90] tagCSSearchableItem:v5 entityInstanceIdentifier:v31 typeIdentifier:@"RCRecordingEntity" displayTitle:v32 displaySubtitle:v27 displaySynonyms:0 typeDisplayName:v30 typeDisplaySynonyms:0 propertyDictionary:0 priority:&unk_2881AE148];
    }

    v34 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v5 debugDescription];
      *buf = 136315394;
      *&buf[4] = "RCSearchableItemForRecording";
      v39 = 2112;
      v40 = v35;
      _os_log_impl(&dword_272442000, v34, OS_LOG_TYPE_INFO, "%s -- created searchable item attributes = %@", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v3 domainIdentifier:0 attributeSet:v5];
  }

  else
  {
    v18 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v18;
}

id appendMDItem(void *a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CE6558];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = objc_alloc_init(v7);
  [v12 setKeySpace:v10];
  [v12 setKey:v9];
  v13 = [MEMORY[0x277CE6520] identifierForKey:v9 keySpace:v10];

  [v12 setIdentifier:v13];
  [v12 setValue:v8];

  [v11 addObject:v12];

  return v12;
}

BOOL _RCCleanUpURL(void *a1, void *a2)
{
  v3 = a1;
  v12 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v12];

  if (!v6)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (v12 != 1)
  {
    v10 = v3;
LABEL_8:
    v9 = _RCMarkAsPurgeable(v10, a2);
    goto LABEL_9;
  }

  v7 = v3;
  v13 = 0;
  if (!fsctl([v7 fileSystemRepresentation], 0x80084A02uLL, &v13, 0))
  {

    v10 = v7;
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set APFSIOC_MAINTAIN_DIR_STATS - %@", v7];
  _RCPosixErnnoError(v8, a2);

  v9 = 0;
LABEL_9:

  return v9;
}

BOOL _RCMarkAsPurgeable(void *a1, void *a2)
{
  v3 = a1;
  v7 = 66053;
  v4 = fsctl([v3 fileSystemRepresentation], 0xC0084A44uLL, &v7, 0);
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set APFSIOC_MARK_PURGEABLE - %@", v3];
    _RCPosixErnnoError(v5, a2);
  }

  return v4 == 0;
}

void _RCPosixErnnoError(void *a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v11[0] = *MEMORY[0x277CCA7E8];
    v4 = *MEMORY[0x277CCA5B8];
    v5 = a1;
    v6 = [v3 errorWithDomain:v4 code:*__error() userInfo:0];
    v11[1] = *MEMORY[0x277CCA450];
    v12[0] = v6;
    v12[1] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v8 = [v3 errorWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:-1 userInfo:v7];

    v9 = v8;
    *a2 = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
}

id firstStringValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x277CE6520] metadataItemsFromArray:a1 withKey:a2 keySpace:a3];
  v4 = [v3 na_map:&__block_literal_global_156];
  v5 = [v4 firstObject];

  return v5;
}

id firstNumberValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x277CE6520] metadataItemsFromArray:a1 withKey:a2 keySpace:a3];
  v4 = [v3 na_map:&__block_literal_global_162];
  v5 = [v4 firstObject];

  return v5;
}

id transcriptionIdentifier(int a1)
{
  if (a1)
  {
    v1 = @"com.apple.VoiceMemos.tsrp";
  }

  else
  {
    v1 = @"tsrp";
  }

  v2 = MEMORY[0x277CE5FA8];
  if (!a1)
  {
    v2 = MEMORY[0x277CE5FA0];
  }

  v3 = [MEMORY[0x277CE6520] identifierForKey:v1 keySpace:*v2];

  return v3;
}

id firstDataValue(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CE6520] metadataItemsFromArray:a1 filteredByIdentifier:a2];
  v3 = [v2 na_map:&__block_literal_global_165];
  v4 = [v3 firstObject];

  return v4;
}

void sub_272485130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void RCAvailableDiskSpaceForRecording_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void RCAvailableDiskSpaceForRecording_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void RCAvailableDiskSpaceForRecording_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void RCHasEnoughDiskSpaceToRecord_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void RCComputeFileDigest_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __RCCaptureDirectoryURL_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_272442000, v0, OS_LOG_TYPE_FAULT, "%s -- Failed to create directory, error = %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __RCCaptureRecoveryDirectoryURL_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_272442000, v0, OS_LOG_TYPE_FAULT, "%s -- Failed to create directory, error = %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void _predicateOperatorTypeForSearchOption_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_272442000, v0, OS_LOG_TYPE_ERROR, "%s -- %d is out of the valid range for RCPredicateSearchOption", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void _predicateOptionsForSearchOption_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_272442000, v0, OS_LOG_TYPE_ERROR, "%s -- %d is out of the valid range for RCPredicateSearchOption", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void RCSearchableItemForRecording_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "RCTranscriptionForRecording";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to decode transcription, error = %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}