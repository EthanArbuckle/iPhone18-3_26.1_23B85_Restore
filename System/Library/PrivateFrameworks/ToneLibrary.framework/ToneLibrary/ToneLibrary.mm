__CFString *_TLAlertTypeGetHumanReadableDescription(unint64_t a1)
{
  if (a1 > 0x1D)
  {
    v2 = 0;
  }

  else
  {
    v2 = _TLAlertTypeHumanReadableDescriptions[a1];
  }

  return v2;
}

__CFString *NSStringFromTLAlertTargetDevice(unint64_t a1)
{
  if (a1 > 1)
  {
    v2 = @"????";
  }

  else
  {
    v2 = _TLAlertTargetDeviceDescriptions[a1];
  }

  return v2;
}

uint64_t TLAlertTargetDeviceFromString(void *a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = v3;
    v5 = v2;
    v6 = [a1 isEqualToString:_TLAlertTargetDeviceDescriptions[v3]];
    if (v6)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while ((v5 & 1) == 0);
  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_1D93581D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

id getNPSDomainAccessorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNPSDomainAccessorClass_softClass;
  v7 = getNPSDomainAccessorClass_softClass;
  if (!getNPSDomainAccessorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNPSDomainAccessorClass_block_invoke;
    v3[3] = &unk_1E8578D30;
    v3[4] = &v4;
    __getNPSDomainAccessorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D93582C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _TLToneManagerHandleTonePreferencesDidChangeNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___TLToneManagerHandleTonePreferencesDidChangeNotification_block_invoke;
  v4[3] = &unk_1E85789A0;
  v5 = v2;
  v3 = v2;
  [v3 _performBlockInAccessQueue:v4];
}

void _TLToneManagerHandleWatchAlertPrefersSalientNotificationPreferenceDidChangeRemotelyNotification(uint64_t a1, void *a2)
{
  _TLToneManagerHandleTonePreferencesDidChangeNotification(a1, a2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeLocallyNotification", 0, 0, 1u);
}

void _TLToneManagerHandleDeviceRingtonesChangedNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___TLToneManagerHandleDeviceRingtonesChangedNotification_block_invoke;
  v4[3] = &unk_1E85789A0;
  v5 = v2;
  v3 = v2;
  [v3 _performBlockInAccessQueue:v4];
}

void sub_1D935865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1D9358C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D93595A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D93596F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSSDownloadFileManifestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSSDownloadFileManifestClass_softClass;
  v7 = getSSDownloadFileManifestClass_softClass;
  if (!getSSDownloadFileManifestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSSDownloadFileManifestClass_block_invoke;
    v3[3] = &unk_1E8578D30;
    v3[4] = &v4;
    __getSSDownloadFileManifestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D935A64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D935A900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D935B4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D935CC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D935CEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D935D5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D935FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9360418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1D9360B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1D9360D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D93612F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9361678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9361C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9361EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9362BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9363690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9365424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9366460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9366AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNPSDomainAccessorClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSDomainAccessor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSDomainAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1();
    NanoPreferencesSyncLibrary();
  }
}

void NanoPreferencesSyncLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E8578D50;
    v4 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSSDownloadFileManifestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __StoreServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8578D68;
    v7 = 0;
    StoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (StoreServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SSDownloadFileManifest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSSDownloadFileManifestClass_block_invoke_cold_1();
  }

  getSSDownloadFileManifestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __StoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMPPlaybackArchiveClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8578D80;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (MediaPlayerLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MPPlaybackArchive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPPlaybackArchiveClass_block_invoke_cold_1();
  }

  getMPPlaybackArchiveClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getNPSManagerClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNPSManagerClass_block_invoke_cold_1();
    return __getTCCAccessPreflightSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getTCCAccessPreflightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "TCCAccessPreflight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTCCAccessPreflightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t TCCLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TCCLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TCCLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8578D98;
    v6 = 0;
    TCCLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = TCCLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!TCCLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __TCCLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TCCLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkTCCServiceMediaLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "kTCCServiceMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkTCCServiceMediaLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1D9368734(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void _TLAttentionAwarenessEffectAudioTapFinalize(const opaqueMTAudioProcessingTap *a1)
{
  v2 = soft_MTAudioProcessingTapGetStorage(a1);
  v1 = [v2 effectCoordinator];
  [v1 _unprepareAudioProcessingWithEffectAudioTapContext:v2];
  [v1 _finalizeAudioProcessingWithEffectAudioTapContext:v2];
}

void _TLAttentionAwarenessEffectAudioTapPrepare(const opaqueMTAudioProcessingTap *a1, uint64_t a2, const AudioStreamBasicDescription *a3)
{
  v6 = soft_MTAudioProcessingTapGetStorage(a1);
  v5 = [v6 effectCoordinator];
  [v5 _prepareAudioProcessingWithEffectAudioTapContext:v6 maximumNumberOfFrames:a2 processingFormat:a3];
}

void _TLAttentionAwarenessEffectAudioTapUnprepare(const opaqueMTAudioProcessingTap *a1)
{
  v1 = TLLogPlayback();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    _TLAttentionAwarenessEffectAudioTapUnprepare(v1);
  }
}

void _TLAttentionAwarenessEffectAudioTapProcess(const opaqueMTAudioProcessingTap *a1, uint64_t a2, unsigned int a3, AudioBufferList *a4, uint64_t *a5, unsigned int *a6)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v11 = getMTAudioProcessingTapGetSourceAudioSymbolLoc(void)::ptr;
  v21 = getMTAudioProcessingTapGetSourceAudioSymbolLoc(void)::ptr;
  if (!getMTAudioProcessingTapGetSourceAudioSymbolLoc(void)::ptr)
  {
    v12 = MediaToolboxLibrary();
    v19[3] = dlsym(v12, "MTAudioProcessingTapGetSourceAudio");
    getMTAudioProcessingTapGetSourceAudioSymbolLoc(void)::ptr = v19[3];
    v11 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v11)
  {
    v17 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();

    _Unwind_Resume(v17);
  }

  v13 = v11(a1, a2, a4, a6, 0, a5);
  if (v13)
  {
    v14 = v13;
    v15 = TLLogPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _TLAttentionAwarenessEffectAudioTapProcess(v14, v15);
    }
  }

  else
  {
    v15 = soft_MTAudioProcessingTapGetStorage(a1);
    v16 = [v15 effectCoordinator];
    [v16 _processAudioWithEffectAudioTapContext:v15 bufferList:a4 numberOfFramesRequested:a2 numberOfFramesToProcess:*a5];
  }
}

void *___ZL38getMTAudioProcessingTapCreateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaToolboxLibrary();
  result = dlsym(v2, "MTAudioProcessingTapCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTAudioProcessingTapCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaToolboxLibrary(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaToolboxLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL23MediaToolboxLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8578DF8;
    v6 = 0;
    MediaToolboxLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaToolboxLibraryCore(char **)::frameworkLibrary;
  v1 = v4[0];
  if (!MediaToolboxLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t ___ZL23MediaToolboxLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaToolboxLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t soft_MTAudioProcessingTapGetStorage(const opaqueMTAudioProcessingTap *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMTAudioProcessingTapGetStorageSymbolLoc(void)::ptr;
  v9 = getMTAudioProcessingTapGetStorageSymbolLoc(void)::ptr;
  if (!getMTAudioProcessingTapGetStorageSymbolLoc(void)::ptr)
  {
    v3 = MediaToolboxLibrary();
    v7[3] = dlsym(v3, "MTAudioProcessingTapGetStorage");
    getMTAudioProcessingTapGetStorageSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

void *___ZL42getMTAudioProcessingTapGetStorageSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaToolboxLibrary();
  result = dlsym(v2, "MTAudioProcessingTapGetStorage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTAudioProcessingTapGetStorageSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getMTAudioProcessingTapGetSourceAudioSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaToolboxLibrary();
  result = dlsym(v2, "MTAudioProcessingTapGetSourceAudio");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTAudioProcessingTapGetSourceAudioSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *NSStringFromTLAlertPlaybackCompletionType(unint64_t a1)
{
  if (a1 > 5)
  {
    v2 = @"????";
  }

  else
  {
    v2 = _TLAlertPlaybackCompletionTypeDescriptions[a1];
  }

  return v2;
}

uint64_t TLAlertPlaybackCompletionTypeFromString(void *a1)
{
  v2 = -1;
  v3 = _TLAlertPlaybackCompletionTypeDescriptions;
  do
  {
    v4 = *v3++;
    v5 = [a1 isEqualToString:v4];
    result = v2 + 1;
    if (v5)
    {
      break;
    }
  }

  while (v2++ != 4);
  return result;
}

void sub_1D936D830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

__CFString *_TLAlertTargetDeviceGetHumanReadableDescription(unint64_t a1)
{
  if (a1 > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = _TLAlertTargetDeviceHumanReadableDescriptions[a1];
  }

  return v2;
}

id getSSDownloadKindRingtone()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSSDownloadKindRingtoneSymbolLoc_ptr;
  v8 = getSSDownloadKindRingtoneSymbolLoc_ptr;
  if (!getSSDownloadKindRingtoneSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v6[3] = dlsym(v1, "SSDownloadKindRingtone");
    getSSDownloadKindRingtoneSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getSSDownloadKindTone()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSSDownloadKindToneSymbolLoc_ptr;
  v8 = getSSDownloadKindToneSymbolLoc_ptr;
  if (!getSSDownloadKindToneSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v6[3] = dlsym(v1, "SSDownloadKindTone");
    getSSDownloadKindToneSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getSSAccountStoreChangedNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSSAccountStoreChangedNotificationSymbolLoc_ptr;
  v8 = getSSAccountStoreChangedNotificationSymbolLoc_ptr;
  if (!getSSAccountStoreChangedNotificationSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v6[3] = dlsym(v1, "SSAccountStoreChangedNotification");
    getSSAccountStoreChangedNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getSSAccountStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSSAccountStoreClass_softClass;
  v7 = getSSAccountStoreClass_softClass;
  if (!getSSAccountStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSSAccountStoreClass_block_invoke;
    v3[3] = &unk_1E8578D30;
    v3[4] = &v4;
    __getSSAccountStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D936F548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D936F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1D9370718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9370C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9371C8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

Class __getSSDownloadManagerOptionsClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  result = objc_getClass("SSDownloadManagerOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadManagerOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSSDownloadManagerOptionsClass_block_invoke_cold_1();
    return StoreServicesLibrary();
  }

  return result;
}

uint64_t StoreServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __StoreServicesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8579058;
    v6 = 0;
    StoreServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = StoreServicesLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!StoreServicesLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __StoreServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getSSDownloadKindRingtoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadKindRingtone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadKindRingtoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadKindToneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadKindTone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadKindToneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadExternalPropertyBytesDownloaded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadExternalPropertyPercentCompleteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadExternalPropertyPercentComplete");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadExternalPropertyPolicySizeLimit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadExternalPropertyRentalInformationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadExternalPropertyRentalInformation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyClientBundleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyClientBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyDownloadPhaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyDownloadPhase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyEncodedErrorDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyEncodedErrorData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyIsRestoreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyIsRestore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyIsRestoreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyKindSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyKindSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyStoreItemIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyStoreItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyHandlerIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyHandlerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyHandlerIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyCollectionNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyCollectionName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyCollectionNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyArtistNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyArtistName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyArtistNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyDurationInMillisecondsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyDurationInMilliseconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSSDownloadManagerClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  result = objc_getClass("SSDownloadManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSSDownloadManagerClass_block_invoke_cold_1();
    return __getSSPurchaseManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getSSPurchaseManagerClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  result = objc_getClass("SSPurchaseManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSPurchaseManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSSPurchaseManagerClass_block_invoke_cold_1();
    return __getSSAccountStoreChangedNotificationSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getSSAccountStoreChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSAccountStoreChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSAccountStoreChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSSAccountStoreClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  result = objc_getClass("SSAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSSAccountStoreClass_block_invoke_cold_1();
    return __getSSItemKindToneSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getSSItemKindToneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSItemKindTone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSItemKindToneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSItemKindRingtoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSItemKindRingtone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSItemKindRingtoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSItemStoreFrontURLForItemKindSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSItemStoreFrontURLForItemKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSItemStoreFrontURLForItemKindSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIApplicationClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8579070;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UIKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIApplicationClass_block_invoke_cold_1();
  }

  getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSSTonePurchaseClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  result = objc_getClass("SSTonePurchase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSTonePurchaseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSSTonePurchaseClass_block_invoke_cold_1();
    return __getSSItemToneStyleRingtoneSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getSSItemToneStyleRingtoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSItemToneStyleRingtone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSItemToneStyleRingtoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSItemToneStyleTextToneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSItemToneStyleTextTone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSItemToneStyleTextToneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyIsRedownloadSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyIsRedownload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyIsRedownloadSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSSMutableURLRequestPropertiesClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  result = objc_getClass("SSMutableURLRequestProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSMutableURLRequestPropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSSMutableURLRequestPropertiesClass_block_invoke_cold_1();
    return __getSSDownloadPhaseFinishedSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getSSDownloadPhaseFinishedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseFinished");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseFinishedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseFailedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseFailed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseFailedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseCanceledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseCanceled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseCanceledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSSDownloadClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  result = objc_getClass("SSDownload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSSDownloadClass_block_invoke_cold_1();
    return __getSSDownloadPropertyIsStoreDownloadSymbolLoc_block_invoke();
  }

  return result;
}

void *__getSSDownloadPropertyIsStoreDownloadSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyIsStoreDownload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *NSStringFromTLAlertType(unint64_t a1)
{
  if (a1 > 0x1D)
  {
    v2 = @"????";
  }

  else
  {
    v2 = _TLAlertTypeDescriptions[a1];
  }

  return v2;
}

uint64_t TLAlertTypeFromString(void *a1)
{
  v2 = 0;
  while (([a1 isEqualToString:_TLAlertTypeDescriptions[v2]] & 1) == 0)
  {
    if (++v2 == 30)
    {
      return 0;
    }
  }

  return v2;
}

void _TLAlertTypeValidateConsistencyOfEnumeration()
{
  if (_TLAlertTypeValidateConsistencyOfEnumeration__TLAlertTypeValidateConsistencyOfEnumerationOnceToken != -1)
  {
    _TLAlertTypeValidateConsistencyOfEnumeration_cold_1();
  }
}

void sub_1D9373B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void _TLVibrationManagerHandleUserGeneratedVibrationsDidChangeNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___TLVibrationManagerHandleUserGeneratedVibrationsDidChangeNotification_block_invoke;
  v4[3] = &unk_1E85789A0;
  v5 = v2;
  v3 = v2;
  [v3 _performBlockInAccessQueue:v4];
}

void sub_1D93745B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D93765D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9376A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9377648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D937794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D937815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNPSDomainAccessorClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNPSDomainAccessorClass_softClass_0;
  v7 = getNPSDomainAccessorClass_softClass_0;
  if (!getNPSDomainAccessorClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNPSDomainAccessorClass_block_invoke_0;
    v3[3] = &unk_1E8578D30;
    v3[4] = &v4;
    __getNPSDomainAccessorClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D937824C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D937868C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9378C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9379554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9379868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D9379B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void __getNPSDomainAccessorClass_block_invoke_0(uint64_t a1)
{
  NanoPreferencesSyncLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSDomainAccessor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSDomainAccessorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1();
    NanoPreferencesSyncLibrary_0();
  }
}

void NanoPreferencesSyncLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __NanoPreferencesSyncLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E85795F8;
    v4 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getNPSManagerClass_block_invoke_0(uint64_t a1)
{
  NanoPreferencesSyncLibrary_0();
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNPSManagerClass_block_invoke_cold_1();
    return ___TLVibrationManagerHandleUserGeneratedVibrationsDidChangeNotification_block_invoke(v3);
  }

  return result;
}

void sub_1D937B78C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

BOOL _TLVibrationPatternIsValidNumberWithPossibleExpectedTypeEncodings(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = 0;
  if (a2 && (isKindOfClass & 1) != 0)
  {
    v13 = [v10 objCType];
    if (!strcmp(v13, a2))
    {
      v12 = 1;
    }

    else
    {
      v16 = &a9;
      do
      {
        v14 = v16++;
        v12 = *v14 != 0;
      }

      while (*v14 && strcmp(v13, *v14));
    }
  }

  return v12;
}

void sub_1D9381610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D938692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNACAlertProxyClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!NanoAudioControlLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __NanoAudioControlLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8579898;
    v7 = 0;
    NanoAudioControlLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (NanoAudioControlLibraryCore_frameworkLibrary)
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
  result = objc_getClass("NACAlertProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNACAlertProxyClass_block_invoke_cold_1();
  }

  getNACAlertProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NanoAudioControlLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoAudioControlLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TLLogGeneral()
{
  if (_TLLogInitialize__TLLogInitializationOnceToken != -1)
  {
    TLLogGeneral_cold_1();
  }

  return _TLLogGeneralHandle;
}

uint64_t TLLogPlayback()
{
  if (_TLLogInitialize__TLLogInitializationOnceToken != -1)
  {
    TLLogGeneral_cold_1();
  }

  return _TLLogPlaybackHandle;
}

uint64_t TLLogToneManagement()
{
  if (_TLLogInitialize__TLLogInitializationOnceToken != -1)
  {
    TLLogGeneral_cold_1();
  }

  return _TLLogToneManagementHandle;
}

uint64_t TLLogVibrationManagement()
{
  if (_TLLogInitialize__TLLogInitializationOnceToken != -1)
  {
    TLLogGeneral_cold_1();
  }

  return _TLLogVibrationManagementHandle;
}

id getSSDeviceAvailableItemKindsChangedNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSSDeviceAvailableItemKindsChangedNotificationSymbolLoc_ptr;
  v8 = getSSDeviceAvailableItemKindsChangedNotificationSymbolLoc_ptr;
  if (!getSSDeviceAvailableItemKindsChangedNotificationSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary_0();
    v6[3] = dlsym(v1, "SSDeviceAvailableItemKindsChangedNotification");
    getSSDeviceAvailableItemKindsChangedNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1D938869C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRPairedDeviceRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass;
  v7 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v3[3] = &unk_1E8578D30;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D9388784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDeviceAvailableItemKindsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_0();
  result = dlsym(v2, "SSDeviceAvailableItemKindsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDeviceAvailableItemKindsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t StoreServicesLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __StoreServicesLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8579940;
    v6 = 0;
    StoreServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = StoreServicesLibraryCore_frameworkLibrary_1;
  v1 = v4[0];
  if (!StoreServicesLibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __StoreServicesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getSSDeviceClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary_0();
  result = objc_getClass("SSDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSSDeviceClass_block_invoke_cold_1();
    return __getSSItemKindRingtoneSymbolLoc_block_invoke_0(v3);
  }

  return result;
}

void *__getSSItemKindRingtoneSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = StoreServicesLibrary_0();
  result = dlsym(v2, "SSItemKindRingtone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSItemKindRingtoneSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSItemKindToneSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = StoreServicesLibrary_0();
  result = dlsym(v2, "SSItemKindTone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSItemKindToneSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
    return NanoRegistryLibrary();
  }

  return result;
}

uint64_t NanoRegistryLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NanoRegistryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8579958;
    v6 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
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

void *__getNRDevicePropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getAWAttentionAwarenessConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAWAttentionAwarenessConfigurationClass_softClass;
  v7 = getAWAttentionAwarenessConfigurationClass_softClass;
  if (!getAWAttentionAwarenessConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAWAttentionAwarenessConfigurationClass_block_invoke;
    v3[3] = &unk_1E8578D30;
    v3[4] = &v4;
    __getAWAttentionAwarenessConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D93894F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D93897A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getAWAttentionAwarenessConfigurationClass_block_invoke(uint64_t a1)
{
  AttentionAwarenessLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AWAttentionAwarenessConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAWAttentionAwarenessConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAWAttentionAwarenessConfigurationClass_block_invoke_cold_1();
    AttentionAwarenessLibrary();
  }
}

void AttentionAwarenessLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AttentionAwarenessLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AttentionAwarenessLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E8579A10;
    v4 = 0;
    AttentionAwarenessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AttentionAwarenessLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AttentionAwarenessLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AttentionAwarenessLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

NSMapTable *__getAWAttentionAwarenessClientClass_block_invoke(uint64_t a1)
{
  AttentionAwarenessLibrary();
  result = objc_getClass("AWAttentionAwarenessClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAWAttentionAwarenessClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAWAttentionAwarenessClientClass_block_invoke_cold_1();
    return [(TLAlertSystemSoundStopTasksDescriptor *)v3 interruptedAlertsToSound];
  }

  return result;
}

void sub_1D938BAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D938C3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getMKBDeviceFormattedForContentProtectionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBDeviceFormattedForContentProtection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceFormattedForContentProtectionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileKeyBagLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileKeyBagLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8579C50;
    v6 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileKeyBagLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D938D580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D938DB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

__CFString *NSStringFromTLToneImportStatusCode(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = @"????";
  }

  else
  {
    v2 = _TLToneImportStatusCodeDescriptions[a1];
  }

  return v2;
}

uint64_t TLToneImportStatusCodeFromString(void *a1)
{
  v2 = 0;
  while (([a1 isEqualToString:_TLToneImportStatusCodeDescriptions[v2]] & 1) == 0)
  {
    if (++v2 == 3)
    {
      return 0;
    }
  }

  return v2;
}

void sub_1D938E8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D938E9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromTLAlertOverridePolicy(unint64_t a1)
{
  if (a1 > 1)
  {
    v2 = @"????";
  }

  else
  {
    v2 = _TLAlertOverridePolicyDescriptions[a1];
  }

  return v2;
}

uint64_t TLAlertOverridePolicyFromString(void *a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = v3;
    v5 = v2;
    v6 = [a1 isEqualToString:_TLAlertOverridePolicyDescriptions[v3]];
    if (v6)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while ((v5 & 1) == 0);
  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

__CFString *NSStringFromTLWatchAlertPolicy(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = @"????";
  }

  else
  {
    v2 = _TLWatchAlertPolicyDescriptions[a1];
  }

  return v2;
}

uint64_t TLWatchAlertPolicyFromString(void *a1)
{
  v2 = 0;
  while (([a1 isEqualToString:_TLWatchAlertPolicyDescriptions[v2]] & 1) == 0)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  return v2;
}

void sub_1D9390C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9391060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9391204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D93913C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9391C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9393A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getUIBackgroundTaskInvalid()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getUIBackgroundTaskInvalidSymbolLoc_ptr;
  v7 = getUIBackgroundTaskInvalidSymbolLoc_ptr;
  if (!getUIBackgroundTaskInvalidSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v5[3] = dlsym(v1, "UIBackgroundTaskInvalid");
    getUIBackgroundTaskInvalidSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void sub_1D9394C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_CMTimeMakeWithSeconds(double a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCMTimeMakeWithSecondsSymbolLoc_ptr;
  v9 = getCMTimeMakeWithSecondsSymbolLoc_ptr;
  if (!getCMTimeMakeWithSecondsSymbolLoc_ptr)
  {
    v3 = CoreMediaLibrary();
    v7[3] = dlsym(v3, "CMTimeMakeWithSeconds");
    getCMTimeMakeWithSecondsSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(600, a1);
}

void sub_1D9398148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D939CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIApplicationClass_block_invoke_0(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIApplicationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIApplicationClass_block_invoke_cold_1();
    return UIKitLibrary();
  }

  return result;
}

uint64_t UIKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8579E50;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getUIBackgroundTaskInvalidSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIBackgroundTaskInvalid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIBackgroundTaskInvalidSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCMTimeCompareSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeCompare");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeCompareSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreMediaLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreMediaLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreMediaLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8579E68;
    v6 = 0;
    CoreMediaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreMediaLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CoreMediaLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CoreMediaLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMediaLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCMTimeMakeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeMakeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPMediaPropertyPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPMediaPropertyPredicateClass_block_invoke_cold_1();
    return MediaPlayerLibrary();
  }

  return result;
}

uint64_t MediaPlayerLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8579E80;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!MediaPlayerLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPMediaQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaQueryClass_block_invoke_cold_1();
    return __getCMTimeGetSecondsSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getCMTimeGetSecondsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeGetSeconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeGetSecondsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCMTimeMakeWithSecondsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "CMTimeMakeWithSeconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMTimeMakeWithSecondsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCMTimeZeroSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreMediaLibrary();
  result = dlsym(v2, "kCMTimeZero");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMTimeZeroSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPMusicPlayerApplicationControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPMusicPlayerApplicationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMusicPlayerApplicationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMusicPlayerApplicationControllerClass_block_invoke_cold_1();
    return __getMPMediaItemCollectionClass_block_invoke(v3);
  }

  return result;
}

void __getMPMediaItemCollectionClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItemCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPMediaItemCollectionClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_4_0(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id TLLocalizedString(void *a1)
{
  v1 = a1;
  if (TLLocalizedString__TLLocalizedStringBundleOnceToken != -1)
  {
    TLLocalizedString_cold_1();
  }

  v2 = [TLLocalizedString__TLLocalizedStringBundle localizedStringForKey:v1 value:&stru_1F54CFF40 table:@"TL"];
  v3 = v2;
  if ((!v2 || [v2 isEqualToString:v1]) && _os_feature_enabled_impl())
  {
    v4 = [TLLocalizedString__TLLocalizedStringBundle localizedStringForKey:v1 value:&stru_1F54CFF40 table:@"TL-EncoreInfinitum"];

    v3 = v4;
  }

  v5 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  v6 = [v5 supportsReflectionRemixes];

  if (v6 && (!v3 || [v3 isEqualToString:v1]))
  {
    v7 = [TLLocalizedString__TLLocalizedStringBundle localizedStringForKey:v1 value:&stru_1F54CFF40 table:@"TL-EncoreRemix"];

    v3 = v7;
  }

  return v3;
}

uint64_t __TLLocalizedString_block_invoke()
{
  TLLocalizedString__TLLocalizedStringBundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void _TLAttentionAwarenessEffectAudioTapProcess(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1D9356000, a2, OS_LOG_TYPE_ERROR, "TLAttentionAwarenessEffectCoordinator: Encountered error with code %d upon getting source audio.", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}