void _CACAssertionFailed(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v31 = &a9;
  v14 = MEMORY[0x277CCACA8];
  v15 = a5;
  v16 = [[v14 alloc] initWithFormat:v15 arguments:&a9];

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a1];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v19 = CACLogBugReporter();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v33 = a3;
    v34 = 2112;
    v35 = v17;
    v36 = 2112;
    v37 = v18;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = v13;
    _os_log_fault_impl(&dword_26B354000, v19, OS_LOG_TYPE_FAULT, "*** Assertion failure in %s, %@:%@.\n\n%@\n%@", buf, 0x34u);
  }

  v28 = v13;
  v20 = dispatch_semaphore_create(0);
  v21 = [v17 lastPathComponent];
  v22 = +[CACBugReporter sharedReporter];
  v23 = CACBugReporterTypeAssertion;
  v24 = CACBugReporterSubtypeFault;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %s, %@", v21, a3, v16];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___CACAssertionFailed_block_invoke;
  v29[3] = &unk_279CEB2D0;
  v30 = v20;
  v26 = v20;
  [v22 reportIssue:v23 subtype:v24 description:v25 completionBlock:v29];

  v27 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v26, v27);
}

const void *CACRecognizeCommandIdentifier(const void *a1, const void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *keys = xmmword_279CEB598;
  v13[0] = a1;
  v13[1] = a2;
  v2 = CFDictionaryCreate(0, keys, v13, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2)
  {
    return 0;
  }

  v3 = CACCreateSerializedGenericActionDictionary(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  mach_service = xpc_connection_create_mach_service("com.apple.speech.CommandAndControl.utility", 0, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_0);
  xpc_connection_resume(mach_service);
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "msg", 101);
  xpc_dictionary_set_value(v6, "pld", v4);
  v7 = xpc_connection_send_message_with_reply_sync(mach_service, v6);
  v8 = CACCreateDeserializedObject(v7);
  if (v8)
  {
    v9 = v8;
    Value = CFDictionaryGetValue(v8, @"replyObject");
    v11 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

const void *CACRecognizeString(const void *a1, const void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *keys = xmmword_279CEB5C8;
  v13[0] = a1;
  v13[1] = a2;
  v2 = CFDictionaryCreate(0, keys, v13, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2)
  {
    return 0;
  }

  v3 = CACCreateSerializedGenericActionDictionary(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  mach_service = xpc_connection_create_mach_service("com.apple.speech.CommandAndControl.utility", 0, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_18);
  xpc_connection_resume(mach_service);
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "msg", 101);
  xpc_dictionary_set_value(v6, "pld", v4);
  v7 = xpc_connection_send_message_with_reply_sync(mach_service, v6);
  v8 = CACCreateDeserializedObject(v7);
  if (v8)
  {
    v9 = v8;
    Value = CFDictionaryGetValue(v8, @"replyObject");
    v11 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

const void *CACRequestInformationWithLocaleAndParams(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *keys = xmmword_279CEB5D8;
  v15 = @"timeout";
  values[0] = a1;
  values[1] = a2;
  values[2] = a3;
  v3 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v3)
  {
    return 0;
  }

  v4 = CACCreateSerializedGenericActionDictionary(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  mach_service = xpc_connection_create_mach_service("com.apple.speech.CommandAndControl.utility", 0, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_23);
  xpc_connection_resume(mach_service);
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, "msg", 102);
  xpc_dictionary_set_value(v7, "pld", v5);
  v8 = xpc_connection_send_message_with_reply_sync(mach_service, v7);
  v9 = CACCreateDeserializedObject(v8);
  if (v9)
  {
    v10 = v9;
    Value = CFDictionaryGetValue(v9, @"replyObject");
    CFRetain(Value);
    CFRelease(v10);
  }

  else
  {
    Value = 0;
  }

  return Value;
}

void sub_26B35FF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B36108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void CACGetDeviceSupportsUserAttentionDetection(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    if (CACGetDeviceSupportsUserAttentionDetection_onceToken != -1)
    {
      CACGetDeviceSupportsUserAttentionDetection_cold_1();
    }

    v6 = CACGetDeviceSupportsUserAttentionDetection_serialUserAttentionSupportQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __CACGetDeviceSupportsUserAttentionDetection_block_invoke_2;
    v7[3] = &unk_279CEB3E0;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

uint64_t __CACGetDeviceSupportsUserAttentionDetection_block_invoke()
{
  CACGetDeviceSupportsUserAttentionDetection_serialUserAttentionSupportQueue = dispatch_queue_create("com.apple.SpeechRecognitionCore.SerialUserAttentionSupportQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __CACGetDeviceSupportsUserAttentionDetection_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CEF768] supportedEvents];
  v3 = [MEMORY[0x277CC1D78] isWakeGestureAvailable];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CACGetDeviceSupportsUserAttentionDetection_block_invoke_3;
  block[3] = &unk_279CEB6C8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = v3;
  dispatch_async(v4, block);
}

void sub_26B366138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B3696C0(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x26B369694);
}

id NumberWithLog2BucketForIntegerValue(uint64_t a1)
{
  if (a1 < 1)
  {
    v3 = &unk_287BEFC70;
  }

  else if (a1 == 1)
  {
    v3 = &unk_287BEFC88;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLong:llround(log2(a1))];
  }

  return v3;
}

void sub_26B3710B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B3717BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B372024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

_BYTE *OUTLINED_FUNCTION_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void sub_26B37A668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_26B37A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_26B37AB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void _NotificationOverlayOptionsSettingsChanged()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v1 = [v0 isActiveOverlayType:@"NumberedGrid"];

  if (v1)
  {
    v2 = MEMORY[0x277D85CD0];

    dispatch_async(v2, &__block_literal_global_1690);
  }
}

void _NotificationUserHintsSettingsChanged()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 synchronizeRecognizersWithReason:kSRUISyncReasonRecognizersChanged];
}

void _NotificationLiveMicrophoneDidTurnOnAfterInterruption()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 _microphoneTurnedOnAfterInteruption];

  v1 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  if ([v1 telephonyInterruptedListening])
  {
    v2 = +[CACDisplayManager sharedManager];
    v3 = [v2 carPlayConnected];

    if (!v3)
    {
      v4 = &__block_literal_global_1697;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v6 = [v5 _attentionIsLostWithListeningOffAction];

  if (v6)
  {
    goto LABEL_8;
  }

  v4 = &__block_literal_global_1719;
LABEL_7:
  dispatch_async(MEMORY[0x277D85CD0], v4);
LABEL_8:
  v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v7 setTelephonyInterruptedListening:0];
}

void _NotificationLiveMicrophoneDidTurnOffAfterInterruption()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 _microphoneTurnedOffAfterInteruption];
}

void _NotificationLiveMicrophoneDidTurnOn()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 _microphoneTurnedOn];
}

void _NotificationLiveMicrophoneDidTurnOff()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 _microphoneTurnedOff];
}

void _NotificationLoggingPrivacyChanged()
{
  v0 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v0 _notifyUserOfSensitiveLogging];
}

void sub_26B38C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B38D3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void RXRelease(const void *a1)
{
  if (a1)
  {
    label = dispatch_queue_get_label(0);
    if (label && !strncmp(label, "com.apple.speech.RXAPIDispatchQueue", 0x23uLL))
    {

      CFRelease(a1);
    }

    else
    {
      CFRetain(a1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __RXRelease_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(sRXAPIDispatchQueue, block);
    }
  }
}

void __RXRelease_block_invoke(uint64_t a1)
{
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

__CFString *CACStringForUserAttentionGainEvent(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"CACUserAttentionGainEventUndefined";
  }

  else
  {
    return off_279CEC1A8[a1 - 1];
  }
}

__CFString *CACStringForUserAttentionLossEvent(uint64_t a1)
{
  v1 = @"CACUserAttentionLossEventUndefined";
  if (a1 == 1)
  {
    v1 = @"CACUserAttentionLossEventFaceDetection";
  }

  if (a1 == 2)
  {
    return @"CACUserAttentionLossEventLowerDeviceGesture";
  }

  else
  {
    return v1;
  }
}

void sub_26B3A4320(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26B3A44E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void _handleNotification(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 isEqualToString:@"CACNotificationLanguageChanged"])
  {
    v3 = MEMORY[0x277D85CD0];

    dispatch_async(v3, &__block_literal_global_674);
  }
}

void ___handleNotification_block_invoke()
{
  v0 = +[CACPreferences sharedPreferences];
  [v0 _handleLanguageChanged];
}

BOOL utility_tool_connection_entitled()
{
  v0 = xpc_connection_copy_entitlement_value();
  v1 = v0;
  if (v0)
  {
    value = xpc_BOOL_get_value(v0);
  }

  else
  {
    value = 0;
  }

  return value;
}

void __utility_tool_event_handler_block_invoke(uint64_t a1, void *a2)
{
  v122[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = v3;
  if (v6 == MEMORY[0x277D863F8])
  {
    v19 = v5;
    if (v19)
    {
      v20 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v21 = [v20 commandsToIgnore];

      if (v21)
      {
        v22 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v23 = [v22 commandsToIgnore];
        [v23 removeAllObjects];

        v24 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        [v24 setCommandsToIgnore:0];

        v25 = +[CACDisplayManager sharedManager];
        [v25 setShouldShowTextEditingOverlayInTutorial:1];
      }

      barrier = MEMORY[0x277D85DD0];
      v116 = 3221225472;
      v117 = __utility_tool_client_tearDown_block_invoke;
      v118 = &unk_279CEB2D0;
      v119 = v19;
      xpc_connection_send_barrier(v119, &barrier);
    }

    v26 = +[CACUtilityToolServer sharedInstance];
    [v26 removeClient:v19];
  }

  else
  {
    if (!utility_tool_connection_entitled())
    {
      v9 = CACCreateSerializedObject([MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Unsupported client", @"ErrorString", 0}]);
      reply_to_event_with_object(v5, v6, v9);
      goto LABEL_16;
    }

    if (MEMORY[0x26D677810](v6) == MEMORY[0x277D86468])
    {
      int64 = xpc_dictionary_get_int64(v6, "msg");
      v8 = xpc_dictionary_get_value(v6, "pld");
      v9 = v8;
      if (int64 != 102)
      {
        if (int64 != 101)
        {
          goto LABEL_16;
        }

        v10 = CACCreateDeserializedGenericActionDictionary(v8);
        if (!v10)
        {
          goto LABEL_16;
        }

        v11 = v10;
        v12 = [v10 objectForKey:@"timeout"];
        v13 = [v11 objectForKey:@"cmTX"];
        v14 = [v11 objectForKey:@"cxID"];
        v15 = [v11 objectForKey:@"ignoreCommand"];
        v16 = [v11 objectForKey:@"getCorrections"];
        v108 = [v11 objectForKey:@"showTextEditingOverlay"];
        v111 = v15;
        v106 = v16;
        if (v13)
        {
          v17 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
          if (v12)
          {
            [v12 doubleValue];
          }

          else
          {
            v18 = 10.0;
          }

          v59 = [v17 synchronousRecognitionOfString:v13 timeoutInterval:v18];
        }

        else
        {
          if ([v14 length])
          {
            v57 = [v14 isEqualToString:@"ResetRecognizedCommandIdentifier"];
            v58 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
            v59 = v58;
            if (v57)
            {
              [v58 setRecognizedCommandIdentifier:@"ResetRecognizedCommandIdentifier"];
            }

            else
            {
              [v58 handleCommandWithIdentifier:v14];

              v59 = xpc_string_create("success");
              reply_to_event_with_object(v5, v6, v59);
            }

            goto LABEL_44;
          }

          if ([v15 length])
          {
            v102 = [v15 isEqualToString:@"ResetIgnoredCommands"];
            v63 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
            v64 = [v63 commandsToIgnore];
            v65 = v64;
            if (v102)
            {

              if (!v65)
              {
                goto LABEL_45;
              }

              v59 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
              v62 = [v59 commandsToIgnore];
              [v62 removeAllObjects];
            }

            else
            {

              if (!v65)
              {
                v71 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v71 setCommandsToIgnore:v72];
              }

              v59 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
              v62 = [v59 commandsToIgnore];
              [v62 addObject:v111];
            }

            goto LABEL_43;
          }

          if ([v16 length])
          {
            v103 = +[CACPreferences sharedPreferences];
            v68 = [v103 bestLocaleIdentifier];
            v59 = [CACCorrectionUtilities alternativesForString:v16 languageIdentifier:v68];

            if ([v59 count])
            {
              v69 = +[CACUtilityToolServer sharedInstance];
              [v69 setPhoneticAlternative:0];

              v104 = +[CACUtilityToolServer sharedInstance];
              v70 = [v59 objectAtIndexedSubscript:0];
              [v104 setPhoneticAlternative:v70];
            }

            goto LABEL_44;
          }

          if ([v108 length])
          {
            if ([v108 isEqualToString:@"DisableTextEditingOverlay"])
            {
              v77 = +[CACDisplayManager sharedManager];
              v59 = v77;
              v78 = 0;
            }

            else
            {
              if (![v108 isEqualToString:@"ResetTextEditingOverlay"])
              {
                goto LABEL_45;
              }

              v77 = +[CACDisplayManager sharedManager];
              v59 = v77;
              v78 = 1;
            }

            [v77 setShouldShowTextEditingOverlayInTutorial:v78];
            goto LABEL_44;
          }

          v105 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
          v99 = [v11 objectForKey:@"cmID"];
          v97 = [v11 objectForKey:@"params"];
          if (v12)
          {
            [v12 doubleValue];
          }

          else
          {
            v83 = 10.0;
          }

          v59 = [v105 synchronousRecognitionUsingCommandIdentifier:v99 parameters:v97 timeoutInterval:v83];
        }

        v62 = CACCreateSerializedObject(v59);
        reply_to_event_with_object(v5, v6, v62);
LABEL_43:

LABEL_44:
LABEL_45:
        CFRelease(v11);

        goto LABEL_16;
      }

      v27 = CACCreateDeserializedGenericActionDictionary(v8);
      if (v27)
      {
        v28 = v27;
        v29 = [v27 objectForKey:@"localeID"];
        v30 = [v28 objectForKey:@"params"];
        v31 = [v30 firstObject];
        v32 = [v31 caseInsensitiveCompare:@"allCommands"];

        if (v32)
        {
          v33 = [v30 firstObject];
          v34 = [v33 caseInsensitiveCompare:@"activeCommands"];

          if (v34)
          {
            v35 = [v30 firstObject];
            v36 = [v35 caseInsensitiveCompare:@"groupedCommands"];

            if (v36)
            {
              v37 = [v30 firstObject];
              v38 = [v37 caseInsensitiveCompare:@"contextSummary"];

              if (v38)
              {
                v39 = [v30 firstObject];
                v40 = [v39 caseInsensitiveCompare:@"customCommands"];

                if (v40)
                {
                  v41 = [v30 firstObject];
                  v42 = [v41 caseInsensitiveCompare:@"listeningStatus"];

                  if (v42)
                  {
                    v43 = [v30 firstObject];
                    v44 = [v43 caseInsensitiveCompare:@"overlayStatus"];

                    if (v44)
                    {
                      v45 = [v30 firstObject];
                      v46 = [v45 caseInsensitiveCompare:@"dictationStatus"];

                      if (v46)
                      {
                        v47 = [v30 firstObject];
                        v48 = [v47 caseInsensitiveCompare:@"ComputeGridPath"];

                        if (!v48)
                        {
                          if ([v30 count] < 5)
                          {
                            goto LABEL_86;
                          }

                          v49 = [v30 objectAtIndexedSubscript:1];
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v50 = [v30 objectAtIndexedSubscript:2];
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v51 = [v30 objectAtIndexedSubscript:3];
                              objc_opt_class();
                              v112 = v51;
                              if (objc_opt_isKindOfClass())
                              {
                                v52 = [v30 objectAtIndexedSubscript:4];
                                objc_opt_class();
                                isKindOfClass = objc_opt_isKindOfClass();

                                if (isKindOfClass)
                                {
                                  v113 = [v30 objectAtIndexedSubscript:1];
                                  v110 = [v30 objectAtIndexedSubscript:2];
                                  v107 = [v30 objectAtIndexedSubscript:3];
                                  v101 = [v30 objectAtIndexedSubscript:4];
                                  if ([v30 count] >= 6 && (objc_msgSend(v30, "objectAtIndexedSubscript:", 5), v53 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v54 = objc_opt_isKindOfClass(), v53, (v54 & 1) != 0))
                                  {
                                    v55 = [v30 objectAtIndexedSubscript:5];
                                    v56 = [v55 unsignedIntValue];
                                  }

                                  else
                                  {
                                    v56 = 0;
                                  }

                                  [(__CFString *)v113 doubleValue];
                                  v85 = v84;
                                  [v110 doubleValue];
                                  v87 = v86;
                                  [v107 doubleValue];
                                  v89 = v88;
                                  [v101 doubleValue];
                                  v91 = v90;
                                  v92 = +[CACUtilityToolServer sharedInstance];
                                  v93 = [v92 gridNumberToHitRect:v56 displayID:{v85, v87, v89, v91}];

                                  v98 = v93;
                                  v100 = [v93 objectForKey:@"error"];
                                  if (v100)
                                  {
                                    v114[0] = @"ComputeGridPathResult";
                                    v121 = @"error";
                                    v122[0] = v100;
                                    v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:&v121 count:1];
                                    barrier = v94;
                                    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&barrier forKeys:v114 count:1];
                                  }

                                  else
                                  {
                                    v121 = @"ComputeGridPathResult";
                                    v114[0] = @"PointX";
                                    v114[1] = @"PointY";
                                    barrier = v113;
                                    v116 = v110;
                                    v114[2] = @"Width";
                                    v114[3] = @"Height";
                                    v117 = v107;
                                    v118 = v101;
                                    v114[4] = @"Path";
                                    v94 = [v93 objectForKey:@"number"];
                                    v119 = v94;
                                    v114[5] = @"IsFinal";
                                    v96 = [v93 objectForKey:@"isFinal"];
                                    v120 = v96;
                                    v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&barrier forKeys:v114 count:6];
                                    v122[0] = v95;
                                    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:&v121 count:1];
                                  }

                                  goto LABEL_87;
                                }

LABEL_86:
                                v74 = &unk_287BF00B0;
LABEL_87:
                                v81 = v74;
LABEL_73:
                                v82 = CACCreateSerializedObject(v81);
                                if (v82)
                                {
                                  reply_to_event_with_object(v5, v6, v82);
                                }

                                goto LABEL_56;
                              }
                            }
                          }

                          goto LABEL_86;
                        }

LABEL_56:
                        CFRelease(v28);

                        goto LABEL_16;
                      }

                      v79 = +[CACUtilityToolServer sharedInstance];
                      v74 = [v79 dictationStatus];

                      v75 = @"DictationStatusString";
                    }

                    else
                    {
                      v76 = +[CACUtilityToolServer sharedInstance];
                      v74 = [v76 overlayStatus];

                      v75 = @"OverlayStatusString";
                    }
                  }

                  else
                  {
                    v73 = +[CACUtilityToolServer sharedInstance];
                    v74 = [v73 listeningStatus];

                    v75 = @"ListeningStatusString";
                  }

                  v114[0] = v75;
                  if (v74)
                  {
                    v80 = v74;
                  }

                  else
                  {
                    v80 = &stru_287BD8610;
                  }

                  barrier = v80;
                  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&barrier forKeys:v114 count:1];
                  goto LABEL_73;
                }

                v60 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                v61 = [v60 allCustomCommandsDetail];
              }

              else
              {
                v60 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                v61 = [v60 contextSummary];
              }
            }

            else
            {
              v60 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
              v61 = [v60 groupedCommandsForLocaleIdentifier:v29];
            }
          }

          else
          {
            v60 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
            v61 = [v60 activeCommandsForLocaleIdentifier:v29];
          }
        }

        else
        {
          v60 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
          v61 = [v60 allCommandsForLocaleIdentifier:v29];
        }

        v66 = v61;

        v67 = CACCreateSerializedObject(v66);
        reply_to_event_with_object(v5, v6, v67);

        goto LABEL_56;
      }

LABEL_16:
    }
  }

  objc_autoreleasePoolPop(v4);
}

void reply_to_event_with_object(void *a1, void *a2, void *a3)
{
  connection = a1;
  v5 = a3;
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v7 = os_transaction_create();
    xpc_dictionary_set_value(reply, "replyObject", v5);
    xpc_connection_send_message(connection, reply);
  }
}

void sub_26B3AF44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CACLogAccessibility()
{
  if (CACLogAccessibility_onceToken != -1)
  {
    CACLogAccessibility_cold_1();
  }

  v1 = CACLogAccessibility_sLogAccessibility;

  return v1;
}

uint64_t __CACLogAccessibility_block_invoke()
{
  CACLogAccessibility_sLogAccessibility = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "Accessibility");

  return MEMORY[0x2821F96F8]();
}

id CACLogAudio()
{
  if (CACLogAudio_onceToken != -1)
  {
    CACLogAudio_cold_1();
  }

  v1 = CACLogAudio_sLogAudio;

  return v1;
}

uint64_t __CACLogAudio_block_invoke()
{
  CACLogAudio_sLogAudio = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "Audio");

  return MEMORY[0x2821F96F8]();
}

id CACLogContext()
{
  if (CACLogContext_onceToken != -1)
  {
    CACLogContext_cold_1();
  }

  v1 = CACLogContext_sLogContext;

  return v1;
}

uint64_t __CACLogContext_block_invoke()
{
  CACLogContext_sLogContext = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "Context");

  return MEMORY[0x2821F96F8]();
}

id CACLogDictationCommands()
{
  if (CACLogDictationCommands_onceToken != -1)
  {
    CACLogDictationCommands_cold_1();
  }

  v1 = CACLogDictationCommands_sLogDictationCommands;

  return v1;
}

uint64_t __CACLogDictationCommands_block_invoke()
{
  CACLogDictationCommands_sLogDictationCommands = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "DictationCommands");

  return MEMORY[0x2821F96F8]();
}

id CACLogElementCollection()
{
  if (CACLogElementCollection_onceToken != -1)
  {
    CACLogElementCollection_cold_1();
  }

  v1 = CACLogElementCollection_sLogElementCollection;

  return v1;
}

uint64_t __CACLogElementCollection_block_invoke()
{
  CACLogElementCollection_sLogElementCollection = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "ElementCollection");

  return MEMORY[0x2821F96F8]();
}

id CACLogElementEvaluation()
{
  if (CACLogElementEvaluation_onceToken != -1)
  {
    CACLogElementEvaluation_cold_1();
  }

  v1 = CACLogElementEvaluation_sLogElementEvaluation;

  return v1;
}

uint64_t __CACLogElementEvaluation_block_invoke()
{
  CACLogElementEvaluation_sLogElementEvaluation = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "ElementEvaluation");

  return MEMORY[0x2821F96F8]();
}

id CACLogFindAndSelect()
{
  if (CACLogFindAndSelect_onceToken != -1)
  {
    CACLogFindAndSelect_cold_1();
  }

  v1 = CACLogFindAndSelect_sLogFindAndSelect;

  return v1;
}

uint64_t __CACLogFindAndSelect_block_invoke()
{
  CACLogFindAndSelect_sLogFindAndSelect = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "FindAndSelect");

  return MEMORY[0x2821F96F8]();
}

id CACLogGeneral()
{
  if (CACLogGeneral_onceToken != -1)
  {
    CACLogGeneral_cold_1();
  }

  v1 = CACLogGeneral_sLogGeneral;

  return v1;
}

uint64_t __CACLogGeneral_block_invoke()
{
  CACLogGeneral_sLogGeneral = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "General");

  return MEMORY[0x2821F96F8]();
}

id CACLogPreferences()
{
  if (CACLogPreferences_onceToken != -1)
  {
    CACLogPreferences_cold_1();
  }

  v1 = CACLogPreferences_sLogPreferences;

  return v1;
}

uint64_t __CACLogPreferences_block_invoke()
{
  CACLogPreferences_sLogPreferences = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "Preferences");

  return MEMORY[0x2821F96F8]();
}

id CACLogRecognition()
{
  if (CACLogRecognition_onceToken != -1)
  {
    CACLogRecognition_cold_1();
  }

  v1 = CACLogRecognition_sLogRecognition;

  return v1;
}

uint64_t __CACLogRecognition_block_invoke()
{
  CACLogRecognition_sLogRecognition = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "Recognition");

  return MEMORY[0x2821F96F8]();
}

id CACLogWordParse()
{
  if (CACLogWordParse_onceToken != -1)
  {
    CACLogWordParse_cold_1();
  }

  v1 = CACLogWordParse_sLogWordParse;

  return v1;
}

uint64_t __CACLogWordParse_block_invoke()
{
  CACLogWordParse_sLogWordParse = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "WordParse");

  return MEMORY[0x2821F96F8]();
}

id CACLogBugReporter()
{
  if (CACLogBugReporter_onceToken != -1)
  {
    CACLogBugReporter_cold_1();
  }

  v1 = CACLogBugReporter_sLogBugReporter;

  return v1;
}

uint64_t __CACLogBugReporter_block_invoke()
{
  CACLogBugReporter_sLogBugReporter = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "BugReporter");

  return MEMORY[0x2821F96F8]();
}

id CACLogAttentionAware()
{
  if (CACLogAttentionAware_onceToken != -1)
  {
    CACLogAttentionAware_cold_1();
  }

  v1 = CACLogAttentionAware_sLogAttentionAware;

  return v1;
}

uint64_t __CACLogAttentionAware_block_invoke()
{
  CACLogAttentionAware_sLogAttentionAware = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "AttentionAware");

  return MEMORY[0x2821F96F8]();
}

id CACLogShortcuts()
{
  if (CACLogShortcuts_onceToken != -1)
  {
    CACLogShortcuts_cold_1();
  }

  v1 = CACLogShortcuts_sLogShortcuts;

  return v1;
}

uint64_t __CACLogShortcuts_block_invoke()
{
  CACLogShortcuts_sLogShortcuts = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "SiriShortcuts");

  return MEMORY[0x2821F96F8]();
}

id CACLogCorrections()
{
  if (CACLogCorrections_onceToken != -1)
  {
    CACLogCorrections_cold_1();
  }

  v1 = CACLogCorrections_sLogCorrections;

  return v1;
}

uint64_t __CACLogCorrections_block_invoke()
{
  CACLogCorrections_sLogCorrections = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "Corrections");

  return MEMORY[0x2821F96F8]();
}

id CACLogGrid()
{
  if (CACLogGrid_onceToken != -1)
  {
    CACLogGrid_cold_1();
  }

  v1 = CACLogGrid_sLogGrid;

  return v1;
}

uint64_t __CACLogGrid_block_invoke()
{
  CACLogGrid_sLogGrid = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "Grid");

  return MEMORY[0x2821F96F8]();
}

id CACLogAssetDownload()
{
  if (CACLogAssetDownload_onceToken != -1)
  {
    CACLogAssetDownload_cold_1();
  }

  v1 = CACLogAssetDownload_sLogAssetDownload;

  return v1;
}

uint64_t __CACLogAssetDownload_block_invoke()
{
  CACLogAssetDownload_sLogAssetDownload = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "AssetDownload");

  return MEMORY[0x2821F96F8]();
}

id CACLogGestureRecording()
{
  if (CACLogGestureRecording_onceToken != -1)
  {
    CACLogGestureRecording_cold_1();
  }

  v1 = CACLogGestureRecording_sLogGestureRecording;

  return v1;
}

uint64_t __CACLogGestureRecording_block_invoke()
{
  CACLogGestureRecording_sLogGestureRecording = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "GestureRecording");

  return MEMORY[0x2821F96F8]();
}

id CACLogAdditionalLogging()
{
  if (CACLogAdditionalLogging_onceToken != -1)
  {
    CACLogAdditionalLogging_cold_1();
  }

  v1 = CACLogAdditionalLogging_sLogAdditionalLogging;

  return v1;
}

uint64_t __CACLogAdditionalLogging_block_invoke()
{
  CACLogAdditionalLogging_sLogAdditionalLogging = os_log_create("com.apple.speech.SpeechRecognitionCommandAndControl", "AdditionalLogging");

  return MEMORY[0x2821F96F8]();
}

id AXMRLogVoiceControl()
{
  if (AXMRLogVoiceControl_onceToken != -1)
  {
    AXMRLogVoiceControl_cold_1();
  }

  v1 = AXMRLogVoiceControl_sMRLogVoiceControl;

  return v1;
}

uint64_t __AXMRLogVoiceControl_block_invoke()
{
  AXMRLogVoiceControl_sMRLogVoiceControl = os_log_create("com.apple.Accessibility", "AXMRVoiceControl");

  return MEMORY[0x2821F96F8]();
}

double CACZOTMainScreenSize()
{
  if (CACZOTMainScreenSize_onceToken != -1)
  {
    CACZOTMainScreenSize_cold_1();
  }

  return *&CACZOTMainScreenSize_ScreenSize_0;
}

void __CACZOTMainScreenSize_block_invoke()
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 nativeBounds];
  CACZOTMainScreenSize_ScreenSize_0 = v0;
  CACZOTMainScreenSize_ScreenSize_1 = v1;
}

id CACZWInnerLensBorderForBounds(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = objc_alloc_init(MEMORY[0x277D75208]);
  v11 = v10;
  if (a1)
  {
    v12 = v10;
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    [v12 addArcWithCenter:0 radius:MinX startAngle:CGRectGetMinY(v35) endAngle:13.0 clockwise:{1.44079633, 0.13}];
    v36.origin.x = a2;
    v36.origin.y = a3;
    v36.size.width = a4;
    v36.size.height = a5;
    MidX = CGRectGetMidX(v36);
    v37.origin.x = a2;
    v37.origin.y = a3;
    v37.size.width = a4;
    v37.size.height = a5;
    [v12 addArcWithCenter:0 radius:MidX startAngle:CGRectGetMinY(v37) endAngle:13.0 clockwise:{-3.27159265, 0.13}];
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    MaxX = CGRectGetMaxX(v38);
    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    [v12 addArcWithCenter:0 radius:MaxX startAngle:CGRectGetMinY(v39) endAngle:13.0 clockwise:{-3.27159265, 1.70079633}];
    v40.origin.x = a2;
    v40.origin.y = a3;
    v40.size.width = a4;
    v40.size.height = a5;
    v16 = CGRectGetMaxX(v40);
    v41.origin.x = a2;
    v41.origin.y = a3;
    v41.size.width = a4;
    v41.size.height = a5;
    [v12 addArcWithCenter:0 radius:v16 startAngle:CGRectGetMidY(v41) endAngle:13.0 clockwise:{-1.70079633, 1.70079633}];
    v42.origin.x = a2;
    v42.origin.y = a3;
    v42.size.width = a4;
    v42.size.height = a5;
    v17 = CGRectGetMaxX(v42);
    v43.origin.x = a2;
    v43.origin.y = a3;
    v43.size.width = a4;
    v43.size.height = a5;
    [v12 addArcWithCenter:0 radius:v17 startAngle:CGRectGetMaxY(v43) endAngle:13.0 clockwise:{-1.70079633, -3.01159265}];
    v44.origin.x = a2;
    v44.origin.y = a3;
    v44.size.width = a4;
    v44.size.height = a5;
    v18 = CGRectGetMidX(v44);
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    [v12 addArcWithCenter:0 radius:v18 startAngle:CGRectGetMaxY(v45) endAngle:13.0 clockwise:{-0.13, -3.01159265}];
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    v19 = CGRectGetMinX(v46);
    v47.origin.x = a2;
    v47.origin.y = a3;
    v47.size.width = a4;
    v47.size.height = a5;
    [v12 addArcWithCenter:0 radius:v19 startAngle:CGRectGetMaxY(v47) endAngle:13.0 clockwise:{-0.13, -1.44079633}];
    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    v20 = CGRectGetMinX(v48);
    v49.origin.x = a2;
    v49.origin.y = a3;
    v49.size.width = a4;
    v49.size.height = a5;
    [v12 addArcWithCenter:0 radius:v20 startAngle:CGRectGetMidY(v49) endAngle:13.0 clockwise:{1.44079633, -1.44079633}];
    [v12 closePath];
  }

  else
  {
    v21 = a5 + -4.0;
    v22 = a4 + -4.0;
    v23 = a3 + 2.0;
    v24 = a2 + 2.0;
    v25 = MEMORY[0x277D75208];
    v50.origin.x = v24;
    v50.origin.y = v23;
    v50.size.width = v22;
    v50.size.height = v21;
    v26 = CGRectGetMinX(v50) + 9.0;
    v51.origin.x = v24;
    v51.origin.y = v23;
    v51.size.width = v22;
    v51.size.height = v21;
    v12 = [v25 bezierPathWithArcCenter:1 radius:v26 startAngle:CGRectGetMinY(v51) + 9.0 endAngle:9.0 clockwise:{-3.14159265, -1.57079633}];

    v52.origin.x = v24;
    v52.origin.y = v23;
    v52.size.width = v22;
    v52.size.height = v21;
    v27 = CGRectGetMaxX(v52) + -9.0;
    v53.origin.x = v24;
    v53.origin.y = v23;
    v53.size.width = v22;
    v53.size.height = v21;
    [v12 addArcWithCenter:1 radius:v27 startAngle:CGRectGetMinY(v53) + 9.0 endAngle:9.0 clockwise:{-1.57079633, 0.0}];
    v54.origin.x = v24;
    v54.origin.y = v23;
    v54.size.width = v22;
    v54.size.height = v21;
    v28 = CGRectGetMaxX(v54) + -9.0;
    v55.origin.x = v24;
    v55.origin.y = v23;
    v55.size.width = v22;
    v55.size.height = v21;
    [v12 addArcWithCenter:1 radius:v28 startAngle:CGRectGetMaxY(v55) + -9.0 endAngle:9.0 clockwise:{0.0, 1.57079633}];
    v56.origin.x = v24;
    v56.origin.y = v23;
    v56.size.width = v22;
    v56.size.height = v21;
    v29 = CGRectGetMinX(v56) + 9.0;
    v57.origin.x = v24;
    v57.origin.y = v23;
    v57.size.width = v22;
    v57.size.height = v21;
    [v12 addLineToPoint:{v29, CGRectGetMaxY(v57)}];
    v58.origin.x = v24;
    v58.origin.y = v23;
    v58.size.width = v22;
    v58.size.height = v21;
    v30 = CGRectGetMinX(v58) + 9.0;
    v59.origin.x = v24;
    v59.origin.y = v23;
    v59.size.width = v22;
    v59.size.height = v21;
    [v12 addArcWithCenter:1 radius:v30 startAngle:CGRectGetMaxY(v59) + -9.0 endAngle:9.0 clockwise:{1.57079633, 3.14159265}];
    v60.origin.x = v24;
    v60.origin.y = v23;
    v60.size.width = v22;
    v60.size.height = v21;
    v31 = CGRectGetMinX(v60);
    v61.origin.x = v24;
    v61.origin.y = v23;
    v61.size.width = v22;
    v61.size.height = v21;
    [v12 addLineToPoint:{v31, CGRectGetMinY(v61) + 9.0}];
  }

  return v12;
}

id CACZWOuterLensBorderForBounds(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [MEMORY[0x277D75208] bezierPath];
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  MinX = CGRectGetMinX(v38);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (a1)
  {
    [v10 addArcWithCenter:1 radius:MinX startAngle:CGRectGetMinY(*&v12) endAngle:11.0 clockwise:0.0];
    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    v16 = CGRectGetMinX(v39) + 11.0;
    v40.origin.x = a2;
    v40.origin.y = a3;
    v40.size.width = a4;
    v40.size.height = a5;
    [v10 moveToPoint:{v16, CGRectGetMinY(v40)}];
    v41.origin.x = a2;
    v41.origin.y = a3;
    v41.size.width = a4;
    v41.size.height = a5;
    MidX = CGRectGetMidX(v41);
    v42.origin.x = a2;
    v42.origin.y = a3;
    v42.size.width = a4;
    v42.size.height = a5;
    [v10 addArcWithCenter:1 radius:MidX startAngle:CGRectGetMinY(v42) endAngle:11.0 clockwise:{-3.14159265, 3.14159265}];
    v43.origin.x = a2;
    v43.origin.y = a3;
    v43.size.width = a4;
    v43.size.height = a5;
    v18 = CGRectGetMidX(v43) + 11.0;
    v44.origin.x = a2;
    v44.origin.y = a3;
    v44.size.width = a4;
    v44.size.height = a5;
    [v10 moveToPoint:{v18, CGRectGetMinY(v44)}];
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    MaxX = CGRectGetMaxX(v45);
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    [v10 addArcWithCenter:1 radius:MaxX startAngle:CGRectGetMinY(v46) endAngle:11.0 clockwise:{-3.14159265, 3.14159265}];
    v47.origin.x = a2;
    v47.origin.y = a3;
    v47.size.width = a4;
    v47.size.height = a5;
    v20 = CGRectGetMaxX(v47);
    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    [v10 moveToPoint:{v20, CGRectGetMinY(v48) + 11.0}];
    v49.origin.x = a2;
    v49.origin.y = a3;
    v49.size.width = a4;
    v49.size.height = a5;
    v21 = CGRectGetMaxX(v49);
    v50.origin.x = a2;
    v50.origin.y = a3;
    v50.size.width = a4;
    v50.size.height = a5;
    [v10 addArcWithCenter:1 radius:v21 startAngle:CGRectGetMidY(v50) endAngle:11.0 clockwise:{-1.57079633, 4.71238898}];
    v51.origin.x = a2;
    v51.origin.y = a3;
    v51.size.width = a4;
    v51.size.height = a5;
    v22 = CGRectGetMaxX(v51);
    v52.origin.x = a2;
    v52.origin.y = a3;
    v52.size.width = a4;
    v52.size.height = a5;
    [v10 moveToPoint:{v22, CGRectGetMidY(v52) + 11.0}];
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    v23 = CGRectGetMaxX(v53);
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    [v10 addArcWithCenter:1 radius:v23 startAngle:CGRectGetMaxY(v54) endAngle:11.0 clockwise:{-1.57079633, 4.71238898}];
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    v24 = CGRectGetMaxX(v55) + -11.0;
    v56.origin.x = a2;
    v56.origin.y = a3;
    v56.size.width = a4;
    v56.size.height = a5;
    [v10 moveToPoint:{v24, CGRectGetMaxY(v56)}];
    v57.origin.x = a2;
    v57.origin.y = a3;
    v57.size.width = a4;
    v57.size.height = a5;
    v25 = CGRectGetMidX(v57);
    v58.origin.x = a2;
    v58.origin.y = a3;
    v58.size.width = a4;
    v58.size.height = a5;
    [v10 addArcWithCenter:1 radius:v25 startAngle:CGRectGetMaxY(v58) endAngle:11.0 clockwise:{0.0, 6.28318531}];
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    v26 = CGRectGetMidX(v59) + -11.0;
    v60.origin.x = a2;
    v60.origin.y = a3;
    v60.size.width = a4;
    v60.size.height = a5;
    [v10 moveToPoint:{v26, CGRectGetMaxY(v60)}];
    v61.origin.x = a2;
    v61.origin.y = a3;
    v61.size.width = a4;
    v61.size.height = a5;
    v27 = CGRectGetMinX(v61);
    v62.origin.x = a2;
    v62.origin.y = a3;
    v62.size.width = a4;
    v62.size.height = a5;
    [v10 addArcWithCenter:1 radius:v27 startAngle:CGRectGetMaxY(v62) endAngle:11.0 clockwise:{0.0, 6.28318531}];
    v63.origin.x = a2;
    v63.origin.y = a3;
    v63.size.width = a4;
    v63.size.height = a5;
    v28 = CGRectGetMinX(v63);
    v64.origin.x = a2;
    v64.origin.y = a3;
    v64.size.width = a4;
    v64.size.height = a5;
    [v10 moveToPoint:{v28, CGRectGetMaxY(v64) + -11.0}];
    v65.origin.x = a2;
    v65.origin.y = a3;
    v65.size.width = a4;
    v65.size.height = a5;
    v29 = CGRectGetMinX(v65);
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    [v10 addArcWithCenter:1 radius:v29 startAngle:CGRectGetMidY(v66) endAngle:11.0 clockwise:{1.57079633, 7.85398163}];
    v67.origin.x = a2;
    v67.origin.y = a3;
    v67.size.width = a4;
    v67.size.height = a5;
    v30 = CGRectGetMinX(v67);
    v68.origin.x = a2;
    v68.origin.y = a3;
    v68.size.width = a4;
    v68.size.height = a5;
    [v10 moveToPoint:{v30, CGRectGetMidY(v68) + -11.0}];
  }

  else
  {
    [v10 addArcWithCenter:1 radius:MinX + 11.0 startAngle:CGRectGetMinY(*&v12) + 11.0 endAngle:11.0 clockwise:{-3.14159265, -1.57079633}];
    v69.origin.x = a2;
    v69.origin.y = a3;
    v69.size.width = a4;
    v69.size.height = a5;
    [v10 addArcWithCenter:1 radius:CGRectGetMaxX(v69) + -11.0 startAngle:11.0 endAngle:11.0 clockwise:{-1.57079633, 0.0}];
    v70.origin.x = a2;
    v70.origin.y = a3;
    v70.size.width = a4;
    v70.size.height = a5;
    v31 = CGRectGetMaxX(v70) + -11.0;
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    [v10 addArcWithCenter:1 radius:v31 startAngle:CGRectGetMaxY(v71) + -11.0 endAngle:11.0 clockwise:{0.0, 1.57079633}];
    v72.origin.x = a2;
    v72.origin.y = a3;
    v72.size.width = a4;
    v72.size.height = a5;
    v32 = CGRectGetMidX(v72) + 25.0 + -1.0;
    v73.origin.x = a2;
    v73.origin.y = a3;
    v73.size.width = a4;
    v73.size.height = a5;
    [v10 addArcWithCenter:0 radius:v32 startAngle:CGRectGetMaxY(v73) endAngle:0.0 clockwise:{0.0, -1.57079633}];
    v74.origin.x = a2;
    v74.origin.y = a3;
    v74.size.width = a4;
    v74.size.height = a5;
    v33 = CGRectGetMinX(v74) + 11.0;
    v75.origin.x = a2;
    v75.origin.y = a3;
    v75.size.width = a4;
    v75.size.height = a5;
    [v10 addLineToPoint:{v33, CGRectGetMaxY(v75)}];
    v76.origin.x = a2;
    v76.origin.y = a3;
    v76.size.width = a4;
    v76.size.height = a5;
    v34 = CGRectGetMinX(v76) + 11.0;
    v77.origin.x = a2;
    v77.origin.y = a3;
    v77.size.width = a4;
    v77.size.height = a5;
    [v10 addArcWithCenter:1 radius:v34 startAngle:CGRectGetMaxY(v77) + -11.0 endAngle:11.0 clockwise:{1.57079633, 3.14159265}];
  }

  v78.origin.x = a2;
  v78.origin.y = a3;
  v78.size.width = a4;
  v78.size.height = a5;
  v35 = CGRectGetMinX(v78);
  v79.origin.x = a2;
  v79.origin.y = a3;
  v79.size.width = a4;
  v79.size.height = a5;
  [v10 addLineToPoint:{v35, CGRectGetMinY(v79) + 11.0}];

  return v10;
}

id CACZWResizeGrabberPath(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = objc_alloc_init(MEMORY[0x277D75208]);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  [v8 addArcWithCenter:1 radius:MinX startAngle:CGRectGetMinY(v20) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  [v8 addArcWithCenter:1 radius:MidX startAngle:CGRectGetMinY(v22) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  [v8 addArcWithCenter:1 radius:MaxX startAngle:CGRectGetMinY(v24) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v12 = CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  [v8 addArcWithCenter:1 radius:v12 startAngle:CGRectGetMidY(v26) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v13 = CGRectGetMaxX(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  [v8 addArcWithCenter:1 radius:v13 startAngle:CGRectGetMidY(v28) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v14 = CGRectGetMinX(v29);
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  [v8 addArcWithCenter:1 radius:v14 startAngle:CGRectGetMaxY(v30) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v15 = CGRectGetMidX(v31);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  [v8 addArcWithCenter:1 radius:v15 startAngle:CGRectGetMaxY(v32) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  v16 = CGRectGetMaxX(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  [v8 addArcWithCenter:1 radius:v16 startAngle:CGRectGetMaxY(v34) endAngle:10.0 clockwise:{-3.14159265, 3.14159265}];
  [v8 closePath];

  return v8;
}

void sub_26B3BF354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_26B3C5CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CACNonNilStringWithinLengthLimit(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_287BD8610;
  }

  if ([(__CFString *)v7 length]>= a3)
  {
    v8 = [MEMORY[0x277CCAB68] string];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3010000000;
    v19[4] = 0;
    v19[5] = 0;
    v19[3] = &unk_26B415653;
    v9 = [(__CFString *)v7 length];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __CACNonNilStringWithinLengthLimit_block_invoke;
    v13[3] = &unk_279CEC6E0;
    v16 = v20;
    v10 = v8;
    v14 = v10;
    v11 = v7;
    v15 = v11;
    v17 = v19;
    v18 = a2;
    [(__CFString *)v11 enumerateSubstringsInRange:0 options:v9 usingBlock:3, v13];
    v7 = v10;

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v20, 8);
  }

  return v7;
}

void sub_26B3C69F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void __CACNonNilStringWithinLengthLimit_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  v11 = *(a1 + 32);
  v12 = *(*(*(a1 + 56) + 8) + 40) + *(*(*(a1 + 56) + 8) + 32);
  v13 = [*(a1 + 40) substringWithRange:{v12, a3 + a4 - v12}];
  [v11 appendString:v13];

  v14 = *(*(a1 + 56) + 8);
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  if (*(*(*(a1 + 48) + 8) + 24) == *(a1 + 64))
  {
    *a7 = 1;
  }
}

void sub_26B3C9A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B3DD418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *CACCreateSerializedGenericActionDictionary(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = _CFXPCCreateXPCObjectFromCFObject();
  if (!xpc_dictionary_get_count(v1))
  {

    return 0;
  }

  return v1;
}

uint64_t CACCreateDeserializedGenericActionDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && MEMORY[0x26D677810](v1) == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t CACCreateSerializedObject(uint64_t result)
{
  if (result)
  {
    return _CFXPCCreateXPCObjectFromCFObject();
  }

  return result;
}

uint64_t CACCreateDeserializedObject(uint64_t result)
{
  if (result)
  {
    return _CFXPCCreateCFObjectFromXPCObject();
  }

  return result;
}

void _languageChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___languageChanged_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a3;
  v3[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t ___languageChanged_block_invoke(uint64_t a1)
{
  v2 = CACLogAssetDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    ___languageChanged_block_invoke_cold_1(a1, v2);
  }

  return [*(a1 + 40) languageDidChange];
}

id CACMakeErrorWithArgs(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = CACMakeError(a1, v12);

  return v13;
}

id CACMakeError(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[CACBugReporter sharedReporter];
  v5 = CACBugReporterTypeGenericError;
  v6 = CACErrorCodeToString(a1);
  [v4 reportIssue:v5 subtype:v6 description:v3];

  v7 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v7 errorWithDomain:@"CACErrorDomain" code:a1 userInfo:v8];

  return v9;
}

__CFString *CACErrorCodeToString(uint64_t a1)
{
  if (a1 > 3002)
  {
    if (a1 > 3004)
    {
      if (a1 == 3005)
      {
        v2 = @"Command target cannot be found missing number";
      }

      else
      {
        if (a1 != 3006)
        {
LABEL_34:
          v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];

          return v2;
        }

        v2 = @"User action unsupported type";
      }
    }

    else if (a1 == 3003)
    {
      v2 = @"Command playback found unexpected disambiguation";
    }

    else
    {
      v2 = @"Command target cannot be found missing name";
    }
  }

  else if (a1 > 3000)
  {
    if (a1 == 3001)
    {
      v2 = @"Interrupted by command";
    }

    else
    {
      v2 = @"Command cannot be executed in this context";
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 3000)
      {
        v2 = @"Cancelled by user";

        return v2;
      }

      goto LABEL_34;
    }

    v2 = @"Success";
  }

  return v2;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

double CACViewRectFromPortraitUpRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = _CACFixedCoordinateSpaceForView(v9);
  v11 = _CACCoordinateSpaceForView(v9);

  [v10 convertRect:v11 toCoordinateSpace:{a2, a3, a4, a5}];
  v13 = v12;

  return v13;
}

id _CACFixedCoordinateSpaceForView(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  if (v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v2 = v1) != 0)
  {
    v3 = v2;
    v4 = [v2 screen];
    v5 = [v4 fixedCoordinateSpace];
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    v5 = [v3 fixedCoordinateSpace];
  }

  return v5;
}

id _CACCoordinateSpaceForView(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    v3 = [v4 coordinateSpace];
  }

  return v3;
}

double CACPortraitUpRectFromViewRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = _CACFixedCoordinateSpaceForView(v9);
  v11 = _CACCoordinateSpaceForView(v9);

  [v10 convertRect:v11 fromCoordinateSpace:{a2, a3, a4, a5}];
  v13 = v12;

  return v13;
}

double CACViewPointFromPortraitUpPoint(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = _CACFixedCoordinateSpaceForView(v5);
  v7 = _CACCoordinateSpaceForView(v5);

  [v6 convertPoint:v7 toCoordinateSpace:{a2, a3}];
  v9 = v8;

  return v9;
}

double CACPortraitUpPointFromViewPoint(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = _CACFixedCoordinateSpaceForView(v5);
  v7 = _CACCoordinateSpaceForView(v5);

  [v6 convertPoint:v7 fromCoordinateSpace:{a2, a3}];
  v9 = v8;

  return v9;
}

double CACScreenOrientedRectFromPortraitUpRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = [v9 fixedCoordinateSpace];
  v11 = [v9 coordinateSpace];

  [v10 convertRect:v11 toCoordinateSpace:{a2, a3, a4, a5}];
  v13 = v12;

  return v13;
}

double CACPortraitUpRectFromScreenRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = [v9 fixedCoordinateSpace];
  v11 = [v9 coordinateSpace];

  [v10 convertRect:v11 fromCoordinateSpace:{a2, a3, a4, a5}];
  v13 = v12;

  return v13;
}

void CACLayerize(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  [v5 setBorderWidth:3.0];
  v4 = [v3 CGColor];

  [v5 setBorderColor:{CGColorCreateCopyWithAlpha(v4, 0.3)}];
}

void CACLayercake(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x277D75D18];
  v12 = a2;
  v13 = a1;
  v15 = [[v11 alloc] initWithFrame:{a3, a4, a5, a6}];
  v14 = [v15 layer];
  CACLayerize(v14, v12);

  [v13 addSubview:v15];
}

double CACCGRectIncreasedByPercentage(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  Width = CGRectGetWidth(*&a1);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v11 = CGRectGetHeight(v18) * a5 * -0.5;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;

  *&result = CGRectInset(*&v12, Width * a5 * -0.5, v11);
  return result;
}

BOOL CACIsInDarkMode()
{
  v0 = [MEMORY[0x277D75C80] currentTraitCollection];
  v1 = [v0 userInterfaceStyle] == 2;

  return v1;
}

void _languageChanged_0(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___languageChanged_block_invoke_0;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t static CACNetworkState.currentPathIsSatisfied.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return *(static CACNetworkState.shared + OBJC_IVAR___CACNetworkState_satisfied) & 1;
}

uint64_t *CACNetworkState.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static CACNetworkState.shared;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(CACNetworkState) init];
  static CACNetworkState.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for BorderStatusIndicatorBridge()) init];
  static BorderStatusIndicatorBridge.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for CACElementNumberStabilizer()) init];
  static CACElementNumberStabilizer.shared = result;
  return result;
}

id static CACNetworkState.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static CACNetworkState.shared;

  return v1;
}

id CACNetworkState.().init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v1 - 8);
  v13 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OBJC_IVAR___CACNetworkState_pathMonitor;
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *&v0[v6] = NWPathMonitor.init()();
  v0[OBJC_IVAR___CACNetworkState_satisfied] = 2;
  v15.receiver = v0;
  v15.super_class = CACNetworkState;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  *(swift_allocObject() + 16) = v7;
  v8 = v7;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(partial apply for closure #1 in CACNetworkState.().init());
  NWPathMonitor.pathUpdateHandler.setter();

  type metadata accessor for CACNetworkState(0, &lazy cache variable for type metadata for OS_dispatch_queue);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v3, *MEMORY[0x277D85260], v13);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NWPathMonitor.start(queue:)();

  return v8;
}

uint64_t closure #1 in CACNetworkState.().init()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWPath.Status();
  v4 = *(v3 - 8);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  NWPath.status.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277CD8F78], v3);
  v10 = MEMORY[0x26D675A10](v9, v7);
  v11 = *(v4 + 8);
  v11(v7, v3);
  result = (v11)(v9, v3);
  *(a2 + OBJC_IVAR___CACNetworkState_satisfied) = v10 & 1;
  return result;
}

void type metadata accessor for CACMicStatusIndicatorType()
{
  if (!lazy cache variable for type metadata for CACMicStatusIndicatorType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CACMicStatusIndicatorType);
    }
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CACMicStatusIndicatorType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26B3E673C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for CACNetworkState(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id BorderStatusIndicatorBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static BorderStatusIndicatorBridge.sharedViewController.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = *(static BorderStatusIndicatorBridge.shared + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_hostingController);

  return v0;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id BorderStatusIndicatorBridge.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo25CACMicStatusIndicatorTypeVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  type metadata accessor for BorderStatusIndicatorData();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__listeningState;
  v26 = 0;
  type metadata accessor for CACMicStatusIndicatorType();
  Published.init(initialValue:)();
  (*(v7 + 32))(v10 + v11, v9, v6);
  *(v10 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData_animateHUD) = 0;
  v12 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__hudOpacity;
  v26 = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v10 + v12, v5, v2);
  v13 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_indicatorData;
  *&v1[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_indicatorData] = v10;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
  v16 = EnvironmentObject.init()();
  v18 = v17;
  v19 = *&v1[v13];

  v20 = static ObservableObject.environmentStore.getter();
  v39 = 0;
  v37 = 0;
  v26 = KeyPath;
  v27 = 0;
  *v28 = *v38;
  *&v28[3] = *&v38[3];
  v29 = v15;
  v30 = 0;
  *v31 = *v36;
  *&v31[3] = *&v36[3];
  v32 = v16;
  v33 = v18;
  v34 = v20;
  v35 = v19;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy34SpeechRecognitionCommandAndControl25BorderStatusIndicatorViewVAA30_EnvironmentKeyWritingModifierVyAF0lmN4DataCSgGGGMd));
  *&v1[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_hostingController] = UIHostingController.init(rootView:)();
  v22 = type metadata accessor for BorderStatusIndicatorBridge();
  v25.receiver = v1;
  v25.super_class = v22;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t BorderStatusIndicatorData.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for CACMicStatusIndicatorType();
  Published.init(initialValue:)();
  *(v0 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData_animateHUD) = 0;
  Published.init(initialValue:)();
  return v0;
}

uint64_t BorderStatusIndicatorView.init()@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  type metadata accessor for BorderStatusIndicatorData();
  lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
  result = EnvironmentObject.init()();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

id BorderStatusIndicatorBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BorderStatusIndicatorBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance BorderStatusIndicatorBridge@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BorderStatusIndicatorBridge();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for BorderStatusIndicatorData.listeningState : BorderStatusIndicatorData@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t BorderStatusIndicatorData.listeningState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t BorderStatusIndicatorData.listeningState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*BorderStatusIndicatorData.listeningState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BorderStatusIndicatorData.listeningState.modify;
}

uint64_t key path setter for BorderStatusIndicatorData.$listeningState : BorderStatusIndicatorData(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo25CACMicStatusIndicatorTypeV_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 136))(v6);
}

uint64_t BorderStatusIndicatorData.$listeningState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo25CACMicStatusIndicatorTypeV_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo25CACMicStatusIndicatorTypeVGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*BorderStatusIndicatorData.$listeningState.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo25CACMicStatusIndicatorTypeV_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__listeningState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo25CACMicStatusIndicatorTypeVGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return BorderStatusIndicatorData.$listeningState.modify;
}

uint64_t BorderStatusIndicatorData.animateHUD.getter()
{
  v1 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData_animateHUD;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t BorderStatusIndicatorData.animateHUD.setter(char a1)
{
  v3 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData_animateHUD;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double BorderStatusIndicatorData.hudOpacity.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t BorderStatusIndicatorData.hudOpacity.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*BorderStatusIndicatorData.hudOpacity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BorderStatusIndicatorData.hudOpacity.modify;
}

void BorderStatusIndicatorData.listeningState.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for BorderStatusIndicatorData.$hudOpacity : BorderStatusIndicatorData(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 208))(v6);
}

uint64_t BorderStatusIndicatorData.$listeningState.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t BorderStatusIndicatorData.$hudOpacity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*BorderStatusIndicatorData.$hudOpacity.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__hudOpacity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return BorderStatusIndicatorData.$hudOpacity.modify;
}

void BorderStatusIndicatorData.$listeningState.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t BorderStatusIndicatorData.deinit()
{
  v1 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__listeningState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo25CACMicStatusIndicatorTypeVGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__hudOpacity;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t BorderStatusIndicatorData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__listeningState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo25CACMicStatusIndicatorTypeVGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__hudOpacity;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t BorderStatusIndicatorData.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo25CACMicStatusIndicatorTypeVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__listeningState;
  v13 = 0;
  type metadata accessor for CACMicStatusIndicatorType();
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  *(v0 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData_animateHUD) = 0;
  v10 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl25BorderStatusIndicatorData__hudOpacity;
  v13 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance BorderStatusIndicatorData@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BorderStatusIndicatorData();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double (*BorderStatusIndicatorShape.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return BorderStatusIndicatorShape.animatableData.modify;
}

double BorderStatusIndicatorShape.animatableData.modify(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double BorderStatusIndicatorShape.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D4>)
{
  v4 = type metadata accessor for RoundedRectangle._Inset();
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  ContainerRelativeShape.path(in:)();
  if (Path.contains(_:eoFill:)(0, 0))
  {
    specialized BorderStatusIndicatorShape.deviceCornerRadius.getter();
    if (v7 == 0.0)
    {
      v8 = 74.5;
    }

    else
    {
      v8 = v7;
    }

    v9 = *(type metadata accessor for RoundedRectangle() + 20);
    v10 = *MEMORY[0x277CE0120];
    v11 = type metadata accessor for RoundedCornerStyle();
    (*(*(v11 - 8) + 104))(v6 + v9, v10, v11);
    *v6 = v8;
    v6[1] = v8;
    *(v6 + *(v4 + 20)) = a2;
    RoundedRectangle._Inset.path(in:)();
    Path.subtracting(_:eoFill:)();
    v15 = v19;
    v16 = v20;
    v12 = v21;
    outlined destroy of Path(v17);
    outlined destroy of Path(v18);
    outlined destroy of RoundedRectangle._Inset(v6, MEMORY[0x277CDFBD0]);
  }

  else
  {
    ContainerRelativeShape._Inset.path(in:)();
    Path.subtracting(_:eoFill:)();
    v15 = v19;
    v16 = v20;
    v12 = v21;
    outlined destroy of Path(v18);
    outlined destroy of Path(v17);
  }

  result = *&v15;
  v14 = v16;
  *a1 = v15;
  *(a1 + 16) = v14;
  *(a1 + 32) = v12;
  return result;
}

double protocol witness for Shape.path(in:) in conformance BorderStatusIndicatorShape@<D0>(uint64_t a1@<X8>)
{
  BorderStatusIndicatorShape.path(in:)(v5, *v1);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance BorderStatusIndicatorShape@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance BorderStatusIndicatorShape(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance BorderStatusIndicatorShape(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance BorderStatusIndicatorShape;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BorderStatusIndicatorShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape();

  return MEMORY[0x282133770](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BorderStatusIndicatorShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape();

  return MEMORY[0x282133718](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance BorderStatusIndicatorShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape();

  return MEMORY[0x282133740](a1, v2);
}

uint64_t BorderStatusIndicatorView.indicatorData.getter()
{
  if (*(v0 + 32))
  {
  }

  else
  {
    type metadata accessor for BorderStatusIndicatorData();
    lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t BorderStatusIndicatorView.$indicatorData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for BorderStatusIndicatorData();
  v4 = lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);

  return MEMORY[0x282131558](v1, v2, v3, v4);
}

uint64_t BorderStatusIndicatorView.borderColor.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(*v1 + 104);

    v4 = v2(v3);

    if (v4 == 2)
    {

      return static Color.blue.getter();
    }

    else if (v4 == 3)
    {

      return static Color.red.getter();
    }

    else
    {

      return static Color.clear.getter();
    }
  }

  else
  {
    type metadata accessor for BorderStatusIndicatorData();
    lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t BorderStatusIndicatorView.imageName.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(*v1 + 104);

    v4 = v2(v3);

    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      return 0x6F632E6563696F76;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    type metadata accessor for BorderStatusIndicatorData();
    lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t BorderStatusIndicatorView.imageColor.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(*v1 + 104);

    v4 = v2(v3);

    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {

      return static Color.white.getter();
    }

    else
    {

      return static Color.secondary.getter();
    }
  }

  else
  {
    type metadata accessor for BorderStatusIndicatorData();
    lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

BOOL BorderStatusIndicatorView.isInDarkMode.getter()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceStyle];

  return v1 == 2;
}

uint64_t BorderStatusIndicatorView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA0F0VyAIyAA012_ConditionalJ0VyAOyAKyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA06_FrameG0VGAYGAOyAyKyAQyAsA8MaterialVGAXGGG_AKyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAXGAA30_EnvironmentKeyWritingModifierVyAUSgGGAA023AccessibilityAttachmentX0VGtGGAA14_OpacityEffectVGAA010_AnimationX0VySdGG_AOyAKyAKyAQy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorL0VAUGAA011_BackgroundlX0VyAUA30_GGA26_GAKyAKyAKyA31_A33_yA0_A30_GGA12_yAA0O6SchemeOGGA26_GGtGSgGMd);
  return closure #1 in BorderStatusIndicatorView.body.getter(v1, a1 + *(v4 + 44));
}

uint64_t closure #1 in BorderStatusIndicatorView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6ZStackVyACyAA012_ConditionalF0VyAIyAEyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsEyAKyAmA8MaterialVGARGGG_AEyAEyAEyAEyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGG_AIyAEyAEyAKy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorI0VAOGAA011_BackgroundiV0VyAOA24_GGA20_GAEyAEyAEyA25_A27_yAVA24_GGA6_yAA0L6SchemeOGGA20_GGtGMd);
  v127 = *(v4 - 8);
  v128 = v4;
  MEMORY[0x28223BE20](v4);
  v125 = &v103 - v5;
  v114 = type metadata accessor for ColorScheme();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGMd);
  MEMORY[0x28223BE20](v108);
  v110 = &v103 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGMd);
  MEMORY[0x28223BE20](v109);
  v115 = &v103 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGAA010_AnimationQ0VySdGGMd);
  MEMORY[0x28223BE20](v123);
  v112 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v103 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorG0VAA5ColorVGAA011_BackgroundG8ModifierVyAnLGGAA010_AnimationS0VySdGGAGyAGyAGyAoQyAA8MaterialVALGGAA022_EnvironmentKeyWritingS0VyAA0Q6SchemeOGGAVG_GMd);
  MEMORY[0x28223BE20](v120);
  v121 = (&v103 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorF0VAA5ColorVGAA011_BackgroundF8ModifierVyAlJGGAA010_AnimationR0VySdGGAEyAEyAEyAmOyAA8MaterialVAJGGAA022_EnvironmentKeyWritingR0VyAA0P6SchemeOGGATGGMd);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v126 = &v103 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGMd);
  MEMORY[0x28223BE20](v17);
  v19 = (&v103 - v18);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGGMd);
  MEMORY[0x28223BE20](v117);
  v122 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  MEMORY[0x28223BE20](v24);
  v129 = &v103 - v25;
  v26 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v26);
  v130 = (&v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = type metadata accessor for EnvironmentValues();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(*v30 + 104);
    v32 = swift_retain_n();
    if (v31(v32))
    {
      v107 = a2;
      v135 = *(a1 + 24);
      v33 = *(a1 + 16);
      v134 = v33;
      if (v135 == 1)
      {
        v34 = 5.0;
        if (v33)
        {
LABEL_11:
          v39 = *(v26 + 20);
          v40 = *MEMORY[0x277CE0120];
          v41 = type metadata accessor for RoundedCornerStyle();
          v42 = v130;
          (*(*(v41 - 8) + 104))(v130 + v39, v40, v41);
          __asm { FMOV            V0.2D, #20.0 }

          *v42 = _Q0;
          *v19 = static Alignment.center.getter();
          v19[1] = v48;
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAKyAA08ModifiedJ0VyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA06_FrameG0VGAWGAKyAwMyAOyAqA8MaterialVGAVGGG_AMyAMyAMyAMyAA5ImageVAA012_AspectRatioG0VGAVGAA30_EnvironmentKeyWritingModifierVyASSgGGAA023AccessibilityAttachmentX0VGtGGMd);
          v50 = closure #1 in closure #1 in BorderStatusIndicatorView.body.getter(a1, v42, v19 + *(v49 + 44));
          v51 = *(*v30 + 176);
          v52 = *v30 + 176;
          *(v19 + *(v17 + 36)) = v51(v50);
          v53 = *(*v30 + 152);
          v53();
          static Animation.easeInOut(duration:)();
          v105 = v53;
          v53();
          v54 = Animation.delay(_:)();

          v106 = v52;
          v56 = v51(v55);

          outlined init with take of ModifiedContent<ZStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>>, _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>)>>, _OpacityEffect>(v19, v23, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGMd);
          v57 = &v23[*(v117 + 36)];
          *v57 = v54;
          *(v57 + 1) = v56;
          outlined init with take of ModifiedContent<ZStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>>, _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>)>>, _OpacityEffect>(v23, v129, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGGMd);
          v133 = *(a1 + 8);
          v58 = *a1;
          v132 = *a1;
          if (v133 == 1)
          {

            v60 = v126;
            if ((v58 & 1) == 0)
            {
LABEL_13:
              v61 = (*(*v30 + 104))(v59);

              v104 = v51;
              if (v61 == 3)
              {
                v62 = static Color.red.getter();
              }

              else if (v61 == 2)
              {
                v62 = static Color.blue.getter();
              }

              else
              {
                v62 = static Color.clear.getter();
              }

              v67 = v62;
              v68 = v110;
              v69 = &v110[*(v108 + 36)];
              static Material.ultraThin.getter();
              v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundShapeModifierVyAA8MaterialV34SpeechRecognitionCommandAndControl021BorderStatusIndicatorD0VGMd);
              *&v69[*(v70 + 52)] = v34;
              *&v69[*(v70 + 56)] = 256;
              *v68 = v34;
              *(v68 + 8) = v67;
              *(v68 + 16) = 256;
              KeyPath = swift_getKeyPath();
              v72 = [objc_opt_self() currentTraitCollection];
              v73 = [v72 userInterfaceStyle];

              v74 = v113;
              v75 = MEMORY[0x277CDF3D8];
              if (v73 != 2)
              {
                v75 = MEMORY[0x277CDF3C8];
              }

              v76 = v111;
              v77 = v114;
              (*(v113 + 104))(v111, *v75, v114);
              v78 = v115;
              v79 = &v115[*(v109 + 36)];
              v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd);
              (*(v74 + 32))(v79 + *(v80 + 28), v76, v77);
              *v79 = KeyPath;
              v81 = outlined init with take of ModifiedContent<ZStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>>, _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>)>>, _OpacityEffect>(v68, v78, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGMd);
              v82 = v105;
              (v105)(v81);

              static Animation.easeInOut(duration:)();
              v82();

              v83 = Animation.delay(_:)();

              v85 = v104(v84);

              v86 = v78;
              v87 = v112;
              outlined init with take of ModifiedContent<ZStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>>, _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>)>>, _OpacityEffect>(v86, v112, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGMd);
              v88 = (v87 + *(v123 + 36));
              *v88 = v83;
              *(v88 + 1) = v85;
              v89 = v116;
              outlined init with take of ModifiedContent<ZStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>>, _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>)>>, _OpacityEffect>(v87, v116, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGAA010_AnimationQ0VySdGGMd);
              outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v89, v121, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGAA010_AnimationQ0VySdGGMd);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAjHGGAA010_AnimationQ0VySdGGMd);
              lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAjHGGAA010_AnimationQ0VySdGGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAjHGGAA010_AnimationQ0VySdGGMR, lazy protocol witness table accessor for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>);
              lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGAA010_AnimationQ0VySdGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGAA010_AnimationQ0VySdGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>);
              v60 = v126;
              _ConditionalContent<>.init(storage:)();
              outlined destroy of Environment<Bool>(v89, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGAA010_AnimationQ0VySdGGMd);
LABEL_28:
              v97 = v129;
              v98 = v122;
              outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v129, v122, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGGMd);
              v99 = v124;
              outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v60, v124, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorF0VAA5ColorVGAA011_BackgroundF8ModifierVyAlJGGAA010_AnimationR0VySdGGAEyAEyAEyAmOyAA8MaterialVAJGGAA022_EnvironmentKeyWritingR0VyAA0P6SchemeOGGATGGMd);
              v100 = v125;
              outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v98, v125, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGGMd);
              v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGG_AIyACyACyAKy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorI0VAOGAA011_BackgroundiV0VyAOA24_GGA20_GACyACyACyA25_A27_yAVA24_GGA6_yAA0L6SchemeOGGA20_GGtMd);
              outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v99, v100 + *(v101 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorF0VAA5ColorVGAA011_BackgroundF8ModifierVyAlJGGAA010_AnimationR0VySdGGAEyAEyAEyAmOyAA8MaterialVAJGGAA022_EnvironmentKeyWritingR0VyAA0P6SchemeOGGATGGMd);
              outlined destroy of Environment<Bool>(v60, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorF0VAA5ColorVGAA011_BackgroundF8ModifierVyAlJGGAA010_AnimationR0VySdGGAEyAEyAEyAmOyAA8MaterialVAJGGAA022_EnvironmentKeyWritingR0VyAA0P6SchemeOGGATGGMd);
              outlined destroy of Environment<Bool>(v97, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGGMd);
              outlined destroy of Environment<Bool>(v99, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorF0VAA5ColorVGAA011_BackgroundF8ModifierVyAlJGGAA010_AnimationR0VySdGGAEyAEyAEyAmOyAA8MaterialVAJGGAA022_EnvironmentKeyWritingR0VyAA0P6SchemeOGGATGGMd);
              outlined destroy of Environment<Bool>(v98, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyACyAA06_ShapeG0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsCyAKyAmA8MaterialVGARGGG_ACyACyACyACyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGGMd);
              v102 = v107;
              outlined init with take of ModifiedContent<ZStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>>, _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>)>>, _OpacityEffect>(v100, v107, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6ZStackVyACyAA012_ConditionalF0VyAIyAEyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGASGAIyAsEyAKyAmA8MaterialVGARGGG_AEyAEyAEyAEyAA5ImageVAA012_AspectRatioN0VGARGAA30_EnvironmentKeyWritingModifierVyAOSgGGAA023AccessibilityAttachmentV0VGtGGAA14_OpacityEffectVGAA010_AnimationV0VySdGG_AIyAEyAEyAKy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorI0VAOGAA011_BackgroundiV0VyAOA24_GGA20_GAEyAEyAEyA25_A27_yAVA24_GGA6_yAA0L6SchemeOGGA20_GGtGMd);
              (*(v127 + 56))(v102, 0, 1, v128);
              return outlined destroy of RoundedRectangle._Inset(v130, MEMORY[0x277CDFC00]);
            }
          }

          else
          {

            static os_log_type_t.fault.getter();
            v63 = static Log.runtimeIssuesLog.getter();
            os_log(_:dso:log:_:_:)();

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            outlined destroy of Environment<Bool>(&v132, &_s7SwiftUI11EnvironmentVySbGMd);
            (*(v118 + 8))(v29, v119);

            v64 = v131;

            v60 = v126;
            if (v64 != 1)
            {
              goto LABEL_13;
            }
          }

          v65 = (*(*v30 + 104))(v59);

          if (v65 == 3)
          {
            v66 = static Color.red.getter();
          }

          else if (v65 == 2)
          {
            v66 = static Color.blue.getter();
          }

          else
          {
            v66 = static Color.clear.getter();
          }

          v90 = v66;
          v91 = static Color.gray.getter();
          v92 = v105;
          v105();

          static Animation.easeInOut(duration:)();
          v92();

          v93 = Animation.delay(_:)();

          v95 = v51(v94);

          v96 = v121;
          *v121 = v34;
          *(v96 + 1) = v90;
          *(v96 + 8) = 256;
          *(v96 + 3) = v91;
          v96[4] = v34;
          *(v96 + 20) = 256;
          *(v96 + 6) = v93;
          v96[7] = v95;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAjHGGAA010_AnimationQ0VySdGGMd);
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAjHGGAA010_AnimationQ0VySdGGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAjHGGAA010_AnimationQ0VySdGGMR, lazy protocol witness table accessor for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>);
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGAA010_AnimationQ0VySdGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGAA010_AnimationQ0VySdGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>);
          _ConditionalContent<>.init(storage:)();
          goto LABEL_28;
        }
      }

      else
      {

        static os_log_type_t.fault.getter();
        v38 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined destroy of Environment<Bool>(&v134, &_s7SwiftUI11EnvironmentVySbGMd);
        (*(v118 + 8))(v29, v119);
        v34 = 5.0;
        if (v132)
        {
          goto LABEL_11;
        }
      }

      v34 = (*(*v30 + 176))() * 5.0 + 5.0;
      goto LABEL_11;
    }

    v35 = v128;
    v36 = *(v127 + 56);

    return v36(a2, 1, 1, v35);
  }

  else
  {
    type metadata accessor for BorderStatusIndicatorData();
    lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in BorderStatusIndicatorView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v92 = a3;
  v4 = type metadata accessor for Image.ResizingMode();
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA023AccessibilityAttachmentM0VGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v90 = &v73 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v80);
  v76 = &v73 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAGyAIyAkA8MaterialVGAPG_GMd);
  MEMORY[0x28223BE20](v77);
  v78 = &v73 - v11;
  v12 = type metadata accessor for EnvironmentValues();
  v74 = *(v12 - 8);
  v75 = v12;
  MEMORY[0x28223BE20](v12);
  v73 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAEyAGyAiA8MaterialVGANGGMd);
  MEMORY[0x28223BE20](v81);
  v79 = &v73 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAQGACyAqGyAIyAkA8MaterialVGAPGG_GMd);
  MEMORY[0x28223BE20](v83);
  v85 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAQ_GMd);
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGMd);
  MEMORY[0x28223BE20](v84);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGACyAoEyAGyAiA8MaterialVGANGGGMd);
  MEMORY[0x28223BE20](v24 - 8);
  v87 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v93 = &v73 - v27;
  v28 = a1;
  v29 = a1[4];
  if (!v29)
  {
    type metadata accessor for BorderStatusIndicatorData();
    lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v30 = *(*v29 + 104);

  v32 = v30(v31);
  if (v32 == 2)
  {
    v37 = static Color.blue.getter();
    outlined init with copy of RoundedRectangle(v82, v23);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    *&v23[*(v38 + 52)] = v37;
    *&v23[*(v38 + 56)] = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v39 = &v23[*(v21 + 36)];
    v40 = v102;
    *v39 = v101;
    *(v39 + 1) = v40;
    *(v39 + 2) = v103;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v23, v18, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGMd);
    goto LABEL_6;
  }

  if (v32 != 3)
  {
    v108 = *(v28 + 8);
    v43 = *v28;
    v107 = *v28;
    if (v108 == 1)
    {
      v44 = v79;
      if ((v43 & 1) == 0)
      {
LABEL_9:
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd);
        v46 = v76;
        static Material.ultraThin.getter();
        outlined init with copy of RoundedRectangle(v82, v46);
        *(v46 + *(v45 + 56)) = 256;
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v47 = (v46 + *(v80 + 36));
        v48 = v102;
        *v47 = v101;
        v47[1] = v48;
        v47[2] = v103;
        outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v46, v78, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v49 = v46;
        v50 = &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGMd;
LABEL_12:
        outlined destroy of Environment<Bool>(v49, v50);
        v42 = v89;
        outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v44, v85, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAEyAGyAiA8MaterialVGANGGMd);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        v41 = outlined destroy of Environment<Bool>(v44, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAEyAGyAiA8MaterialVGANGGMd);
        goto LABEL_13;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v51 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v52 = v73;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined destroy of Environment<Bool>(&v107, &_s7SwiftUI11EnvironmentVySbGMd);
      (*(v74 + 8))(v52, v75);
      v44 = v79;
      if (LOBYTE(v97[0]) != 1)
      {
        goto LABEL_9;
      }
    }

    v53 = static Color.gray.getter();
    outlined init with copy of RoundedRectangle(v82, v23);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    *&v23[*(v54 + 52)] = v53;
    *&v23[*(v54 + 56)] = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v55 = &v23[*(v21 + 36)];
    v56 = v102;
    *v55 = v101;
    *(v55 + 1) = v56;
    *(v55 + 2) = v103;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v23, v78, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v49 = v23;
    v50 = &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGMd;
    goto LABEL_12;
  }

  v33 = static Color.red.getter();
  outlined init with copy of RoundedRectangle(v82, v23);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  *&v23[*(v34 + 52)] = v33;
  *&v23[*(v34 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = &v23[*(v21 + 36)];
  v36 = v102;
  *v35 = v101;
  *(v35 + 1) = v36;
  *(v35 + 2) = v103;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v23, v18, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGMd);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v20, v85, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of Environment<Bool>(v20, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGMd);
  v41 = outlined destroy of Environment<Bool>(v23, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGMd);
  v42 = v89;
LABEL_13:
  v57 = *(*v29 + 104);
  v57(v41);
  Image.init(_internalSystemName:)();
  v58 = v88;
  v59 = v86;
  (*(v88 + 104))(v86, *MEMORY[0x277CE0FE8], v42);
  v60 = Image.resizable(capInsets:resizingMode:)();

  (*(v58 + 8))(v59, v42);
  static Alignment.center.getter();
  v61 = _FrameLayout.init(width:height:alignment:)();
  v100 = 1;
  *&v99[6] = v104;
  *&v99[22] = v105;
  *&v99[38] = v106;
  v62 = (v57)(v61);

  if ((v62 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v63 = static Color.white.getter();
  }

  else
  {
    v63 = static Color.secondary.getter();
  }

  v64 = v63;
  KeyPath = swift_getKeyPath();
  v94 = v60;
  LOWORD(v95[0]) = 1;
  *(v95 + 2) = *v99;
  *(&v95[1] + 2) = *&v99[16];
  *(&v95[2] + 2) = *&v99[32];
  *&v95[3] = *&v99[46];
  *(&v95[3] + 1) = KeyPath;
  v96 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v66 = v90;
  View.accessibilityHidden(_:)();
  v97[3] = v95[2];
  v97[4] = v95[3];
  v98 = v96;
  v97[0] = v94;
  v97[1] = v95[0];
  v97[2] = v95[1];
  outlined destroy of Environment<Bool>(v97, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v67 = v93;
  v68 = v87;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v93, v87, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGACyAoEyAGyAiA8MaterialVGANGGGMd);
  v69 = v91;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v66, v91, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA023AccessibilityAttachmentM0VGMd);
  v70 = v92;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v68, v92, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGACyAoEyAGyAiA8MaterialVGANGGGMd);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGACyAoEyAGyAiA8MaterialVGANGGG_AEyAEyAEyAEyAA5ImageVAA012_AspectRatioL0VGANGAA30_EnvironmentKeyWritingModifierVyAKSgGGAA023AccessibilityAttachmentT0VGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(v69, v70 + *(v71 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA023AccessibilityAttachmentM0VGMd);
  outlined destroy of Environment<Bool>(v66, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA023AccessibilityAttachmentM0VGMd);
  outlined destroy of Environment<Bool>(v67, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGACyAoEyAGyAiA8MaterialVGANGGGMd);
  outlined destroy of Environment<Bool>(v69, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA023AccessibilityAttachmentM0VGMd);
  return outlined destroy of Environment<Bool>(v68, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGACyAoEyAGyAiA8MaterialVGANGGGMd);
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t default argument 2 of BorderStatusIndicatorView.init(reduceTransparency:reduceMotion:indicatorData:)()
{
  type metadata accessor for BorderStatusIndicatorData();
  lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);

  return EnvironmentObject.init()();
}

uint64_t BorderStatusIndicatorView.init(reduceTransparency:reduceMotion:indicatorData:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance BorderStatusIndicatorView@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = v1[2];
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA0F0VyAIyAA012_ConditionalJ0VyAOyAKyAA06_ShapeD0VyAA16RoundedRectangleVAA5ColorVGAA06_FrameG0VGAYGAOyAyKyAQyAsA8MaterialVGAXGGG_AKyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAXGAA30_EnvironmentKeyWritingModifierVyAUSgGGAA023AccessibilityAttachmentX0VGtGGAA14_OpacityEffectVGAA010_AnimationX0VySdGG_AOyAKyAKyAQy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorL0VAUGAA011_BackgroundlX0VyAUA30_GGA26_GAKyAKyAKyA31_A33_yA0_A30_GGA12_yAA0O6SchemeOGGA26_GGtGSgGMd);
  return closure #1 in BorderStatusIndicatorView.body.getter(v7, a1 + *(v5 + 44));
}

uint64_t closure #1 in static $s34SpeechRecognitionCommandAndControl0036BorderStatusIndicatorViewswift_tjBBlfMX215_0_33_226AA1D795B38D628E937C4119BBF19ALl7PreviewfMf_15PreviewRegistryfMu_.makePreview()@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  type metadata accessor for BorderStatusIndicatorData();
  lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData, type metadata accessor for BorderStatusIndicatorData);
  v4 = EnvironmentObject.init()();
  v6 = v5;
  a1[3] = &type metadata for BorderStatusIndicatorView;
  a1[4] = lazy protocol witness table accessor for type BorderStatusIndicatorView and conformance BorderStatusIndicatorView();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = KeyPath;
  *(result + 24) = 0;
  *(result + 32) = v3;
  *(result + 40) = 0;
  *(result + 48) = v4;
  *(result + 56) = v6;
  return result;
}

uint64_t specialized closure #1 in static BorderStatusIndicatorBridge.setMicStatusListeningState(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static BorderStatusIndicatorBridge.shared;
  v1 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_indicatorData;
  v2 = *(**(static BorderStatusIndicatorBridge.shared + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_indicatorData) + 160);

  v2(1);

  v3 = *(**(v0 + v1) + 184);

  v3(v4, 0.0);
}

uint64_t specialized static BorderStatusIndicatorBridge.setMicStatusListeningState(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static BorderStatusIndicatorBridge.shared;
  v14 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_indicatorData;
  v15 = *(**(static BorderStatusIndicatorBridge.shared + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_indicatorData) + 112);

  v15(a1);

  v16 = *(**(v13 + v14) + 160);

  v16(0);

  v17 = *(**(v13 + v14) + 184);

  v17(v18, 1.0);

  type metadata accessor for OS_dispatch_queue();
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v7 + 8);
  v26 = v6;
  v27 = v20;
  v20(v10, v6);
  aBlock[4] = specialized closure #1 in static BorderStatusIndicatorBridge.setMicStatusListeningState(_:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);

  v22 = v28;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v23 = v29;
  v24 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26D675E80](v12, v22, v23, v21);
  _Block_release(v21);

  (*(v32 + 8))(v23, v24);
  (*(v30 + 8))(v22, v31);
  return v27(v12, v26);
}

uint64_t type metadata accessor for BorderStatusIndicatorData()
{
  result = type metadata singleton initialization cache for BorderStatusIndicatorData;
  if (!type metadata singleton initialization cache for BorderStatusIndicatorData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B3EB384@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceTransparency.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26B3EB3B4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceMotion.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26B3EB408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

void specialized BorderStatusIndicatorShape.deviceCornerRadius.getter()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_hwModelStr_obj();

  if (!v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._countAndFlagsBits = 808530762;
  v3._object = 0xE400000000000000;
  v4 = String.hasPrefix(_:)(v3);

  if (v4)
  {
    return;
  }

  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  MobileGestalt_get_deviceCornerRadius();
}

uint64_t specialized BorderStatusIndicatorView.reduceTransparency.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

unint64_t lazy protocol witness table accessor for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape()
{
  result = lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape;
  if (!lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape;
  if (!lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape;
  if (!lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderStatusIndicatorShape and conformance BorderStatusIndicatorShape);
  }

  return result;
}

uint64_t sub_26B3EB90C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

double sub_26B3EB9EC@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_26B3EB9F8(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void type metadata completion function for BorderStatusIndicatorData()
{
  type metadata accessor for Published<CACMicStatusIndicatorType>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Double>();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<CACMicStatusIndicatorType>()
{
  if (!lazy cache variable for type metadata for Published<CACMicStatusIndicatorType>)
  {
    type metadata accessor for CACMicStatusIndicatorType();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<CACMicStatusIndicatorType>);
    }
  }
}

void type metadata accessor for Published<Double>()
{
  if (!lazy cache variable for type metadata for Published<Double>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Double>);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BorderStatusIndicatorView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BorderStatusIndicatorView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderStatusIndicatorView and conformance BorderStatusIndicatorView()
{
  result = lazy protocol witness table cache variable for type BorderStatusIndicatorView and conformance BorderStatusIndicatorView;
  if (!lazy protocol witness table cache variable for type BorderStatusIndicatorView and conformance BorderStatusIndicatorView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderStatusIndicatorView and conformance BorderStatusIndicatorView);
  }

  return result;
}

uint64_t sub_26B3EBFC8()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 16), *(v0 + 24));
  outlined consume of Environment<Bool>.Content(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAjHGGMd);
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<BorderStatusIndicatorShape, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorC0VAA5ColorVGMd);
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _BackgroundShapeModifier<Color, BorderStatusIndicatorShape> and conformance _BackgroundShapeModifier<A, B>, &_s7SwiftUI24_BackgroundShapeModifierVyAA5ColorV34SpeechRecognitionCommandAndControl021BorderStatusIndicatorD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Color, BorderStatusIndicatorShape>>, _AnimationModifier<Double>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Double> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySdGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGAA022_EnvironmentKeyWritingQ0VyAA0O6SchemeOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ColorScheme> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorE0VAA5ColorVGAA011_BackgroundE8ModifierVyAA8MaterialVAHGGMd);
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<BorderStatusIndicatorShape, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVy34SpeechRecognitionCommandAndControl021BorderStatusIndicatorC0VAA5ColorVGMd);
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _BackgroundShapeModifier<Material, BorderStatusIndicatorShape> and conformance _BackgroundShapeModifier<A, B>, &_s7SwiftUI24_BackgroundShapeModifierVyAA8MaterialV34SpeechRecognitionCommandAndControl021BorderStatusIndicatorD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ZStack<TupleView<(_ConditionalContent<_ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>>, _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>)>>, _OpacityEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of RoundedRectangle._Inset(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Material> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAOGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGAA12_FrameLayoutVGAEyAGyAiA8MaterialVGANGGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ShapeView<RoundedRectangle, Color>, _FrameLayout>, ModifiedContent<_ShapeView<RoundedRectangle, Material>, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t sub_26B3EC728@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<BorderStatusIndicatorShape, Color>, _BackgroundShapeModifier<Material, BorderStatusIndicatorShape>>, _EnvironmentKeyWritingModifier<ColorScheme>>, _AnimationModifier<Double>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Environment<Bool>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type BorderStatusIndicatorData and conformance BorderStatusIndicatorData(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall UIView.vc_setWantsGlassAppearance(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20](v2 - 8);
  if (_UISolariumEnabled())
  {
    if (a1)
    {
      static _Glass._GlassVariant.regular.getter();
      *(&v4 + 1) = type metadata accessor for _Glass();
      v5 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(&v3);
      _Glass.init(_:smoothness:)();
    }

    else
    {
      v5 = 0;
      v3 = 0u;
      v4 = 0u;
    }

    UIView._background.setter();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void @objc UIView.vc_setWantsGlassAppearance(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIView.vc_setWantsGlassAppearance(_:)(a3);
}

id CACElementNumberGroup.__allocating_init(elements:volatile:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_elements] = a1;
  v5[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CACElementNumberGroup.init(elements:volatile:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_elements] = a1;
  v2[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CACElementNumberGroup();
  return objc_msgSendSuper2(&v4, sel_init);
}

id CACElementNumberGroup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void protocol witness for Sequence.makeIterator() in conformance CACElementNumberGroup(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CACElementNumberGroup()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v2;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t CACElementNumberStabilizer.maxAdditionsToStabilize.getter()
{
  v1 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxAdditionsToStabilize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CACElementNumberStabilizer.maxAdditionsToStabilize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxAdditionsToStabilize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CACElementNumberStabilizer.maxDeletionsToStabilize.getter()
{
  v1 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxDeletionsToStabilize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CACElementNumberStabilizer.maxDeletionsToStabilize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxDeletionsToStabilize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id static CACElementNumberStabilizer.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static CACElementNumberStabilizer.shared;

  return v1;
}

uint64_t CACElementNumberStabilizer.previouslyPresentedElements.getter()
{
  return CACElementNumberStabilizer.previouslyPresentedElements.getter();
}

{
  swift_beginAccess();
}

uint64_t CACElementNumberStabilizer.previouslyPresentedElements.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t CACElementNumberStabilizer.willPresentElementGroup(_:)(void *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))(v8);
  v5 = v4;
  v6 = a1;
  MEMORY[0x26D675E00]();
  if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v3(v8, 0);
}

uint64_t CACElementNumberStabilizer.mergeLists(old:new:fixedNumbers:)(uint64_t a1, void *a2, uint64_t a3)
{

  v7 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_SaySo023CACNumberedPresentationC0_p_SitGTt1g50108_s34SpeechRecognitionCommandAndControl26CACElementNumberStabilizerC10mergeLists3old3new12fixedNumbersSaySo30dec31_p_SitGAI_AISaySiGtFSSSgSoAH_p_T7_tXEfU_Tf1nc_nTf4g_nTm(v6);
  v128 = a1;

  v9 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_SaySo023CACNumberedPresentationC0_p_SitGTt1g50108_s34SpeechRecognitionCommandAndControl26CACElementNumberStabilizerC10mergeLists3old3new12fixedNumbersSaySo30dec31_p_SitGAI_AISaySiGtFSSSgSoAH_p_T7_tXEfU_Tf1nc_nTf4g_nTm(v8);
  v133 = a2;

  v10 = 0;
  v142[0] = v9;
  v11 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = MEMORY[0x277D84F90];
  v139 = MEMORY[0x277D84F90];
  if (!v14)
  {
    while (1)
    {
LABEL_6:
      v21 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v21 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v21);
      ++v10;
      if (v14)
      {
        v10 = v21;
        goto LABEL_4;
      }
    }

    v57 = v133;

    v59 = specialized _ArrayProtocol.filter(_:)(v58, v142);

    v138 = v16;
    v61 = v16[2];
    v62 = *(v128 + 16);
    v63 = MEMORY[0x277D85000];
    v64 = (*((*MEMORY[0x277D85000] & *v130) + 0x88))(v60);
    if (!__OFSUB__(v62, v64))
    {
      if (v61 < v62 - v64 || (v65 = *(v59 + 16), (*((*v63 & *v130) + 0x70))() < v65))
      {

        return v57;
      }

      v66 = v138[2];
      v48 = __OFADD__(v66, v65);
      v67 = v66 + v65;
      if (v48)
      {
        goto LABEL_128;
      }

      v124 = a3;
      v141 = *(a3 + 16);
      v48 = __OFADD__(v67, v141);
      v68 = &v141[v67];
      if (v48)
      {
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      if (v68 <= 1)
      {
        v69 = 1;
      }

      else
      {
        v69 = v68;
      }

      v70 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v69, 0);
      if (specialized Sequence._copyContents(initializing:)(v142, (v70 + 4), v69, 1, v69) != v69)
      {
        goto LABEL_130;
      }

      v136 = v59;
      v71 = v70[2];
      if (v71)
      {

        v72 = 0;
        v73 = MEMORY[0x277D84F90];
        do
        {
          v76 = v70[v72 + 4];
          v77 = v141;
          v78 = (a3 + 32);
          while (v77)
          {
            v79 = *v78++;
            --v77;
            if (v79 == v76)
            {
              goto LABEL_63;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142[0] = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1);
            v73 = v142[0];
          }

          v75 = *(v73 + 2);
          v74 = *(v73 + 3);
          if (v75 >= v74 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
            v73 = v142[0];
          }

          *(v73 + 2) = v75 + 1;
          *&v73[8 * v75 + 32] = v76;
LABEL_63:
          ++v72;
        }

        while (v72 != v71);
      }

      else
      {

        v73 = MEMORY[0x277D84F90];
      }

      v81 = v138;
      v82 = v138[2];
      if (v82)
      {
        v83 = 0;
        v57 = MEMORY[0x277D84F90];
        v129 = v138[2];
LABEL_76:
        while (v83 < v81[2])
        {
          v85 = (v124 + 32);
          v86 = &v138[4 * v83 + 4];
          v88 = *v86;
          v87 = v86[1];
          v89 = v86[3];
          ++v83;
          v90 = v141;
          while (v90)
          {
            v91 = *v85++;
            --v90;
            if (v91 == v87)
            {
              swift_unknownObjectRetain_n();
              swift_unknownObjectRetain();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
              }

              v93 = v57[2];
              v92 = v57[3];
              if (v93 >= v92 >> 1)
              {
                v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v57, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v57[2] = v93 + 1;
              v94 = &v57[2 * v93];
              v94[4] = v88;
              v94[5] = v87;
              if (v83 != v82)
              {
                goto LABEL_76;
              }

              goto LABEL_100;
            }
          }

          swift_unknownObjectRetain_n();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
          }

          v96 = v57[2];
          v95 = v57[3];
          if (v96 >= v95 >> 1)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v57, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
          }

          v57[2] = v96 + 1;
          v134 = v57;
          v97 = &v57[2 * v96];
          v97[4] = v88;
          v97[5] = v89;
          v98 = *(v73 + 2);
          if (v98)
          {
            v99 = (v73 + 32);
            v84 = MEMORY[0x277D84F90];
            do
            {
              v103 = *v99++;
              v102 = v103;
              if (v103 != v89)
              {
                v104 = swift_isUniquelyReferenced_nonNull_native();
                v142[0] = v84;
                if ((v104 & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1);
                  v84 = v142[0];
                }

                v101 = *(v84 + 16);
                v100 = *(v84 + 24);
                if (v101 >= v100 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
                  v84 = v142[0];
                }

                *(v84 + 16) = v101 + 1;
                *(v84 + 8 * v101 + 32) = v102;
              }

              --v98;
            }

            while (v98);
          }

          else
          {
            v84 = MEMORY[0x277D84F90];
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v73 = v84;
          v81 = v138;
          v57 = v134;
          v82 = v129;
          if (v83 == v129)
          {
            goto LABEL_100;
          }
        }

        goto LABEL_121;
      }

      v57 = MEMORY[0x277D84F90];
LABEL_100:
      v105 = *(v136 + 16);
      if (!v105)
      {
LABEL_117:

        return v57;
      }

      v106 = 0;
      while (v106 < *(v136 + 16))
      {
        v107 = (v136 + 32 + 16 * v106);
        v109 = *v107;
        v108 = v107[1];
        ++v106;
        v110 = v141;
        v111 = (v124 + 32);
        while (v110)
        {
          v112 = *v111++;
          --v110;
          if (v112 == v108)
          {
            swift_unknownObjectRetain();
            goto LABEL_112;
          }
        }

        v113 = *(v73 + 2);
        if (!v113)
        {
          goto LABEL_124;
        }

        v108 = *(v73 + 4);
        swift_unknownObjectRetain();
        v114 = swift_isUniquelyReferenced_nonNull_native();
        if (!v114 || (v113 - 1) > *(v73 + 3) >> 1)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v114, v113, 1, v73);
        }

        v115 = *(v73 + 2);
        memmove(v73 + 32, v73 + 40, 8 * v115 - 8);
        *(v73 + 2) = v115 - 1;
LABEL_112:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
        }

        v117 = v57[2];
        v116 = v57[3];
        if (v117 >= v116 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v57, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
        }

        v57[2] = v117 + 1;
        v118 = &v57[2 * v117];
        v118[4] = v109;
        v118[5] = v108;
        if (v106 == v105)
        {
          goto LABEL_117;
        }
      }

LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
    }

    __break(1u);
    goto LABEL_126;
  }

LABEL_4:
  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = v17 | (v10 << 6);
    v19 = *(*(v7 + 56) + 8 * v18);
    v20 = *(v19 + 16);
    if (v20)
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_6;
    }
  }

  v120 = v15;
  v121 = v11;
  v122 = v7;
  v123 = a3;
  v22 = (*(v7 + 48) + 16 * v18);
  v23 = v22[1];
  v131 = *v22;
  v132 = v19 + 32;

  v24 = 0;
  v125 = v19;
  v126 = v20;
  v127 = v23;
  while (1)
  {
    if (v24 >= *(v19 + 16))
    {
      goto LABEL_123;
    }

    v25 = v132 + 16 * v24;
    v135 = *(v25 + 8);
    v26 = v9[2];
    v140 = *v25;
    swift_unknownObjectRetain();
    if (!v26)
    {
      goto LABEL_23;
    }

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v131, v23);
    if ((v28 & 1) == 0)
    {
      goto LABEL_23;
    }

    v137 = v16;
    v29 = *(v9[7] + 8 * v27);
    v30 = v29[2];
    swift_bridgeObjectRetain_n();
    if (v30)
    {
      break;
    }

LABEL_22:
    swift_bridgeObjectRelease_n();
    v16 = v137;
    v19 = v125;
    v20 = v126;
    v23 = v127;
LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139[2] + 1, 1, v139, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
    }

    v36 = v139[2];
    v35 = v139[3];
    if (v36 >= v35 >> 1)
    {
      v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v139, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
    }

    v139[2] = v36 + 1;
    v37 = &v139[2 * v36];
    v37[4] = v140;
    v37[5] = v135;
LABEL_13:
    if (++v24 == v20)
    {

      v7 = v122;
      a3 = v123;
      v15 = v120;
      v11 = v121;
      if (!v14)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    if (v32 >= v29[2])
    {
      goto LABEL_120;
    }

    v33 = v29[v31 + 4];
    v34 = v29[v31 + 5];
    swift_unknownObjectRetain();
    if ([v140 isIdenticalTo_])
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v32;
    v31 += 2;
    if (v30 == v32)
    {
      goto LABEL_22;
    }
  }

  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v137[2] + 1, 1, v137);
  }

  v39 = v137[2];
  v38 = v137[3];
  if (v39 >= v38 >> 1)
  {
    v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v137);
  }

  v137[2] = v39 + 1;
  v40 = &v137[4 * v39];
  v40[4] = v33;
  v40[5] = v34;
  v40[6] = v140;
  v40[7] = v135;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
  }

  v41 = v29[2];
  if (v41 <= v32)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v42 = v41 - 1;
  memmove(&v29[v31 + 4], &v29[v31 + 6], 16 * (v41 - v32) - 16);
  v29[2] = v42;
  swift_unknownObjectRelease();
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v142[0];
  v23 = v127;
  v44 = specialized __RawDictionaryStorage.find<A>(_:)(v131, v127);
  v46 = *(v142[0] + 16);
  v47 = (v45 & 1) == 0;
  v48 = __OFADD__(v46, v47);
  v49 = v46 + v47;
  if (v48)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v50 = v45;
  if (*(v142[0] + 24) >= v49)
  {
    v16 = v137;
    v20 = v126;
    if (v43)
    {
      v9 = v143;
      if ((v45 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_11;
    }

    v55 = v45;
    v56 = v44;
    specialized _NativeDictionary.copy()();
    v44 = v56;
    v9 = v143;
    if (v55)
    {
      goto LABEL_11;
    }

LABEL_42:
    v9[(v44 >> 6) + 8] |= 1 << v44;
    v52 = (v9[6] + 16 * v44);
    *v52 = v131;
    v52[1] = v127;
    *(v9[7] + 8 * v44) = v29;

    swift_unknownObjectRelease();
    v53 = v9[2];
    v48 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (!v48)
    {
      v9[2] = v54;
      goto LABEL_12;
    }

    goto LABEL_131;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v43);
  v44 = specialized __RawDictionaryStorage.find<A>(_:)(v131, v127);
  v16 = v137;
  v20 = v126;
  if ((v50 & 1) == (v51 & 1))
  {
    v9 = v143;
    if ((v50 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_11:
    *(v9[7] + 8 * v44) = v29;
    swift_unknownObjectRelease();

LABEL_12:
    v19 = v125;
    v142[0] = v9;
    goto LABEL_13;
  }

LABEL_132:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *closure #3 in CACElementNumberStabilizer.mergeLists(old:new:fixedNumbers:)(uint64_t *a1, uint64_t *a2)
{
  v23 = a1[1];
  v24 = *a1;
  v2 = *a2 + 64;
  v3 = 1 << *(*a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a2 + 64);
  v6 = (v3 + 63) >> 6;
  v25 = *a2;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_10:
    v11 = *(*(v25 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = *(v11 + 16);
    v13 = v9[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v14 > v9[3] >> 1)
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v15, 1, v9, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
      v9 = result;
    }

    v5 &= v5 - 1;
    if (*(v11 + 16))
    {
      if ((v9[3] >> 1) - v9[2] < v12)
      {
        goto LABEL_30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30CACNumberedPresentationElement_p_SitMd);
      swift_arrayInitWithCopy();

      if (v12)
      {
        v16 = v9[2];
        v17 = __OFADD__(v16, v12);
        v18 = v16 + v12;
        if (v17)
        {
          goto LABEL_31;
        }

        v9[2] = v18;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v19 = v9 + 5;
  v20 = v9[2] + 1;
  while (--v20)
  {
    v21 = v19;
    v19 += 2;
    if (*(v21 - 1) == v24 && *v21 == v23)
    {
      break;
    }
  }

  v22 = v20 != 0;

  return v22;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v7 = (result + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = *(result + 16);
    while (v6 < *(v3 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v17[0] = v10;
      v17[1] = v9;
      swift_unknownObjectRetain();
      v11 = closure #3 in CACElementNumberStabilizer.mergeLists(old:new:fixedNumbers:)(v17, v5);
      if (v2)
      {

        swift_unknownObjectRelease();
        return v8;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v18 = v8;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v18;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v8 = v18;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = v15;
        v5 = a2;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      ++v6;
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_14:

    return v8;
  }

  return result;
}

Swift::Void __swiftcall CACElementNumberStabilizer.stabilizeElements()()
{
  v1 = v0;
  (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();

  v51 = specialized Array._copyToContiguousArray()(v2);
  specialized MutableCollection<>.sort(by:)(&v51);

  v3 = v51;
  v51 = MEMORY[0x277D84F90];
  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_74;
  }

  v4 = *(v3 + 16);
LABEL_4:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D675EE0](v6, v3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          v9 = v51;
          goto LABEL_16;
        }
      }

      else
      {
        if (v6 >= *(v3 + 16))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          v4 = MEMORY[0x26D675F40](v3);
          goto LABEL_4;
        }

        v7 = *(v3 + 8 * v6 + 32);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      specialized Array.append<A>(contentsOf:)(v7);
      ++v6;
      if (v8 == v4)
      {
        goto LABEL_14;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  v51 = v5;
  v10 = v9;
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v38 = v9;
    }

    else
    {
      v38 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = MEMORY[0x26D675F40](v38);
  }

  else
  {
    v3 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v1;
  v11 = MEMORY[0x277D84F90];
  v50 = v9;
  if (!v3)
  {
    v15 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_33;
  }

  v12 = 0;
  v1 = v9 & 0xC000000000000001;
  while (v1)
  {
    v13 = MEMORY[0x26D675EE0](v12, v10);
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_29;
    }

LABEL_25:
    if ([v13 numberIsFixed])
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v10 = v9;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v12;
    if (v14 == v3)
    {
      goto LABEL_30;
    }
  }

  if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_70;
  }

  v13 = *(v10 + 8 * v12 + 32);
  swift_unknownObjectRetain();
  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  v15 = v51;
  if ((v51 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if ((v15 & 0x4000000000000000) != 0)
    {
      goto LABEL_79;
    }

    v16 = *(v15 + 16);
    if (v16)
    {
      goto LABEL_35;
    }

LABEL_80:

    v18 = MEMORY[0x277D84F90];
    if (v3)
    {
LABEL_44:
      v24 = 0;
      v25 = v10 & 0xC000000000000001;
      v48 = v10 + 32;
      v49 = v10 & 0xFFFFFFFFFFFFFF8;
      v1 = v18 + 32;
      v26 = MEMORY[0x277D84F90];
      v27 = 1;
      while (1)
      {
        if (v25)
        {
          v28 = MEMORY[0x26D675EE0](v24, v10);
          v29 = __OFADD__(v24++, 1);
          if (v29)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v24 >= *(v49 + 16))
          {
            goto LABEL_73;
          }

          v28 = *(v48 + 8 * v24);
          swift_unknownObjectRetain();
          v29 = __OFADD__(v24++, 1);
          if (v29)
          {
            goto LABEL_71;
          }
        }

        if ([v28 numberIsFixed])
        {
          swift_unknownObjectRelease();
          if (v24 == v3)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v30 = 0;
          while (*(v18 + 16) != v30)
          {
            v31 = *(v1 + 8 * v30++);
            if (v31 == v27)
            {
LABEL_59:
              v29 = __OFADD__(v27++, 1);
              if (v29)
              {
                __break(1u);
                goto LABEL_69;
              }

              v34 = *(v18 + 16);
              v32 = (v18 + 32);
              while (v34)
              {
                v33 = *v32++;
                --v34;
                if (v33 == v27)
                {
                  goto LABEL_59;
                }
              }

              break;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p7element_Si5valuetGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p7element_Si5valuetGMR, &_sSo30CACNumberedPresentationElement_p7element_Si5valuetMd);
          }

          v36 = v26[2];
          v35 = v26[3];
          if (v36 >= v35 >> 1)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v26, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p7element_Si5valuetGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p7element_Si5valuetGMR, &_sSo30CACNumberedPresentationElement_p7element_Si5valuetMd);
          }

          v26[2] = v36 + 1;
          v37 = &v26[2 * v36];
          v37[4] = v28;
          v37[5] = v27;
          v29 = __OFADD__(v27++, 1);
          if (v29)
          {
            goto LABEL_72;
          }

          v10 = v50;
          if (v24 == v3)
          {
            goto LABEL_82;
          }
        }
      }
    }

LABEL_81:
    v26 = MEMORY[0x277D84F90];
LABEL_82:

    v40 = MEMORY[0x277D85000];
    v41 = (*((*MEMORY[0x277D85000] & *v47) + 0xA0))(v39);
    v42 = specialized _arrayForceCast<A, B>(_:)(v26);

    v43 = (*((*v40 & *v47) + 0xE0))(v41, v42, v18);

    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = (v43 + 40);
      do
      {
        [*(v45 - 1) setNumber_];
        v45 += 2;
        --v44;
      }

      while (v44);
    }

    v46 = *((*v40 & *v47) + 0xA8);

    v46(v43);
    return;
  }

LABEL_79:
  v16 = MEMORY[0x26D675F40](v15);
  if (!v16)
  {
    goto LABEL_80;
  }

LABEL_35:
  v51 = v11;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v51;
    v19 = v3;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D675EE0](v17, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v17 + 32);
        swift_unknownObjectRetain();
      }

      v21 = [v20 number];
      swift_unknownObjectRelease();
      v51 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v18 = v51;
      }

      ++v17;
      *(v18 + 16) = v23 + 1;
      *(v18 + 8 * v23 + 32) = v21;
    }

    while (v16 != v17);
    v3 = v19;

    v10 = v9;
    if (v19)
    {
      goto LABEL_44;
    }

    goto LABEL_81;
  }

  __break(1u);

  __break(1u);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = a1 + 40;
    v2 = v11;
    do
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30CACNumberedPresentationElement_p7element_Si5valuetMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30CACNumberedPresentationElement_p_SitMd);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      v4 += 16;
      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id CACElementNumberStabilizer.init()()
{
  *&v0[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxAdditionsToStabilize] = 3;
  *&v0[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxDeletionsToStabilize] = 3;
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_previouslyPresentedElements] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_elementGroupsToPresent] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CACElementNumberStabilizer();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CACElementNumberGroup.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0x60))();
  v2 = v1;
  v4 = v3;
  if (v1 >> 62)
  {
    goto LABEL_37;
  }

  v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x277D84F90];
  if (v4 != v5)
  {
    v7 = 0;
    v13 = v2 & 0xC000000000000001;
    v14 = (MEMORY[0x277D84F90] + 32);
    v15 = v2 & 0xFFFFFFFFFFFFFF8;
    v31 = v2 & 0xC000000000000001;
    v32 = v2;
    v30 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x26D675EE0](v4, v2);
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v4 >= *(v15 + 16))
        {
          goto LABEL_34;
        }

        v16 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          if (v2 < 0)
          {
            v29 = v2;
          }

          else
          {
            v29 = v2 & 0xFFFFFFFFFFFFFF8;
          }

          v5 = MEMORY[0x26D675F40](v29);
          goto LABEL_3;
        }
      }

      if (!v7)
      {
        v18 = v6[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v19 = v5;
        v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v22 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v22);
        v24 = v23 - 32;
        if (v23 < 32)
        {
          v24 = v23 - 25;
        }

        v25 = v24 >> 3;
        v22[2] = v21;
        v22[3] = (2 * (v24 >> 3)) | 1;
        v26 = (v22 + 4);
        v27 = v6[3] >> 1;
        if (v6[2])
        {
          v28 = v6 + 4;
          if (v22 != v6 || v26 >= v28 + 8 * v27)
          {
            memmove(v22 + 4, v28, 8 * v27);
          }

          v6[2] = 0;
        }

        v14 = (v26 + 8 * v27);
        v7 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

        v6 = v22;
        v5 = v19;
        v13 = v31;
        v2 = v32;
        v15 = v30;
      }

      v11 = __OFSUB__(v7--, 1);
      if (v11)
      {
        goto LABEL_35;
      }

      *v14++ = v16;
      ++v4;
      if (v17 == v5)
      {
        goto LABEL_5;
      }
    }
  }

  v7 = 0;
LABEL_5:

  v9 = v6[3];
  if (v9 < 2)
  {
    return v6;
  }

  v10 = v9 >> 1;
  v11 = __OFSUB__(v10, v7);
  v12 = v10 - v7;
  if (!v11)
  {
    v6[2] = v12;
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))();
  v9 = v8;

  if (!a2)
  {
LABEL_19:
    a3 = 0;
    goto LABEL_22;
  }

  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      v3 = (v7 & 0xFFFFFFFFFFFFFF8);
      if (!(v7 >> 62))
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    if (v7 < 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = v3;
    }

    v10 = MEMORY[0x26D675F40](v16);
LABEL_6:
    v11 = 0;
    v17 = v10 - v9;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v10 == v9)
      {
        v9 = v10;
        a3 = v17;
        goto LABEL_22;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26D675EE0](v9, v7);
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v9 >= v3[2])
        {
          goto LABEL_25;
        }

        v13 = swift_unknownObjectRetain();
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v11) = v13;
      if (v12 == a3)
      {
        break;
      }

      ++v9;
      ++v11;
      if (v12 >= a3)
      {
        goto LABEL_26;
      }
    }

    v9 = v14;
  }

LABEL_22:
  *a1 = v7;
  a1[1] = v9;
  return a3;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_Sit3new_SoAC_p_Sit3oldtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30CACNumberedPresentationElement_p_Sit3new_SoAA_p_Sit3oldtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC34SpeechRecognitionCommandAndControl21CACElementNumberGroupC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSaySo30CACNumberedPresentationElement_p_SitGGMd);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30CACNumberedPresentationElement_p_SitMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSaySo30CACNumberedPresentationElement_p_SitGGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v5 = v1;
  v7 = *v1;
  if (*v1 >> 62)
  {
    if (v7 < 0)
    {
      v19 = *v1;
    }

    else
    {
      v19 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = MEMORY[0x26D675F40](v19);
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v8);
  v9 = *v1;
  v10 = *v1 & 0xFFFFFFFFFFFFFF8;
  v11 = *(v10 + 0x10);
  v12 = (*(v10 + 0x18) >> 1) - v11;
  v13 = a1;
  result = specialized Sequence._copySequenceContents(initializing:)(&v34, v10 + 8 * v11 + 32, v12);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v16 = *(v10 + 16);
      v17 = __OFADD__(v16, result);
      v18 = v16 + result;
      if (v17)
      {
        __break(1u);
        goto LABEL_27;
      }

      *(v10 + 16) = v18;
    }

    if (result != v12)
    {
      goto LABEL_8;
    }
  }

  v20 = type metadata accessor for CACElementNumberGroup();
  if (v20 != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30CACNumberedPresentationElement_pGMd))
  {
    v2 = *(v10 + 16);
    result = v34;
    v3 = v34;
    v33 = v34 >> 62;
    if (v34 >> 62)
    {
      goto LABEL_48;
    }

    v21 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v22 = v35;
      if (v35 == v21)
      {
        break;
      }

      v4 = result & 0xC000000000000001;
      if ((result & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D675EE0](v35, result);
        v10 = result;
        a1 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return result;
        }
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        if (v35 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v10 = *(result + 8 * v35 + 32);
        result = swift_unknownObjectRetain();
        a1 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_53;
        }
      }

      result = v3;
      v13 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 < 0)
      {
        v23 = v3;
      }

      else
      {
        v23 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v31 = v3 + 32;
      v32 = v23;
      while (1)
      {
LABEL_28:
        if (v2 + 1 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          result = v3;
        }

        v9 = *v5;
        v15 = *v5 & 0xFFFFFFFFFFFFFF8;
        v24 = *(v15 + 0x18) >> 1;
        v25 = v24 - v2;
        if (v24 > v2)
        {
          break;
        }

LABEL_27:
        *(v15 + 16) = v2;
      }

      v29 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v30 = *v5 & 0xFFFFFFFFFFFFFF8;
      v26 = (v15 + 8 * v2++ + 32);
      while (1)
      {
        *v26 = v10;
        if (v33)
        {
          v27 = MEMORY[0x26D675F40](v32);
          result = v3;
        }

        else
        {
          v27 = *(v13 + 16);
        }

        if (a1 == v27)
        {
          *(v30 + 16) = v2;
          goto LABEL_8;
        }

        if (v4)
        {
          result = MEMORY[0x26D675EE0](a1, result);
          v10 = result;
        }

        else
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          if (a1 >= *(v13 + 16))
          {
            goto LABEL_47;
          }

          v10 = *(v31 + 8 * a1);
          result = swift_unknownObjectRetain();
        }

        v28 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        ++a1;
        ++v26;
        ++v2;
        --v25;
        result = v3;
        if (!v25)
        {
          a1 = v28;
          v2 = v29;
          *(v30 + 16) = v29;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      if (result >= 0)
      {
        result &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v21 = MEMORY[0x26D675F40](result);
      result = v3;
    }
  }

LABEL_8:

  *v5 = v9;
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v3 < 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x26D675F40](v5);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for CACElementNumberGroup();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if ((*(v7 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile) & 1) != 0 || (v10 = *v9, *(*v9 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile) != 1))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v85;
    if (!*v85)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_129:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v77 = (v8 + 16);
    v78 = *(v8 + 16);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = (v8 + 16 * v78);
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v79), (*a3 + 8 * *v81), (*a3 + 8 * v82), v5);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_121;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_122;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_123;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &IMKIronwoodTextAlternativeCorrectionIDKey;
  v84 = a4;
  while (1)
  {
    v10 = v7++;
    if (v7 < v6)
    {
      v11 = *a3;
      v12 = v9[397];
      if (*(&v12->isa + *(*a3 + 8 * v7)))
      {
        v13 = 0;
      }

      else
      {
        v13 = *(&v12->isa + *(v11 + 8 * v10));
      }

      v7 = v10 + 2;
      if (v10 + 2 < v6)
      {
        v14 = (v11 + 8 * v10 + 16);
        do
        {
          if (*(&v12->isa + *v14) == 1)
          {
            if (v13)
            {
              goto LABEL_17;
            }
          }

          else if (v13 != *(&v12->isa + *(v14 - 1)))
          {
            goto LABEL_16;
          }

          ++v7;
          ++v14;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_16:
      if (v13)
      {
LABEL_17:
        if (v7 < v10)
        {
          goto LABEL_126;
        }

        if (v10 < v7)
        {
          v15 = 8 * v7 - 8;
          v16 = 8 * v10;
          v17 = v7;
          v18 = v10;
          do
          {
            if (v18 != --v17)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v19 = *(v20 + v16);
              *(v20 + v16) = *(v20 + v15);
              *(v20 + v15) = v19;
            }

            ++v18;
            v15 -= 8;
            v16 += 8;
          }

          while (v18 < v17);
          v6 = a3[1];
        }
      }
    }

    if (v7 < v6)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_125;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_127;
        }

        if (v10 + a4 < v6)
        {
          v6 = v10 + a4;
        }

        if (v6 < v10)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v7 < v10)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 16);
    v30 = *(v8 + 24);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v32;
    v5 = (v8 + 32);
    v33 = (v8 + 32 + 16 * v31);
    *v33 = v10;
    v33[1] = v7;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_134;
    }

    if (v31)
    {
      while (1)
      {
        v34 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v35 = *(v8 + 32);
          v36 = *(v8 + 40);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_64:
          if (v38)
          {
            goto LABEL_111;
          }

          v51 = (v8 + 16 * v32);
          v53 = *v51;
          v52 = v51[1];
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_113;
          }

          v57 = &v5[16 * v34];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_118;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v32 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        if (v32 < 2)
        {
          goto LABEL_119;
        }

        v61 = (v8 + 16 * v32);
        v63 = *v61;
        v62 = v61[1];
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_79:
        if (v56)
        {
          goto LABEL_115;
        }

        v64 = &v5[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_117;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_86:
        if (v34 - 1 >= v32)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v72 = &v5[16 * v34 - 16];
        v73 = *v72;
        v74 = &v5[16 * v34];
        v75 = *(v74 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v72), (*a3 + 8 * *v74), (*a3 + 8 * v75), v86);
        if (v4)
        {
        }

        if (v75 < v73)
        {
          goto LABEL_106;
        }

        if (v34 > *(v8 + 16))
        {
          goto LABEL_107;
        }

        *v72 = v73;
        *(v72 + 1) = v75;
        v76 = *(v8 + 16);
        if (v34 >= v76)
        {
          goto LABEL_108;
        }

        v32 = v76 - 1;
        result = memmove(&v5[16 * v34], v74 + 16, 16 * (v76 - 1 - v34));
        *(v8 + 16) = v76 - 1;
        if (v76 <= 2)
        {
          goto LABEL_3;
        }
      }

      v39 = &v5[16 * v32];
      v40 = *(v39 - 8);
      v41 = *(v39 - 7);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_109;
      }

      v44 = *(v39 - 6);
      v43 = *(v39 - 5);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_110;
      }

      v46 = (v8 + 16 * v32);
      v48 = *v46;
      v47 = v46[1];
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_112;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_114;
      }

      if (v50 >= v42)
      {
        v68 = &v5[16 * v34];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_120;
        }

        if (v37 < v71)
        {
          v34 = v32 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_64;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v84;
    v9 = &IMKIronwoodTextAlternativeCorrectionIDKey;
    if (v7 >= v6)
    {
      goto LABEL_95;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v10 - v7;
LABEL_36:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = v9[397];
    if ((*(&v27->isa + v24) & 1) != 0 || (v28 = *v26, *(&v27->isa + *v26) != 1))
    {
LABEL_35:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_36;
      }

      v7 = v6;
      goto LABEL_44;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v28;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_28:
      v16 = v6 - 8;
      v5 -= 8;
      v17 = v14;
      do
      {
        v19 = *(v17 - 8);
        v17 -= 8;
        v18 = v19;
        if ((*(v19 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile) & 1) == 0 && *(*v16 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile) == 1)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v16;
          }

          if (v14 <= v4 || (v6 -= 8, v16 <= v7))
          {
            v6 = v16;
            goto LABEL_40;
          }

          goto LABEL_28;
        }

        if (v5 + 8 != v14)
        {
          *v5 = v18;
        }

        v5 -= 8;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      do
      {
        v15 = *v6;
        if ((*(*v6 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile) & 1) != 0 || *(*v4 + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile) != 1)
        {
          if (v7 != v4)
          {
            v15 = *v4;
            v4 += 8;
            goto LABEL_17;
          }

          v4 += 8;
        }

        else
        {
          if (v7 != v6)
          {
            v6 += 8;
LABEL_17:
            *v7 = v15;
            goto LABEL_20;
          }

          v6 += 8;
        }

LABEL_20:
        v7 += 8;
      }

      while (v4 < v14 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_40:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v20 >> 3));
  }

  return 1;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D675EE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized Array._copyToContiguousArray()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = a1;
  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v3 = MEMORY[0x26D675F40](a1);
  if (!v3)
  {
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC34SpeechRecognitionCommandAndControl21CACElementNumberGroupC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, v2);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x26D675F40](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x26D675F40](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type _ShapeView<BorderStatusIndicatorShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type [CACElementNumberGroup] and conformance [A], &_sSay34SpeechRecognitionCommandAndControl21CACElementNumberGroupCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay34SpeechRecognitionCommandAndControl21CACElementNumberGroupCGMd);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CACElementNumberGroup();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_SaySo023CACNumberedPresentationC0_p_SitGTt1g50108_s34SpeechRecognitionCommandAndControl26CACElementNumberStabilizerC10mergeLists3old3new12fixedNumbersSaySo30dec31_p_SitGAI_AISaySiGtFSSSgSoAH_p_T7_tXEfU_Tf1nc_nTf4g_nTm(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = (a1 + 40);
  v4 = &selRef_emojiTokenUsingPrefixApproachForText_skinToneFilter_;
  while (1)
  {
    v6 = *(v3 - 1);
    v31 = *v3;
    v7 = [swift_unknownObjectRetain() v4[388]];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
    v14 = v1[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (v1[3] < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, 1);
      v1 = v32;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v13 = v18;
    }

    if (v17)
    {

      v20 = v1[7];
      v21 = *(v20 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v13) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
        *(v20 + 8 * v13) = v21;
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd, &_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMR, &_sSo30CACNumberedPresentationElement_p_SitMd);
        *(v20 + 8 * v13) = v21;
      }

      v21[2] = v24 + 1;
      v5 = &v21[2 * v24];
      v5[4] = v6;
      v5[5] = v31;
      v4 = &selRef_emojiTokenUsingPrefixApproachForText_skinToneFilter_;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo30CACNumberedPresentationElement_p_SitGMd);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_26B405970;
      *(v25 + 32) = v6;
      *(v25 + 40) = v31;
      v1[(v13 >> 6) + 8] |= 1 << v13;
      v26 = (v1[6] + 16 * v13);
      *v26 = v9;
      v26[1] = v11;
      *(v1[7] + 8 * v13) = v25;
      v27 = v1[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_21;
      }

      v1[2] = v29;
    }

    v3 += 2;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_26B3F1DA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_26B3F1E54@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_26B3F1F08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_26B3F1F64(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);

  return v2(v3);
}

uint64_t sub_26B3F1FC8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_26B3F2024(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v2(v3);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static VCVocabularyObjC.creationDateKey()(unsigned int *a1)
{
  v2 = type metadata accessor for VCVocabularyEntry.CodingKeys();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(v3 + 104))(v6, *a1, v2, v4);
  v8 = MEMORY[0x26D675820](v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

id @objc static VCVocabularyObjC.creationDateKey()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = type metadata accessor for VCVocabularyEntry.CodingKeys();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v5 + 104))(v8, *a3, v4, v6);
  v10 = MEMORY[0x26D675820](v9);
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = MEMORY[0x26D675DA0](v10, v12);

  return v13;
}

void *static VCVocabularyObjC.arrayOfDictionaries(from:)(uint64_t a1)
{
  v55 = type metadata accessor for Locale();
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Date();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = *(type metadata accessor for VCVocabularyEntry() - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v51 = *(v8 + 72);
  v49 = (v2 + 8);
  v50 = (v4 + 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v12 = [ObjCClassFromMetadata textKey];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = VCVocabularyEntry.text.getter();
    v59 = MEMORY[0x277D837D0];
    *&v58 = v16;
    *(&v58 + 1) = v17;
    outlined init with take of Any(&v58, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v13, v15, isUniquelyReferenced_nonNull_native);

    v19 = v56;
    v20 = [ObjCClassFromMetadata creationDateKey];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = v52;
    VCVocabularyEntry.creationDate.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v26 = v25;
    (*v50)(v24, v53);
    v59 = MEMORY[0x277D839F8];
    *&v58 = v26;
    outlined init with take of Any(&v58, v57);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v21, v23, v27);

    v28 = v56;
    v29 = [ObjCClassFromMetadata localeIdentifierKey];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = v54;
    VCVocabularyEntry.locale.getter();
    Locale.identifier.getter();
    (*v49)(v33, v55);
    v34 = String.voiceControlLocaleIdentifier.getter();
    v36 = v35;

    v59 = MEMORY[0x277D837D0];
    *&v58 = v34;
    *(&v58 + 1) = v36;
    outlined init with take of Any(&v58, v57);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v28;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v30, v32, v37);

    v38 = v56;
    v39 = VCVocabularyEntry.pronunciations.getter();
    if (v39)
    {
      v40 = v39;
      v41 = [ObjCClassFromMetadata pronunciationsKey];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      *&v58 = v40;
      outlined init with take of Any(&v58, v57);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v38;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v42, v44, v45);

      v38 = v56;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    }

    v47 = v10[2];
    v46 = v10[3];
    if (v47 >= v46 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v10);
    }

    v10[2] = v47 + 1;
    v10[v47 + 4] = v38;
    v9 += v51;
    --v6;
  }

  while (v6);
  return v10;
}

void *static VCVocabularyObjC.visibleVocabularyEntriesForActiveLocale()()
{
  type metadata accessor for VCSettings();
  v0 = static VCSettings.shared.getter();
  active = VCSettings.visibleVocabularyEntriesForActiveLocale.getter();

  v2 = static VCVocabularyObjC.arrayOfDictionaries(from:)(active);

  return v2;
}

void *static VCVocabularyObjC.visibleVocabularyEntriesForAllLocales()()
{
  type metadata accessor for VCSettings();
  v0 = static VCSettings.shared.getter();
  v1 = VCSettings.vocabularyEntriesForAllLocales(includingDeletedEntries:)();

  v2 = static VCVocabularyObjC.arrayOfDictionaries(from:)(v1);

  return v2;
}

Class @objc static VCVocabularyObjC.visibleVocabularyEntriesForActiveLocale()(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

uint64_t static VCVocabularyObjC.addVocabularyEntry(with:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  type metadata accessor for VCSettings();
  v3 = static VCSettings.shared.getter();
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  VCSettings.addVocabularyEntry(text:pronunciations:locale:)();

  return outlined destroy of Locale?(v2);
}

uint64_t static VCVocabularyObjC.addVocabularyEntry(with:pronunciations:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  type metadata accessor for VCSettings();
  v3 = static VCSettings.shared.getter();
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  VCSettings.addVocabularyEntry(text:pronunciations:locale:)();

  return outlined destroy of Locale?(v2);
}

uint64_t static VCVocabularyObjC.removeVocabularyEntry(withText:localeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VCSettings();
  v8 = static VCSettings.shared.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B405970;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  String.voiceControlLocaleIdentifier.getter();
  Locale.init(identifier:)();
  VCSettings.removeVocabularyEntries(texts:locale:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t static VCVocabularyObjC.deleteAllVocabularyForActiveLocale()()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VCSettings();
  v4 = static VCSettings.shared.getter();
  v5 = static VCSettings.shared.getter();
  VCSettings.activeLocale.getter();

  VCSettings.removeAllVocabularyEntries(for:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static VCVocabularyObjC.setPronunciations(_:forText:)()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VCSettings();
  v4 = static VCSettings.shared.getter();
  v5 = static VCSettings.shared.getter();
  VCSettings.activeLocale.getter();

  VCSettings.setPronunciations(pronunciations:forText:locale:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static VCVocabularyObjC.removePronunciations(fromText:)()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VCSettings();
  v4 = static VCSettings.shared.getter();
  v5 = static VCSettings.shared.getter();
  VCSettings.activeLocale.getter();

  VCSettings.removePronunciations(fromText:locale:)();
  return (*(v1 + 8))(v3, v0);
}

VCVocabularyObjC __swiftcall VCVocabularyObjC.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for badgePlatterBordered()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.badgePlatterBordered);
  __swift_project_value_buffer(v0, static ImageResource.badgePlatterBordered);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD000000000000016, 0x800000026B40F5D0, resourceBundle.super.isa);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for badgePlatterDoubleTailRight()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.badgePlatterDoubleTailRight);
  __swift_project_value_buffer(v0, static ImageResource.badgePlatterDoubleTailRight);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD00000000000001FLL, 0x800000026B40F5B0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for badgePlatterSingleTailDown()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.badgePlatterSingleTailDown);
  __swift_project_value_buffer(v0, static ImageResource.badgePlatterSingleTailDown);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD00000000000001ELL, 0x800000026B40F590, resourceBundle.super.isa);
}

uint64_t one-time initialization function for badgePlatterSingleTailRight()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.badgePlatterSingleTailRight);
  __swift_project_value_buffer(v0, static ImageResource.badgePlatterSingleTailRight);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD00000000000001FLL, 0x800000026B40F570, resourceBundle.super.isa);
}

uint64_t one-time initialization function for badgePlatterTailNone()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.badgePlatterTailNone);
  __swift_project_value_buffer(v0, static ImageResource.badgePlatterTailNone);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD000000000000017, 0x800000026B40F550, resourceBundle.super.isa);
}

uint64_t one-time initialization function for dicationModeAlphabetical()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.dicationModeAlphabetical);
  __swift_project_value_buffer(v0, static ImageResource.dicationModeAlphabetical);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD00000000000001ALL, 0x800000026B40F530, resourceBundle.super.isa);
}

uint64_t one-time initialization function for dicationModeCommandsonly()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.dicationModeCommandsonly);
  __swift_project_value_buffer(v0, static ImageResource.dicationModeCommandsonly);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD00000000000001ALL, 0x800000026B40F510, resourceBundle.super.isa);
}

uint64_t one-time initialization function for dicationModeNumerical()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.dicationModeNumerical);
  __swift_project_value_buffer(v0, static ImageResource.dicationModeNumerical);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD000000000000017, 0x800000026B40F4F0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for onboardingGestures()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.onboardingGestures);
  __swift_project_value_buffer(v0, static ImageResource.onboardingGestures);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](0xD000000000000013, 0x800000026B40F4D0, resourceBundle.super.isa);
}

uint64_t one-time initialization function for luminance(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x26D6758B0](a3, a4, resourceBundle.super.isa);
}

uint64_t ImageResource.badgePlatterBordered.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static ImageResource.badgePlatterBordered.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void ___languageChanged_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_26B354000, a2, OS_LOG_TYPE_DEBUG, "Recieved Language Change notification: %@", &v3, 0xCu);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2821DE300](string);
  result.y = v2;
  result.x = v1;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}