uint64_t _LTOSLogXPC()
{
  if (_LTOSLogXPC_onceToken != -1)
  {
    _LTOSLogXPC_cold_1();
  }

  return _LTOSLogXPC_log;
}

uint64_t _LTOSLogAssets()
{
  if (_LTOSLogAssets_onceToken != -1)
  {
    _LTOSLogAssets_cold_1();
  }

  return _LTOSLogAssets_log;
}

void *_LTPreferencesObjectForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 standardUserDefaults];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

void sub_232E55960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void _LTSendErrorEvent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.translation", @"Error"];
    v6 = v4;
    v7 = v3;
    AnalyticsSendEventLazy();
  }
}

void _LTAnalyticsSendOptionalErrorEvent(void *a1, void *a2)
{
  if (a1)
  {
    _LTSendErrorEvent(a1, a2);
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232E578DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x238398770](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
}

{
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_232E5875C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232E58B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_232E5A5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232E5AAE8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232E5B484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_232E5BCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232E5C724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppleNeuralEngineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleNeuralEngineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_232E6174C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *_LTDAssetAnalyticStringForDownloadOutcome(uint64_t a1)
{
  if (_LTDAssetAnalyticStringForDownloadOutcome_onceToken != -1)
  {
    _LTDAssetAnalyticStringForDownloadOutcome_cold_1();
  }

  v2 = _LTDAssetAnalyticStringForDownloadOutcome_downloadOutcomeStringMap;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Unknown";
  }

  v6 = v5;

  return v5;
}

uint64_t _LTDAssetAnalyticsLocaleFromLocaleIdentifier(void *a1)
{
  v1 = a1;
  if (_LTDAssetAnalyticsLocaleFromLocaleIdentifier_onceToken != -1)
  {
    _LTDAssetAnalyticsLocaleFromLocaleIdentifier_cold_1();
  }

  v2 = [_LTDAssetAnalyticsLocaleFromLocaleIdentifier_localeIdentifierMap objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 99;
  }

  return v4;
}

uint64_t _LTTaskHintToLTDAssetAnalyticsDownloadTriggerSource(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_233005AC0[a1 - 1];
  }
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232E66A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_232E6C3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232E6D880(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id _LTErrorFromRemoteFailure(unsigned int a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v20 = *MEMORY[0x277CCA450];
  v8 = v3;
  if (!v3)
  {
    v8 = [v4 localizedStringForKey:@"UNKNOWN_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
  }

  v21[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v10 = [v6 errorWithDomain:@"LTRemoteFailure" code:a1 userInfo:v9];

  if (!v3)
  {
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CE1C58];
  v18[0] = v7;
  v13 = [v5 localizedStringForKey:@"REMOTE_SERVICE_FAILURE_DESCRIPTION" value:&stru_284834138 table:0];
  v18[1] = *MEMORY[0x277CCA7E8];
  v19[0] = v13;
  v19[1] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [v11 errorWithDomain:v12 code:4 userInfo:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t _LTDeviseHasGMSCapability()
{
  if (_LTDeviseHasGMSCapability_once != -1)
  {
    _LTDeviseHasGMSCapability_cold_1();
  }

  return _LTDeviseHasGMSCapability_deviceSupportsGenerativeModelSystems;
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return [v0 length];
}

_BYTE *OUTLINED_FUNCTION_0_7(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_232E779FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232E77F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232E79608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getCSLanguageDetectorClass_block_invoke(uint64_t a1)
{
  CoreSpeechLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSLanguageDetector");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSLanguageDetectorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCSLanguageDetectorClass_block_invoke_cold_1();
    CoreSpeechLibrary();
  }
}

void CoreSpeechLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreSpeechLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2789B6508;
    v4 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreSpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getCSLanguageDetectorOptionClass_block_invoke(uint64_t a1)
{
  CoreSpeechLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSLanguageDetectorOption");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSLanguageDetectorOptionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCSLanguageDetectorOptionClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_2_2();
  }
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t _LTOSLogAnalytics()
{
  if (_LTOSLogAnalytics_onceToken != -1)
  {
    _LTOSLogAnalytics_cold_1();
  }

  return _LTOSLogAnalytics_log;
}

uint64_t _LTOSLogAssetObservation()
{
  if (_LTOSLogAssetObservation_onceToken != -1)
  {
    _LTOSLogAssetObservation_cold_1();
  }

  return _LTOSLogAssetObservation_log;
}

uint64_t _LTOSLogDeviceState()
{
  if (_LTOSLogDeviceState_onceToken != -1)
  {
    _LTOSLogDeviceState_cold_1();
  }

  return _LTOSLogDeviceState_log;
}

uint64_t _LTOSLogDisambiguation()
{
  if (_LTOSLogDisambiguation_onceToken != -1)
  {
    _LTOSLogDisambiguation_cold_1();
  }

  return _LTOSLogDisambiguation_log;
}

uint64_t _LTOSLogEtiquetteSanitizer()
{
  if (_LTOSLogEtiquetteSanitizer_onceToken != -1)
  {
    _LTOSLogEtiquetteSanitizer_cold_1();
  }

  return _LTOSLogEtiquetteSanitizer_log;
}

uint64_t _LTOSLogHotfix()
{
  if (_LTOSLogHotfix_onceToken != -1)
  {
    _LTOSLogHotfix_cold_1();
  }

  return _LTOSLogHotfix_log;
}

uint64_t _LTOSLogLID()
{
  if (_LTOSLogLID_onceToken != -1)
  {
    _LTOSLogLID_cold_1();
  }

  return _LTOSLogLID_log;
}

uint64_t _LTOSLogSandbox()
{
  if (_LTOSLogSandbox_onceToken != -1)
  {
    _LTOSLogSandbox_cold_1();
  }

  return _LTOSLogSandbox_log;
}

uint64_t _LTOSLogSELFLogging()
{
  if (_LTOSLogSELFLogging_onceToken != -1)
  {
    _LTOSLogSELFLogging_cold_1();
  }

  return _LTOSLogSELFLogging_log;
}

uint64_t _LTOSLogSpeech()
{
  if (_LTOSLogSpeech_onceToken != -1)
  {
    _LTOSLogSpeech_cold_1();
  }

  return _LTOSLogSpeech_log;
}

uint64_t _LTOSLogStabilization()
{
  if (_LTOSLogStabilization_onceToken != -1)
  {
    _LTOSLogStabilization_cold_1();
  }

  return _LTOSLogStabilization_log;
}

uint64_t _LTOSLogTranslationEngine()
{
  if (_LTOSLogTranslationEngine_onceToken != -1)
  {
    _LTOSLogTranslationEngine_cold_1();
  }

  return _LTOSLogTranslationEngine_log;
}

uint64_t _LTOSLogTTS()
{
  if (_LTOSLogTTS_onceToken != -1)
  {
    _LTOSLogTTS_cold_1();
  }

  return _LTOSLogTTS_log;
}

uint64_t LTDOspreyDataSharingStatus(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t LTDDisablePayloadLogging(uint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return _LTDeviseHasGMSCapability();
  }
}

uint64_t _LTPreferencesIntegerForKey(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a1;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v6 integerValue];
  }

  return a2;
}

double _LTPreferencesDoubleForKey(void *a1, double a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a1;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    a2 = v7;
  }

  return a2;
}

uint64_t _LTPreferencesBooleanForKey(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a1;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v6 BOOLValue];
  }

  return a2;
}

void *_LTPreferencesStringForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 standardUserDefaults];
  v7 = [v6 objectForKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v9;
}

void _LTPreferencesSetObjectForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 standardUserDefaults];
  [v6 setObject:v5 forKey:v4];
}

void _LTPreferencesSetInstalledLocales(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) localeIdentifier];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 allObjects];
  _LTPreferencesSetObjectForKey(v9, @"InstalledLocales");

  v10 = *MEMORY[0x277D85DE8];
}

id _LTPreferencesOverrideDefaultCatalog()
{
  if (_LTIsInternalInstall())
  {
    v0 = _LTPreferencesStringForKey(@"OverrideDefaultCatalog", 0);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t _LTPreferencesASRConfidenceThreshold(void *a1)
{
  v1 = a1;
  v2 = [_LTDConfigurationService configurationForType:0 error:0];
  v3 = [v2 objectForKeyedSubscript:@"ASRConfidenceThresholds"];
  v4 = [v3 objectForKeyedSubscript:@"default"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"default"];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 750;
  }

  v7 = [v3 objectForKeyedSubscript:v1];

  if (v7)
  {
    v6 = [v7 integerValue];
  }

  v8 = _LTPreferencesIntegerForKey(@"ASRConfidenceThresholds", v6);

  return v8;
}

uint64_t _LTPreferencesServerASRConfidenceThreshold(void *a1)
{
  v1 = [a1 _ltLocaleIdentifier];
  v2 = _LTPreferencesASRConfidenceThreshold(v1);

  return v2;
}

uint64_t _LTPreferencesOfflineASRConfidenceThreshold(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _ltLocaleIdentifier];
  v5 = [v4 stringByAppendingString:@"-"];
  v6 = [v5 stringByAppendingString:v3];

  v7 = _LTPreferencesASRConfidenceThreshold(v6);
  return v7;
}

uint64_t _LTPreferencesASRWordLevelConfidenceThreshold(void *a1)
{
  v1 = a1;
  if (_LTPreferencesBooleanForKey(*MEMORY[0x277CE1C78], 0))
  {
    v2 = 1000;
  }

  else
  {
    v3 = [_LTDConfigurationService configurationForType:0 error:0];
    v4 = [v3 objectForKeyedSubscript:@"ASRWordLevelConfidenceThreshold"];
    v5 = [v4 objectForKeyedSubscript:@"default"];
    v6 = [v4 objectForKeyedSubscript:v1];
    v7 = v6;
    if (v6)
    {
      v8 = v6;

      v5 = v8;
    }

    v2 = _LTPreferencesDoubleForKey(@"ASRWordLevelConfidenceThreshold", [v5 integerValue]);
  }

  return v2;
}

uint64_t _LTPreferencesServerASRWordLevelConfidenceThreshold(void *a1)
{
  v1 = [a1 _ltLocaleIdentifier];
  v2 = _LTPreferencesASRWordLevelConfidenceThreshold(v1);

  return v2;
}

uint64_t _LTPreferencesOfflineASRWordLevelConfidenceThreshold(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _ltLocaleIdentifier];
  v5 = [v4 stringByAppendingString:@"-"];
  v6 = [v5 stringByAppendingString:v3];

  v7 = _LTPreferencesASRWordLevelConfidenceThreshold(v6);
  return v7;
}

float _LTPreferencesFloatValueFromOfflineAssetManager(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [_LTDConfigurationService configurationForType:0 error:0];
  v6 = [v5 objectForKeyedSubscript:v3];
  v7 = [v6 objectForKeyedSubscript:@"default"];
  v8 = [v6 objectForKeyedSubscript:v4];

  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  [v7 floatValue];
  v11 = _LTPreferencesDoubleForKey(v3, v10);

  return v11;
}

uint64_t _LTPreferencesBooleanValueFromOfflineAssetManager(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [_LTDConfigurationService configurationForType:0 error:0];
  v6 = [v5 objectForKeyedSubscript:v3];
  v7 = [v6 objectForKeyedSubscript:@"default"];
  v8 = [v6 objectForKeyedSubscript:v4];

  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = _LTPreferencesBooleanForKey(v3, [v7 BOOLValue]);

  return v10;
}

uint64_t _LTPreferencesMinimumAcousticLanguageDetectionResults()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"MinimumAcousticLanguageDetectionResults"];
  v2 = [v1 integerValue];

  v3 = _LTPreferencesIntegerForKey(@"MinimumAcousticLanguageDetectionResults", v2);
  return v3;
}

uint64_t _LTPreferencesFinalLanguageDetectionResultWaitTime()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"FinalAcousticLanguageDetectionResultsWaitTimeInMs"];
  [v1 floatValue];
  v3 = v2;

  v4 = _LTPreferencesIntegerForKey(@"FinalAcousticLanguageDetectionResultsWaitTimeInMs", v3);
  return v4;
}

uint64_t _LTPreferencesFinalThresholdsLanguageDetectionResultWaitTime()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"FinalThresholdsAcousticLanguageDetectionResultsWaitTimeInMs"];
  [v1 floatValue];
  v3 = v2;

  v4 = _LTPreferencesIntegerForKey(@"FinalThresholdsAcousticLanguageDetectionResultsWaitTimeInMs", v3);
  return v4;
}

uint64_t _LTPreferencesMaximumAcousticLanguageDetectionResults()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"MaximumAcousticLanguageDetectionResults"];
  v2 = [v1 integerValue];

  v3 = _LTPreferencesIntegerForKey(@"MaximumAcousticLanguageDetectionResults", v2);
  return v3;
}

double _LTPreferencesVADAudioCacheMaxDuration()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"VADAudioCacheMaxDuration"];
  [v1 doubleValue];
  v3 = v2;

  v4 = _LTPreferencesDoubleForKey(@"VADAudioCacheMaxDuration", v3);
  return v4;
}

float _LTPreferencesLanguageDetectorThresholdsForLocale(void *a1)
{
  v1 = [a1 identifier];
  v2 = _LTPreferencesFloatValueFromOfflineAssetManager(v1, @"LanguageDetectorConfidenceThreshold");

  return v2;
}

uint64_t _LTPreferencesLanguageDetectorFeatureCombinationModelSupportedForLocale(void *a1)
{
  v1 = [a1 canonicalIdentifier];
  v2 = _LTPreferencesBooleanValueFromOfflineAssetManager(v1, @"LanguageDetectorFeatureCombinationModelSupported");

  return v2;
}

id _LTPreferencesGetLanguageDetectorUnsupportedPairs()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = [@"LanguageDetectorNotSupported" stringByAppendingString:@"-"];
  v1 = [v0 stringByAppendingString:@"v250501"];

  v2 = [_LTDConfigurationService configurationForType:0 error:0];
  v3 = [v2 objectForKeyedSubscript:v1];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v2 objectForKeyedSubscript:@"LanguageDetectorNotSupported"];
    if (!v4)
    {
LABEL_8:

      v4 = 0;
      v5 = 0;
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ([v4 lt_ensureElementType:objc_opt_class()])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CE1B38] pairWithIdentifiers:{*(*(&v17 + 1) + 8 * i), v17}];
        v14 = [v13 canonicalLocalePair];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

float _LTPreferencesLanguageDetectorFeatureCombinationModelThresholdsForLocale(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [a1 canonicalIdentifier];
  v7 = languageDetectorFeatureCombinationModelConfigKeyAppendingVersionIDIfNeeded(@"LanguageDetectorFeatureCombinationModelThreshold");
  v8 = [_LTDConfigurationService configurationForType:0 error:0];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v6;
  v11 = v10;
  if (v5)
  {
    v11 = v10;
    if ([v5 length])
    {
      v12 = [v10 stringByAppendingString:@"-"];
      v11 = [v12 stringByAppendingString:v5];
    }
  }

  v13 = [v9 objectForKeyedSubscript:v11];
  if (a3)
  {
    v14 = [v11 stringByAppendingString:@"-finalASR"];
    v15 = [v9 objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = v15;

      v13 = v16;
    }
  }

  if (v13)
  {
    [v13 floatValue];
    v18 = _LTPreferencesDoubleForKey(v7, v17);
  }

  else
  {
    v18 = _LTPreferencesFloatValueFromOfflineAssetManager(v10, v7);
  }

  return v18;
}

id languageDetectorFeatureCombinationModelConfigKeyAppendingVersionIDIfNeeded(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByAppendingString:@"-"];
  v3 = [v2 stringByAppendingString:@"v250501"];

  v4 = [_LTDConfigurationService configurationForType:0 error:0];
  v5 = [v4 objectForKeyedSubscript:v3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {

    v3 = v1;
  }

  return v3;
}

float _LTPreferencesLanguageDetectorFeatureCombinationModelConfidenceThresholdsForLocale(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [a1 identifier];
  v7 = languageDetectorFeatureCombinationModelConfigKeyAppendingVersionIDIfNeeded(@"LanguageDetectorFeatureCombinationModelConfidenceThreshold");
  v8 = [_LTDConfigurationService configurationForType:0 error:0];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v6;
  v11 = v10;
  if (v5)
  {
    v11 = v10;
    if ([v5 length])
    {
      v12 = [v10 stringByAppendingString:@"-"];
      v11 = [v12 stringByAppendingString:v5];
    }
  }

  v13 = [v9 objectForKeyedSubscript:v11];
  if (a3)
  {
    v14 = [v11 stringByAppendingString:@"-finalASR"];
    v15 = [v9 objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = v15;

      v13 = v16;
    }
  }

  if (v13)
  {
    [v13 floatValue];
    v18 = _LTPreferencesDoubleForKey(v7, v17);
  }

  else
  {
    v18 = _LTPreferencesFloatValueFromOfflineAssetManager(v10, v7);
  }

  return v18;
}

id _LTPreferencesLanguageDetectorFeatureCombinationThresholdVersionForASRDataPack(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [_LTDConfigurationService configurationForType:0 error:0];
  v6 = [v5 objectForKeyedSubscript:@"ASRDataPackToLIDThresholdVersion"];
  if (!v4)
  {
    goto LABEL_4;
  }

  v7 = [v3 localeIdentifier];
  v8 = [v7 stringByAppendingString:@"-"];
  v9 = [v8 stringByAppendingString:v4];
  v10 = [v6 objectForKeyedSubscript:v9];

  if (v10)
  {
    goto LABEL_6;
  }

  v11 = [v5 objectForKeyedSubscript:@"ASRDataPackDefaultLIDThresholdVersion"];
  if (!v11)
  {
LABEL_4:
    v11 = [v6 objectForKeyedSubscript:@"default"];
  }

  v10 = v11;
LABEL_6:

  return v10;
}

id _LTPreferencesLanguageDetectorFeatureCombinationASRTypeIdentifierForASRDataPack(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [_LTDConfigurationService configurationForType:0 error:0];
  v6 = [v5 objectForKeyedSubscript:@"ASRDataPackToASRTypeIdentifier"];
  v7 = v6;
  if (v4)
  {
    v8 = [v3 localeIdentifier];
    v9 = [v8 stringByAppendingString:@"-"];
    v10 = [v9 stringByAppendingString:v4];
    v11 = [v7 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &unk_284868258;
    }
  }

  else
  {
    v12 = [v6 objectForKeyedSubscript:@"default"];
  }

  return v12;
}

double _LTPreferencesTextLIDScorerConfidenceThreshold()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"TextLIDScorerConfidenceThreshold"];
  [v1 doubleValue];
  v3 = 1.0;
  if (v2 <= 1.0)
  {
    v3 = v2;
  }

  if (v2 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

uint64_t _LTPreferencesHybridEndpointerEnabledForLocales(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [_LTDConfigurationService configurationForType:0 error:0];
  v6 = [v5 objectForKeyedSubscript:@"EnableHybridEndpointer"];
  v7 = [v6 objectForKeyedSubscript:@"default"];
  v8 = [v4 localeIdentifier];

  if (v3)
  {
    v9 = [v3 localeIdentifier];
    v10 = [v8 compare:v9];

    if (v10 == -1)
    {
      v11 = [v8 stringByAppendingString:@"-"];
      v13 = [v3 localeIdentifier];
      v12 = v11;
      v14 = v13;
    }

    else
    {
      v11 = [v3 localeIdentifier];
      v12 = [v11 stringByAppendingString:@"-"];
      v13 = v12;
      v14 = v8;
    }

    v15 = [v12 stringByAppendingString:v14];

    v8 = v15;
  }

  v16 = [v6 objectForKeyedSubscript:v8];
  v17 = v16;
  if (v16)
  {
    v18 = v16;

    v7 = v18;
  }

  v19 = _LTPreferencesBooleanForKey(@"EnableHybridEndpointer", [v7 BOOLValue]);

  return v19;
}

id _LTPreferencesHybridEndpointerThresholdForLocale(void *a1)
{
  v1 = a1;
  v2 = [_LTDConfigurationService configurationForType:0 error:0];
  v3 = [v2 objectForKeyedSubscript:@"HybridEndpointerThreshold"];
  v4 = [v1 localeIdentifier];

  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = _LTPreferencesObjectForKey(@"HybridEndpointerThreshold", v5);

  return v6;
}

id _LTPreferencesDisconnectedHybridEndpointerThresholdForLocale(void *a1)
{
  v1 = a1;
  v2 = [_LTDConfigurationService configurationForType:0 error:0];
  v3 = [v2 objectForKeyedSubscript:@"DisconnectedHybridEndpointerThreshold"];
  v4 = [v1 localeIdentifier];

  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = _LTPreferencesObjectForKey(@"DisconnectedHybridEndpointerThreshold", v5);

  return v6;
}

uint64_t _LTPreferencesHybridEndpointerClientLagThreshold()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"HybridEndpointerClientLagThreshold"];
  v2 = [v1 integerValue];

  v3 = _LTPreferencesIntegerForKey(@"HybridEndpointerClientLagThreshold", v2);
  return v3;
}

uint64_t _LTPreferencesHybridEndpointerClientLagClampedLatency()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"HybridEndpointerClampedLatencyForClientLag"];
  v2 = [v1 integerValue];

  v3 = _LTPreferencesIntegerForKey(@"HybridEndpointerClampedLatencyForClientLag", v2);
  return v3;
}

uint64_t _LTPreferencesHybridEndpointerUseDefaultFeaturesOnClientLagThreshold()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"HybridEndpointerUseDefaultFeaturesOnClientLag"];
  v2 = [v1 BOOLValue];

  v3 = _LTPreferencesBooleanForKey(@"HybridEndpointerUseDefaultFeaturesOnClientLag", v2);
  return v3;
}

uint64_t _LTPreferencesIsCharacterBasedLocale(void *a1)
{
  v1 = a1;
  v2 = [_LTDConfigurationService configurationForType:0 error:0];
  v3 = [v2 objectForKeyedSubscript:@"CharacterBasedLocales"];
  v4 = [v1 localeIdentifier];

  v5 = [v3 containsObject:v4];
  return v5;
}

uint64_t _LTPreferencesTranslationEngineCacheSize()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"TranslationEngineCacheSize"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

id _LTPreferencesSupportedLocales(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = 3;
  if (a1 == 4)
  {
    v1 = 5;
  }

  if (a1 == 2)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  v3 = [_LTDConfigurationService configurationForType:v2 error:0];
  v4 = [v3 objectForKeyedSubscript:@"LanguagePairs"];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = 0;
    goto LABEL_18;
  }

  if (([v4 lt_ensureElementType:objc_opt_class()] & 1) == 0)
  {
LABEL_18:

    v14 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v5 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CE1B38] pairWithIdentifiers:{*(*(&v17 + 1) + 8 * i), v17}];
        v12 = [v11 sourceLocale];
        [v5 addObject:v12];

        v13 = [v11 targetLocale];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 allObjects];

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id _LTPreferencesAdditionalLikelyPreferredLocales(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [_LTDConfigurationService configurationForType:6 error:0];
  v3 = [v2 objectForKeyedSubscript:@"locales"];

  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v1 localeIdentifier];
  v6 = [v3 objectForKeyedSubscript:v5];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v15 + 1) + 8 * i)];
        [v4 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id _LTPreferencesConfigInfoForLocale(void *a1, void *a2)
{
  v48[20] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v47[0] = @"OspreyEndpointURL";
  v44 = _LTPreferencesOspreyEndpointURL();
  v48[0] = v44;
  v47[1] = @"HotfixEndpointURL";
  v43 = _LTPreferencesHotfixEndpointURL();
  v48[1] = v43;
  v47[2] = @"BatchingMaxParagraphs";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTPreferencesBatchingMaxParagraphs()];
  v48[2] = v42;
  v47[3] = @"BatchingMaxParagraphBufferSize";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTPreferencesBatchingMaxParagraphBufferSize()];
  v48[3] = v41;
  v47[4] = @"BatchingMaxParagraphBufferTimeout";
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:_LTPreferencesBatchingMaxParagraphBufferTimeout()];
  v48[4] = v40;
  v47[5] = *MEMORY[0x277CE1CA0];
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTPreferencesRateLimitingMaximumPageLoadRequests()];
  v48[5] = v39;
  v47[6] = *MEMORY[0x277CE1C98];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTPreferencesRateLimitingMaximumDynamicContentRequests()];
  v48[6] = v38;
  v47[7] = @"LastOfflineAssetCatalogUpdate";
  v5 = _LTPreferencesObjectForKey(@"LastOfflineAssetCatalogUpdate", 0);
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v32 = v5;
  v48[7] = v5;
  v47[8] = @"LastOfflineAssetUpdate";
  v7 = _LTPreferencesObjectForKey(@"LastOfflineAssetUpdate", 0);
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v31 = v7;
  v48[8] = v7;
  v47[9] = @"LastConfigAssetUpdate";
  v9 = _LTPreferencesObjectForKey(@"LastConfigAssetUpdate", 0);
  v35 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v37 = v6;
  v45 = v4;
  v30 = v9;
  v48[9] = v9;
  v47[10] = @"LastCDNUpdate";
  v10 = _LTPreferencesObjectForKey(@"LastCDNUpdate", 0);
  v11 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v29 = v10;
  v48[10] = v10;
  v47[11] = @"ServerSpeechSessionInitialOnlineTimeout";
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:_LTPreferencesServerSpeechSessionInitialOnlineTimeout()];
  v48[11] = v34;
  v47[12] = @"ServerSpeechSessionOnlineTimeout";
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:_LTPreferencesServerSpeechSessionOnlineTimeout()];
  v48[12] = v33;
  v47[13] = @"DeviceSessionID";
  v12 = _LTPreferencesSessionIDOverride(@"default");
  v13 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v36 = v8;
  v46 = v3;
  v28 = v12;
  v48[13] = v12;
  v47[14] = @"RequestID";
  v14 = _LTPreferencesRequestIDOverride(@"default");
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v48[14] = v15;
  v47[15] = @"MinimumAcousticLanguageDetectionResults";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTPreferencesMinimumAcousticLanguageDetectionResults()];
  v48[15] = v16;
  v47[16] = @"MaximumAcousticLanguageDetectionResults";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTPreferencesMaximumAcousticLanguageDetectionResults()];
  v48[16] = v17;
  v47[17] = @"FinalAcousticLanguageDetectionResultsWaitTimeInMs";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTPreferencesFinalLanguageDetectionResultWaitTime()];
  v48[17] = v18;
  v47[18] = @"FinalThresholdsAcousticLanguageDetectionResultsWaitTimeInMs";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_LTPreferencesFinalThresholdsLanguageDetectionResultWaitTime()];
  v47[19] = @"LanguageDetectorFeatureCombinationModelVersionID";
  v48[18] = v19;
  v48[19] = @"v250501";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:20];
  v21 = [v20 mutableCopy];

  if (!v14)
  {
  }

  if (!v13)
  {
  }

  if (!v11)
  {
  }

  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (!v37)
  {
  }

  if (v46)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:_LTPreferencesServerASRConfidenceThreshold(v46)];
    [v21 setObject:v22 forKeyedSubscript:@"ASRConfidenceThresholds"];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:_LTPreferencesServerASRWordLevelConfidenceThreshold(v46)];
    [v21 setObject:v23 forKeyedSubscript:@"ASRWordLevelConfidenceThreshold"];

    if (v45)
    {
      v24 = [MEMORY[0x277CCABB0] numberWithBool:{_LTPreferencesHybridEndpointerEnabledForLocales(v46, v45)}];
      [v21 setObject:v24 forKeyedSubscript:@"EnableHybridEndpointer"];
    }
  }

  v25 = [v21 copy];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

id _LTPreferencesOspreyEndpointURL()
{
  if (_LTIsInternalInstall())
  {
    v0 = @"https://carry-sequoia.siri.apple.com";
  }

  else
  {
    v0 = @"https://sequoia.apple.com";
  }

  if (_LTIsSeedInstall())
  {
    v1 = @"https://seed-sequoia.siri.apple.com";
  }

  else
  {
    v1 = v0;
  }

  v2 = _LTPreferencesObjectForKey(@"OspreyEndpointURL", v1);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];

  return v3;
}

id _LTPreferencesHotfixEndpointURL()
{
  if (_LTIsInternalInstall())
  {
    v0 = @"https://sequoia-test.cdn-apple.com/sequoia-livability/carry";
  }

  else
  {
    v0 = @"https://sequoia.cdn-apple.com/sequoia-prod";
  }

  v1 = _LTPreferencesObjectForKey(@"HotfixEndpointURL", v0);
  v2 = [MEMORY[0x277CBEBC0] URLWithString:v1];

  return v2;
}

uint64_t _LTPreferencesBatchingMaxParagraphs()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"BatchingMaxParagraphs"];
  v2 = [v1 integerValue];

  v3 = _LTPreferencesIntegerForKey(@"BatchingMaxParagraphs", v2);
  return v3;
}

uint64_t _LTPreferencesBatchingMaxParagraphBufferSize()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"BatchingMaxParagraphBufferSize"];
  v2 = [v1 integerValue];

  v3 = _LTPreferencesIntegerForKey(@"BatchingMaxParagraphBufferSize", v2);
  return v3;
}

double _LTPreferencesBatchingMaxParagraphBufferTimeout()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"BatchingMaxParagraphBufferTimeout"];
  [v1 doubleValue];
  v3 = v2;

  v4 = _LTPreferencesDoubleForKey(@"BatchingMaxParagraphBufferTimeout", v3);
  return v4;
}

uint64_t _LTPreferencesRateLimitingMaximumPageLoadRequests()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = *MEMORY[0x277CE1CA0];
  v2 = [v0 objectForKeyedSubscript:*MEMORY[0x277CE1CA0]];
  v3 = [v2 integerValue];

  v4 = _LTPreferencesIntegerForKey(v1, v3);
  return v4;
}

uint64_t _LTPreferencesRateLimitingMaximumDynamicContentRequests()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = *MEMORY[0x277CE1C98];
  v2 = [v0 objectForKeyedSubscript:*MEMORY[0x277CE1C98]];
  v3 = [v2 integerValue];

  v4 = _LTPreferencesIntegerForKey(v1, v3);
  return v4;
}

double _LTPreferencesServerSpeechSessionInitialOnlineTimeout()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"ServerSpeechSessionInitialOnlineTimeout"];
  [v1 doubleValue];
  v3 = v2;

  v4 = _LTPreferencesDoubleForKey(@"ServerSpeechSessionInitialOnlineTimeout", v3);
  return v4;
}

double _LTPreferencesServerSpeechSessionOnlineTimeout()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"ServerSpeechSessionOnlineTimeout"];
  [v1 doubleValue];
  v3 = v2;

  v4 = _LTPreferencesDoubleForKey(@"ServerSpeechSessionOnlineTimeout", v3);
  return v4;
}

id _LTPreferencesSessionIDOverride(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DataCollectionEnabled"];

  if (v3)
  {
    if ([v1 length] >= 8)
    {
      v5 = v1;
    }

    else
    {
      v4 = [MEMORY[0x277CCAD78] UUID];
      v5 = [v4 UUIDString];
    }

    v6 = [v5 stringByReplacingCharactersInRange:0 withString:{8, @"EDC04020"}];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id _LTPreferencesRequestIDOverride(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DataCollectionEnabled"];

  if (v3)
  {
    if ([v1 length])
    {
      v4 = v1;
    }

    else
    {
      v6 = [MEMORY[0x277CCAD78] UUID];
      v4 = [v6 UUIDString];
    }

    v5 = [v4 stringByReplacingCharactersInRange:0 withString:{1, @"0"}];
  }

  else
  {
    v5 = v1;
  }

  return v5;
}

double _LTPreferencesServerSpeechSessionEndpointTimeout()
{
  v0 = [_LTDConfigurationService configurationForType:0 error:0];
  v1 = [v0 objectForKeyedSubscript:@"ServerSpeechSessionOnlineEndpointTimeout"];
  [v1 doubleValue];
  v3 = v2;

  v4 = _LTPreferencesDoubleForKey(@"ServerSpeechSessionOnlineEndpointTimeout", v3);
  return v4;
}

uint64_t _LTPreferencesTranslationIsDisabled()
{
  if (_LTPreferencesTranslationIsDisabled_once != -1)
  {
    _LTPreferencesTranslationIsDisabled_cold_1();
  }

  v0 = [&unk_284867D98 lt_hasObjectPassingTest:&__block_literal_global_214];
  v1 = [_LTDConfigurationService configurationForType:0 error:0];
  v2 = [v1 objectForKeyedSubscript:@"TranslationOverrideActive"];
  v3 = [v2 BOOLValue];

  if (_LTIsInternalInstall())
  {
    LODWORD(v3) = _LTPreferencesBooleanForKey(@"TranslationOverrideActive", v3);
  }

  v4 = v3 & v0;
  if (_LTIsInternalInstall())
  {
    v4 = _LTPreferencesBooleanForKey(@"TranslationOverrideActiveInternalDebug", v4);
  }

  return v4;
}

void OUTLINED_FUNCTION_0_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t convertFromNSLocale(void *a1)
{
  v1 = a1;
  v2 = [v1 countryCode];
  v3 = [v1 languageCode];

  if (v2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v3, v2];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277D5ACF0] convertLanguageCodeToSchemaLocale:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_232E85400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232E85560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232E85808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_232E85B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_232E8606C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id replacementDictionaryForEtiquetteFileAtURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v1];
    if (!v2)
    {
      v7 = _LTOSLogEtiquetteSanitizer();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        replacementDictionaryForEtiquetteFileAtURL_cold_3();
      }

      v5 = 0;
      goto LABEL_21;
    }

    v18 = 0;
    v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:0 error:&v18];
    v4 = v18;
    if (v3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 1;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __replacementDictionaryForEtiquetteFileAtURL_block_invoke;
        v11[3] = &unk_2789B6A70;
        v12 = v1;
        v13 = &v14;
        [v3 enumerateKeysAndObjectsUsingBlock:v11];
        if (v15[3])
        {
          v5 = v3;
        }

        else
        {
          v5 = 0;
        }

        _Block_object_dispose(&v14, 8);
        goto LABEL_20;
      }

      v9 = _LTOSLogEtiquetteSanitizer();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        replacementDictionaryForEtiquetteFileAtURL_cold_1(v1, v9);
      }
    }

    else
    {
      v8 = _LTOSLogEtiquetteSanitizer();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        replacementDictionaryForEtiquetteFileAtURL_cold_2();
      }
    }

    v5 = 0;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v6 = _LTOSLogEtiquetteSanitizer();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    replacementDictionaryForEtiquetteFileAtURL_cold_4(v6);
  }

  v5 = 0;
LABEL_22:

  return v5;
}

void sub_232E8F94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __replacementDictionaryForEtiquetteFileAtURL_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = _LTOSLogEtiquetteSanitizer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138412802;
      v13 = v11;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_232E53000, v9, OS_LOG_TYPE_ERROR, "Model at URL %@ contains bogus key/value pair: %@ => %@", &v12, 0x20u);
    }

    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_232E8FE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232E90214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a27);
  _Block_object_dispose(&a28, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232E91590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_232E92460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return MEMORY[0x2821F6FE0](v0);
}

uint64_t getModelFeature(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"min_source"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"max_source"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"avg_source"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"min_target"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"max_target"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"avg_target"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"acoustic_lid"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"acoustic_lid_count"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"acoustic_lid0"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"acoustic_lid1"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"acoustic_lid2"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"most_recent_partial_source"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"max_partial_source"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"avg_partial_source"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"most_recent_partial_target"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"max_partial_target"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"avg_partial_target"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"identifier_source"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"identifier_target"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"identifier_asr"])
  {
    v2 = 19;
  }

  else
  {
    v2 = 20;
  }

  return v2;
}

void sub_232E95C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

id OUTLINED_FUNCTION_9(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void sub_232E9932C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
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

void sub_232E9EBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232EA12CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_232EA20C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v41 + 96));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_232EA2B64(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232EA3C18(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, ...)
{
  va_start(va, a16);

  objc_destroyWeak(va);
  objc_destroyWeak((v20 - 112));

  _Unwind_Resume(a1);
}

void sub_232EA4318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  objc_destroyWeak((v21 + 72));

  _Unwind_Resume(a1);
}

void sub_232EA4BB8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_232EA5F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_232EA6668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_232EAB0FC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_232EAB6B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  _Unwind_Resume(a1);
}

void sub_232EAD824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_232EAE5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = result;
  return result;
}

void sub_232EAF610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_232EAFDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232EB03E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232EB0824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _LTAudioPlaybackServiceAudioQueueCallback(uint64_t a1, AudioQueueRef inAQ, AudioQueueBuffer *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(&v10, 0, sizeof(v10));
  AudioQueueGetCurrentTime(inAQ, 0, &v10, 0);
  v6 = _LTOSLogTTS();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    mAudioDataByteSize = a3->mAudioDataByteSize;
    *buf = 134218496;
    v12 = a1;
    v13 = 2048;
    mSampleTime = v10.mSampleTime;
    v15 = 2048;
    v16 = mAudioDataByteSize;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "LTPlaybackServices %p played audio buffer at sample time: %f, size: %ld", buf, 0x20u);
  }

  if (AudioQueueFreeBuffer(inAQ, a3))
  {
    v8 = _LTOSLogTTS();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _LTAudioPlaybackServiceAudioQueueCallback_cold_1();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_1_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_232EB4F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232EB50CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x238398770](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _sharedQueue(void)
{
  if (_sharedQueue(void)::onceToken != -1)
  {
    _sharedQueue();
  }

  v1 = _sharedQueue(void)::queue;

  return v1;
}

void sub_232EB68AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));

  _Unwind_Resume(a1);
}

void sub_232EB6B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 48));
  objc_destroyWeak((v15 - 40));

  _Unwind_Resume(a1);
}

void sub_232EB6F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t ___ZL12_sharedQueuev_block_invoke()
{
  _sharedQueue(void)::queue = dispatch_queue_create("com.apple.translation.session", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t AudioConverterFillComplexBuffer_BlockInvoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x238398770](a5);
  v9 = v8[2](v8, a2, a3, a4);

  return v9;
}

uint64_t _anyDownloading(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDownloading])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t _allInstalled(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      LOBYTE(v6) = 1;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if (v6)
          {
            v6 = [*(*(&v10 + 1) + 8 * i) isInstalled];
          }

          else
          {
            v6 = 0;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_232EBDC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(*(*(result + 48) + 8) + 40);
  v5 = *(*(*a2 + 8) + 40);
  return result;
}

void sub_232EC1344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232EC19B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (v32)
  {
    (*(*v32 + 16))(v32);
  }

  (*(*v30 + 16))(v30);
  if (*(v33 - 129) < 0)
  {
    operator delete(*(v33 - 152));
  }

  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  if (*(v33 - 81) < 0)
  {
    operator delete(*(v33 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::Chunk::end(morphun::Chunk *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    morphun::Token::getNext(v2);
    v3 = *(this + 2);
  }

  morphun::TokenIterator::TokenIterator();
  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2789B5158, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_232EC2008(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

void OUTLINED_FUNCTION_0_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return [v0 enable_disambiguation_alternatives];
}

void sub_232EC5DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232EC6210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232EC6FD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_232EC74F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_232EC7A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232EC8D38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_232ECBBBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

__CFString *_LTVoiceTypeRemoteServiceString(uint64_t a1)
{
  v1 = &stru_284834138;
  if (a1 == 2)
  {
    v1 = @"female";
  }

  if (a1 == 1)
  {
    return @"male";
  }

  else
  {
    return v1;
  }
}

uint64_t _LTVoiceTypeLocaleOverride(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 _ltLocaleIdentifier];
  v4 = [&unk_284868220 valueForKey:v3];
  v5 = [v4 intValue];
  v6 = v5;

  if (v5)
  {
    v7 = v5 == a1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v6 = a1;
  }

  else
  {
    v8 = _LTOSLogTTS();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (a1 == 2)
      {
        v10 = @"female";
      }

      else
      {
        v10 = &stru_284834138;
      }

      if (a1 == 1)
      {
        v10 = @"male";
      }

      v11 = v10;
      if (v5 == 2)
      {
        v12 = @"female";
      }

      else
      {
        v12 = &stru_284834138;
      }

      if (v5 == 1)
      {
        v12 = @"male";
      }

      v13 = v12;
      v16 = 138543874;
      v17 = v3;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Voice type overridden for locale %{public}@ from %{public}@ to %{public}@", &v16, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t _LTPreferredVoiceTypeForLocale(void *a1)
{
  v1 = a1;
  v2 = +[_LTDTTSAssetService preferredVoiceType];
  if (!v2)
  {
    v2 = 2;
  }

  v3 = _LTVoiceTypeLocaleOverride(v2, v1);

  return v3;
}

void sub_232ECDB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(apple::aiml::flatbuffers2::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      v5 = *(this + 3);
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x238398130](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

void sub_232ECDFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ECEC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED1778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED1FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED27E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED3020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED3858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED4090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED48C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED5100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED72E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232ED8D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDB0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDC0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDC8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDD424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDDC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDE494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDECCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDF504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EDFD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EE0A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EE1258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EE1A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EE25D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_232EE515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(apple::aiml::flatbuffers2::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::fill(this, 1uLL);
  apple::aiml::flatbuffers2::vector_downward::push(this, a2, a3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

void *apple::aiml::flatbuffers2::vector_downward::fill(void *this, unint64_t a2)
{
  v3 = this;
  v4 = this[6];
  if (v4 - this[7] >= a2)
  {
    this[6] = v4 - a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = apple::aiml::flatbuffers2::vector_downward::reallocate(this, a2);
    v3[6] -= a2;
  }

  v5 = 0;
  do
  {
    *(v3[6] + v5++) = 0;
  }

  while (a2 != v5);
  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    apple::aiml::flatbuffers2::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void *apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

uint64_t apple::aiml::flatbuffers2::vector_downward::reallocate(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_284833B28;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_284833B28;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + *(this + 4) - v5;
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = result + v6;
  return result;
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x238398130);
  }
}

void *apple::aiml::flatbuffers2::vector_downward::push(void *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = this[6];
    if (v6 - this[7] < a3)
    {
      apple::aiml::flatbuffers2::vector_downward::reallocate(this, a3);
      v6 = v5[6];
    }

    v5[6] = v6 - a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

void *apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

void *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

void *apple::aiml::flatbuffers2::FlatBufferBuilder::TrackField(void *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = this[7];
  if (this[6] - v6 <= 7uLL)
  {
    this = apple::aiml::flatbuffers2::vector_downward::reallocate(this, 8uLL);
    v6 = v5[7];
  }

  *v6 = a3 | (a2 << 32);
  v5[7] += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return this;
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = result;
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10) - a3 + 4;

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v5, a2, v6, 0);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(apple::aiml::flatbuffers2::FlatBufferBuilder *this, __int16 a2)
{
  v4 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  v6 = *(this + 6);
  if (v6 - *(this + 7) < v5)
  {
    apple::aiml::flatbuffers2::vector_downward::reallocate(this, v5);
    v6 = *(this + 6);
  }

  *(this + 6) = v6 - v5;
  bzero((v6 - v5), v5);
  v7 = v4 - a2;
  v9 = *(this + 6);
  v8 = *(this + 7);
  v9[1] = v7;
  *v9 = *(this + 34);
  v10 = *(this + 16);
  v11 = (v8 - 8 * v10);
  if (v10)
  {
    v12 = v8 - 8 * v10;
    do
    {
      v13 = (v4 - *v12);
      *(v9 + *(v12 + 4)) = v4 - *v12;
      v12 += 8;
    }

    while (v12 < v8);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v14 = *(this + 4);
  v15 = *(this + 5);
  v16 = v14 - v9 + v15;
  if (*(this + 81) == 1 && v15 < v11)
  {
    v18 = *v9;
    v19 = v15 + v14;
    v20 = *(this + 5);
    while (1)
    {
      v21 = *v20;
      if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v9, v18))
      {
        break;
      }

      if (++v20 >= v11)
      {
        v16 = v14 - v9 + v15;
        goto LABEL_19;
      }
    }

    v9 = (v9 + (v14 - v9 + v15 - v4));
    *(this + 6) = v9;
    v16 = v21;
  }

LABEL_19:
  if (v16 == v14 + v15 - v9)
  {
    if ((v9 - v11) <= 3)
    {
      apple::aiml::flatbuffers2::vector_downward::reallocate(this, 4uLL);
      v11 = *(this + 7);
      v14 = *(this + 4);
      v15 = *(this + 5);
    }

    *v11 = v16;
    *(this + 7) = v11 + 4;
  }

  *(v15 + v14 - v4) = v16 - v4;
  *(this + 70) = 0;
  return v4;
}

void apple::aiml::flatbuffers2::vector_downward::~vector_downward(apple::aiml::flatbuffers2::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      v4 = *(this + 4);
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x238398130](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*(this + 11), *(v2 + 8));
    MEMORY[0x238398150](v2, 0x1060C40C2B13FB5);
  }

  apple::aiml::flatbuffers2::vector_downward::~vector_downward(this);
}

void std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(a1, *a2);
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    apple::aiml::flatbuffers2::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

BOOL siri::speech::qss_fb::ErrorMessage::Verify(siri::speech::qss_fb::ErrorMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 >= 7u && (v9 = v8[3]) != 0)
        {
          v10 = this + v9 + *(this + v9);
        }

        else
        {
          v10 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
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

BOOL siri::speech::qss_fb::ApgPronGuessMessage::Verify(siri::speech::qss_fb::ApgPronGuessMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          if (v9 < 5)
          {
            goto LABEL_37;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
          goto LABEL_12;
        }

        v10 = 0;
LABEL_12:
        v11 = v8[2];
        if (!v11)
        {
          goto LABEL_37;
        }

        v12 = *(this + v11);
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            if (!v10 || siri::speech::schema_fb::StartPronGuessRequest::Verify(v10, a2))
            {
              goto LABEL_37;
            }
          }

          else
          {
            v14 = v12 != 2 || v10 == 0;
            if (v14 || siri::speech::schema_fb::AudioPacket::Verify(v10, a2))
            {
              goto LABEL_37;
            }
          }
        }

        else if (v12 == 3)
        {
          if (!v10 || siri::speech::schema_fb::FinishAudio::Verify(v10, a2))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v12 != 4)
          {
            if (v12 == 5 && v10 != 0)
            {
              result = siri::speech::schema_fb::PronGuessResponse::Verify(v10, a2);
              if (!result)
              {
                return result;
              }
            }

LABEL_37:
            --*(a2 + 4);
            return 1;
          }

          if (!v10 || siri::speech::schema_fb::CancelRequest::Verify(v10, a2))
          {
            goto LABEL_37;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::StartPronGuessRequest::Verify(siri::speech::schema_fb::StartPronGuessRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    v17 = (this - *this);
                    if (*v17 < 0xDu || (v18 = v17[6]) == 0 || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v18 - *a2)
                    {
                      --*(a2 + 4);
                      return 1;
                    }
                  }
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

BOOL siri::speech::schema_fb::AudioPacket::Verify(siri::speech::schema_fb::AudioPacket *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = (a2 + 1);
  do
  {
    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a1, &v5[*v5]);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 4;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::FinishAudio::Verify(siri::speech::schema_fb::FinishAudio *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v8 - *a2))
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
      if (result)
      {
        v10 = (this - *this);
        if (*v10 < 9u || (v11 = v10[4]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v11 + *(this + v11), 4uLL, 0)))
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
          if (result)
          {
            v12 = *this;
            v13 = -v12;
            v14 = (this - v12);
            if (*v14 >= 0xBu)
            {
              v15 = v14[5];
              if (v15)
              {
                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v15 + *(this + v15), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v13 = -*this;
              }
            }

            v16 = (this + v13);
            if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
            {
              v18 = (this + v17 + *(this + v17));
            }

            else
            {
              v18 = 0;
            }

            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>(a2, v18);
            if (result)
            {
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry::Verify(siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v9 - *a2)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::CancelRequest::Verify(siri::speech::schema_fb::CancelRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::PronGuessResponse::Verify(siri::speech::schema_fb::PronGuessResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                {
                  v16 = this + v15 + *(this + v15);
                }

                else
                {
                  v16 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = (this - *this);
                    if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                    {
                      v19 = this + v18 + *(this + v18);
                    }

                    else
                    {
                      v19 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                    if (result)
                    {
                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v20 = (this - *this);
                        if (*v20 < 0xFu || (v21 = v20[7]) == 0 || (result = siri::speech::schema_fb::VocToken::Verify((this + v21 + *(this + v21)), a2)))
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                          if (result)
                          {
                            v22 = *this;
                            v23 = -v22;
                            v24 = (this - v22);
                            if (*v24 >= 0x11u)
                            {
                              v25 = v24[8];
                              if (v25)
                              {
                                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v25 + *(this + v25), 4uLL, 0);
                                if (!result)
                                {
                                  return result;
                                }

                                v23 = -*this;
                              }
                            }

                            v26 = (this + v23);
                            if (*v26 >= 0x11u && (v27 = v26[8]) != 0)
                            {
                              v28 = (this + v27 + *(this + v27));
                            }

                            else
                            {
                              v28 = 0;
                            }

                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Pronunciation>(a2, v28);
                            if (result)
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                              if (result)
                              {
                                v29 = *this;
                                v30 = -v29;
                                v31 = (this - v29);
                                if (*v31 >= 0x13u)
                                {
                                  v32 = v31[9];
                                  if (v32)
                                  {
                                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v32 + *(this + v32), 4uLL, 0);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v30 = -*this;
                                  }
                                }

                                v33 = (this + v30);
                                if (*v33 >= 0x13u && (v34 = v33[9]) != 0)
                                {
                                  v35 = (this + v34 + *(this + v34));
                                }

                                else
                                {
                                  v35 = 0;
                                }

                                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v35);
                                if (result)
                                {
                                  --*(a2 + 4);
                                  return 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::Pronunciation>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::Pronunciation::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::VocToken::Verify(siri::speech::schema_fb::VocToken *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v9 + *(this + v9), 1uLL, 0)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::Pronunciation::Verify(siri::speech::schema_fb::Pronunciation *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::AsrRecognitionMessage::Verify(siri::speech::qss_fb::AsrRecognitionMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          v10 = 0;
          if (v9 < 5)
          {
            goto LABEL_15;
          }
        }

        else if (v8[3])
        {
          v10 = (this + v8[3] + *(this + v8[3]));
        }

        else
        {
          v10 = 0;
        }

        v11 = v8[2];
        if (v11)
        {
          v12 = *(this + v11);
          goto LABEL_16;
        }

LABEL_15:
        v12 = 0;
LABEL_16:
        result = siri::speech::qss_fb::AsrRecognitionMessage_::VerifySessionMessageUnion(a2, v10, v12);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::AsrRecognitionMessage_::VerifySessionMessageUnion(apple::aiml::flatbuffers2::Verifier *a1, siri::speech::schema_fb::MultiUserFinalSpeechRecognitionResponse *this, int a3)
{
  switch(a3)
  {
    case 1:
      if (!this)
      {
        goto LABEL_101;
      }

      return siri::speech::schema_fb::StartSpeechRequest::Verify(this, a1);
    case 2:
      if (!this)
      {
        goto LABEL_101;
      }

      return siri::speech::schema_fb::UserParameters::Verify(this, a1);
    case 3:
      if (!this)
      {
        goto LABEL_101;
      }

      return siri::speech::schema_fb::SetRequestOrigin::Verify(this, a1);
    case 4:
      if (!this)
      {
        goto LABEL_101;
      }

      return siri::speech::schema_fb::SetSpeechContext::Verify(this, a1);
    case 5:
      if (!this)
      {
        goto LABEL_101;
      }

      return siri::speech::schema_fb::SetSpeechProfile::Verify(this, a1);
    case 6:
      if (!this)
      {
        goto LABEL_101;
      }

      v5 = this;
      v6 = a1;

      goto LABEL_64;
    case 7:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::AudioPacket::Verify(this, a1);
      break;
    case 8:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::FinishAudio::Verify(this, a1);
      break;
    case 9:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::ResetServerEndpointer::Verify(this, a1);
      break;
    case 10:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::CheckForSpeechRequest::Verify(this, a1);
      break;
    case 11:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify(this, a1);
      break;
    case 12:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(this, a1);
      break;
    case 13:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::MultiUserFinalSpeechRecognitionResponse::Verify(this, a1);
      break;
    case 14:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(this, a1);
      break;
    case 15:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::UpdatedAcousticProfile::Verify(this, a1);
      break;
    case 16:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::EndPointLikelihood::Verify(this, a1);
      break;
    case 17:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::EndPointCandidate::Verify(this, a1);
      break;
    case 18:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::qss_fb::ErrorMessage::Verify(this, a1);
      break;
    case 19:
      if (!this)
      {
        goto LABEL_101;
      }

      v5 = this;
      v6 = a1;

LABEL_64:
      result = siri::speech::schema_fb::SetEndpointerState::Verify(v5, v6);
      break;
    case 20:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::RecognitionCandidate::Verify(this, a1);
      break;
    case 21:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::MultiUserRecognitionCandidate::Verify(this, a1);
      break;
    case 22:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::RequestStatsResponse::Verify(this, a1);
      break;
    case 23:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::ServerEndpointFeatures::Verify(this, a1);
      break;
    case 24:
      if (!this)
      {
        goto LABEL_101;
      }

      result = siri::speech::schema_fb::ClientSetupInfo::Verify(this, a1);
      break;
    case 25:
      if (!this)
      {
        goto LABEL_101;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a1, this);
      if (result)
      {
        --*(a1 + 4);
LABEL_101:
        result = 1;
      }

      break;
    default:
      goto LABEL_101;
  }

  return result;
}

BOOL siri::speech::schema_fb::StartSpeechRequest::Verify(siri::speech::schema_fb::StartSpeechRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    v17 = (this - *this);
                    v18 = *v17;
                    if (v18 < 0xD || (!v17[6] || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v17[6] - *a2) && (v18 < 0xF || (!v17[7] || (result = 0, v20 = *(a2 + 1), v20 >= 2) && v20 - 1 >= this + v17[7] - *a2) && (v18 < 0x11 || (v21 = v17[8]) == 0 || (result = 0, v22 = *(a2 + 1), v22 >= 2) && v22 - 1 >= this + v21 - *a2)))
                    {
                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                      if (result)
                      {
                        v23 = (this - *this);
                        if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
                        {
                          v25 = this + v24 + *(this + v24);
                        }

                        else
                        {
                          v25 = 0;
                        }

                        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v25);
                        if (result)
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                          if (result)
                          {
                            v26 = (this - *this);
                            if (*v26 >= 0x15u && (v27 = v26[10]) != 0)
                            {
                              v28 = this + v27 + *(this + v27);
                            }

                            else
                            {
                              v28 = 0;
                            }

                            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v28);
                            if (result)
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                              if (result)
                              {
                                v29 = (this - *this);
                                if (*v29 >= 0x17u && (v30 = v29[11]) != 0)
                                {
                                  v31 = this + v30 + *(this + v30);
                                }

                                else
                                {
                                  v31 = 0;
                                }

                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v31);
                                if (result)
                                {
                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x18u);
                                  if (result)
                                  {
                                    v32 = (this - *this);
                                    if (*v32 >= 0x19u && (v33 = v32[12]) != 0)
                                    {
                                      v34 = this + v33 + *(this + v33);
                                    }

                                    else
                                    {
                                      v34 = 0;
                                    }

                                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v34);
                                    if (result)
                                    {
                                      v35 = (this - *this);
                                      v36 = *v35;
                                      if (v36 < 0x1B)
                                      {
                                        goto LABEL_197;
                                      }

                                      if (!v35[13] || (result = 0, v37 = *(a2 + 1), v37 >= 5) && v37 - 4 >= this + v35[13] - *a2)
                                      {
                                        if (v36 < 0x1D || (!v35[14] || (result = 0, v38 = *(a2 + 1), v38 >= 2) && v38 - 1 >= this + v35[14] - *a2) && (v36 < 0x1F || (!v35[15] || (result = 0, v39 = *(a2 + 1), v39 >= 2) && v39 - 1 >= this + v35[15] - *a2) && (v36 < 0x21 || (v40 = v35[16]) == 0 || (result = 0, v41 = *(a2 + 1), v41 >= 2) && v41 - 1 >= this + v40 - *a2)))
                                        {
LABEL_197:
                                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x22u);
                                          if (result)
                                          {
                                            v42 = (this - *this);
                                            if (*v42 >= 0x23u && (v43 = v42[17]) != 0)
                                            {
                                              v44 = this + v43 + *(this + v43);
                                            }

                                            else
                                            {
                                              v44 = 0;
                                            }

                                            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v44);
                                            if (result)
                                            {
                                              v45 = (this - *this);
                                              v46 = *v45;
                                              if (v46 < 0x25)
                                              {
                                                goto LABEL_198;
                                              }

                                              if (!v45[18] || (result = 0, v47 = *(a2 + 1), v47 >= 5) && v47 - 4 >= this + v45[18] - *a2)
                                              {
                                                if (v46 < 0x27)
                                                {
                                                  goto LABEL_198;
                                                }

                                                if (!v45[19] || (result = 0, v48 = *(a2 + 1), v48 >= 5) && v48 - 4 >= this + v45[19] - *a2)
                                                {
                                                  if (v46 < 0x29)
                                                  {
                                                    goto LABEL_198;
                                                  }

                                                  if (!v45[20] || (result = 0, v49 = *(a2 + 1), v49 >= 2) && v49 - 1 >= this + v45[20] - *a2)
                                                  {
                                                    if (v46 < 0x2B)
                                                    {
                                                      goto LABEL_198;
                                                    }

                                                    if (!v45[21] || (result = 0, v50 = *(a2 + 1), v50 >= 2) && v50 - 1 >= this + v45[21] - *a2)
                                                    {
                                                      if (v46 < 0x2D)
                                                      {
                                                        goto LABEL_198;
                                                      }

                                                      if (!v45[22] || (result = 0, v51 = *(a2 + 1), v51 >= 2) && v51 - 1 >= this + v45[22] - *a2)
                                                      {
                                                        if (v46 < 0x2F || (!v45[23] || (result = 0, v52 = *(a2 + 1), v52 >= 9) && v52 - 8 >= this + v45[23] - *a2) && (v46 < 0x31 || (!v45[24] || (result = 0, v53 = *(a2 + 1), v53 >= 9) && v53 - 8 >= this + v45[24] - *a2) && (v46 < 0x33 || (v54 = v45[25]) == 0 || (result = 0, v55 = *(a2 + 1), v55 >= 2) && v55 - 1 >= this + v54 - *a2)))
                                                        {
LABEL_198:
                                                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x34u);
                                                          if (result)
                                                          {
                                                            v56 = (this - *this);
                                                            if (*v56 >= 0x35u && (v57 = v56[26]) != 0)
                                                            {
                                                              v58 = this + v57 + *(this + v57);
                                                            }

                                                            else
                                                            {
                                                              v58 = 0;
                                                            }

                                                            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v58);
                                                            if (result)
                                                            {
                                                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x36u);
                                                              if (result)
                                                              {
                                                                v59 = (this - *this);
                                                                if (*v59 >= 0x37u && (v60 = v59[27]) != 0)
                                                                {
                                                                  v61 = this + v60 + *(this + v60);
                                                                }

                                                                else
                                                                {
                                                                  v61 = 0;
                                                                }

                                                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v61);
                                                                if (result)
                                                                {
                                                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x38u);
                                                                  if (result)
                                                                  {
                                                                    v62 = (this - *this);
                                                                    if (*v62 >= 0x39u && (v63 = v62[28]) != 0)
                                                                    {
                                                                      v64 = this + v63 + *(this + v63);
                                                                    }

                                                                    else
                                                                    {
                                                                      v64 = 0;
                                                                    }

                                                                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v64);
                                                                    if (result)
                                                                    {
                                                                      v65 = (this - *this);
                                                                      v66 = *v65;
                                                                      if (v66 < 0x3B || (!v65[29] || (result = 0, v67 = *(a2 + 1), v67 >= 5) && v67 - 4 >= this + v65[29] - *a2) && (v66 < 0x3D || (!v65[30] || (result = 0, v68 = *(a2 + 1), v68 >= 2) && v68 - 1 >= this + v65[30] - *a2) && (v66 < 0x3F || (v69 = v65[31]) == 0 || (result = 0, v70 = *(a2 + 1), v70 >= 2) && v70 - 1 >= this + v69 - *a2)))
                                                                      {
                                                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x40u);
                                                                        if (result)
                                                                        {
                                                                          v71 = (this - *this);
                                                                          if (*v71 >= 0x41u && (v72 = v71[32]) != 0)
                                                                          {
                                                                            v73 = this + v72 + *(this + v72);
                                                                          }

                                                                          else
                                                                          {
                                                                            v73 = 0;
                                                                          }

                                                                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v73);
                                                                          if (result)
                                                                          {
                                                                            v74 = (this - *this);
                                                                            if (*v74 < 0x43u || (v75 = v74[33]) == 0 || (result = 0, v76 = *(a2 + 1), v76 >= 5) && v76 - 4 >= this + v75 - *a2)
                                                                            {
                                                                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x44u);
                                                                              if (result)
                                                                              {
                                                                                v77 = (this - *this);
                                                                                if (*v77 >= 0x45u && (v78 = v77[34]) != 0)
                                                                                {
                                                                                  v79 = this + v78 + *(this + v78);
                                                                                }

                                                                                else
                                                                                {
                                                                                  v79 = 0;
                                                                                }

                                                                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v79);
                                                                                if (result)
                                                                                {
                                                                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x46u);
                                                                                  if (result)
                                                                                  {
                                                                                    v80 = (this - *this);
                                                                                    if (*v80 >= 0x47u && (v81 = v80[35]) != 0)
                                                                                    {
                                                                                      v82 = this + v81 + *(this + v81);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v82 = 0;
                                                                                    }

                                                                                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v82);
                                                                                    if (result)
                                                                                    {
                                                                                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x48u);
                                                                                      if (result)
                                                                                      {
                                                                                        v83 = (this - *this);
                                                                                        if (*v83 >= 0x49u && (v84 = v83[36]) != 0)
                                                                                        {
                                                                                          v85 = this + v84 + *(this + v84);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v85 = 0;
                                                                                        }

                                                                                        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v85);
                                                                                        if (result)
                                                                                        {
                                                                                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x4Au);
                                                                                          if (result)
                                                                                          {
                                                                                            v86 = *this;
                                                                                            v87 = -v86;
                                                                                            v88 = (this - v86);
                                                                                            if (*v88 >= 0x4Bu)
                                                                                            {
                                                                                              v89 = v88[37];
                                                                                              if (v89)
                                                                                              {
                                                                                                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v89 + *(this + v89), 4uLL, 0);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v87 = -*this;
                                                                                              }
                                                                                            }

                                                                                            v90 = (this + v87);
                                                                                            if (*v90 >= 0x4Bu && (v91 = v90[37]) != 0)
                                                                                            {
                                                                                              v92 = (this + v91 + *(this + v91));
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v92 = 0;
                                                                                            }

                                                                                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(a2, v92);
                                                                                            if (result)
                                                                                            {
                                                                                              v93 = (this - *this);
                                                                                              if (*v93 < 0x4Du || (v94 = v93[38]) == 0 || (result = 0, v95 = *(a2 + 1), v95 >= 5) && v95 - 4 >= this + v94 - *a2)
                                                                                              {
                                                                                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x4Eu);
                                                                                                if (result)
                                                                                                {
                                                                                                  v96 = (this - *this);
                                                                                                  if (*v96 >= 0x4Fu && (v97 = v96[39]) != 0)
                                                                                                  {
                                                                                                    v98 = this + v97 + *(this + v97);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v98 = 0;
                                                                                                  }

                                                                                                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v98);
                                                                                                  if (result)
                                                                                                  {
                                                                                                    --*(a2 + 4);
                                                                                                    return 1;
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::UserParameters>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::UserParameters::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::UserParameters::Verify(siri::speech::schema_fb::UserParameters *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::SetRequestOrigin::Verify(siri::speech::schema_fb::SetRequestOrigin *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 9) && v8 - 8 >= this + v5[3] - *a2) && (v6 < 9 || (v9 = v5[4]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 2) && v10 - 1 >= this + v9 - *a2)))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::SetSpeechContext::Verify(siri::speech::schema_fb::SetSpeechContext *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v11);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v12 = (this - *this);
          if (*v12 >= 7u && (v13 = v12[3]) != 0)
          {
            v14 = this + v13 + *(this + v13);
          }

          else
          {
            v14 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v14);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v15 = (this - *this);
              if (*v15 >= 9u && (v16 = v15[4]) != 0)
              {
                v17 = this + v16 + *(this + v16);
              }

              else
              {
                v17 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v18 = *this;
                  v19 = -v18;
                  v20 = (this - v18);
                  if (*v20 >= 0xBu)
                  {
                    v21 = v20[5];
                    if (v21)
                    {
                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v21 + *(this + v21), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v19 = -*this;
                    }
                  }

                  v22 = (this + v19);
                  if (*v22 >= 0xBu && (v23 = v22[5]) != 0)
                  {
                    v24 = (this + v23 + *(this + v23));
                  }

                  else
                  {
                    v24 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ContextWithPronHints>(a2, v24);
                  if (result)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ContextWithPronHints>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::ContextWithPronHints::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::ContextWithPronHints::Verify(siri::speech::schema_fb::ContextWithPronHints *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          v9 = -v8;
          v10 = (this - v8);
          if (*v10 >= 7u)
          {
            v11 = v10[3];
            if (v11)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v11 + *(this + v11), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v9 = -*this;
            }
          }

          v12 = (this + v9);
          if (*v12 >= 7u && (v13 = v12[3]) != 0)
          {
            v14 = (this + v13 + *(this + v13));
          }

          else
          {
            v14 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v14);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::SetSpeechProfile::Verify(siri::speech::schema_fb::SetSpeechProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = siri::speech::schema_fb::UserLanguageProfile::Verify((this + v12 + *(this + v12)), a2)))
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v13 = (this - *this);
                  if (*v13 < 0xBu || (v14 = v13[5]) == 0 || (result = siri::speech::schema_fb::UserAcousticProfile::Verify((this + v14 + *(this + v14)), a2)))
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v15 = (this - *this);
                      if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                      {
                        v17 = this + v16 + *(this + v16);
                      }

                      else
                      {
                        v17 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
                      if (result)
                      {
                        --*(a2 + 4);
                        return 1;
                      }
                    }
                  }
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

BOOL siri::speech::schema_fb::UserLanguageProfile::Verify(siri::speech::schema_fb::UserLanguageProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 1uLL, 0)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 >= 7u && (v8 = v7[3]) != 0)
          {
            v9 = this + v8 + *(this + v8);
          }

          else
          {
            v9 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v9);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v10 = (this - *this);
              if (*v10 >= 9u && (v11 = v10[4]) != 0)
              {
                v12 = this + v11 + *(this + v11);
              }

              else
              {
                v12 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v12);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::UserAcousticProfile::Verify(siri::speech::schema_fb::UserAcousticProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v9 + *(this + v9), 1uLL, 0)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v10 = (this - *this);
              if (*v10 >= 9u && (v11 = v10[4]) != 0)
              {
                v12 = this + v11 + *(this + v11);
              }

              else
              {
                v12 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v12);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::SetEndpointerState::Verify(siri::speech::schema_fb::SetEndpointerState *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::ResetServerEndpointer::Verify(siri::speech::schema_fb::ResetServerEndpointer *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v6 - *a2)
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::CheckForSpeechRequest::Verify(siri::speech::schema_fb::CheckForSpeechRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 9) && v9 - 8 >= this + v8 - *a2))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify(siri::speech::schema_fb::SetAlternateRecognitionSausage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokensAlternatives>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RecognitionPhraseTokensAlternatives::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::RecognitionPhraseTokensAlternatives::Verify(siri::speech::schema_fb::RecognitionPhraseTokensAlternatives *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokens>(a2, v11);
      if (result)
      {
        v12 = (this - *this);
        if (*v12 < 7u || (v13 = v12[3]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 2) && v14 - 1 >= this + v13 - *a2)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokens>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RecognitionPhraseTokens::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::RecognitionPhraseTokens::Verify(siri::speech::schema_fb::RecognitionPhraseTokens *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionToken>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionToken>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RecognitionToken::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::RecognitionToken::Verify(siri::speech::schema_fb::RecognitionToken *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          goto LABEL_43;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          if (v9 < 9)
          {
            goto LABEL_43;
          }

          if (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2)
          {
            if (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (!v8[6] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v8[6] - *a2) && (v9 < 0xF || (v14 = v8[7]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 2) && v15 - 1 >= this + v14 - *a2)))
            {
LABEL_43:
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
              if (result)
              {
                v16 = (this - *this);
                if (*v16 >= 0x11u && (v17 = v16[8]) != 0)
                {
                  v18 = this + v17 + *(this + v17);
                }

                else
                {
                  v18 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v18);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                  if (result)
                  {
                    v19 = (this - *this);
                    if (*v19 >= 0x13u && (v20 = v19[9]) != 0)
                    {
                      v21 = this + v20 + *(this + v20);
                    }

                    else
                    {
                      v21 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v21);
                    if (result)
                    {
                      --*(a2 + 4);
                      return 1;
                    }
                  }
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

BOOL siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify(siri::speech::schema_fb::FinalSpeechRecognitionResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                {
                  v16 = this + v15 + *(this + v15);
                }

                else
                {
                  v16 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = *this;
                    v18 = -v17;
                    v19 = (this - v17);
                    if (*v19 >= 0xDu)
                    {
                      v20 = v19[6];
                      if (v20)
                      {
                        result = siri::speech::schema_fb::RecognitionResult::Verify((this + v20 + *(this + v20)), a2);
                        if (!result)
                        {
                          return result;
                        }

                        v18 = -*this;
                      }
                    }

                    v21 = (this + v18);
                    if (*v21 < 0xFu || (v22 = v21[7]) == 0 || (result = 0, v23 = *(a2 + 1), v23 >= 5) && v23 - 4 >= this + v22 - *a2)
                    {
                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                      if (result)
                      {
                        v24 = *this;
                        v25 = -v24;
                        v26 = (this - v24);
                        if (*v26 >= 0x11u)
                        {
                          v27 = v26[8];
                          if (v27)
                          {
                            result = siri::speech::schema_fb::AudioAnalytics::Verify((this + v27 + *(this + v27)), a2);
                            if (!result)
                            {
                              return result;
                            }

                            v25 = -*this;
                          }
                        }

                        v28 = (this + v25);
                        v29 = *v28;
                        if (v29 < 0x13 || (!v28[9] || (result = 0, v30 = *(a2 + 1), v30 >= 5) && v30 - 4 >= this + v28[9] - *a2) && (v29 < 0x15 || (v31 = v28[10]) == 0 || (result = 0, v32 = *(a2 + 1), v32 >= 9) && v32 - 8 >= this + v31 - *a2))
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                          if (result)
                          {
                            v33 = (this - *this);
                            if (*v33 >= 0x17u && (v34 = v33[11]) != 0)
                            {
                              v35 = this + v34 + *(this + v34);
                            }

                            else
                            {
                              v35 = 0;
                            }

                            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v35);
                            if (result)
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x18u);
                              if (result)
                              {
                                v36 = (this - *this);
                                if (*v36 < 0x19u || (v37 = v36[12]) == 0 || (result = siri::speech::schema_fb::LatnnMitigatorResult::Verify((this + v37 + *(this + v37)), a2)))
                                {
                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Au);
                                  if (result)
                                  {
                                    v38 = (this - *this);
                                    if (*v38 >= 0x1Bu && (v39 = v38[13]) != 0)
                                    {
                                      v40 = this + v39 + *(this + v39);
                                    }

                                    else
                                    {
                                      v40 = 0;
                                    }

                                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v40);
                                    if (result)
                                    {
                                      v41 = (this - *this);
                                      v42 = *v41;
                                      if (v42 < 0x1D || (!v41[14] || (result = 0, v43 = *(a2 + 1), v43 >= 2) && v43 - 1 >= this + v41[14] - *a2) && (v42 < 0x1F || (v44 = v41[15]) == 0 || (result = 0, v45 = *(a2 + 1), v45 >= 2) && v45 - 1 >= this + v44 - *a2))
                                      {
                                        --*(a2 + 4);
                                        return 1;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
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

BOOL siri::speech::schema_fb::RecognitionResult::Verify(siri::speech::schema_fb::RecognitionResult *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::SetAlternateRecognitionSausage::Verify((this + v8 + *(this + v8)), a2)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v9 = *this;
              v10 = -v9;
              v11 = (this - v9);
              if (*v11 >= 9u)
              {
                v12 = v11[4];
                if (v12)
                {
                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v12 + *(this + v12), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v10 = -*this;
                }
              }

              v13 = (this + v10);
              if (*v13 >= 9u && (v14 = v13[4]) != 0)
              {
                v15 = (this + v14 + *(this + v14));
              }

              else
              {
                v15 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v15);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v16 = *this;
                  v17 = -v16;
                  v18 = (this - v16);
                  if (*v18 >= 0xBu)
                  {
                    v19 = v18[5];
                    if (v19)
                    {
                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v19 + *(this + v19), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v17 = -*this;
                    }
                  }

                  v20 = (this + v17);
                  if (*v20 >= 0xBu && (v21 = v20[5]) != 0)
                  {
                    v22 = (this + v21 + *(this + v21));
                  }

                  else
                  {
                    v22 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(a2, v22);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v23 = *this;
                      v24 = -v23;
                      v25 = (this - v23);
                      if (*v25 >= 0xDu)
                      {
                        v26 = v25[6];
                        if (v26)
                        {
                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v26 + *(this + v26), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v24 = -*this;
                        }
                      }

                      v27 = (this + v24);
                      if (*v27 >= 0xDu && (v28 = v27[6]) != 0)
                      {
                        v29 = (this + v28 + *(this + v28));
                      }

                      else
                      {
                        v29 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ItnAlignment>(a2, v29);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v30 = *this;
                          v31 = -v30;
                          v32 = (this - v30);
                          if (*v32 >= 0xFu)
                          {
                            v33 = v32[7];
                            if (v33)
                            {
                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v33 + *(this + v33), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v31 = -*this;
                            }
                          }

                          v34 = (this + v31);
                          if (*v34 >= 0xFu && (v35 = v34[7]) != 0)
                          {
                            v36 = (this + v35 + *(this + v35));
                          }

                          else
                          {
                            v36 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ChoiceAlignment>(a2, v36);
                          if (result)
                          {
                            --*(a2 + 4);
                            return 1;
                          }
                        }
                      }
                    }
                  }
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RecognitionChoice::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ItnAlignment>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::ItnAlignment::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ChoiceAlignment>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::ChoiceAlignment::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::RecognitionChoice::Verify(siri::speech::schema_fb::RecognitionChoice *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 < 7u || (v10 = v9[3]) == 0 || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v10 - *a2)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::ItnAlignment::Verify(siri::speech::schema_fb::ItnAlignment *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_18;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      if (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2) && (v6 < 0xB || (v10 = v5[5]) == 0 || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v10 - *a2)))
      {
LABEL_18:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::ChoiceAlignment::Verify(siri::speech::schema_fb::ChoiceAlignment *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v6 + *(this + v6), 4uLL, 0)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          v8 = -v7;
          v9 = (this - v7);
          if (*v9 >= 7u)
          {
            v10 = v9[3];
            if (v10)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v10 + *(this + v10), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v8 = -*this;
            }
          }

          v11 = (this + v8);
          if (*v11 >= 7u && (v12 = v11[3]) != 0)
          {
            v13 = (this + v12 + *(this + v12));
          }

          else
          {
            v13 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedItnAlignment>(a2, v13);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RepeatedItnAlignment>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RepeatedItnAlignment::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::RepeatedItnAlignment::Verify(siri::speech::schema_fb::RepeatedItnAlignment *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::ItnAlignment>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::AudioAnalytics::Verify(siri::speech::schema_fb::AudioAnalytics *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>(a2, v11);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v12 = *this;
          v13 = -v12;
          v14 = (this - v12);
          if (*v14 >= 7u)
          {
            v15 = v14[3];
            if (v15)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v15 + *(this + v15), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = -*this;
            }
          }

          v16 = (this + v13);
          if (*v16 >= 7u && (v17 = v16[3]) != 0)
          {
            v18 = (this + v17 + *(this + v17));
          }

          else
          {
            v18 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry>(a2, v18);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry::Verify(siri::speech::schema_fb::AudioAnalytics_::AcousticFeaturesEntry *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = siri::speech::schema_fb::RecognitionChoice::Verify((this + v9 + *(this + v9)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::LatnnMitigatorResult::Verify(siri::speech::schema_fb::LatnnMitigatorResult *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 >= 7u && (v9 = v8[3]) != 0)
        {
          v10 = this + v9 + *(this + v9);
        }

        else
        {
          v10 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
        if (result)
        {
          v11 = (this - *this);
          v12 = *v11;
          if (v12 < 9)
          {
            goto LABEL_28;
          }

          if (!v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 9) && v13 - 8 >= this + v11[4] - *a2)
          {
            if (v12 < 0xB || (!v11[5] || (result = 0, v14 = *(a2 + 1), v14 >= 9) && v14 - 8 >= this + v11[5] - *a2) && (v12 < 0xD || (!v11[6] || (result = 0, v15 = *(a2 + 1), v15 >= 5) && v15 - 4 >= this + v11[6] - *a2) && (v12 < 0xF || (v16 = v11[7]) == 0 || (result = 0, v17 = *(a2 + 1), v17 >= 5) && v17 - 4 >= this + v16 - *a2)))
            {
LABEL_28:
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::MultiUserFinalSpeechRecognitionResponse::Verify(siri::speech::schema_fb::MultiUserFinalSpeechRecognitionResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::FinalSpeechRecognitionResponse>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::FinalSpeechRecognitionResponse>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::FinalSpeechRecognitionResponse::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::PartialSpeechRecognitionResponse::Verify(siri::speech::schema_fb::PartialSpeechRecognitionResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                {
                  v16 = this + v15 + *(this + v15);
                }

                else
                {
                  v16 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = (this - *this);
                    if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                    {
                      v19 = this + v18 + *(this + v18);
                    }

                    else
                    {
                      v19 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                    if (result)
                    {
                      v20 = (this - *this);
                      v21 = *v20;
                      if (v21 < 0xF || (!v20[7] || (result = 0, v22 = *(a2 + 1), v22 >= 2) && v22 - 1 >= this + v20[7] - *a2) && (v21 < 0x11 || (!v20[8] || (result = 0, v23 = *(a2 + 1), v23 >= 5) && v23 - 4 >= this + v20[8] - *a2) && (v21 < 0x13 || (v24 = v20[9]) == 0 || (result = 0, v25 = *(a2 + 1), v25 >= 5) && v25 - 4 >= this + v24 - *a2)))
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                        if (result)
                        {
                          v26 = (this - *this);
                          if (*v26 >= 0x15u && (v27 = v26[10]) != 0)
                          {
                            v28 = this + v27 + *(this + v27);
                          }

                          else
                          {
                            v28 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v28);
                          if (result)
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                            if (result)
                            {
                              v29 = (this - *this);
                              if (*v29 >= 0x17u && (v30 = v29[11]) != 0)
                              {
                                v31 = this + v30 + *(this + v30);
                              }

                              else
                              {
                                v31 = 0;
                              }

                              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v31);
                              if (result)
                              {
                                --*(a2 + 4);
                                return 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
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

BOOL siri::speech::schema_fb::UpdatedAcousticProfile::Verify(siri::speech::schema_fb::UpdatedAcousticProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                {
                  v16 = this + v15 + *(this + v15);
                }

                else
                {
                  v16 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = (this - *this);
                    if (*v17 < 0xDu || (v18 = v17[6]) == 0 || (result = siri::speech::schema_fb::UserAcousticProfile::Verify((this + v18 + *(this + v18)), a2)))
                    {
                      --*(a2 + 4);
                      return 1;
                    }
                  }
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

BOOL siri::speech::schema_fb::EndPointLikelihood::Verify(siri::speech::schema_fb::EndPointLikelihood *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                {
                  v16 = this + v15 + *(this + v15);
                }

                else
                {
                  v16 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  v17 = (this - *this);
                  if (*v17 < 0xDu || (v18 = v17[6]) == 0 || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v18 - *a2)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
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

BOOL siri::speech::schema_fb::EndPointCandidate::Verify(siri::speech::schema_fb::EndPointCandidate *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                {
                  v16 = this + v15 + *(this + v15);
                }

                else
                {
                  v16 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  v17 = (this - *this);
                  v18 = *v17;
                  if (v18 < 0xD || (!v17[6] || (result = 0, v19 = *(a2 + 1), v19 >= 5) && v19 - 4 >= this + v17[6] - *a2) && (v18 < 0xF || (v20 = v17[7]) == 0 || (result = 0, v21 = *(a2 + 1), v21 >= 5) && v21 - 4 >= this + v20 - *a2))
                  {
                    --*(a2 + 4);
                    return 1;
                  }
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

BOOL siri::speech::schema_fb::RecognitionCandidate::Verify(siri::speech::schema_fb::RecognitionCandidate *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 < 9u || (v12 = v11[4]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                {
                  v16 = this + v15 + *(this + v15);
                }

                else
                {
                  v16 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = (this - *this);
                    if (*v17 < 0xDu || (v18 = v17[6]) == 0 || (result = siri::speech::schema_fb::RecognitionResult::Verify((this + v18 + *(this + v18)), a2)))
                    {
                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v19 = (this - *this);
                        if (*v19 >= 0xFu && (v20 = v19[7]) != 0)
                        {
                          v21 = this + v20 + *(this + v20);
                        }

                        else
                        {
                          v21 = 0;
                        }

                        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v21);
                        if (result)
                        {
                          v22 = (this - *this);
                          v23 = *v22;
                          if (v23 < 0x11 || (!v22[8] || (result = 0, v24 = *(a2 + 1), v24 >= 9) && v24 - 8 >= this + v22[8] - *a2) && (v23 < 0x13 || (v25 = v22[9]) == 0 || (result = 0, v26 = *(a2 + 1), v26 >= 5) && v26 - 4 >= this + v25 - *a2))
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                            if (result)
                            {
                              v27 = *this;
                              v28 = -v27;
                              v29 = (this - v27);
                              if (*v29 >= 0x15u)
                              {
                                v30 = v29[10];
                                if (v30)
                                {
                                  result = siri::speech::schema_fb::AudioAnalytics::Verify((this + v30 + *(this + v30)), a2);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v28 = -*this;
                                }
                              }

                              v31 = (this + v28);
                              v32 = *v31;
                              if (v32 < 0x17 || (!v31[11] || (result = 0, v33 = *(a2 + 1), v33 >= 5) && v33 - 4 >= this + v31[11] - *a2) && (v32 < 0x19 || (v34 = v31[12]) == 0 || (result = 0, v35 = *(a2 + 1), v35 >= 9) && v35 - 8 >= this + v34 - *a2))
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Au);
                                if (result)
                                {
                                  v36 = (this - *this);
                                  if (*v36 >= 0x1Bu && (v37 = v36[13]) != 0)
                                  {
                                    v38 = this + v37 + *(this + v37);
                                  }

                                  else
                                  {
                                    v38 = 0;
                                  }

                                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v38);
                                  if (result)
                                  {
                                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Cu);
                                    if (result)
                                    {
                                      v39 = (this - *this);
                                      if (*v39 < 0x1Du || (v40 = v39[14]) == 0 || (result = siri::speech::schema_fb::LatnnMitigatorResult::Verify((this + v40 + *(this + v40)), a2)))
                                      {
                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Eu);
                                        if (result)
                                        {
                                          v41 = (this - *this);
                                          if (*v41 >= 0x1Fu && (v42 = v41[15]) != 0)
                                          {
                                            v43 = this + v42 + *(this + v42);
                                          }

                                          else
                                          {
                                            v43 = 0;
                                          }

                                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v43);
                                          if (result)
                                          {
                                            v44 = (this - *this);
                                            if (*v44 < 0x21u || (v45 = v44[16]) == 0 || (result = 0, v46 = *(a2 + 1), v46 >= 2) && v46 - 1 >= this + v45 - *a2)
                                            {
                                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x22u);
                                              if (result)
                                              {
                                                v47 = (this - *this);
                                                if (*v47 >= 0x23u && (v48 = v47[17]) != 0)
                                                {
                                                  v49 = this + v48 + *(this + v48);
                                                }

                                                else
                                                {
                                                  v49 = 0;
                                                }

                                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v49);
                                                if (result)
                                                {
                                                  --*(a2 + 4);
                                                  return 1;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
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

BOOL siri::speech::schema_fb::MultiUserRecognitionCandidate::Verify(siri::speech::schema_fb::MultiUserRecognitionCandidate *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionCandidate>(a2, v11);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionCandidate>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RecognitionCandidate::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::RequestStatsResponse::Verify(siri::speech::schema_fb::RequestStatsResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      v6 = -v5;
      v7 = (this - v5);
      if (*v7 >= 5u)
      {
        v8 = v7[2];
        if (v8)
        {
          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v8 + *(this + v8), 4uLL, 0);
          if (!result)
          {
            return result;
          }

          v6 = -*this;
        }
      }

      v9 = (this + v6);
      if (*v9 >= 5u && (v10 = v9[2]) != 0)
      {
        v11 = (this + v10 + *(this + v10));
      }

      else
      {
        v11 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::BoolStat>(a2, v11);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v12 = *this;
          v13 = -v12;
          v14 = (this - v12);
          if (*v14 >= 7u)
          {
            v15 = v14[3];
            if (v15)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v15 + *(this + v15), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = -*this;
            }
          }

          v16 = (this + v13);
          if (*v16 >= 7u && (v17 = v16[3]) != 0)
          {
            v18 = (this + v17 + *(this + v17));
          }

          else
          {
            v18 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>(a2, v18);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v19 = *this;
              v20 = -v19;
              v21 = (this - v19);
              if (*v21 >= 9u)
              {
                v22 = v21[4];
                if (v22)
                {
                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v22 + *(this + v22), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v20 = -*this;
                }
              }

              v23 = (this + v20);
              if (*v23 >= 9u && (v24 = v23[4]) != 0)
              {
                v25 = (this + v24 + *(this + v24));
              }

              else
              {
                v25 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>(a2, v25);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v26 = (this - *this);
                  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
                  {
                    v28 = this + v27 + *(this + v27);
                  }

                  else
                  {
                    v28 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v28);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v29 = (this - *this);
                      if (*v29 >= 0xDu && (v30 = v29[6]) != 0)
                      {
                        v31 = this + v30 + *(this + v30);
                      }

                      else
                      {
                        v31 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v31);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v32 = (this - *this);
                          if (*v32 >= 0xFu && (v33 = v32[7]) != 0)
                          {
                            v34 = this + v33 + *(this + v33);
                          }

                          else
                          {
                            v34 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v34);
                          if (result)
                          {
                            --*(a2 + 4);
                            return 1;
                          }
                        }
                      }
                    }
                  }
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::BoolStat>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RequestStatsResponse_::BoolStat::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::RequestStatsResponse_::DoubleStat::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::RequestStatsResponse_::BoolStat::Verify(siri::speech::schema_fb::RequestStatsResponse_::BoolStat *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 2) && v10 - 1 >= this + v9 - *a2)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::RequestStatsResponse_::DoubleStat::Verify(siri::speech::schema_fb::RequestStatsResponse_::DoubleStat *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = 0, v10 = *(a2 + 1), v10 >= 9) && v10 - 8 >= this + v9 - *a2)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::schema_fb::ServerEndpointFeatures::Verify(siri::speech::schema_fb::ServerEndpointFeatures *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_18;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      if (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2) && (v6 < 0xB || (v10 = v5[5]) == 0 || (result = 0, v11 = *(a2 + 1), v11 >= 9) && v11 - 8 >= this + v10 - *a2)))
      {
LABEL_18:
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
        if (result)
        {
          v12 = *this;
          v13 = -v12;
          v14 = (this - v12);
          if (*v14 >= 0xDu)
          {
            v15 = v14[6];
            if (v15)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v15 + *(this + v15), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v13 = -*this;
            }
          }

          v16 = (this + v13);
          if (*v16 < 0xFu || (v17 = v16[7]) == 0 || (result = 0, v18 = *(a2 + 1), v18 >= 9) && v18 - 8 >= this + v17 - *a2)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
            if (result)
            {
              v19 = (this - *this);
              if (*v19 >= 0x11u && (v20 = v19[8]) != 0)
              {
                v21 = this + v20 + *(this + v20);
              }

              else
              {
                v21 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v21);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                if (result)
                {
                  v22 = (this - *this);
                  if (*v22 >= 0x13u && (v23 = v22[9]) != 0)
                  {
                    v24 = this + v23 + *(this + v23);
                  }

                  else
                  {
                    v24 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v24);
                  if (result)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
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

BOOL siri::speech::schema_fb::ClientSetupInfo::Verify(siri::speech::schema_fb::ClientSetupInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 2) && v9 - 1 >= this + v8 - *a2))
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
      if (result)
      {
        v10 = (this - *this);
        if (*v10 >= 9u && (v11 = v10[4]) != 0)
        {
          v12 = this + v11 + *(this + v11);
        }

        else
        {
          v12 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v12);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::AsrErrorBlamerMessage::Verify(siri::speech::qss_fb::AsrErrorBlamerMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(this + v11);
  if (v12 != 2)
  {
    v13 = v12 != 1 || v10 == 0;
    if (!v13 && !siri::speech::schema_fb::ErrorBlamerRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::ErrorBlamerResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::ErrorBlamerRequest::Verify(siri::speech::schema_fb::ErrorBlamerRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::StartSpeechRequest::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this;
          v8 = -v7;
          v9 = (this - v7);
          if (*v9 >= 7u)
          {
            v10 = v9[3];
            if (v10)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v10 + *(this + v10), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v8 = -*this;
            }
          }

          v11 = (this + v8);
          if (*v11 >= 7u && (v12 = v11[3]) != 0)
          {
            v13 = (this + v12 + *(this + v12));
          }

          else
          {
            v13 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v13);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v14 = (this - *this);
              if (*v14 >= 9u && (v15 = v14[4]) != 0)
              {
                v16 = this + v15 + *(this + v15);
              }

              else
              {
                v16 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v17 = (this - *this);
                  if (*v17 >= 0xBu && (v18 = v17[5]) != 0)
                  {
                    v19 = this + v18 + *(this + v18);
                  }

                  else
                  {
                    v19 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v20 = (this - *this);
                      if (*v20 < 0xDu || (v21 = v20[6]) == 0 || (result = siri::speech::schema_fb::UserLanguageProfile::Verify((this + v21 + *(this + v21)), a2)))
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v22 = *this;
                          v23 = -v22;
                          v24 = (this - v22);
                          if (*v24 >= 0xFu)
                          {
                            v25 = v24[7];
                            if (v25)
                            {
                              result = siri::speech::schema_fb::UserAcousticProfile::Verify((this + v25 + *(this + v25)), a2);
                              if (!result)
                              {
                                return result;
                              }

                              v23 = -*this;
                            }
                          }

                          v26 = (this + v23);
                          v27 = *v26;
                          if (v27 < 0x11 || (!v26[8] || (result = 0, v28 = *(a2 + 1), v28 >= 9) && v28 - 8 >= this + v26[8] - *a2) && (v27 < 0x13 || (v29 = v26[9]) == 0 || (result = 0, v30 = *(a2 + 1), v30 >= 9) && v30 - 8 >= this + v29 - *a2))
                          {
                            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                            if (result)
                            {
                              v31 = *this;
                              v32 = -v31;
                              v33 = (this - v31);
                              if (*v33 >= 0x15u)
                              {
                                v34 = v33[10];
                                if (v34)
                                {
                                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v34 + *(this + v34), 4uLL, 0);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v32 = -*this;
                                }
                              }

                              v35 = (this + v32);
                              if (*v35 >= 0x15u && (v36 = v35[10]) != 0)
                              {
                                v37 = (this + v36 + *(this + v36));
                              }

                              else
                              {
                                v37 = 0;
                              }

                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioPacket>(a2, v37);
                              if (result)
                              {
                                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                                if (result)
                                {
                                  v38 = (this - *this);
                                  if (*v38 >= 0x17u && (v39 = v38[11]) != 0)
                                  {
                                    v40 = this + v39 + *(this + v39);
                                  }

                                  else
                                  {
                                    v40 = 0;
                                  }

                                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v40);
                                  if (result)
                                  {
                                    --*(a2 + 4);
                                    return 1;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioPacket>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::AudioPacket::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::ErrorBlamerResponse::Verify(siri::speech::schema_fb::ErrorBlamerResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v6 - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = (this - *this);
        if (*v8 >= 7u && (v9 = v8[3]) != 0)
        {
          v10 = this + v9 + *(this + v9);
        }

        else
        {
          v10 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
        if (result)
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v11 = (this - *this);
            if (*v11 >= 9u && (v12 = v11[4]) != 0)
            {
              v13 = this + v12 + *(this + v12);
            }

            else
            {
              v13 = 0;
            }

            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
            if (result)
            {
              --*(a2 + 4);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::AsrItnMessage::Verify(siri::speech::qss_fb::AsrItnMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(this + v11);
  if (v12 != 2)
  {
    v13 = v12 != 1 || v10 == 0;
    if (!v13 && !siri::speech::schema_fb::ItnRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::ItnResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::ItnRequest::Verify(siri::speech::schema_fb::ItnRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = *this;
                  v15 = -v14;
                  v16 = (this - v14);
                  if (*v16 >= 0xBu)
                  {
                    v17 = v16[5];
                    if (v17)
                    {
                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v17 + *(this + v17), 4uLL, 0);
                      if (!result)
                      {
                        return result;
                      }

                      v15 = -*this;
                    }
                  }

                  v18 = (this + v15);
                  if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
                  {
                    v20 = (this + v19 + *(this + v19));
                  }

                  else
                  {
                    v20 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokens>(a2, v20);
                  if (result)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
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

BOOL siri::speech::schema_fb::ItnResponse::Verify(siri::speech::schema_fb::ItnResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                v14 = (this - *this);
                if (*v14 < 0xBu || (v15 = v14[5]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v17 = (this - *this);
                    if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                    {
                      v19 = this + v18 + *(this + v18);
                    }

                    else
                    {
                      v19 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                    if (result)
                    {
                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                      if (result)
                      {
                        v20 = *this;
                        v21 = -v20;
                        v22 = (this - v20);
                        if (*v22 >= 0xFu)
                        {
                          v23 = v22[7];
                          if (v23)
                          {
                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v23 + *(this + v23), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v21 = -*this;
                          }
                        }

                        v24 = (this + v21);
                        if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
                        {
                          v26 = (this + v25 + *(this + v25));
                        }

                        else
                        {
                          v26 = 0;
                        }

                        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionPhraseTokens>(a2, v26);
                        if (result)
                        {
                          --*(a2 + 4);
                          return 1;
                        }
                      }
                    }
                  }
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

BOOL siri::speech::qss_fb::AsrTextNormalizationMessage::Verify(siri::speech::qss_fb::AsrTextNormalizationMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(this + v11);
  if (v12 != 2)
  {
    v13 = v12 != 1 || v10 == 0;
    if (!v13 && !siri::speech::schema_fb::StartPronGuessRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::TextNormalizationResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::TextNormalizationResponse::Verify(siri::speech::schema_fb::TextNormalizationResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = *this;
              v12 = -v11;
              v13 = (this - v11);
              if (*v13 >= 9u)
              {
                v14 = v13[4];
                if (v14)
                {
                  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v14 + *(this + v14), 4uLL, 0);
                  if (!result)
                  {
                    return result;
                  }

                  v12 = -*this;
                }
              }

              v15 = (this + v12);
              if (*v15 >= 9u && (v16 = v15[4]) != 0)
              {
                v17 = (this + v16 + *(this + v16));
              }

              else
              {
                v17 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::NormalizedToken>(a2, v17);
              if (result)
              {
                v18 = (this - *this);
                if (*v18 < 0xBu || (v19 = v18[5]) == 0 || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v19 - *a2)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v21 = (this - *this);
                    if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
                    {
                      v23 = this + v22 + *(this + v22);
                    }

                    else
                    {
                      v23 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v23);
                    if (result)
                    {
                      --*(a2 + 4);
                      return 1;
                    }
                  }
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

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::NormalizedToken>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::NormalizedToken::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL siri::speech::schema_fb::NormalizedToken::Verify(siri::speech::schema_fb::NormalizedToken *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          v9 = -v8;
          v10 = (this - v8);
          if (*v10 >= 7u)
          {
            v11 = v10[3];
            if (v11)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v11 + *(this + v11), 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v9 = -*this;
            }
          }

          v12 = (this + v9);
          if (*v12 >= 7u && (v13 = v12[3]) != 0)
          {
            v14 = (this + v13 + *(this + v13));
          }

          else
          {
            v14 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::AudioPacket>(a2, v14);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL siri::speech::qss_fb::AsrPostItnHammerMessage::Verify(siri::speech::qss_fb::AsrPostItnHammerMessage *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (!result)
  {
    return result;
  }

  v5 = (this - *this);
  if (*v5 >= 5u)
  {
    v6 = v5[2];
    if (v6)
    {
      result = 0;
      v7 = *(a2 + 1);
      if (v7 < 2 || v7 - 1 < this + v6 - *a2)
      {
        return result;
      }
    }
  }

  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
  if (!result)
  {
    return result;
  }

  v8 = (this - *this);
  v9 = *v8;
  if (v9 < 7)
  {
    if (v9 < 5)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!v8[3])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = (this + v8[3] + *(this + v8[3]));
LABEL_12:
  v11 = v8[2];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *(this + v11);
  if (v12 != 2)
  {
    v13 = v12 != 1 || v10 == 0;
    if (!v13 && !siri::speech::schema_fb::PostItnHammerRequest::Verify(v10, a2))
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10 || (result = siri::speech::schema_fb::PostItnHammerResponse::Verify(v10, a2)))
  {
LABEL_22:
    --*(a2 + 4);
    return 1;
  }

  return result;
}

BOOL siri::speech::schema_fb::PostItnHammerRequest::Verify(siri::speech::schema_fb::PostItnHammerRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v17 = *this;
                      v18 = -v17;
                      v19 = (this - v17);
                      if (*v19 >= 0xDu)
                      {
                        v20 = v19[6];
                        if (v20)
                        {
                          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v20 + *(this + v20), 4uLL, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v18 = -*this;
                        }
                      }

                      v21 = (this + v18);
                      if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
                      {
                        v23 = (this + v22 + *(this + v22));
                      }

                      else
                      {
                        v23 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionToken>(a2, v23);
                      if (result)
                      {
                        --*(a2 + 4);
                        return 1;
                      }
                    }
                  }
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