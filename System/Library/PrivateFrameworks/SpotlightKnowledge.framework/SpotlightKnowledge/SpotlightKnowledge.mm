id csimport_xpc_dictionary_decode_status_with_error(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    int64 = xpc_dictionary_get_int64(v1, "status");
    if (!int64)
    {
      goto LABEL_8;
    }

    string = xpc_dictionary_get_string(v2, "ed");
    v5 = MEMORY[0x1E696ABC0];
    if (string)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithCString:string encoding:4];
      int64 = [v5 errorWithDomain:v6 code:int64 userInfo:0];

      goto LABEL_8;
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = -1;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = 1;
  }

  int64 = [v7 errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:v8 userInfo:0];
LABEL_8:

  return int64;
}

void __SKGLogInitialize_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.spotlightknowledge.logger", 0);
  v1 = _loggerQueue;
  _loggerQueue = v0;

  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"SKGLogging"];
  v3 = _defaults;
  _defaults = v2;

  v4 = [_defaults integerForKey:@"com.apple.spotlightknowledge.LoggingLevel"];
  v5 = 6;
  if (v4)
  {
    v5 = v4;
  }

  _cachedLoggingLevel = v5;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, loggingLevelChangedCallback, @"com.apple.spotlightknowledge.LoggingLevelChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void __SKGLogGetCurrentLoggingLevel_block_invoke()
{
  if (SKGLogInitialize_onceToken != -1)
  {
    __SKGLogSetLoggingLevel_block_invoke_cold_1();
  }
}

uint64_t SKGLogGetCurrentLoggingLevel()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (SKGLogGetCurrentLoggingLevel_onceToken != -1)
  {
    SKGLogGetCurrentLoggingLevel_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SKGLogGetCurrentLoggingLevel_block_invoke_2;
  block[3] = &unk_1E74B7F00;
  block[4] = &v3;
  dispatch_sync(_loggerQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void *getValueForKey(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  value = 0;
  if (theDict && a2)
  {
    if (CFDictionaryGetValueIfPresent(theDict, a2, &value))
    {
      if (value == *MEMORY[0x1E695E738])
      {
        return 0;
      }

      else
      {
        return value;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SKGBundleIsMail(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobilemail"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.email.SearchIndexer"];
  }

  return v2;
}

uint64_t stringComposedLengthForEmbeddingCheck(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [v1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __stringComposedLengthForEmbeddingCheck_block_invoke;
  v5[3] = &unk_1E74B7F50;
  v5[4] = &v6;
  [v1 enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_1977A9338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __stringComposedLengthForEmbeddingCheck_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(*(result + 32) + 8) + 24) >= 0x14uLL)
  {
    *a7 = 1;
  }

  return result;
}

void sub_1977AA5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3C0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Block_object_dispose(&STACK[0x420], 8);
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4B0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CSGetDiskVersionForContentURL(void *a1, void *a2, uint64_t a3, void *a4)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (!v7)
  {
    v15 = 0;
    if (!a4)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v15];
    goto LABEL_13;
  }

  v9 = [v7 isFileURL];
  if (!a3 || !v8 || (v9 & 1) == 0)
  {
    v31 = *MEMORY[0x1E696A998];
    v32[0] = v7;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v30 = 512;
  v28 = 0u;
  v29 = xmmword_1977BCB44;
  v27 = 0u;
  if (getattrlist([v7 fileSystemRepresentation], &v29, &v27, 0x20uLL, 0x20u) < 0)
  {
LABEL_18:
    if (!a4)
    {
      goto LABEL_14;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A798];
    v21 = *__error();
    v22 = v19;
    v23 = v20;
LABEL_24:
    [v22 errorWithDomain:v23 code:v21 userInfo:0];
    *a4 = v16 = 0;
    goto LABEL_15;
  }

  v10 = *(&v28 + 1);
  v12 = DWORD2(v27);
  v11 = HIDWORD(v27);
  *a3 = v28;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = (v12 & 0x40000000) != 0;
  if (![v8 conformsToType:*MEMORY[0x1E6982F30]])
  {
    if (DWORD1(v27) == 1)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (DWORD1(v27) != 2)
  {
LABEL_22:
    if (!a4)
    {
      goto LABEL_14;
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A798];
    v21 = 79;
    goto LABEL_24;
  }

  v13 = open([v7 fileSystemRepresentation], 2129924);
  if (v13 < 0)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v25 = 0u;
  v26 = 0u;
  v24 = 1;
  if ((ffsctl(v13, 0xC0284A20uLL, &v24, 0) & 0x80000000) == 0)
  {
    *(a3 + 8) = vextq_s8(v26, v26, 8uLL);
    close(v14);
LABEL_21:
    v16 = 1;
    goto LABEL_15;
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  close(v14);
LABEL_14:
  v16 = 0;
LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1977AB930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id SKGLogAgentInit()
{
  if (SKGLogAgentInit_sOnceAgent != -1)
  {
    SKGLogAgentInit_cold_1();
  }

  v1 = SKGLogAgentInit_sSKGAgentLog;

  return v1;
}

uint64_t __SKGLogAgentInit_block_invoke()
{
  SKGLogAgentInit_sSKGAgentLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeAgent");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogGraphInit()
{
  if (SKGLogGraphInit_sOnceGraph != -1)
  {
    SKGLogGraphInit_cold_1();
  }

  v1 = SKGLogGraphInit_sSKGGraphLog;

  return v1;
}

uint64_t __SKGLogGraphInit_block_invoke()
{
  SKGLogGraphInit_sSKGGraphLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeGraph");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogUpdaterInit()
{
  if (SKGLogUpdaterInit_sOnceUpdater != -1)
  {
    SKGLogUpdaterInit_cold_1();
  }

  v1 = SKGLogUpdaterInit_sSKGUpdaterLog;

  return v1;
}

uint64_t __SKGLogUpdaterInit_block_invoke()
{
  SKGLogUpdaterInit_sSKGUpdaterLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeUpdater");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogEventInit()
{
  if (SKGLogEventInit_sOnceEvent != -1)
  {
    SKGLogEventInit_cold_1();
  }

  v1 = SKGLogEventInit_sSKGEventLog;

  return v1;
}

uint64_t __SKGLogEventInit_block_invoke()
{
  SKGLogEventInit_sSKGEventLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeEvent");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogEmbedInit()
{
  if (SKGLogEmbedInit_sOnceEmbed != -1)
  {
    SKGLogEmbedInit_cold_1();
  }

  v1 = SKGLogEmbedInit_sSKGEmbedLog;

  return v1;
}

uint64_t __SKGLogEmbedInit_block_invoke()
{
  SKGLogEmbedInit_sSKGEmbedLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeEmbedding");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogKeyphraseInit()
{
  if (SKGLogKeyphraseInit_sOnceKeyphrase != -1)
  {
    SKGLogKeyphraseInit_cold_1();
  }

  v1 = SKGLogKeyphraseInit_sSKGKeyphraseLog;

  return v1;
}

uint64_t __SKGLogKeyphraseInit_block_invoke()
{
  SKGLogKeyphraseInit_sSKGKeyphraseLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeKeyphrases");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogSuggestedEventsInit()
{
  if (SKGLogSuggestedEventsInit_sOnceSuggestedEvents != -1)
  {
    SKGLogSuggestedEventsInit_cold_1();
  }

  v1 = SKGLogSuggestedEventsInit_sSKGSuggestedEventsLog;

  return v1;
}

uint64_t __SKGLogSuggestedEventsInit_block_invoke()
{
  SKGLogSuggestedEventsInit_sSKGSuggestedEventsLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeSuggestedEvents");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogDocUnderstandingInit()
{
  if (SKGLogDocUnderstandingInit_sOnceDocUnderstanding != -1)
  {
    SKGLogDocUnderstandingInit_cold_1();
  }

  v1 = SKGLogDocUnderstandingInit_sSKGDocUnderstandingLog;

  return v1;
}

uint64_t __SKGLogDocUnderstandingInit_block_invoke()
{
  SKGLogDocUnderstandingInit_sSKGDocUnderstandingLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeDocUnderstanding");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogScheduledReceiverInit()
{
  if (SKGLogScheduledReceiverInit_sOnceScheduledReceiver != -1)
  {
    SKGLogScheduledReceiverInit_cold_1();
  }

  v1 = SKGLogScheduledReceiverInit_sSKGScheduledReceiverLog;

  return v1;
}

uint64_t __SKGLogScheduledReceiverInit_block_invoke()
{
  SKGLogScheduledReceiverInit_sSKGScheduledReceiverLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeScheduledReceiver");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogJournalInit()
{
  if (SKGLogJournalInit_sOnceJournals != -1)
  {
    SKGLogJournalInit_cold_1();
  }

  v1 = SKGLogJournalInit_sSKGJournalLog;

  return v1;
}

uint64_t __SKGLogJournalInit_block_invoke()
{
  SKGLogJournalInit_sSKGJournalLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgeJournals");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogPipelineInit()
{
  if (SKGLogPipelineInit_sOncePipeline != -1)
  {
    SKGLogPipelineInit_cold_1();
  }

  v1 = SKGLogPipelineInit_sSKGPipelineLog;

  return v1;
}

uint64_t __SKGLogPipelineInit_block_invoke()
{
  SKGLogPipelineInit_sSKGPipelineLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledgePipeline");

  return MEMORY[0x1EEE66BB8]();
}

id SKGLogInit()
{
  if (SKGLogInit_sOnce != -1)
  {
    SKGLogInit_cold_1();
  }

  v1 = SKGLogInit_sSKGLog;

  return v1;
}

uint64_t __SKGLogInit_block_invoke()
{
  SKGLogInit_sSKGLog = os_log_create("com.apple.spotlightknowledge", "SpotlightKnowledge");

  return MEMORY[0x1EEE66BB8]();
}

void SKGLogSetLoggingLevel(uint64_t a1)
{
  if (SKGLogSetLoggingLevel_onceToken != -1)
  {
    SKGLogSetLoggingLevel_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SKGLogSetLoggingLevel_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(_loggerQueue, block);
}

void __SKGLogSetLoggingLevel_block_invoke()
{
  if (SKGLogInitialize_onceToken != -1)
  {
    __SKGLogSetLoggingLevel_block_invoke_cold_1();
  }
}

void __SKGLogSetLoggingLevel_block_invoke_2(uint64_t a1)
{
  _cachedLoggingLevel = *(a1 + 32);
  [_defaults setInteger:? forKey:?];
  [_defaults synchronize];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.spotlightknowledge.LoggingLevelChanged", 0, 0, 1u);
}

void loggingLevelChangedCallback()
{
  if (loggingLevelChangedCallback_onceToken != -1)
  {
    loggingLevelChangedCallback_cold_1();
  }

  dispatch_sync(_loggerQueue, &__block_literal_global_53);
  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v0 = SKGLogInit();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      loggingLevelChangedCallback_cold_2(v0);
    }
  }
}

void __loggingLevelChangedCallback_block_invoke()
{
  if (SKGLogInitialize_onceToken != -1)
  {
    __SKGLogSetLoggingLevel_block_invoke_cold_1();
  }
}

uint64_t __loggingLevelChangedCallback_block_invoke_2()
{
  result = [_defaults integerForKey:@"com.apple.spotlightknowledge.LoggingLevel"];
  _cachedLoggingLevel = result;
  return result;
}

const __CFArray *getValueAtIndex(const __CFArray *result, CFIndex a2)
{
  if (result)
  {
    v3 = result;
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      result = CFArrayGetValueAtIndex(v3, a2);
      if (result == *MEMORY[0x1E695E738])
      {
        return 0;
      }
    }
  }

  return result;
}

CFDateRef copyDateValueForKey(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  value = 0;
  if (theDict && a2)
  {
    if (CFDictionaryGetValueIfPresent(theDict, a2, &value) && value != *MEMORY[0x1E695E738] && (v4 = CFGetTypeID(value), v4 == CFDateGetTypeID()))
    {
      v5 = MEMORY[0x19A8E69C0](value);
      return CFDateCreate(*MEMORY[0x1E695E480], v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFStringRef copyStringValueForKey(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  value = 0;
  if (theDict && a2)
  {
    if (CFDictionaryGetValueIfPresent(theDict, a2, &value) && value != *MEMORY[0x1E695E738] && (v4 = CFGetTypeID(value), v4 == CFStringGetTypeID()))
    {
      result = CFStringGetLength(value);
      if (result)
      {
        return CFStringCreateCopy(*MEMORY[0x1E695E480], value);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *copyArrayValueForKey(const __CFDictionary *a1, const void *a2)
{
  Mutable = 0;
  value = 0;
  if (a1 && a2)
  {
    if (CFDictionaryGetValueIfPresent(a1, a2, &value) && value != *MEMORY[0x1E695E738] && (v3 = CFGetTypeID(value), v3 == CFArrayGetTypeID()) && CFArrayGetCount(value) && (Count = CFArrayGetCount(value)) != 0)
    {
      v5 = Count;
      v6 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(value, i);
          Copy = CFStringCreateCopy(v6, ValueAtIndex);
          if (Copy)
          {
            v10 = Copy;
            CFArrayAppendValue(Mutable, Copy);
            CFRelease(v10);
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

void sub_1977B0050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id unpackXPCDictRec(void *a1)
{
  v1 = a1;
  if (MEMORY[0x19A8E7150]() == MEMORY[0x1E69E9E80])
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __unpackXPCDictRec_block_invoke;
    applier[3] = &unk_1E74B8048;
    v7 = v3;
    v4 = v3;
    xpc_dictionary_apply(v1, applier);
    v2 = [v4 copy];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __unpackXPCDictRec_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  if (MEMORY[0x19A8E7150](v5) == MEMORY[0x1E69E9EB0])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v5)];
LABEL_8:
    v7 = v8;
LABEL_9:
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
LABEL_10:

    goto LABEL_11;
  }

  if (MEMORY[0x19A8E7150](v5) == MEMORY[0x1E69E9F18])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_8;
  }

  if (MEMORY[0x19A8E7150](v5) == MEMORY[0x1E69E9E80])
  {
    v7 = unpackXPCDictRec(v5);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:

  return 1;
}

uint64_t languageIsCJK(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"yue"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"ko"];
  }

  return v2;
}

CFLocaleRef currentSystemLocale()
{
  v0 = copyCurrentLocale();

  return v0;
}

CFLocaleRef copyCurrentLocale()
{
  v0 = copyCurrentPreferredLanguages();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFArrayGetCount(v0))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
    v3 = CFLocaleCreate(*MEMORY[0x1E695E480], ValueAtIndex);
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

const __CFArray *currentSystemPreferredLanguages()
{
  v0 = copyCurrentPreferredLanguages();

  return v0;
}

const __CFArray *copyCurrentPreferredLanguages()
{
  v0 = CFLocaleCopyPreferredLanguages();
  v1 = copyNormalizedLanguagesForIdentifiers(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

id localeKeyForLocale(void *a1)
{
  v1 = [a1 localeIdentifier];
  LanguageIDForIdentifier = SILanguagesGetLanguageIDForIdentifier();

  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LanguageIDForIdentifier];
  v4 = [v3 stringValue];

  return v4;
}

uint64_t localeChangeCallback(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 updateLocale];
  }

  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

const __CFArray *copyNormalizedLanguagesForIdentifiers(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v6 = copyNormalizedLocaleForIdentifier(ValueAtIndex);
        if (v6)
        {
          v7 = v6;
          v8 = MEMORY[0x19A8E6A40]();
          v20.length = CFArrayGetCount(Mutable);
          v20.location = 0;
          if (!CFArrayContainsValue(Mutable, v20, v8))
          {
            CFArrayAppendValue(Mutable, v8);
          }

          CFRelease(v7);
        }
      }
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  if (!CFArrayGetCount(Mutable))
  {
    v9 = CFLocaleCopyCurrent();
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x19A8E6A40]();
      v12 = copyNormalizedLocaleForIdentifier(v11);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0x19A8E6A40]();
        v21.length = CFArrayGetCount(Mutable);
        v21.location = 0;
        if (!CFArrayContainsValue(Mutable, v21, v14))
        {
          CFArrayAppendValue(Mutable, v14);
        }

        CFRelease(v13);
      }
    }

    else
    {
      if (!CFLocaleGetSystem() || (v16 = MEMORY[0x19A8E6A40](), (v17 = copyNormalizedLocaleForIdentifier(v16)) == 0))
      {
LABEL_18:
        if (!CFArrayGetCount(Mutable))
        {
          CFArrayAppendValue(Mutable, @"en-US");
        }

        return Mutable;
      }

      v10 = v17;
      v18 = MEMORY[0x19A8E6A40]();
      v22.length = CFArrayGetCount(Mutable);
      v22.location = 0;
      if (!CFArrayContainsValue(Mutable, v22, v18))
      {
        v19 = MEMORY[0x19A8E6A40](v10);
        CFArrayAppendValue(Mutable, v19);
      }
    }

    CFRelease(v10);
    goto LABEL_18;
  }

  return Mutable;
}

const __CFLocale *copyNormalizedLocaleForIdentifier(CFLocaleIdentifier localeIdentifier)
{
  if (localeIdentifier)
  {
    v1 = CFLocaleCreate(*MEMORY[0x1E695E480], localeIdentifier);
  }

  else
  {
    v1 = CFLocaleCopyCurrent();
  }

  v2 = v1;
  if (v1)
  {
    Value = CFLocaleGetValue(v1, *MEMORY[0x1E695E6D0]);
    if (Value)
    {
      v4 = Value;
      if (getValidRegions_onceToken != -1)
      {
        copyNormalizedLocaleForIdentifier_cold_1();
      }

      v5 = getValidRegions_gRegions;
      v14.length = CFArrayGetCount(getValidRegions_gRegions);
      v14.location = 0;
      if (CFArrayContainsValue(v5, v14, v4))
      {
        v6 = *MEMORY[0x1E695E480];
        v7 = v2;
LABEL_19:
        CFRelease(v2);
        return v7;
      }
    }

    v7 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6F0]);
    v8 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6F8]);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      v10 = *MEMORY[0x1E695E480];
      v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_US", v7);
    }

    else
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%@_US", v7, v8);
    }

    v12 = v11;
    v7 = CFLocaleCreate(v10, v11);
    CFRelease(v12);
    goto LABEL_19;
  }

  return 0;
}

CFArrayRef __getValidRegions_block_invoke()
{
  v2[257] = *MEMORY[0x1E69E9840];
  memcpy(v2, off_1E74B8158, 0x808uLL);
  result = CFArrayCreate(*MEMORY[0x1E695E480], v2, 257, MEMORY[0x1E695E9C0]);
  getValidRegions_gRegions = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void loggingLevelChangedCallback_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = _cachedLoggingLevel;
  _os_log_debug_impl(&dword_1977A7000, log, OS_LOG_TYPE_DEBUG, "Logging level updated to: %ld", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}