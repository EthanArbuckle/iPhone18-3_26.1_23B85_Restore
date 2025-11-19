uint64_t _tcc_add_service_for_platform(const __CFString *a1)
{
  tcc_service_alloc(136, &service_object_ops);
  v3 = v2;
  *(v2 + 56) = CFRetain(a1);
  *(v3 + 64) = stringCopyUTF8String(a1);
  *(v3 + 72) = xmmword_1B169EDA0;
  *(v3 + 96) = 0;
  *(v3 + 100) = -1;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  CFDictionaryAddValue(platform_services, a1, v3);
  return v3;
}

uint64_t ___tcc_service_singleton_for_platform_block_invoke()
{
  platform_services = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], 0);
  _tcc_add_service_for_platform(kTCCServiceAll);
  _tcc_add_service_for_platform(kTCCServiceAddressBook);
  _tcc_add_service_for_platform(kTCCServiceContactsLimited);
  _tcc_add_service_for_platform(kTCCServiceContactsFull);
  _tcc_add_service_for_platform(kTCCServiceCalendar);
  _tcc_add_service_for_platform(kTCCServiceReminders);
  _tcc_add_service_for_platform(kTCCServiceTwitter);
  _tcc_add_service_for_platform(kTCCServiceFacebook);
  _tcc_add_service_for_platform(kTCCServiceSinaWeibo);
  _tcc_add_service_for_platform(kTCCServiceLiverpool);
  _tcc_add_service_for_platform(kTCCServiceUbiquity);
  _tcc_add_service_for_platform(kTCCServiceTencentWeibo);
  _tcc_add_service_for_platform(kTCCServiceShareKit);
  *(_tcc_add_service_for_platform(kTCCServicePhotos) + 80) = 15;
  _tcc_add_service_for_platform(kTCCServicePhotosAdd);
  _tcc_add_service_for_platform(kTCCServiceMicrophone);
  _tcc_add_service_for_platform(kTCCServiceCamera);
  _tcc_add_service_for_platform(kTCCServiceWillow);
  _tcc_add_service_for_platform(kTCCServiceMediaLibrary);
  _tcc_add_service_for_platform(kTCCServiceSiri);
  _tcc_add_service_for_platform(kTCCServiceMotion);
  _tcc_add_service_for_platform(kTCCServiceSpeechRecognition);
  _tcc_add_service_for_platform(kTCCServiceUserTracking);
  _tcc_add_service_for_platform(kTCCServiceBluetoothAlways);
  _tcc_add_service_for_platform(kTCCServiceWebKitIntelligentTrackingPrevention);
  _tcc_add_service_for_platform(kTCCServicePrototype3Rights);
  _tcc_add_service_for_platform(kTCCServiceMicrophoneInjection);
  *(_tcc_add_service_for_platform(kTCCServicePrototype4Rights) + 80) = 15;
  _tcc_add_service_for_platform(kTCCServiceGameCenterFriends);
  _tcc_add_service_for_platform(kTCCServiceVoiceBanking);
  _tcc_add_service_for_platform(kTCCServiceBluetoothPeripheral);
  _tcc_add_service_for_platform(kTCCServiceBluetoothWhileInUse);
  _tcc_add_service_for_platform(kTCCServiceKeyboardNetwork);
  _tcc_add_service_for_platform(kTCCServiceMSO);
  _tcc_add_service_for_platform(kTCCServiceCalls);
  _tcc_add_service_for_platform(kTCCServiceFaceID);
  _tcc_add_service_for_platform(kTCCServiceSensorKitMotion);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWatchMotion);
  _tcc_add_service_for_platform(kTCCServiceSensorKitLocationMetrics);
  _tcc_add_service_for_platform(kTCCServiceSensorKitAmbientLightSensor);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWatchAmbientLightSensor);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWatchHeartRate);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWatchOnWristState);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWristTemperature);
  _tcc_add_service_for_platform(kTCCServiceSensorKitKeyboardMetrics);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWatchPedometer);
  _tcc_add_service_for_platform(kTCCServiceSensorKitPedometer);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWatchFallStats);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWatchForegroundAppCategory);
  _tcc_add_service_for_platform(kTCCServiceSensorKitForegroundAppCategory);
  _tcc_add_service_for_platform(kTCCServiceSensorKitWatchSpeechMetrics);
  _tcc_add_service_for_platform(kTCCServiceSensorKitSpeechMetrics);
  _tcc_add_service_for_platform(kTCCServiceSensorKitMotionHeartRate);
  _tcc_add_service_for_platform(kTCCServiceSensorKitOdometer);
  _tcc_add_service_for_platform(kTCCServiceSensorKitElevation);
  _tcc_add_service_for_platform(kTCCServiceSensorKitStrideCalibration);
  _tcc_add_service_for_platform(kTCCServiceSensorKitDeviceUsage);
  _tcc_add_service_for_platform(kTCCServiceSensorKitPhoneUsage);
  _tcc_add_service_for_platform(kTCCServiceSensorKitMessageUsage);
  _tcc_add_service_for_platform(kTCCServiceSensorKitFacialMetrics);
  _tcc_add_service_for_platform(kTCCServiceSensorKitHistoricalMobilityMetrics);
  _tcc_add_service_for_platform(kTCCServiceSensorKitHistoricalCardioMetrics);
  _tcc_add_service_for_platform(kTCCServiceSensorKitHearing);
  _tcc_add_service_for_platform(kTCCServiceSensorKitSleep);
  _tcc_add_service_for_platform(kTCCServiceExposureNotification);
  _tcc_add_service_for_platform(kTCCServiceExposureNotificationRegion);
  _tcc_add_service_for_platform(kTCCServiceFinancialData);
  _tcc_add_service_for_platform(kTCCServiceContactlessAccess);
  _tcc_add_service_for_platform(kTCCServiceContactlessAccessPayments);
  _tcc_add_service_for_platform(kTCCServiceSecureElementAccess);
  _tcc_add_service_for_platform(kTCCServiceFallDetection);
  _tcc_add_service_for_platform(kTCCServiceSensorKitBedSensing);
  _tcc_add_service_for_platform(kTCCServiceSensorKitSoundDetection);
  _tcc_add_service_for_platform(kTCCServiceSensorKitBedSensingWriting);
  _tcc_add_service_for_platform(kTCCServiceSensorKitMediaEvents);
  _tcc_add_service_for_platform(kTCCServiceNearbyInteraction);
  _tcc_add_service_for_platform(kTCCServicePKPassLibraryBackgroundAddPasses);
  _tcc_add_service_for_platform(kTCCServiceCrashDetection);
  _tcc_add_service_for_platform(kTCCServiceWebBrowserPublicKeyCredential);
  _tcc_add_service_for_platform(kTCCServicePasteboard);
  _tcc_add_service_for_platform(kTCCServiceExternalCameraMedia);
  _tcc_add_service_for_platform(kTCCServiceEnergyKitGuidance);
  v0 = kTCCServiceFocusStatus;

  return _tcc_add_service_for_platform(v0);
}

__n128 tcc_service_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

uint64_t tcc_authorization_cache_create(uint64_t a1)
{
  tcc_authorization_cache_alloc(112, &authorization_cache_object_ops);
  v3 = v2;
  *(v2 + 56) = os_log_create("com.apple.TCC", "cache");
  *(v3 + 104) = a1;
  *(v3 + 64) = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &kTCCObjectDictionaryKeyCallBacks, MEMORY[0x1E695E9E8]);
  *(v3 + 72) = Mutable;
  if (!Mutable)
  {
    v24 = *(v3 + 56);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      tcc_authorization_cache_create_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_10;
  }

  global_queue = dispatch_get_global_queue(21, 0);
  *(v3 + 80) = dispatch_queue_create_with_target_V2("com.apple.TCC.cache.state_handler", 0, global_queue);
  v6 = os_state_add_handler();
  *(v3 + 88) = v6;
  if (!v6)
  {
    v7 = *(v3 + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      tcc_authorization_cache_create_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = tcc_authorization_change_monitor_create(v3);
  *(v3 + 96) = v15;
  if (!v15)
  {
    v16 = *(v3 + 56);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      tcc_authorization_cache_create_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
    }

LABEL_10:
    tcc_release();
    return 0;
  }

  return v3;
}

uint64_t __tcc_authorization_cache_shared_instance_block_invoke()
{
  result = tcc_authorization_cache_create(0);
  tcc_authorization_cache_shared_instance_shared_instance = result;
  if (result)
  {
    *(result + 12) = 0x7FFFFFFF;
    *(result + 8) = 0x7FFFFFFF;
  }

  return result;
}

__n128 tcc_authorization_cache_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

void *tcc_authorization_change_monitor_create(uint64_t a1)
{
  tcc_authorization_change_monitor_alloc(88, &authorization_change_monitor_ops);
  v3 = v2;
  v2[7] = os_log_create("com.apple.TCC", "changeMonitor");
  v3[10] = a1;
  global_queue = dispatch_get_global_queue(21, 0);
  v3[8] = dispatch_queue_create_with_target_V2("com.apple.TCC.cache.changeMonitor", 0, global_queue);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], &kTCCObjectDictionaryValueCallBacks);
  v3[9] = Mutable;
  if (!Mutable)
  {
    v6 = v3[7];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      tcc_authorization_change_monitor_create_cold_1(v6);
    }

    tcc_release();
    return 0;
  }

  return v3;
}

__n128 tcc_authorization_change_monitor_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

void *tcc_server_create(NSObject *global_queue)
{
  tcc_server_alloc(80, &server_object_ops);
  v3 = v2;
  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  dispatch_retain(global_queue);
  v3[7] = global_queue;
  v3[9] = 0;
  v3[8] = tcc_authorization_cache_shared_instance();
  return v3;
}

__n128 tcc_server_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

uint64_t tcc_authorization_cache_shared_instance()
{
  if (tcc_authorization_cache_shared_instance_init_once != -1)
  {
    tcc_authorization_cache_shared_instance_cold_1();
  }

  return tcc_authorization_cache_shared_instance_shared_instance;
}

void *stringCopyUTF8String(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v6.location = 0;
  v6.length = Length;
  if (CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, 0, &maxBufLen) != Length)
  {
    v3 = 0;
LABEL_6:
    free(v3);
    return 0;
  }

  v3 = malloc_type_malloc(maxBufLen + 1, 0x85C15591uLL);
  if (!v3)
  {
    goto LABEL_6;
  }

  v7.location = 0;
  v7.length = Length;
  if (CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v3, maxBufLen, &maxBufLen) != Length)
  {
    goto LABEL_6;
  }

  *(v3 + maxBufLen) = 0;
  return v3;
}

uint64_t tccd_reply_description_redacted(void *a1)
{
  if (MEMORY[0x1B2732690]() != MEMORY[0x1E69E9E80])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      tccd_reply_description_redacted_cold_2();
    }

    return MEMORY[0x1B2732510](a1);
  }

  if (!xpc_dictionary_get_string(a1, "extension"))
  {
    return MEMORY[0x1B2732510](a1);
  }

  v4 = xpc_copy(a1);
  xpc_dictionary_set_string(v4, "extension", "<redacted>");
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  v2 = MEMORY[0x1B2732510](v5);
  if (v4)
  {
    xpc_release(v4);
  }

  return v2;
}

void tccd_set_message_number(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!xpc_dictionary_get_value(a1, "TCCD_MSG_ID"))
  {
    v2 = atomic_fetch_add(&tccd_set_message_number_message_number, 1uLL) + 1;
    v3 = getpid();
    snprintf(__str, 0x20uLL, "%d.%lld", v3, v2);
    xpc_dictionary_set_string(a1, "TCCD_MSG_ID", __str);
  }

  v4 = *MEMORY[0x1E69E9840];
}

_xpc_connection_s *tccd()
{
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.tccd", global_queue, 2uLL);
  v2 = mach_service;
  if (mach_service)
  {
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_499);
    xpc_connection_resume(v2);
  }

  return v2;
}

void tccd_send_message(_xpc_connection_s *a1, int a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v6 = a5;
  v60 = *MEMORY[0x1E69E9840];
  v9 = 0x1ED4B6000uLL;
  if (a6 >= a5)
  {
    v27 = MEMORY[0x1B2732510](a3);
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    v28 = tcc_client_log;
    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      *buffer = 67109634;
      *&buffer[4] = v6;
      *&buffer[8] = 2048;
      *&buffer[10] = a3;
      *&buffer[18] = 2082;
      *&buffer[20] = v27;
      _os_log_error_impl(&dword_1B1686000, v28, OS_LOG_TYPE_ERROR, "Limit (%d) reached; cannot send request (%p): %{public}s", buffer, 0x1Cu);
    }

    free(v27);
    v29 = xpc_dictionary_create(0, 0, 0);
    if (!v29)
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tccd_send_message_cold_2();
      }

      if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_FAULT))
      {
        tccd_send_message_cold_3();
      }

      abort();
    }

    v30 = v29;
    xpc_dictionary_set_BOOL(v29, "do_not_cache", 1);
    (*(a4 + 16))(a4, v30);
    v31 = v30;
    goto LABEL_62;
  }

  if (tcc_log_handle_onceToken != -1)
  {
    tcc_log_handle_cold_1();
  }

  if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_INFO))
  {
    v48 = a2;
    Mutable = CFStringCreateMutable(0, 0);
    v47 = a4;
    if (Mutable)
    {
      v14 = Mutable;
      v46 = v6;
      string = xpc_dictionary_get_string(a3, "TCCD_MSG_ID");
      CFStringAppendFormat(v14, 0, @"msgID=%s, ", string);
      v16 = "function";
      v17 = off_1E7AE0720;
      do
      {
        v18 = xpc_dictionary_get_string(a3, v16);
        if (v18)
        {
          CFStringAppendFormat(v14, 0, @"%s=%s, ", v16, v18);
        }

        v19 = *v17++;
        v16 = v19;
      }

      while (v19);
      v20 = "target_token";
      v21 = off_1E7AE0748;
      v22 = MEMORY[0x1E69E9E70];
      do
      {
        value = xpc_dictionary_get_value(a3, v20);
        if (value)
        {
          v24 = value;
          if (MEMORY[0x1B2732690]() == v22)
          {
            memset(buffer, 0, 32);
            if (xpc_data_get_bytes(v24, buffer, 0, 0x20uLL) == 32)
            {
              pidp = 0;
              euidp = 0;
              auidp = 0;
              atoken = *buffer;
              audit_token_to_au32(&atoken, &auidp, &euidp, 0, 0, 0, &pidp, 0, 0);
              CFStringAppendFormat(v14, 0, @"%s={pid:%d, auid:%d, euid:%d}, ", v20, pidp, auidp, euidp);
            }
          }
        }

        v25 = *v21++;
        v20 = v25;
      }

      while (v25);
      v26 = stringCopyUTF8String(v14);
      CFRelease(v14);
      v6 = v46;
      v9 = 0x1ED4B6000;
    }

    else
    {
      v26 = 0;
    }

    name = xpc_connection_get_name(a1);
    if (tcc_log_handle_onceToken != -1)
    {
      tccd_send_message_cold_2();
    }

    v33 = v9;
    v34 = *(v9 + 3048);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *&buffer[8] = 1024;
      v35 = "asynchronous";
      *buffer = 67110146;
      *&buffer[4] = a6;
      if (!v48)
      {
        v35 = "synchronous";
      }

      *&buffer[10] = v6;
      *&buffer[14] = 2082;
      *&buffer[16] = v35;
      *&buffer[24] = 2082;
      *&buffer[26] = name;
      v58 = 2082;
      v59 = v26;
      _os_log_impl(&dword_1B1686000, v34, OS_LOG_TYPE_INFO, "SEND: %d/%d %{public}s to %{public}s: request: %{public}s", buffer, 0x2Cu);
    }

    free(v26);
    v9 = v33;
    a4 = v47;
    a2 = v48;
  }

  if (!a2)
  {
    v37 = xpc_connection_send_message_with_reply_sync(a1, a3);
    v38 = v37;
    if (v37 == MEMORY[0x1E69E9E18])
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tccd_send_message_cold_2();
      }

      v41 = *(v9 + 3048);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 134217984;
        *&buffer[4] = a3;
        _os_log_impl(&dword_1B1686000, v41, OS_LOG_TYPE_DEFAULT, "send_message_with_reply_sync(): connection interrupted for message: %p.", buffer, 0xCu);
      }

      tccd_send_message(a1, 0, a3, a4, v6, a6 + 1);
      goto LABEL_61;
    }

    if (v37 != MEMORY[0x1E69E9E20])
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tccd_send_message_cold_2();
      }

      if (os_log_type_enabled(*(v9 + 3048), OS_LOG_TYPE_INFO))
      {
        v39 = tccd_reply_description_redacted(v38);
        if (tcc_log_handle_onceToken != -1)
        {
          tccd_send_message_cold_2();
        }

        v40 = *(v9 + 3048);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buffer = 136446210;
          *&buffer[4] = v39;
          _os_log_impl(&dword_1B1686000, v40, OS_LOG_TYPE_INFO, "RECV: synchronous reply %{public}s", buffer, 0xCu);
        }

        free(v39);
      }

      (*(a4 + 16))(a4, v38);
      goto LABEL_61;
    }

    if (xpc_dictionary_get_BOOL(a3, "user_tccd_unavailable"))
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tccd_send_message_cold_2();
      }

      if (os_log_type_enabled(*(v9 + 3048), OS_LOG_TYPE_ERROR))
      {
        tccd_send_message_cold_10();
      }
    }

    else
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tccd_send_message_cold_2();
      }

      v42 = *(v9 + 3048);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 134217984;
        *&buffer[4] = a3;
        _os_log_impl(&dword_1B1686000, v42, OS_LOG_TYPE_DEFAULT, "send_message_with_reply_sync(): user tccd unavailable, sending %p to system tccd", buffer, 0xCu);
      }

      v43 = tccd();
      if (v43)
      {
        v44 = v43;
        xpc_dictionary_set_BOOL(a3, "user_tccd_unavailable", 1);
        tccd_send_message(v44, 0, a3, a4, v6, a6 + 1);
        xpc_release(v44);
LABEL_61:
        v31 = v38;
LABEL_62:
        xpc_release(v31);
        goto LABEL_63;
      }
    }

    (*(a4 + 16))(a4, MEMORY[0x1E69E9E20]);
    goto LABEL_61;
  }

  xpc_retain(a1);
  xpc_retain(a3);
  global_queue = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __tccd_send_message_block_invoke;
  handler[3] = &unk_1E7AE06F8;
  handler[5] = a3;
  handler[6] = a1;
  handler[4] = a4;
  v50 = a2;
  v51 = v6;
  v52 = a6;
  xpc_connection_send_message_with_reply(a1, a3, global_queue, handler);
LABEL_63:
  v45 = *MEMORY[0x1E69E9840];
}

const void *tcc_service_singleton_for_CF_name(void *key)
{
  if (_tcc_service_singleton_for_platform_onceToken != -1)
  {
    tcc_service_singleton_for_CF_name_cold_1();
  }

  v2 = platform_services;

  return CFDictionaryGetValue(v2, key);
}

os_log_t __tcc_log_handle_block_invoke()
{
  result = os_log_create("com.apple.TCC", "access");
  tcc_client_log = result;
  return result;
}

void __TCCAccessRequest_block_invoke_4(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  *keys = xmmword_1E7ADFD78;
  v45 = *&off_1E7ADFD88;
  v46 = xmmword_1E7ADFD98;
  v47 = "request_prompt_string_type";
  v42 = 0u;
  v43 = 0u;
  *values = 0u;
  v41 = 0u;
  v2 = *(a1 + 48);
  v3 = v2 == 0;
  if (!v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __TCCAccessRequest_block_invoke_5;
    block[3] = &unk_1E7ADFDB8;
    v7 = *(a1 + 56);
    block[4] = &v36;
    block[5] = v7;
    dispatch_sync(TCCAccessRequest_cache_queue, block);
    v8 = v37[3];
    if (v8)
    {
      *buffer = 0;
      v34 = 0;
      v49.location = 0;
      v49.length = 16;
      CFDataGetBytes(v8, v49, buffer);
      v9 = *buffer;
      v10 = *(a1 + 32);
      if (*buffer != 2)
      {
        if (v10)
        {
          (*(v10 + 16))(v10, 0, buffer[4]);
          v9 = *buffer;
        }

        if (!*(a1 + 72))
        {
          v13 = *(a1 + 64);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 0x40000000;
          v31[2] = __TCCAccessRequest_block_invoke_6;
          v31[3] = &unk_1E7ADFDE0;
          v31[4] = *(a1 + 40);
          v32 = v9 == 0;
          dispatch_async(v13, v31);
          goto LABEL_23;
        }

        v11 = *(*(a1 + 40) + 16);
LABEL_16:
        v11();
LABEL_23:
        v14 = 0;
        v15 = 0;
        v4 = 0;
        goto LABEL_34;
      }

      if (v10)
      {
        (*(v10 + 16))(v10, 1, 0);
        v11 = *(*(a1 + 40) + 16);
        goto LABEL_16;
      }
    }
  }

  v4 = stringCopyUTF8String(*(a1 + 56));
  if (!v4)
  {
    goto LABEL_29;
  }

  values[0] = xpc_string_create("TCCAccessRequest");
  if (!values[0])
  {
    goto LABEL_29;
  }

  values[1] = xpc_string_create(v4);
  if (!values[1])
  {
    goto LABEL_29;
  }

  *&v41 = xpc_BOOL_create(*(a1 + 32) != 0);
  if (!v41)
  {
    goto LABEL_29;
  }

  v5 = *(a1 + 48);
  v6 = v5 ? xpc_data_create(v5, 0x20uLL) : xpc_null_create();
  if ((*(&v41 + 1) = v6) != 0 && (*&v42 = xpc_BOOL_create(0), v42) && (!*(a1 + 76) ? (v12 = xpc_null_create()) : (v12 = xpc_BOOL_create(*(a1 + 80) != 0)), (*(&v42 + 1) = v12) != 0))
  {
    v15 = xpc_dictionary_create(keys, values, 7uLL);
    if (v15)
    {
      v16 = tccd();
      if (v16)
      {
        v14 = v16;
        CFRetain(*(a1 + 56));
        v17 = *(a1 + 72) == 0;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 0x40000000;
        v25[2] = __TCCAccessRequest_block_invoke_8;
        v25[3] = &unk_1E7ADFE50;
        v28 = 0;
        v29 = v3;
        v18 = *(a1 + 48);
        v26 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
        v27 = v18;
        tccd_set_message_number(v15);
        tccd_send_message(v14, v17, v15, v25, 7, 0);
        goto LABEL_34;
      }
    }
  }

  else
  {
LABEL_29:
    v15 = 0;
  }

  if (*(a1 + 72))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v19 = *(a1 + 64);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = __TCCAccessRequest_block_invoke_7;
    v30[3] = &unk_1E7ADFE08;
    v30[4] = *(a1 + 40);
    dispatch_async(v19, v30);
  }

  v14 = 0;
LABEL_34:
  v20 = v37[3];
  if (v20)
  {
    CFRelease(v20);
  }

  free(v4);
  if (v15)
  {
    xpc_release(v15);
  }

  if (v14)
  {
    xpc_release(v14);
  }

  v21 = values[0];
  if (values[0])
  {
    v22 = &values[1];
    do
    {
      xpc_release(v21);
      v23 = *v22++;
      v21 = v23;
    }

    while (v23);
  }

  CFRelease(*(a1 + 56));
  _Block_object_dispose(&v36, 8);
  v24 = *MEMORY[0x1E69E9840];
}

void __service_queue_block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(*(a1 + 40), *(a1 + 48));
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5[0] = *"com.apple.tcc.";
    memset(&v5[1], 0, 240);
    if (*(a1 + 56) == 1)
    {
      __strlcat_chk();
    }

    v2 = strlen(v5);
    CFStringGetCString(*(a1 + 48), v5 + v2, 256 - v2, 0x600u);
    *(*(*(a1 + 32) + 8) + 24) = dispatch_queue_create(v5, 0);
    v3 = *(*(*(a1 + 32) + 8) + 24);
    if (v3)
    {
      CFDictionarySetValue(*(a1 + 40), *(a1 + 48), v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t __service_queue_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E528];
  service_queue_request_map = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], 0);
  service_queue_preflight_map = CFDictionaryCreateMutable(v0, 0, v1, 0);
  result = dispatch_queue_create("com.apple.tcc.service_queue", 0);
  service_queue_qq = result;
  return result;
}

void TCCAccessRequest(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  global_queue = dispatch_get_global_queue(0, 0);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"_kTCCAccessRequestOptionPreflight");
    v8 = CFDictionaryGetValue(a2, @"_kTCCAccessRequestOptionTargetToken");
    v9 = CFDictionaryGetValue(a2, @"_kTCCAccessRequestOptionSyncCallback");
    if (v9)
    {
      v10 = CFEqual(v9, *MEMORY[0x1E695E4D0]);
    }

    else
    {
      v10 = 0;
    }

    v13 = CFDictionaryGetValue(a2, kTCCAccessCheckOptionPurposeRequired);
    v11 = 0;
    v12 = 1;
    if (v13 && v13 != *MEMORY[0x1E695E738])
    {
      v12 = CFBooleanGetValue(v13);
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v8 = 0;
    Value = 0;
    v12 = 1;
  }

  if (os_variant_is_darwinos())
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    v14 = tcc_client_log;
    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1686000, v14, OS_LOG_TYPE_DEFAULT, "automatically granting auth because of darwinos", buf, 2u);
    }

    if (v10)
    {
      (*(a3 + 16))(a3, 1);
      return;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = __TCCAccessRequest_block_invoke;
    v24[3] = &unk_1E7ADFD10;
    v24[4] = a3;
    v16 = v24;
    goto LABEL_27;
  }

  if (TCCAccessRequest_cache_once != -1)
  {
    TCCAccessRequest_cold_1();
  }

  if (TCCAccessRequest_cache_map && TCCAccessRequest_cache_queue)
  {
    CFRetain(a1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = __TCCAccessRequest_block_invoke_4;
    v19[3] = &unk_1E7ADFE78;
    v19[6] = v8;
    v19[7] = a1;
    v19[4] = Value;
    v19[5] = a3;
    v19[8] = global_queue;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 0x40000000;
    activity_block[2] = __TCCAccessRequest_block_invoke_2_289;
    activity_block[3] = &unk_1E7ADFEA0;
    v18 = v10;
    activity_block[5] = v19;
    activity_block[6] = a1;
    activity_block[4] = Value;
    _os_activity_initiate(&dword_1B1686000, "TCCAccessRequest() IPC", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    return;
  }

  if (!v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __TCCAccessRequest_block_invoke_3;
    block[3] = &unk_1E7ADFD58;
    block[4] = a3;
    v16 = block;
LABEL_27:
    dispatch_async(global_queue, v16);
    return;
  }

  v15 = *(a3 + 16);

  v15(a3, 0);
}

dispatch_queue_global_t service_queue(uint64_t a1, int a2)
{
  if (service_queue_once != -1)
  {
    service_queue_cold_1();
  }

  v4 = &service_queue_preflight_map;
  if (!a2)
  {
    v4 = &service_queue_request_map;
  }

  v5 = *v4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __service_queue_block_invoke_2;
  v8[3] = &unk_1E7AE07A8;
  v8[4] = &v10;
  v8[5] = v5;
  v8[6] = a1;
  v9 = a2;
  dispatch_sync(service_queue_qq, v8);
  global_queue = v11[3];
  if (!global_queue)
  {
LABEL_7:
    if ((service_queue_have_logged & 1) == 0)
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tccd_send_message_cold_2();
      }

      if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
      {
        service_queue_cold_3();
      }

      service_queue_have_logged = 1;
    }

    global_queue = dispatch_get_global_queue(0, 0);
  }

  _Block_object_dispose(&v10, 8);
  return global_queue;
}

dispatch_queue_t __TCCAccessRequest_block_invoke_2()
{
  TCCAccessRequest_cache_map = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  result = dispatch_queue_create("com.apple.tcc.cache_queue", 0);
  TCCAccessRequest_cache_queue = result;
  return result;
}

uint64_t TCCAccessPreflight(const void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  *keys = xmmword_1E7ADFF10;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __TCCAccessPreflight_block_invoke;
  v9[3] = &unk_1E7ADFEC8;
  v9[4] = &v10;
  v2 = *MEMORY[0x1E695E4D0];
  values[0] = v9;
  values[1] = v2;
  v3 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E9D8], 0);
  if (v3)
  {
    v4 = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __TCCAccessPreflight_block_invoke_2;
    v8[3] = &unk_1E7ADFEF0;
    v8[4] = &v10;
    TCCAccessRequest(a1, v3, v8);
    CFRelease(v4);
  }

  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

CFTypeRef __TCCAccessRequest_block_invoke_5(uint64_t a1)
{
  result = CFDictionaryGetValue(TCCAccessRequest_cache_map, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (result)
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);

    return CFRetain(v3);
  }

  return result;
}

uint64_t TCCAccessCopyInformationForBundleId(const __CFString *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  *keys = xmmword_1E7AE0068;
  v20 = "client";
  *values = 0u;
  v18 = 0u;
  v1 = stringCopyUTF8String(a1);
  if (v1 && (values[0] = xpc_string_create("TCCAccessCopyInformationForBundle")) != 0 && (values[1] = xpc_string_create("bundle")) != 0 && (*&v18 = xpc_string_create(v1), v18) && (v2 = xpc_dictionary_create(keys, values, 3uLL)) != 0)
  {
    v3 = v2;
    v4 = tccd();
    if (v4)
    {
      v5 = v4;
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 0x40000000;
      activity_block[2] = __TCCAccessCopyInformationForBundleId_block_invoke;
      activity_block[3] = &unk_1E7AE00B0;
      activity_block[5] = v4;
      activity_block[6] = v3;
      activity_block[4] = &v13;
      _os_activity_initiate(&dword_1B1686000, "TCCAccessCopyInformationForBundle() IPC-per-user", OS_ACTIVITY_FLAG_DETACHED, activity_block);
      xpc_release(v5);
    }

    free(v1);
    xpc_release(v3);
  }

  else
  {
    free(v1);
  }

  v6 = values[0];
  if (values[0])
  {
    v7 = &values[1];
    do
    {
      xpc_release(v6);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __TCCAccessCopyInformationForBundleId_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCAccessCopyInformationForBundleId_block_invoke_2;
  v3[3] = &unk_1E7AE0088;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCAccessCopyInformationForBundleId_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessCopyInformationForBundleId_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(a2, "services");
    if (value)
    {
      *(*(*(a1 + 32) + 8) + 24) = TCCAccessCopyInformationInternal(value);
    }
  }
}

CFMutableArrayRef TCCAccessCopyInformationInternal(void *a1)
{
  count = xpc_array_get_count(a1);
  Mutable = CFArrayCreateMutable(0, count, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (Mutable)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __TCCAccessCopyInformationInternal_block_invoke;
    applier[3] = &__block_descriptor_tmp_506;
    applier[4] = Mutable;
    xpc_array_apply(a1, applier);
  }

  return v4;
}

uint64_t __TCCAccessCopyInformationInternal_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _TCCTCCAccessCopyInformationInternalForEntry(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

CFTypeRef _TCCTCCAccessCopyInformationInternalForEntry(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  Mutable = CFDictionaryCreateMutable(0, count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v4 = Mutable;
  string = xpc_dictionary_get_string(a1, "bundle");
  v6 = string;
  if (!string)
  {
    v9 = 0;
LABEL_8:
    v11 = xpc_dictionary_get_string(a1, "path");
    if (v11)
    {
      v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
      if (!v12)
      {
        v19 = 0;
        v20 = 0;
        v14 = 0;
        goto LABEL_32;
      }

      CFDictionarySetValue(v4, kTCCInfoPath, v12);
    }

    else
    {
      v12 = 0;
    }

    v13 = xpc_dictionary_get_string(a1, "service");
    if (v13)
    {
      v14 = CFStringCreateWithCString(0, v13, 0x8000100u);
      if (!v14)
      {
        v19 = 0;
        v20 = 0;
        goto LABEL_32;
      }

      CFDictionarySetValue(v4, kTCCInfoService, v14);
    }

    else
    {
      v14 = 0;
    }

    v15 = kTCCInfoGranted;
    v16 = xpc_dictionary_get_BOOL(a1, "granted");
    v17 = MEMORY[0x1E695E4D0];
    if (!v16)
    {
      v17 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v4, v15, *v17);
    int64 = xpc_dictionary_get_int64(a1, "last_modified");
    if (int64 < 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = CFDateCreate(0, (int64 - 978307200));
      CFDictionarySetValue(v4, kTCCInfoLastModified, v19);
    }

    v21 = xpc_dictionary_get_int64(a1, "expired_at");
    if (v21 >= 1)
    {
      v22 = CFDateCreate(0, (v21 - 978307200));
      CFDictionarySetValue(v4, kTCCInfoExpiredAt, v22);
      CFRelease(v22);
    }

    v23 = xpc_dictionary_get_string(a1, "_CHILD_SERVICE_");
    if (!v23)
    {
      v20 = 0;
      goto LABEL_30;
    }

    v20 = CFStringCreateWithCString(0, v23, 0x8000100u);
    if (v20)
    {
      CFDictionarySetValue(v4, @"_CHILD_SERVICE_", v20);
LABEL_30:
      v10 = CFRetain(v4);
      goto LABEL_33;
    }

LABEL_32:
    v10 = 0;
LABEL_33:
    CFRelease(v4);
    v4 = v19;
    if (!v9)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v7 = strlen(string);
  v8 = CFURLCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  if (!v8)
  {
    v10 = 0;
LABEL_44:
    CFRelease(v4);
    return v10;
  }

  v9 = v8;
  v6 = CFBundleCreate(0, v8);
  if (v6)
  {
    CFDictionarySetValue(v4, kTCCInfoBundle, v6);
    goto LABEL_8;
  }

  CFRelease(v4);
  v10 = 0;
  v12 = 0;
  v14 = 0;
  v20 = 0;
  v19 = 0;
LABEL_34:
  CFRelease(v9);
  v4 = v19;
LABEL_35:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v4)
  {
    goto LABEL_44;
  }

  return v10;
}

uint64_t TCCAccessCheckAuditToken(const void *a1, void *a2, CFDictionaryRef theDict)
{
  keys[4] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (theDict)
  {
    v6 = CFDictionaryGetValue(theDict, kTCCAccessCheckOptionPrompt);
    v7 = *MEMORY[0x1E695E4D0];
    if (v6 == *MEMORY[0x1E695E4D0])
    {
      v8 = 0;
    }

    else
    {
      v8 = &__block_literal_global_304;
    }

    v9 = *MEMORY[0x1E695E738];
    value = *MEMORY[0x1E695E738];
    ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, kTCCAccessCheckOptionPurposeRequired, &value);
    v11 = value;
    if (!ValueIfPresent)
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = *MEMORY[0x1E695E738];
    value = *MEMORY[0x1E695E738];
    v7 = *MEMORY[0x1E695E4D0];
    v8 = &__block_literal_global_304;
  }

  keys[0] = @"_kTCCAccessRequestOptionTargetToken";
  keys[1] = @"_kTCCAccessRequestOptionPreflight";
  keys[2] = @"_kTCCAccessRequestOptionSyncCallback";
  keys[3] = kTCCAccessCheckOptionPurposeRequired;
  values[0] = a2;
  values[1] = v8;
  values[2] = v7;
  values[3] = v11;
  v12 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x1E695E9D8], 0);
  if (v12)
  {
    v13 = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __TCCAccessCheckAuditToken_block_invoke_2;
    v17[3] = &unk_1E7ADFF90;
    v17[4] = &v19;
    TCCAccessRequest(a1, v12, v17);
    CFRelease(v13);
  }

  v14 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void __TCCAccessRequest_block_invoke_8(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessRequest_block_invoke_8_cold_2(a2);
    }

    goto LABEL_14;
  }

  string = xpc_dictionary_get_string(a2, "abort");
  if (string)
  {
    v13 = string;
    v14 = xpc_dictionary_get_string(a2, "problem_key");
    __TCC_CRASHING_DUE_TO_PRIVACY_VIOLATION__(v13, v14);
  }

  value = xpc_dictionary_get_value(a2, "extension");
  if (*(a1 + 48) || *(a1 + 64) || !value || (xpc_string_get_string_ptr(value), sandbox_extension_consume() != -1))
  {
    v6 = xpc_dictionary_get_value(a2, "generic_extension");
    if (*(a1 + 48) || *(a1 + 64) || !v6 || (xpc_string_get_string_ptr(v6), sandbox_extension_consume() != -1))
    {
      v7 = xpc_dictionary_get_BOOL(a2, "preflight_unknown");
      v8 = xpc_dictionary_get_BOOL(a2, "restricted");
      v9 = xpc_dictionary_get_BOOL(a2, "result");
      v10 = xpc_dictionary_get_BOOL(a2, "do_not_cache");
      if (*(a1 + 65) && !v10)
      {
        CFRetain(*(a1 + 56));
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v15[2] = __TCCAccessRequest_block_invoke_284;
        v15[3] = &__block_descriptor_tmp_285;
        v16 = v7;
        v15[4] = *(a1 + 56);
        v17 = v9;
        v18 = v8;
        dispatch_async(TCCAccessRequest_cache_queue, v15);
      }

      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, v7, v8);
      }

LABEL_14:
      (*(*(a1 + 32) + 16))();
      CFRelease(*(a1 + 56));
      return;
    }
  }

  v12 = *(*(a1 + 32) + 16);

  v12();
}

void __tcc_credential_singleton_for_self_block_invoke()
{
  tcc_credential_alloc(104, &credential_object_ops);
  tcc_credential_singleton_for_self_cred_for_this_process = v0;
  if (v0)
  {
    *(v0 + 56) = 0;
    *(v0 + 12) = 0x7FFFFFFF;
    *(v0 + 8) = 0x7FFFFFFF;
  }
}

__n128 tcc_message_options_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

double tcc_message_options_create()
{
  tcc_message_options_alloc(152, &message_options_object_ops);
  *(v0 + 56) = 0;
  *(v0 + 104) = 0;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  return result;
}

uint64_t tcc_credential_singleton_for_self()
{
  if (tcc_credential_singleton_for_self_onceToken != -1)
  {
    tcc_credential_singleton_for_self_cold_1();
  }

  return tcc_credential_singleton_for_self_cred_for_this_process;
}

uint64_t tcc_object_encode_to_dictionary(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

void tcc_server_message_request_authorization(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, void (**a6)(void, void, void))
{
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v12, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v12, "TCCD_MSG_REQUEST_TYPE_KEY", 0);
  v13 = 0;
  if (!a2)
  {
    tcc_message_options_create();
    v13 = v14;
    a2 = v14;
  }

  tcc_object_encode_to_dictionary(a2);
  prompt_string_type = tcc_message_options_get_prompt_string_type(a2);
  v16 = xpc_dictionary_create(0, 0, 0);
  if (prompt_string_type)
  {
    xpc_dictionary_set_uint64(v12, "request_prompt_string_type", prompt_string_type);
    tcc_object_encode_to_dictionary(v16);
  }

  xpc_release(v16);
  v17 = xpc_dictionary_create(0, 0, 0);
  tcc_object_encode_to_dictionary(a3);
  xpc_dictionary_set_value(v12, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY", v17);
  xpc_release(v17);
  tcc_object_encode_to_dictionary(a4);
  if (a5)
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    tcc_object_encode_to_dictionary(a5);
    xpc_dictionary_set_value(v12, "TCC_MSG_REQUEST_AUTHORIZATION_INDIRECT_OBJECT_CREDENTIAL_DICTIONARY_KEY", v18);
    xpc_release(v18);
  }

  _tcc_server_send_request_authorization(a1, a4, a3, a2, v12, a6);
  if (v13)
  {
    tcc_release();
  }

  xpc_release(v12);
}

void _tcc_server_send_request_authorization(uint64_t a1, const void *a2, const void *a3, uint64_t a4, void *a5, void (**a6)(void, void, void))
{
  reply_handler_policy = tcc_message_options_get_reply_handler_policy(a4);
  v11 = tcc_credential_singleton_for_self();
  v12 = tcc_object_equal(a3, v11);
  request_prompt_policy = tcc_message_options_get_request_prompt_policy(a4);
  cache_policy = tcc_message_options_get_cache_policy(a4);
  v39 = cache_policy == 0;
  audit_token_cache_max_size = tcc_service_get_audit_token_cache_max_size(a2);
  if (os_variant_is_darwinos())
  {
    v16 = tcc_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1686000, v16, OS_LOG_TYPE_DEFAULT, "automatically granting auth because of darwinos", buf, 2u);
    }

    tcc_authorization_record_create();
    if (v17)
    {
      v18 = v17;
      tcc_authorization_record_set_service(v17);
      tcc_authorization_record_set_authorization_value(v18, 2);
      tcc_authorization_record_set_authorization_reason(v18, 5);
      if (reply_handler_policy != 1)
      {
        v19 = _Block_copy(a6);
        v20 = *(a1 + 56);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 0x40000000;
        v50[2] = ___tcc_server_send_request_authorization_block_invoke;
        v50[3] = &unk_1E7AE0CE0;
        v50[4] = v19;
        v50[5] = v18;
        v21 = v50;
LABEL_34:
        dispatch_async(v20, v21);
        return;
      }

      goto LABEL_32;
    }
  }

  if (v12)
  {
    v22 = 0;
  }

  else
  {
    v22 = audit_token_cache_max_size < 0;
  }

  v23 = !v22;
  if (!cache_policy)
  {
    if (v23)
    {
      v24 = tcc_authorization_cache_copy_authorization(*(a1 + 64), a2, a3);
      if (v24)
      {
        v18 = v24;
        authorization_right = tcc_authorization_record_get_authorization_right(v24);
        v26 = authorization_right == 6 || authorization_right == 1;
        if (!v26 || request_prompt_policy)
        {
          v29 = tcc_log_handle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v30 = tcc_object_copy_description(v18);
            v31 = tcc_log_handle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              _tcc_server_send_request_authorization_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
            }

            CFRelease(v30);
          }

          if (reply_handler_policy != 1)
          {
            v38 = _Block_copy(a6);
            v20 = *(a1 + 56);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = ___tcc_server_send_request_authorization_block_invoke_71;
            block[3] = &unk_1E7AE0D08;
            block[4] = v38;
            block[5] = v18;
            v21 = block;
            goto LABEL_34;
          }

LABEL_32:
          a6[2](a6, v18, 0);
          tcc_release();
          return;
        }

        tcc_release();
      }
    }
  }

  xpc_dictionary_set_string(a5, "function", "TCCAccessRequest");
  tcc_retain();
  v27 = _Block_copy(a6);
  xpc_retain(a5);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 0x40000000;
  v44[2] = ___tcc_server_send_request_authorization_block_invoke_2;
  v44[3] = &unk_1E7AE0D80;
  v44[6] = a1;
  v44[7] = a2;
  v44[4] = v27;
  v44[5] = a5;
  v45 = reply_handler_policy == 1;
  v46 = v12;
  v47 = v39;
  v48 = audit_token_cache_max_size >= 0;
  v44[8] = a3;
  if (request_prompt_policy)
  {
    message_preflight_queue = tcc_service_get_message_preflight_queue(a2);
  }

  else
  {
    message_preflight_queue = tcc_service_get_message_queue(a2);
  }

  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = ___tcc_server_send_request_authorization_block_invoke_2_98;
  activity_block[3] = &unk_1E7AE0DA8;
  v43 = reply_handler_policy == 1;
  activity_block[4] = v44;
  activity_block[5] = message_preflight_queue;
  _os_activity_initiate(&dword_1B1686000, "tcc_send_request_authorization() IPC", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

__n128 tcc_credential_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

void tcc_message_options_encode_to_dictionary(uint64_t *a1, xpc_object_t xdict)
{
  v16 = *MEMORY[0x1E69E9840];
  xpc_dictionary_set_uint64(xdict, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_POLICY_KEY", a1[8]);
  xpc_dictionary_set_uint64(xdict, "TCCD_MSG_MESSAGE_OPTION_REQUEST_USAGE_STRING_POLICY_KEY", a1[9]);
  v4 = a1[10];
  if (v4)
  {
    xpc_dictionary_set_uint64(xdict, "TCCD_MSG_MESSAGE_OPTION_REQUEST_RECORD_UPGRADE_POLICY_POLICY_KEY", v4);
  }

  v5 = a1[11];
  if (v5)
  {
    xpc_dictionary_set_uint64(xdict, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_RIGHTS_MASK_KEY", v5);
  }

  v6 = a1[15];
  if (v6)
  {
    error = 0;
    v7 = CFPropertyListCreateData(0, v6, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    v8 = v7;
    if (error)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "tcc_message_options_encode_to_dictionary";
        _os_log_impl(&dword_1B1686000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: error creating CFData from provided client_dict", buf, 0xCu);
      }

      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      BytePtr = CFDataGetBytePtr(v7);
      Length = CFDataGetLength(v8);
      xpc_dictionary_set_data(xdict, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_CLIENT_DICT_KEY", BytePtr, Length);
      if (v8)
      {
LABEL_10:
        CFRelease(v8);
      }
    }
  }

  if (a1[16])
  {
    xpc_dictionary_set_BOOL(xdict, "TCCD_MSG_MESSAGE_OPTION_SET_NO_KILL_KEY", 1);
  }

  if (a1[17])
  {
    xpc_dictionary_set_BOOL(xdict, "TCCD_MSG_MESSAGE_OPTION_INCLUDE_POLICY_RECORDS_KEY", 1);
  }

  v9 = a1[14];
  if (v9)
  {
    xpc_dictionary_set_uint64(xdict, "TCCD_MSG_MESSAGE_OPTION_DATABASE_TYPE_KEY", v9);
  }

  if (a1[18])
  {
    xpc_dictionary_set_BOOL(xdict, "has_prompted_for_allow", 1);
  }

  v10 = *MEMORY[0x1E69E9840];
}

BOOL tcc_credential_equal(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4 != *(a2 + 56))
  {
    goto LABEL_24;
  }

  result = 0;
  if (v4 <= 1)
  {
    if (!v4)
    {
      result = 1;
      goto LABEL_25;
    }

    if (v4 != 1)
    {
      goto LABEL_25;
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 80);
    v6 = *(a2 + 80);
    v15 = *(a2 + 64);
    v9 = v16 == v15 && *(&v16 + 1) == *(&v15 + 1) && v17 == v6 && *(&v17 + 1) == *(&v6 + 1);
    goto LABEL_21;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_25;
    }

    v10 = strcmp(*(a1 + 64), *(a2 + 64));
    goto LABEL_20;
  }

  length = xpc_data_get_length(*(a1 + 64));
  if (length != xpc_data_get_length(*(a2 + 64)))
  {
LABEL_24:
    result = 0;
    goto LABEL_25;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 64));
  v13 = xpc_data_get_bytes_ptr(*(a2 + 64));
  v10 = memcmp(bytes_ptr, v13, length);
LABEL_20:
  v9 = v10 == 0;
LABEL_21:
  result = v9;
LABEL_25:
  v14 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v14)
    {
      return tcc_identity_type_and_identifiers_are_equal(*(a1 + 96), v14);
    }
  }

  else if (!v14)
  {
    return result;
  }

  return 0;
}

void tcc_credential_encode_to_dictionary(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_uint64(xdict, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_TYPE_KEY", *(a1 + 56));
  v4 = *(a1 + 56);
  switch(v4)
  {
    case 3:
      xpc_dictionary_set_string(xdict, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_FILE_PROVIDER_DOMAIN_ID_KEY", *(a1 + 64));
      break;
    case 2:
      xpc_dictionary_set_value(xdict, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_DATA_KEY", *(a1 + 64));
      break;
    case 1:
      xpc_dictionary_set_data(xdict, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_AUDIT_TOKEN_KEY", (a1 + 64), 0x20uLL);
      break;
  }

  if (*(a1 + 96))
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    tcc_object_encode_to_dictionary(*(a1 + 96));
    xpc_dictionary_set_value(xdict, "TCCD_MSG_CREDENTIAL_ASSUMED_IDENTITY", v5);

    xpc_release(v5);
  }
}

uint64_t tcc_object_equal(uint64_t a1, uint64_t a2)
{
  if (a1 && ((v2 = *(a1 + 48)) != 0 ? (v3 = a2 == 0) : (v3 = 1), !v3 && *(a2 + 48)))
  {
    return v2();
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t __TCCAccessPreflight_block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 2;
  }

  return result;
}

void tcc_authorization_record_create()
{
  tcc_authorization_record_alloc(168, &record_object_ops);
  *(v0 + 140) = -1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
}

uint64_t tcc_authorization_record_set_service(uint64_t a1)
{
  result = tcc_retain();
  *(a1 + 56) = result;
  return result;
}

const void *tcc_authorization_cache_copy_authorization(uint64_t a1, const void *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 64));
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    v7 = CFDictionaryGetValue(Value, a3);
    if (v7)
    {
      tcc_retain();
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_DEBUG))
  {
    v8 = tcc_object_copy_description(a3);
    if (v7)
    {
      v9 = tcc_object_copy_description(v7);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 56);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      name = tcc_service_get_name(a2);
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_debug_impl(&dword_1B1686000, v10, OS_LOG_TYPE_DEBUG, "GET: (%s, %@) -> %@", &v14, 0x20u);
    }

    CFRelease(v8);
    if (v9)
    {
      CFRelease(v9);
    }

    v11 = CFCopyDescription(*(a1 + 72));
    CFRelease(v11);
  }

  os_unfair_lock_unlock((a1 + 64));
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

dispatch_queue_t __tcc_service_get_message_preflight_queue_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = xmmword_1B169EF10;
  v11 = unk_1B169EF20;
  v8 = xmmword_1B169EEF0;
  v9 = unk_1B169EF00;
  v14 = xmmword_1B169EF50;
  v15 = unk_1B169EF60;
  v12 = xmmword_1B169EF30;
  v13 = unk_1B169EF40;
  v18 = xmmword_1B169EF90;
  v19 = unk_1B169EFA0;
  v16 = xmmword_1B169EF70;
  v17 = unk_1B169EF80;
  strcpy(v5, "com.apple.tcc.auth.preflight.");
  v5[15] = 0;
  v6 = xmmword_1B169EED0;
  v7 = unk_1B169EEE0;
  v2 = *(*(a1 + 32) + 64);
  __strlcat_chk();
  result = dispatch_queue_create(v5, 0);
  *(*(a1 + 32) + 128) = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void tccd_send_v2(_xpc_connection_s *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = a3 == 0;
  tccd_set_message_number(a5);
  if (a1)
  {

    tccd_send_message(a1, v9, a5, a6, 7, 0);
  }

  else
  {
    v10 = tccd();
    tccd_send_message(v10, v9, a5, a6, 7, 0);
    if (v10)
    {

      xpc_release(v10);
    }
  }
}

uint64_t tcc_service_get_message_preflight_queue(uint64_t a1)
{
  v3 = *(a1 + 120);
  v2 = (a1 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __tcc_service_get_message_preflight_queue_block_invoke;
  block[3] = &__block_descriptor_tmp_2_0;
  block[4] = a1;
  if (v3 != -1)
  {
    dispatch_once(v2, block);
  }

  return *(a1 + 128);
}

void ___tcc_server_send_request_authorization_block_invoke_2(uint64_t a1)
{
  length = 0;
  value = xpc_dictionary_get_value(*(a1 + 40), "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");
  data = value;
  if (value)
  {
    if (xpc_dictionary_get_uint64(value, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_TYPE_KEY") == 1)
    {
      data = xpc_dictionary_get_data(data, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_AUDIT_TOKEN_KEY", &length);
    }

    else
    {
      data = 0;
    }
  }

  v4 = *(*(a1 + 48) + 72);
  is_system_service = tcc_service_get_is_system_service(*(a1 + 56));
  v6 = *(a1 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___tcc_server_send_request_authorization_block_invoke_3;
  v8[3] = &unk_1E7AE0D58;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v8[5] = v7;
  v11 = *(a1 + 76);
  v13 = *(a1 + 84);
  v9 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  v10 = *(a1 + 64);
  v12 = v6;
  tccd_send_v2(v4, is_system_service, v6, data, v7, v8);
}

void ___tcc_server_send_request_authorization_block_invoke_3(uint64_t a1, void *a2)
{
  xpc_release(*(a1 + 40));
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    v9 = tcc_log_handle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    v11 = *MEMORY[0x1E69E9E28];
    if (v10)
    {
      ___tcc_server_send_request_authorization_block_invoke_3_cold_3(a2, *MEMORY[0x1E69E9E28]);
    }

    string = xpc_dictionary_get_string(a2, v11);
    CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"%s", string);
    (*(*(a1 + 32) + 16))();
    _Block_release(*(a1 + 32));
    v14 = *(a1 + 48);
    tcc_release();
    v15 = CFError_with_user_info;
    goto LABEL_22;
  }

  v4 = xpc_dictionary_get_string(a2, "abort");
  if (v4)
  {
    v5 = v4;
    v6 = xpc_dictionary_get_string(a2, "problem_key");
    __TCC_CRASHING_DUE_TO_PRIVACY_VIOLATION__(v5, v6);
  }

  if (xpc_dictionary_get_value(a2, "auth_value"))
  {
    uint64 = xpc_dictionary_get_uint64(a2, "auth_value");
    v8 = 0;
  }

  else
  {
    v8 = _tcc_util_create_CFError_with_user_info(2, @"missing 'auth_value' in reply message");
    uint64 = 0;
  }

  if (xpc_dictionary_get_value(a2, "auth_reason"))
  {
    v16 = xpc_dictionary_get_uint64(a2, "auth_reason");
  }

  else
  {
    v16 = 0;
  }

  v17 = xpc_dictionary_get_uint64(a2, "auth_version");
  value = xpc_dictionary_get_value(a2, "extension");
  if (v8)
  {
    xpc_dictionary_get_value(a2, "generic_extension");
LABEL_15:
    xpc_dictionary_get_BOOL(a2, "TCCD_MSG_ALLOW_STANDARD_USER_TO_SET_SYSTEM_SERVICE");
LABEL_16:
    v19 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  if (*(a1 + 72) && value && (xpc_string_get_string_ptr(value), sandbox_extension_consume() == -1))
  {
    v27 = tcc_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      ___tcc_server_send_request_authorization_block_invoke_3_cold_1();
    }

    v28 = __error();
    v8 = _tcc_util_create_CFError_with_user_info(2, @"sandbox_extension_consume():%d", *v28);
    v22 = xpc_dictionary_get_value(a2, "generic_extension");
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v22 = xpc_dictionary_get_value(a2, "generic_extension");
  }

  if (*(a1 + 72))
  {
    if (v22)
    {
      xpc_string_get_string_ptr(v22);
      if (sandbox_extension_consume() == -1)
      {
        v38 = tcc_log_handle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          ___tcc_server_send_request_authorization_block_invoke_3_cold_1();
        }

        v39 = __error();
        v40 = _tcc_util_create_CFError_with_user_info(2, @"sandbox_extension_consume():%d", *v39);
        if (v40)
        {
          v8 = v40;
          goto LABEL_15;
        }
      }
    }
  }

  if (xpc_dictionary_get_value(a2, "auth_error_string"))
  {
    if (xpc_dictionary_get_value(a2, "auth_error_code"))
    {
      v23 = xpc_dictionary_get_uint64(a2, "auth_error_code");
    }

    else
    {
      v23 = 2;
    }

    v29 = xpc_dictionary_get_string(a2, "auth_error_string");
    v8 = _tcc_util_create_CFError_with_user_info(v23, @"server error: %s", v29);
    v26 = xpc_dictionary_get_BOOL(a2, "TCCD_MSG_ALLOW_STANDARD_USER_TO_SET_SYSTEM_SERVICE");
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v26 = xpc_dictionary_get_BOOL(a2, "TCCD_MSG_ALLOW_STANDARD_USER_TO_SET_SYSTEM_SERVICE");
  }

  v30 = v26;
  tcc_authorization_record_create();
  v20 = v31;
  if (v31)
  {
    v32 = *(a1 + 48);
    tcc_authorization_record_set_service(v31);
    tcc_authorization_record_set_authorization_value(v20, uint64);
    tcc_authorization_record_set_authorization_reason(v20, v16);
    tcc_authorization_record_set_version(v20, v17);
    tcc_authorization_record_set_allow_standard_user_to_set_system_service(v20, v30);
    if (xpc_dictionary_get_value(a2, "session_pid"))
    {
      v33 = xpc_dictionary_get_uint64(a2, "session_pid");
      tcc_authorization_record_set_session_pid(v20, v33);
    }

    if (xpc_dictionary_get_value(a2, "session_pid_version"))
    {
      v34 = xpc_dictionary_get_uint64(a2, "session_pid_version");
      tcc_authorization_record_set_session_pid_version(v20, v34);
    }

    if (xpc_dictionary_get_value(a2, "has_prompted_for_allow"))
    {
      v35 = xpc_dictionary_get_BOOL(a2, "has_prompted_for_allow");
      tcc_authorization_record_set_has_prompted_for_allow(v20, v35);
    }

    v36 = xpc_dictionary_get_string(a2, "session_boot_UUID");
    if (v36)
    {
      tcc_authorization_record_set_bootUUID(v20, v36);
    }

    v37 = xpc_dictionary_get_BOOL(a2, "do_not_cache");
    if (*(a1 + 76))
    {
      if (!*(a1 + 72))
      {
        if (v37 || (*(a1 + 84) & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (!v37)
      {
LABEL_54:
        tcc_authorization_cache_set_authorization(*(*(a1 + 56) + 64), *(a1 + 48), *(a1 + 64), v20);
      }
    }
  }

LABEL_55:
  v8 = 0;
  v19 = 1;
LABEL_17:
  if (*(a1 + 80))
  {
    (*(*(a1 + 32) + 16))();
    _Block_release(*(a1 + 32));
    v21 = *(a1 + 48);
    tcc_release();
    if (v20)
    {
      tcc_release();
    }

    if ((v19 & 1) == 0)
    {
      v15 = v8;
LABEL_22:
      CFRelease(v15);
    }
  }

  else
  {
    v24 = *(*(a1 + 56) + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___tcc_server_send_request_authorization_block_invoke_94;
    block[3] = &unk_1E7AE0D30;
    block[4] = *(a1 + 32);
    block[5] = v20;
    v25 = *(a1 + 48);
    block[6] = v8;
    block[7] = v25;
    dispatch_async(v24, block);
  }
}

__n128 tcc_authorization_record_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

void *__tcc_authorization_cache_create_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  v2 = tcc_authorization_cache_copy_state_dump(*(a1 + 32));
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v5 = Data;
    Length = CFDataGetLength(Data);
    v7 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
    if (v7)
    {
      __strlcpy_chk();
      *v7 = 1;
      *(v7 + 1) = Length;
      v9.location = 0;
      v9.length = Length;
      CFDataGetBytes(v5, v9, v7 + 200);
    }

    CFRelease(v3);
  }

  else
  {
    v7 = 0;
    v5 = v3;
  }

  CFRelease(v5);
  return v7;
}

__CFDictionary *tcc_authorization_cache_copy_state_dump(os_unfair_lock_s *a1)
{
  v1 = a1;
  os_unfair_lock_lock(a1 + 16);
  allocator = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (theDict)
  {
    Count = CFDictionaryGetCount(*&v1[18]._os_unfair_lock_opaque);
    v3 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    v21 = v1;
    v24 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    v25 = v3;
    CFDictionaryGetKeysAndValues(*&v1[18]._os_unfair_lock_opaque, v3, v24);
    v22 = Count;
    if (Count >= 1)
    {
      v4 = 0;
      do
      {
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          break;
        }

        v6 = Mutable;
        v7 = v25[v4];
        v8 = v24[v4];
        v9 = CFDictionaryGetCount(v8);
        v10 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
        v11 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
        CFDictionaryGetKeysAndValues(v8, v10, v11);
        if (v9 >= 1)
        {
          v12 = v10;
          v13 = v11;
          do
          {
            v15 = *v12++;
            v14 = v15;
            v16 = *v13++;
            v17 = tcc_object_copy_description(v14);
            v18 = tcc_object_copy_description(v16);
            CFDictionarySetValue(v6, v17, v18);
            CFRelease(v17);
            CFRelease(v18);
            --v9;
          }

          while (v9);
        }

        free(v10);
        free(v11);
        CF_name = tcc_service_get_CF_name(v7);
        CFDictionarySetValue(theDict, CF_name, v6);
        CFRelease(v6);
        ++v4;
      }

      while (v4 != v22);
    }

    free(v25);
    free(v24);
    v1 = v21;
  }

  os_unfair_lock_unlock(v1 + 16);
  return theDict;
}

__CFString *tcc_object_copy_description(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return v1();
  }

  else
  {
    return @"<Missing Description>";
  }
}

__CFString *tcc_credential_copy_description(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  v4 = *(a1 + 56) - 1;
  if (v4 > 2)
  {
    v5 = "Requestor";
  }

  else
  {
    v5 = off_1E7AE0B38[v4];
  }

  CFStringAppendFormat(Mutable, 0, @"<Credential (%p) | %s", a1, v5);
  if (*(a1 + 56) == 1)
  {
    snprintf(__str, 0x20uLL, "%d.%d/%d", *(a1 + 84), *(a1 + 92), *(a1 + 68));
    CFStringAppendFormat(v3, 0, @", %s", __str);
  }

  CFStringAppend(v3, @">");
  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

__CFString *tcc_authorization_record_copy_description(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<Authorization Record (%p) | ", a1);
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = tcc_object_copy_description(v3);
    CFStringAppendFormat(Mutable, 0, @"Subject: %@, ", v4);
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5 && (v6 = tcc_object_copy_description(v5), CFStringAppendFormat(Mutable, 0, @"Service: %@, ", v6), CFRelease(v6), tcc_service_get_authorization_value_type(*(a1 + 56)) == 1))
  {
    v7 = *(a1 + 80);
    if (v7 > 6)
    {
      v8 = "<Invalid Right>";
    }

    else
    {
      v8 = off_1E7ADFC38[v7];
    }

    CFStringAppendFormat(Mutable, 0, @"AuthRight: %s, ", v8);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"AuthValue: 0x%llx, ", *(a1 + 80));
  }

  v9 = *(a1 + 88);
  if (v9 > 0xE)
  {
    v10 = "<Invalid Reason>";
  }

  else
  {
    v10 = off_1E7ADFC70[v9];
  }

  CFStringAppendFormat(Mutable, 0, @"Reason: %s, ", v10);
  CFStringAppendFormat(Mutable, 0, @"Version: %llu, ", *(a1 + 96));
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = tcc_object_copy_description(v11);
    CFStringAppendFormat(Mutable, 0, @"IndirectObject: %@, ", v12);
    CFRelease(v12);
  }

  if (*(a1 + 120))
  {
    CFStringAppendFormat(Mutable, 0, @"Last Modified: %@, ", *(a1 + 120));
  }

  if (*(a1 + 128))
  {
    CFStringAppendFormat(Mutable, 0, @"Expired At: %@, ", *(a1 + 128));
  }

  v13 = *(a1 + 104);
  if (v13)
  {
    v14 = tcc_object_copy_description(v13);
    CFStringAppendFormat(Mutable, 0, @"Atrributed Entity: %@, ", v14);
    CFRelease(v14);
  }

  if ((*(a1 + 140) & 0x80000000) == 0)
  {
    CFStringAppendFormat(Mutable, 0, @"Session pid: %d, ", *(a1 + 140));
  }

  if (*(a1 + 144))
  {
    CFStringAppendFormat(Mutable, 0, @"Session pid version: %llu, ", *(a1 + 144));
  }

  if (*(a1 + 152))
  {
    CFStringAppendFormat(Mutable, 0, @"Boot UUID: %s, ", *(a1 + 152));
  }

  if (*(a1 + 136) == 1)
  {
    CFStringAppend(Mutable, @"Allow Standard User to Set System Service, ");
  }

  if (*(a1 + 160) == 1)
  {
    CFStringAppend(Mutable, @"Has Prompted For Allow, ");
  }

  if (*(a1 + 161) == 1)
  {
    CFStringAppend(Mutable, @"Non-modifiable, ");
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFString *tcc_service_copy_description(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%@", *(a1 + 56));
  return Mutable;
}

uint64_t tcc_log_handle()
{
  if (tcc_log_handle_onceToken != -1)
  {
    tcc_log_handle_cold_1();
  }

  return tcc_client_log;
}

void tcc_authorization_record_dispose(void *a1)
{
  if (a1[7])
  {
    tcc_release();
  }

  if (a1[8])
  {
    tcc_release();
  }

  if (a1[9])
  {
    tcc_release();
  }

  if (a1[13])
  {
    tcc_release();
  }

  if (a1[14])
  {
    tcc_release();
  }

  v2 = a1[15];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[19];
  if (v4)
  {

    free(v4);
  }
}

void tcc_message_options_dispose(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t tcc_credential_dispose(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 3)
  {
    free(*(a1 + 64));
  }

  else if (v2 == 2)
  {
    xpc_release(*(a1 + 64));
  }

  result = *(a1 + 96);
  if (result)
  {

    return tcc_release();
  }

  return result;
}

uint64_t __tcc_authorization_check_audit_token_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __tcc_authorization_check_audit_token_block_invoke_cold_1();
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = tcc_authorization_record_get_authorization_right(a2);
  }

  v4 = a1[5];
  tcc_release();
  v5 = a1[6];
  return tcc_release();
}

void *tcc_identity_create(uint64_t a1, const char *a2)
{
  tcc_identity_alloc(88, &identity_object_ops);
  v5 = v4;
  v6 = strdup(a2);
  v5[7] = a1;
  v5[8] = v6;
  v5[9] = 0;
  return v5;
}

__n128 tcc_identity_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

void tcc_identity_dispose(uint64_t a1)
{
  free(*(a1 + 64));
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 80);

    free(v2);
  }
}

uint64_t tcc_authorization_check_audit_token(void *a1, __int128 *a2, const __CFDictionary *a3)
{
  v5 = tcc_service_singleton_for_CF_name(a1);
  v6 = a2[1];
  v21 = *a2;
  v22 = v6;
  tcc_credential_create_for_process_with_audit_token(&v21);
  v8 = v7;
  v9 = tcc_server_singleton_default();
  tcc_message_options_create();
  v11 = v10;
  tcc_message_options_set_reply_handler_policy(v10, 1);
  if (a3)
  {
    v12 = CFDictionaryGetValue(a3, kTCCAccessCheckOptionPrompt);
    v13 = *MEMORY[0x1E695E4D0];
    if (v12 == *MEMORY[0x1E695E4D0])
    {
      v14 = v11;
      v15 = 0;
    }

    else
    {
      v14 = v11;
      v15 = 2;
    }

    tcc_message_options_set_request_prompt_policy(v14, v15);
    value = *MEMORY[0x1E695E738];
    if (CFDictionaryGetValueIfPresent(a3, kTCCAccessCheckOptionPurposeRequired, &value))
    {
      if (CFEqual(value, v13))
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    tcc_message_options_set_request_prompt_policy(v11, 2);
    v16 = 0;
    value = *MEMORY[0x1E695E738];
  }

  tcc_message_options_set_request_usage_string_policy(v11, v16);
  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x2000000000uLL;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __tcc_authorization_check_audit_token_block_invoke;
  v19[3] = &unk_1E7AE09D0;
  v19[4] = &v21;
  v19[5] = v11;
  v19[6] = v8;
  tcc_server_message_request_authorization(v9, v11, v8, v5, 0, v19);
  v17 = *(*(&v21 + 1) + 24);
  _Block_object_dispose(&v21, 8);
  return v17;
}

__n128 tcc_credential_create_for_process_with_audit_token(uint64_t a1)
{
  result.n128_u64[0] = tcc_credential_alloc(104, &credential_object_ops).n128_u64[0];
  if (v2)
  {
    *(v2 + 56) = 1;
    result = *a1;
    v4 = *(a1 + 16);
    *(v2 + 64) = *a1;
    *(v2 + 80) = v4;
  }

  return result;
}

uint64_t tcc_server_singleton_default()
{
  if (tcc_server_singleton_default_onceToken != -1)
  {
    tcc_server_singleton_default_cold_1();
  }

  return tcc_server_singleton_default_default_ipc_server;
}

uint64_t tcc_authorization_preflight_with_endpoint(_xpc_endpoint_s *a1, void *key)
{
  v3 = tcc_service_singleton_for_CF_name(key);
  v4 = tcc_credential_singleton_for_self();
  if (a1)
  {
    v5 = tcc_server_create_with_endpoint(0, a1);
  }

  else
  {
    v5 = tcc_server_singleton_default();
  }

  v6 = v5;
  tcc_message_options_create();
  v8 = v7;
  tcc_message_options_set_reply_handler_policy(v7, 1);
  tcc_message_options_set_request_prompt_policy(v8, 2);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __tcc_authorization_preflight_with_endpoint_block_invoke;
  v11[3] = &unk_1E7AE09A8;
  v11[4] = &v12;
  v11[5] = v3;
  v11[6] = v8;
  v11[7] = a1;
  v11[8] = v6;
  tcc_server_message_request_authorization(v6, v8, v4, v3, 0, v11);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void *__tcc_server_singleton_default_block_invoke()
{
  global_queue = dispatch_get_global_queue(0, 0);
  result = tcc_server_create(global_queue);
  tcc_server_singleton_default_default_ipc_server = result;
  if (result)
  {
    *(result + 3) = 0x7FFFFFFF;
    *(result + 2) = 0x7FFFFFFF;
  }

  return result;
}

uint64_t __TCCAccessPreflight_block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

CFErrorRef _tcc_util_create_CFError_with_user_info(CFIndex a1, CFStringRef format, ...)
{
  va_start(va, format);
  v4 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E4A8], 0, format, va);
  if (!v4)
  {
    v5 = tcc_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _tcc_util_create_CFError_with_user_info_cold_1(format, v5);
    }

    v4 = @"<Failed User Info creation>";
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E620], v4);
  v7 = CFErrorCreate(0, @"kTCCErrorDomain", a1, Mutable);
  CFRelease(Mutable);
  CFRelease(v4);
  v8 = tcc_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    _tcc_util_create_CFError_with_user_info_cold_2(v7, v8);
  }

  return v7;
}

void _tcc_util_create_CFError_with_user_info_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1686000, a2, OS_LOG_TYPE_ERROR, "Created Error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __tccd_send_message_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 == MEMORY[0x1E69E9E18])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    v7 = tcc_client_log;
    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v15 = 134217984;
      v16 = v8;
      _os_log_impl(&dword_1B1686000, v7, OS_LOG_TYPE_DEFAULT, "send_message_with_reply(): connection interrupted for message: %p.", &v15, 0xCu);
    }

    tccd_send_message(*(a1 + 48), *(a1 + 56), *(a1 + 40), *(a1 + 32), *(a1 + 60), (*(a1 + 64) + 1));
  }

  else
  {
    if (a2 != MEMORY[0x1E69E9E20])
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tcc_log_handle_cold_1();
      }

      if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_INFO))
      {
        v4 = tccd_reply_description_redacted(a2);
        if (tcc_log_handle_onceToken != -1)
        {
          tcc_log_handle_cold_1();
        }

        v5 = tcc_client_log;
        if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_INFO))
        {
          v15 = 136446210;
          v16 = v4;
          _os_log_impl(&dword_1B1686000, v5, OS_LOG_TYPE_INFO, "RECV: asynchronous reply %{public}s", &v15, 0xCu);
        }

        free(v4);
      }

      v6 = *(*(a1 + 32) + 16);
      goto LABEL_29;
    }

    v9 = (a1 + 40);
    if (xpc_dictionary_get_BOOL(*(a1 + 40), "user_tccd_unavailable"))
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tcc_log_handle_cold_1();
      }

      if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
      {
        __tccd_send_message_block_invoke_cold_5((a1 + 40));
      }

LABEL_28:
      v6 = *(*(a1 + 32) + 16);
LABEL_29:
      v6();
      goto LABEL_30;
    }

    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    v10 = tcc_client_log;
    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *v9;
      v15 = 134217984;
      v16 = v11;
      _os_log_impl(&dword_1B1686000, v10, OS_LOG_TYPE_DEFAULT, "send_message_with_reply(): user tccd unavailable, sending %p to system tccd", &v15, 0xCu);
    }

    v12 = tccd();
    if (!v12)
    {
      goto LABEL_28;
    }

    v13 = v12;
    xpc_dictionary_set_BOOL(*(a1 + 40), "user_tccd_unavailable", 1);
    tccd_send_message(v13, *(a1 + 56), *(a1 + 40), *(a1 + 32), *(a1 + 60), (*(a1 + 64) + 1));
    xpc_release(v13);
  }

LABEL_30:
  xpc_release(*(a1 + 48));
  xpc_release(*(a1 + 40));
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __tcc_authorization_preflight_with_endpoint_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __tcc_authorization_preflight_with_endpoint_block_invoke_cold_1(a1);
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = tcc_authorization_record_get_authorization_right(a2);
  }

  v4 = a1[6];
  result = tcc_release();
  if (a1[7])
  {
    v6 = a1[8];
    return tcc_release();
  }

  return result;
}

void __tcc_authorization_check_audit_token_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization request (%{public}s) fails: %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t TCCAccessCopyBundleIdentifiersForService(const __CFString *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  values = 0;
  *keys = xmmword_1E7AE04D8;
  v19[0] = 0;
  v19[1] = 0;
  v1 = stringCopyUTF8String(a1);
  if (v1 && (values = xpc_string_create("TCCAccessCopyBundleIdentifiersForService")) != 0 && (v19[0] = xpc_string_create(v1)) != 0 && (v2 = xpc_dictionary_create(keys, &values, 2uLL)) != 0)
  {
    v3 = v2;
    v4 = tccd();
    if (v4)
    {
      v5 = v4;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __TCCAccessCopyBundleIdentifiersForService_block_invoke;
      v13[3] = &unk_1E7AE0128;
      v13[5] = v4;
      v13[6] = v3;
      v13[4] = &v14;
      _os_activity_initiate(&dword_1B1686000, "TCCAccessCopyBundleIdentifiersForService() IPC", OS_ACTIVITY_FLAG_DETACHED, v13);
      free(v1);
      xpc_release(v3);
      v6 = v5;
    }

    else
    {
      free(v1);
      v6 = v3;
    }

    xpc_release(v6);
  }

  else
  {
    free(v1);
  }

  v7 = values;
  if (values)
  {
    v8 = v19;
    do
    {
      xpc_release(v7);
      v9 = *v8++;
      v7 = v9;
    }

    while (v9);
  }

  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __TCCAccessCopyBundleIdentifiersForService_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCAccessCopyBundleIdentifiersForService_block_invoke_2;
  v3[3] = &unk_1E7AE0100;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

uint64_t TCCAccessRestricted(const void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  *keys = xmmword_1E7ADFF10;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __TCCAccessRestricted_block_invoke;
  v8[3] = &unk_1E7ADFF28;
  v8[4] = &v9;
  v2 = *MEMORY[0x1E695E4D0];
  values[0] = v8;
  values[1] = v2;
  v3 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E9D8], 0);
  if (v3)
  {
    v4 = v3;
    TCCAccessRequest(a1, v3, &__block_literal_global_301);
    CFRelease(v4);
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __TCCAccessCopyBundleIdentifiersForService_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessCopyBundleIdentifiersForService_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(a2, "clients");
    if (value)
    {
      v5 = value;
      count = xpc_array_get_count(value);
      Mutable = CFArrayCreateMutable(0, count, MEMORY[0x1E695E9C0]);
      *(*(*(a1 + 32) + 8) + 24) = Mutable;
      if (Mutable)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 0x40000000;
        applier[2] = __TCCAccessCopyBundleIdentifiersForService_block_invoke_368;
        applier[3] = &unk_1E7AE00D8;
        applier[4] = *(a1 + 32);
        xpc_array_apply(v5, applier);
      }
    }
  }
}

void tcc_authorization_cache_set_authorization(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  os_unfair_lock_lock((a1 + 64));
  _tcc_authorization_cache_locked_set_authorization(a1, a2, a3, a4);
  if (tcc_authorization_record_get_authorization_reason(a4) != 11)
  {
    tcc_authorization_change_monitor_start_monitoring_service(*(a1 + 96), a2);
  }

  os_unfair_lock_unlock((a1 + 64));
}

void _tcc_authorization_cache_locked_set_authorization(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = tcc_credential_singleton_for_self();
  v9 = tcc_object_equal(a3, v8);
  os_unfair_lock_assert_owner((a1 + 64));
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &kTCCObjectDictionaryKeyCallBacks, &kTCCObjectDictionaryValueCallBacks);
  if (Mutable)
  {
    Value = Mutable;
    CFDictionarySetValue(*(a1 + 72), a2, Mutable);
    CFRelease(Value);
    if (!v9)
    {
LABEL_6:
      v12 = *(a1 + 56);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_1B1686000, v12, OS_LOG_TYPE_INFO, "Credential is not this process", &v35, 2u);
      }

      v13 = CFDictionaryContainsKey(Value, a3);
      v14 = *(a1 + 56);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v35 = 67109120;
        LODWORD(v36) = v13 != 0;
        _os_log_impl(&dword_1B1686000, v14, OS_LOG_TYPE_INFO, "Credential is present: %d", &v35, 8u);
      }

      Count = CFDictionaryGetCount(Value);
      audit_token_cache_max_size = tcc_service_get_audit_token_cache_max_size(a2);
      v17 = *(a1 + 56);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v35 = 134218240;
        v36 = Count;
        v37 = 1024;
        LODWORD(v38) = audit_token_cache_max_size;
        _os_log_impl(&dword_1B1686000, v17, OS_LOG_TYPE_INFO, "Numbers of entries in cache: %ld, max: %d", &v35, 0x12u);
      }

      if (!v13 && Count == audit_token_cache_max_size)
      {
        v18 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(Value, v18, 0);
        v19 = tcc_object_copy_description(a3);
        CFDictionaryRemoveValue(Value, *v18);
        v20 = *(a1 + 56);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          name = tcc_service_get_name(a2);
          v35 = 136315394;
          v36 = name;
          v37 = 2112;
          v38 = v19;
          _os_log_impl(&dword_1B1686000, v20, OS_LOG_TYPE_INFO, "REMOVE: (%s, %@)", &v35, 0x16u);
        }

        free(v18);
        CFRelease(v19);
      }
    }

LABEL_17:
    CFDictionarySetValue(Value, a3, a4);
    v22 = tcc_object_copy_description(a3);
    v23 = tcc_object_copy_description(a4);
    v24 = *(a1 + 56);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = tcc_service_get_name(a2);
      v35 = 136315650;
      v36 = v25;
      v37 = 2112;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&dword_1B1686000, v24, OS_LOG_TYPE_INFO, "SET: (%s, %@) -> %@", &v35, 0x20u);
    }

    CFRelease(v22);
    CFRelease(v23);
    goto LABEL_20;
  }

  v27 = *(a1 + 56);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    _tcc_authorization_cache_locked_set_authorization_cold_1(v27, v28, v29, v30, v31, v32, v33, v34);
  }

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t tcc_object_hash(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

uint64_t tcc_credential_hash(uint64_t a1)
{
  v2 = *(a1 + 56);
  switch(v2)
  {
    case 3uLL:
      v6 = *(a1 + 64);
      no_copy = xpc_string_create_no_copy();
      v2 = xpc_hash(no_copy) + 93;
      xpc_release(no_copy);
      break;
    case 2uLL:
      v2 = xpc_hash(*(a1 + 64)) + 62;
      break;
    case 1uLL:
      v3 = 0;
      v4 = 0;
      v5 = *(a1 + 80);
      v10[0] = *(a1 + 64);
      v10[1] = v5;
      do
      {
        v4 = *(v10 + v3) - v4 + 32 * v4;
        v3 += 4;
      }

      while (v3 != 32);
      v2 = v4 + 31;
      break;
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    return tcc_object_hash(v8) - v2 + 32 * v2;
  }

  return v2;
}

uint64_t __TCCAccessRestricted_block_invoke(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t TCCAccessPreflightWithAuditToken(const void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  *keys = xmmword_1E7ADFFB0;
  v17 = @"_kTCCAccessRequestOptionSyncCallback";
  values[0] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __TCCAccessPreflightWithAuditToken_block_invoke;
  v10[3] = &unk_1E7ADFFD0;
  v10[4] = &v11;
  v3 = *MEMORY[0x1E695E4D0];
  values[1] = v10;
  values[2] = v3;
  v4 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], 0);
  if (v4)
  {
    v5 = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __TCCAccessPreflightWithAuditToken_block_invoke_2;
    v9[3] = &unk_1E7ADFFF8;
    v9[4] = &v11;
    TCCAccessRequest(a1, v4, v9);
    CFRelease(v5);
  }

  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __TCCAccessPreflightWithAuditToken_block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 2;
  }

  return result;
}

uint64_t __TCCAccessPreflightWithAuditToken_block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void tcc_server_message_get_authorization_records_by_service(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v8, "TCCD_MSG_REQUEST_TYPE_KEY", 3uLL);
  v9 = 0;
  if (!a2)
  {
    tcc_message_options_create();
    v9 = v10;
    tcc_message_options_set_reply_handler_policy(v10, 1);
    a2 = v9;
  }

  tcc_object_encode_to_dictionary(a2);
  xpc_dictionary_set_string(v8, "function", "TCCAccessCopyInformation");
  name = tcc_service_get_name(a3);
  xpc_dictionary_set_string(v8, "service", name);
  is_system_service = tcc_service_get_is_system_service(a3);
  _tcc_server_send_get_authorization_records(a1, is_system_service, a2, a3, 0, 0, v8, a4);
  if (v9)
  {
    tcc_release();
  }

  xpc_release(v8);
}

void _tcc_server_send_get_authorization_records(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  reply_handler_policy = tcc_message_options_get_reply_handler_policy(a3);
  if (a4)
  {
    tcc_retain();
  }

  if (a5)
  {
    tcc_retain();
  }

  if (a6)
  {
    tcc_retain();
  }

  v16 = _Block_copy(a8);
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = ___tcc_server_send_get_authorization_records_block_invoke;
  activity_block[3] = &unk_1E7AE0EE0;
  v18 = a2;
  v19 = reply_handler_policy == 1;
  activity_block[6] = a1;
  activity_block[7] = a7;
  activity_block[8] = a4;
  activity_block[9] = a5;
  activity_block[10] = a6;
  activity_block[4] = v16;
  activity_block[5] = a8;
  v20 = 1;
  _os_activity_initiate(&dword_1B1686000, "tcc_send_get_authorization() IPC", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

__n128 ___tcc_server_send_get_authorization_records_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(*(a1 + 48) + 72);
  v3 = *(a1 + 88);
  v4 = *(a1 + 92);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___tcc_server_send_get_authorization_records_block_invoke_2;
  v7[3] = &unk_1E7AE0EB8;
  v5 = *(a1 + 64);
  v10 = *(a1 + 80);
  v8 = *(a1 + 32);
  v9 = v5;
  v11 = *(a1 + 96);
  tccd_send_v2(v2, v3, v4, 0, v1, v7);
  return result;
}

void ___tcc_server_send_get_authorization_records_block_invoke_2(uint64_t a1, void *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    v7 = tcc_log_handle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v9 = *MEMORY[0x1E69E9E28];
    if (v8)
    {
      ___tcc_server_send_get_authorization_records_block_invoke_2_cold_3(a2, *MEMORY[0x1E69E9E28]);
    }

    string = xpc_dictionary_get_string(a2, v9);
    CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"%s", string);
    goto LABEL_18;
  }

  if (*(a1 + 48))
  {
    value = xpc_dictionary_get_value(a2, "clients");
    if (!value)
    {
      v5 = tcc_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ___tcc_server_send_get_authorization_records_block_invoke_2_cold_1();
      }

      v6 = "Missing 'clients' array in returned message.";
LABEL_17:
      CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"%s", v6);
LABEL_18:
      v18[3] = CFError_with_user_info;
LABEL_19:
      (*(*(a1 + 32) + 16))();
      _Block_release(*(a1 + 32));
      v12 = v18[3];
      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_24;
    }
  }

  else
  {
    value = xpc_dictionary_get_value(a2, "services");
    if (!value)
    {
      v11 = tcc_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ___tcc_server_send_get_authorization_records_block_invoke_2_cold_2();
      }

      v6 = "Missing 'services' array in returned message.";
      goto LABEL_17;
    }
  }

  if (v18[3])
  {
    goto LABEL_19;
  }

  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = ___tcc_server_send_get_authorization_records_block_invoke_114;
  applier[3] = &unk_1E7AE0E90;
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  applier[4] = *(a1 + 40);
  applier[5] = &v17;
  xpc_array_apply(value, applier);
  if (v18[3])
  {
    (*(*(a1 + 32) + 16))();
    CFRelease(v18[3]);
  }

  else if (*(a1 + 72))
  {
    (*(*(a1 + 32) + 16))();
  }

  _Block_release(*(a1 + 32));
LABEL_24:
  if (*(a1 + 48))
  {
    tcc_release();
  }

  if (*(a1 + 56))
  {
    tcc_release();
  }

  if (*(a1 + 64))
  {
    tcc_release();
  }

  _Block_object_dispose(&v17, 8);
}

__CFString *tcc_identity_copy_description(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%s/%llu", a1[8], a1[7]);
  if (a1[9] == 1)
  {
    CFStringAppendFormat(Mutable, 0, @", %s", a1[10]);
  }

  return Mutable;
}

void tcc_server_message_request_authorization_change(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v14, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v14, "TCCD_MSG_REQUEST_TYPE_KEY", 0);
  xpc_dictionary_set_uint64(v14, "desired_auth_value", a5);
  v15 = 0;
  if (!a2)
  {
    tcc_message_options_create();
    v15 = v16;
    a2 = v16;
  }

  tcc_object_encode_to_dictionary(a2);
  v17 = xpc_dictionary_create(0, 0, 0);
  tcc_object_encode_to_dictionary(a3);
  xpc_dictionary_set_value(v14, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY", v17);
  xpc_release(v17);
  tcc_object_encode_to_dictionary(a4);
  if (a6)
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    tcc_object_encode_to_dictionary(a6);
    xpc_dictionary_set_value(v14, "TCC_MSG_REQUEST_AUTHORIZATION_INDIRECT_OBJECT_CREDENTIAL_DICTIONARY_KEY", v18);
    xpc_release(v18);
  }

  _tcc_server_send_request_authorization(a1, a4, a3, a2, v14, a7);
  if (v15)
  {
    tcc_release();
  }

  xpc_release(v14);
}

uint64_t tcc_service_get_message_queue(uint64_t a1)
{
  v3 = *(a1 + 104);
  v2 = (a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __tcc_service_get_message_queue_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = a1;
  if (v3 != -1)
  {
    dispatch_once(v2, block);
  }

  return *(a1 + 112);
}

void tcc_server_message_get_identity_for_credential(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v8, "TCCD_MSG_REQUEST_TYPE_KEY", 4uLL);
  xpc_dictionary_set_string(v8, "function", "TCCGetIdentityForCredential");
  v9 = 0;
  if (!a2)
  {
    tcc_message_options_create();
    v9 = v10;
    a2 = v10;
  }

  tcc_object_encode_to_dictionary(a2);
  v11 = xpc_dictionary_create(0, 0, 0);
  tcc_object_encode_to_dictionary(a3);
  xpc_dictionary_set_value(v8, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY", v11);
  xpc_release(v11);
  v12 = tcc_message_options_get_reply_handler_policy(a2) == 1;
  v13 = _Block_copy(a4);
  xpc_retain(v8);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___tcc_server_send_get_identity_for_credential_block_invoke;
  v16[3] = &unk_1E7AE0F58;
  v16[5] = v8;
  v16[6] = a1;
  v17 = v12;
  v16[4] = v13;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___tcc_server_send_get_identity_for_credential_block_invoke_2_131;
  v14[3] = &unk_1E7AE0F80;
  v15 = v12;
  v14[4] = v16;
  _os_activity_initiate(&dword_1B1686000, "tcc_send_get_identity_for_credential() IPC", OS_ACTIVITY_FLAG_DEFAULT, v14);
  if (v9)
  {
    tcc_release();
  }

  xpc_release(v8);
}

void ___tcc_server_send_get_identity_for_credential_block_invoke(uint64_t a1)
{
  length = 0;
  value = xpc_dictionary_get_value(*(a1 + 40), "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");
  if (value && (v3 = value, xpc_dictionary_get_uint64(value, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_TYPE_KEY") == 1))
  {
    data = xpc_dictionary_get_data(v3, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_DATA_KEY", &length);
  }

  else
  {
    data = 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(v6 + 72);
  v8 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___tcc_server_send_get_identity_for_credential_block_invoke_2;
  v9[3] = &unk_1E7AE0F30;
  v10 = v8;
  v9[4] = *(a1 + 32);
  v9[5] = v5;
  v9[6] = v6;
  tccd_send_v2(v7, 0, v8, data, v5, v9);
}

void ___tcc_server_send_get_identity_for_credential_block_invoke_2(uint64_t a1, void *a2)
{
  xpc_release(*(a1 + 40));
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    v10 = tcc_log_handle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v12 = *MEMORY[0x1E69E9E28];
    if (v11)
    {
      ___tcc_server_send_get_identity_for_credential_block_invoke_2_cold_2(a2, *MEMORY[0x1E69E9E28]);
    }

    string = xpc_dictionary_get_string(a2, v12);
    CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"%s", string);
    goto LABEL_12;
  }

  value = xpc_dictionary_get_value(a2, "TCCD_MSG_IDENTITY_TYPE_KEY");
  v5 = xpc_dictionary_get_value(a2, "TCCD_MSG_IDENTITY_ID_KEY");
  if (!value || (v6 = v5, MEMORY[0x1B2732690](value) != MEMORY[0x1E69E9F18]) || !v6 || MEMORY[0x1B2732690](v6) != MEMORY[0x1E69E9F10])
  {
    v7 = MEMORY[0x1B2732510](a2);
    v8 = tcc_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ___tcc_server_send_get_identity_for_credential_block_invoke_2_cold_1();
    }

    CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"Invalid reply for attribution request: %s", v7);
    free(v7);
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v16 = xpc_uint64_get_value(value);
  string_ptr = xpc_string_get_string_ptr(v6);
  v14 = tcc_identity_create(v16, string_ptr);
  if (v14)
  {
    CFError_with_user_info = 0;
  }

  else
  {
    CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"Failed to allocate identity.");
  }

LABEL_13:
  if (*(a1 + 56))
  {
    (*(*(a1 + 32) + 16))();
    _Block_release(*(a1 + 32));
    if (v14)
    {
      tcc_release();
    }

    if (CFError_with_user_info)
    {
      CFRelease(CFError_with_user_info);
    }
  }

  else
  {
    v15 = *(*(a1 + 48) + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___tcc_server_send_get_identity_for_credential_block_invoke_127;
    block[3] = &unk_1E7AE0F08;
    block[4] = *(a1 + 32);
    block[5] = v14;
    block[6] = CFError_with_user_info;
    dispatch_async(v15, block);
  }
}

void tcc_server_dispose(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    xpc_release(v3);
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t TCCAccessCopyBundleIdentifiersDisabledForService(const __CFString *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  values = 0;
  *keys = xmmword_1E7AE04D8;
  v19[0] = 0;
  v19[1] = 0;
  v1 = stringCopyUTF8String(a1);
  if (v1 && (values = xpc_string_create("TCCAccessCopyBundleIdentifiersDisabledForService")) != 0 && (v19[0] = xpc_string_create(v1)) != 0 && (v2 = xpc_dictionary_create(keys, &values, 2uLL)) != 0)
  {
    v3 = v2;
    v4 = tccd();
    if (v4)
    {
      v5 = v4;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __TCCAccessCopyBundleIdentifiersDisabledForService_block_invoke;
      v13[3] = &unk_1E7AE01A0;
      v13[5] = v4;
      v13[6] = v3;
      v13[4] = &v14;
      _os_activity_initiate(&dword_1B1686000, "TCCAccessCopyBundleIdentifiersDisabledForService() IPC", OS_ACTIVITY_FLAG_DETACHED, v13);
      free(v1);
      xpc_release(v3);
      v6 = v5;
    }

    else
    {
      free(v1);
      v6 = v3;
    }

    xpc_release(v6);
  }

  else
  {
    free(v1);
  }

  v7 = values;
  if (values)
  {
    v8 = v19;
    do
    {
      xpc_release(v7);
      v9 = *v8++;
      v7 = v9;
    }

    while (v9);
  }

  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __TCCAccessCopyBundleIdentifiersDisabledForService_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCAccessCopyBundleIdentifiersDisabledForService_block_invoke_2;
  v3[3] = &unk_1E7AE0178;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCAccessCopyBundleIdentifiersDisabledForService_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessCopyBundleIdentifiersDisabledForService_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(a2, "clients");
    if (value)
    {
      v5 = value;
      count = xpc_array_get_count(value);
      Mutable = CFArrayCreateMutable(0, count, MEMORY[0x1E695E9C0]);
      *(*(*(a1 + 32) + 8) + 24) = Mutable;
      if (Mutable)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 0x40000000;
        applier[2] = __TCCAccessCopyBundleIdentifiersDisabledForService_block_invoke_373;
        applier[3] = &unk_1E7AE0150;
        applier[4] = *(a1 + 32);
        xpc_array_apply(v5, applier);
      }
    }
  }
}

const __CFString *TCCAccessCopyInformationForBundle(__CFBundle *a1)
{
  result = CFBundleGetIdentifier(a1);
  if (result)
  {

    return TCCAccessCopyInformationForBundleId(result);
  }

  return result;
}

void _tcc_server_send_request_authorization_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_1B1686000, a2, a3, "Using cached authorization: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __TCCAccessGetOverride_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessGetOverride_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    v4 = xpc_dictionary_get_BOOL(a2, "result");
    *(*(*(a1 + 32) + 8) + 24) = v4;
    if (v4)
    {
      **(a1 + 40) = xpc_dictionary_get_BOOL(a2, "override");
    }
  }
}

uint64_t TCCAccessGetOverride(const __CFString *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  *keys = xmmword_1E7AE04D8;
  values = 0;
  v21[0] = 0;
  v21[1] = 0;
  v3 = stringCopyUTF8String(a1);
  if (v3 && (values = xpc_string_create("TCCAccessGetOverride")) != 0 && (v21[0] = xpc_string_create(v3)) != 0 && (v4 = xpc_dictionary_create(keys, &values, 2uLL)) != 0)
  {
    v5 = v4;
    v6 = tccd();
    if (v6)
    {
      v7 = v6;
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 0x40000000;
      activity_block[2] = __TCCAccessGetOverride_block_invoke;
      activity_block[3] = &unk_1E7AE0398;
      activity_block[4] = &v16;
      activity_block[5] = v6;
      activity_block[6] = v5;
      activity_block[7] = a2;
      _os_activity_initiate(&dword_1B1686000, "TCCAccessGetOverride() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
      free(v3);
      xpc_release(v5);
      v8 = v7;
    }

    else
    {
      free(v3);
      v8 = v5;
    }

    xpc_release(v8);
  }

  else
  {
    free(v3);
  }

  v9 = values;
  if (values)
  {
    v10 = v21;
    do
    {
      xpc_release(v9);
      v11 = *v10++;
      v9 = v11;
    }

    while (v11);
  }

  v12 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t TCCAccessCopyInformation(const __CFString *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  values = 0;
  *keys = xmmword_1E7AE04D8;
  v19[0] = 0;
  v19[1] = 0;
  v1 = stringCopyUTF8String(a1);
  if (v1 && (values = xpc_string_create("TCCAccessCopyInformation")) != 0 && (v19[0] = xpc_string_create(v1)) != 0 && (v2 = xpc_dictionary_create(keys, &values, 2uLL)) != 0)
  {
    v3 = v2;
    v4 = tccd();
    if (v4)
    {
      v5 = v4;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __TCCAccessCopyInformation_block_invoke;
      v13[3] = &unk_1E7AE0048;
      v13[5] = v4;
      v13[6] = v3;
      v13[4] = &v14;
      _os_activity_initiate(&dword_1B1686000, "TCCAccessCopyInformation() IPC", OS_ACTIVITY_FLAG_DETACHED, v13);
      free(v1);
      xpc_release(v3);
      v6 = v5;
    }

    else
    {
      free(v1);
      v6 = v3;
    }

    xpc_release(v6);
  }

  else
  {
    free(v1);
  }

  v7 = values;
  if (values)
  {
    v8 = v19;
    do
    {
      xpc_release(v7);
      v9 = *v8++;
      v7 = v9;
    }

    while (v9);
  }

  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __TCCAccessCopyInformation_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCAccessCopyInformation_block_invoke_2;
  v3[3] = &unk_1E7AE0020;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

uint64_t createCStringFromCFUUID(CFUUIDRef uuid, char **a2)
{
  v3 = CFUUIDCreateString(*MEMORY[0x1E695E480], uuid);
  if (v3)
  {
    v4 = v3;
    Length = CFStringGetLength(v3);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    *a2 = v7;
    if (CFStringGetCString(v4, v7, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      v8 = 1;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        createCStringFromCFUUID_cold_1();
      }

      v8 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      createCStringFromCFUUID_cold_2();
    }

    return 0;
  }

  return v8;
}

CFTypeRef tcc_message_options_set_client_dict(uint64_t a1, CFTypeRef cf)
{
  result = CFRetain(cf);
  *(a1 + 120) = cf;
  return result;
}

uint64_t tcc_message_options_get_nokill_policy(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return *(a1 + 128);
  }

  else
  {
    return *MEMORY[0x1E695E4C0];
  }
}

uint64_t tcc_message_options_set_nokill_policy(uint64_t result, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  *(result + 128) = *v2;
  return result;
}

uint64_t tcc_message_options_get_include_policy(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return *(a1 + 136);
  }

  else
  {
    return *MEMORY[0x1E695E4C0];
  }
}

uint64_t tcc_message_options_set_include_policy(uint64_t result, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  *(result + 136) = *v2;
  return result;
}

uint64_t tcc_message_options_get_has_prompted_for_allow(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return *(a1 + 144);
  }

  else
  {
    return *MEMORY[0x1E695E4C0];
  }
}

uint64_t tcc_message_options_set_has_prompted_for_allow(uint64_t result, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  *(result + 144) = *v2;
  return result;
}

__n128 tcc_attributed_entity_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

__n128 tcc_events_filter_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

__n128 tcc_events_subscription_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

__n128 tcc_metrics_alloc(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v3 + 16) = *a2;
    *(v3 + 32) = v5;
    *(v3 + 48) = *(a2 + 32);
  }

  return result;
}

uint64_t tcc_authorization_changed_for_service_notification_name(uint64_t a1, char *a2, size_t a3)
{
  name = tcc_service_get_name(a1);
  result = snprintf(a2, a3, "com.apple.TCC.%s.authorization.changed", name);
  if (result <= 0)
  {
    tcc_authorization_changed_for_service_notification_name_cold_1();
  }

  return result;
}

void tcc_authorization_change_monitor_start_monitoring_service(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __tcc_authorization_change_monitor_start_monitoring_service_block_invoke;
  v3[3] = &__block_descriptor_tmp_6;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void __tcc_authorization_change_monitor_start_monitoring_service_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!CFDictionaryContainsValue(*(*(a1 + 32) + 72), *(a1 + 40)))
  {
    tcc_authorization_changed_for_service_notification_name(*(a1 + 40), name, 0x80uLL);
    out_token = -1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __tcc_authorization_change_monitor_start_monitoring_service_block_invoke_2;
    v7[3] = &__block_descriptor_tmp;
    v8 = *(a1 + 32);
    v2 = notify_register_dispatch(name, &out_token, *(v8 + 64), v7);
    if (v2)
    {
      v3 = v2;
      v4 = *(*(a1 + 32) + 56);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __tcc_authorization_change_monitor_start_monitoring_service_block_invoke_cold_1(name, v3, v4);
      }
    }

    else
    {
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &out_token);
      CFDictionarySetValue(*(*(a1 + 32) + 72), v5, *(a1 + 40));
      CFRelease(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_change_monitor_start_monitoring_service_block_invoke_2(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 72), v3);
  CFRelease(v3);
  v5 = *(a1 + 32);
  if (Value)
  {
    tcc_authorization_cache_handle_authorization_changed_for_service_clear(*(v5 + 80), *(a1 + 40));
  }

  else
  {
    v6 = *(v5 + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __tcc_authorization_change_monitor_start_monitoring_service_block_invoke_2_cold_1(&valuePtr, v6);
    }
  }
}

void tcc_authorization_change_monitor_dispose(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    Count = CFDictionaryGetCount(v3);
    v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(*(a1 + 72), v5, 0);
    if (Count >= 1)
    {
      v6 = v5;
      do
      {
        valuePtr = 0;
        v7 = *v6++;
        CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
        notify_cancel(valuePtr);
        --Count;
      }

      while (Count);
    }

    free(v5);
    CFDictionaryRemoveAllValues(*(a1 + 72));
    CFRelease(*(a1 + 72));
  }
}

uint64_t tcc_authorization_record_set_subject_identity(uint64_t a1)
{
  result = tcc_retain();
  *(a1 + 64) = result;
  return result;
}

uint64_t tcc_authorization_record_set_indirect_object_identity(uint64_t a1)
{
  result = tcc_retain();
  *(a1 + 72) = result;
  return result;
}

uint64_t tcc_authorization_record_set_subject_attributed_entity(uint64_t a1)
{
  result = tcc_retain();
  *(a1 + 104) = result;
  return result;
}

uint64_t tcc_authorization_record_set_indirect_object_attributed_entity(uint64_t a1)
{
  result = tcc_retain();
  *(a1 + 112) = result;
  return result;
}

CFTypeRef tcc_authorization_record_set_last_modified_date(uint64_t a1, CFTypeRef cf)
{
  result = CFRetain(cf);
  *(a1 + 120) = result;
  return result;
}

CFTypeRef tcc_authorization_record_set_expired_at_date(uint64_t a1, CFTypeRef cf)
{
  result = CFRetain(cf);
  *(a1 + 128) = result;
  return result;
}

char *tcc_authorization_record_set_bootUUID(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  result = strndup(__s, v4);
  *(a1 + 152) = result;
  return result;
}

uint64_t tcc_authorization_record_hash(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = tcc_object_hash(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v3 = tcc_object_hash(v4) - v3 + 32 * v3;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    v3 = tcc_object_hash(v5) - v3 + 32 * v3;
  }

  v6 = *(a1 + 80) - v3 + 32 * v3;
  v7 = *(a1 + 88) - v6 + 32 * v6;
  v8 = *(a1 + 104);
  v9 = *(a1 + 96) - v7 + 32 * v7;
  if (v8)
  {
    v9 = tcc_object_hash(v8) - v9 + 32 * v9;
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    v9 = tcc_object_hash(v10) - v9 + 32 * v9;
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    v9 = CFHash(v11) - v9 + 32 * v9;
  }

  v12 = *(a1 + 128);
  if (v12)
  {
    v9 = CFHash(v12) - v9 + 32 * v9;
  }

  return (*(a1 + 136) ^ 1) - v9 + 32 * v9;
}

uint64_t tcc_authorization_record_equal(uint64_t a1, uint64_t a2)
{
  result = tcc_object_equal(*(a1 + 56), *(a2 + 56));
  if (result)
  {
    result = tcc_object_equal(*(a1 + 64), *(a2 + 64));
    if (result)
    {
      result = tcc_object_equal(*(a1 + 72), *(a2 + 72));
      if (result)
      {
        if (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96))
        {
          return 0;
        }

        result = tcc_object_equal(*(a1 + 104), *(a2 + 104));
        if (result)
        {
          result = tcc_object_equal(*(a1 + 112), *(a2 + 112));
          if (result)
          {
            v5 = *(a1 + 120);
            if (!v5 || (v6 = *(a2 + 120)) == 0 || (result = CFEqual(v5, v6), result))
            {
              v7 = *(a1 + 128);
              if (!v7 || (v8 = *(a2 + 128)) == 0 || (result = CFEqual(v7, v8), result))
              {
                if (*(a1 + 136) != *(a2 + 136) || *(a1 + 140) != *(a2 + 140) || *(a1 + 144) != *(a2 + 144))
                {
                  return 0;
                }

                v9 = *(a1 + 152);
                v10 = *(a2 + 152);
                if (v9 == v10)
                {
                  return 1;
                }

                result = 0;
                if (v9 && v10)
                {
                  v11 = strlen(v9);
                  return !strncmp(v9, v10, v11);
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

void __TCC_CRASHING_DUE_TO_PRIVACY_VIOLATION__(uint64_t a1, const char *a2)
{
  if (tcc_log_handle_onceToken != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v4 = tcc_client_log;
    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446210;
      v6 = a1;
      _os_log_error_impl(&dword_1B1686000, v4, OS_LOG_TYPE_ERROR, "%{public}s", &v5, 0xCu);
    }

    if (a2)
    {
      strlen(a2);
    }

    abort_with_payload();
LABEL_7:
    dispatch_once(&tcc_log_handle_onceToken, &__block_literal_global);
  }
}

void __TCCAccessRequest_block_invoke_284(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    v6[0] = 0;
    goto LABEL_7;
  }

  if (!CFDictionaryGetValue(TCCAccessRequest_cache_map, *(a1 + 32)))
  {
    v5 = *(a1 + 40);
    v6[0] = 0;
    if (v5)
    {
      v3 = 2;
      goto LABEL_8;
    }

LABEL_7:
    v3 = *(a1 + 41) ^ 1;
LABEL_8:
    LODWORD(v6[0]) = v3;
    BYTE4(v6[0]) = *(a1 + 42);
    v6[1] = time(0);
    v4 = CFDataCreate(0, v6, 16);
    CFDictionarySetValue(TCCAccessRequest_cache_map, *(a1 + 32), v4);
    CFRelease(v4);
    CFRelease(*(a1 + 32));
    return;
  }

  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __TCCAccessRequest_block_invoke_2_289(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = service_queue(*(a1 + 48), *(a1 + 32) != 0);
  v4 = *(a1 + 40);
  if (v2)
  {

    dispatch_sync(v3, v4);
  }

  else
  {

    dispatch_async(v3, v4);
  }
}

void __TCCAccessCopyInformation_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessCopyInformation_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(a2, "clients");
    if (value)
    {
      *(*(*(a1 + 32) + 8) + 24) = TCCAccessCopyInformationInternal(value);
    }
  }
}

uint64_t __TCCAccessCopyBundleIdentifiersForService_block_invoke_368(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t __TCCAccessCopyBundleIdentifiersDisabledForService_block_invoke_373(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t TCCAccessSetInternal(const __CFString *a1, const char *a2, const char *a3, const void *a4, int a5, const __CFData *a6, int a7, CFDictionaryRef theDict)
{
  v8 = theDict;
  v77 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  v73 = xmmword_1E7AE0200;
  v74 = *&off_1E7AE0210;
  v75 = xmmword_1E7AE0220;
  v76 = "has_prompted_for_allow";
  *keys = xmmword_1E7AE01C0;
  v70 = *&off_1E7AE01D0;
  v71 = xmmword_1E7AE01E0;
  v72 = *&off_1E7AE01F0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *values = 0u;
  v62 = 0u;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kTCCInfoLastModified);
    v16 = Value;
    if (Value)
    {
      v17 = CFGetTypeID(Value);
      if (v17 == CFDateGetTypeID())
      {
        v16 = (MEMORY[0x1B2731DA0](v16) + *MEMORY[0x1E695E468]);
      }

      else
      {
        v16 = 0;
      }
    }

    v20 = CFDictionaryGetValue(v8, kTCCSetNoKill);
    v19 = v20;
    if (v20)
    {
      v21 = CFGetTypeID(v20);
      if (v21 == CFBooleanGetTypeID())
      {
        LODWORD(v19) = CFBooleanGetValue(v19);
      }

      else
      {
        LODWORD(v19) = 0;
      }
    }

    v22 = CFDictionaryGetValue(v8, @"has_prompted_for_allow");
    v18 = v22;
    if (v22)
    {
      v54 = a1;
      v23 = v8;
      v24 = a2;
      v25 = a3;
      v26 = v19;
      v27 = a5;
      v28 = v16;
      v29 = a6;
      v30 = CFGetTypeID(v22);
      LOBYTE(v18) = v30 == CFBooleanGetTypeID() && CFBooleanGetValue(v18) != 0;
      a6 = v29;
      v16 = v28;
      a5 = v27;
      LODWORD(v19) = v26;
      a3 = v25;
      a2 = v24;
      v8 = v23;
      a1 = v54;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    LODWORD(v19) = 0;
    v16 = 0;
  }

  v31 = stringCopyUTF8String(a1);
  if (!v31)
  {
    goto LABEL_56;
  }

  values[0] = xpc_string_create("TCCAccessSetInternal");
  if (!values[0])
  {
    goto LABEL_56;
  }

  values[1] = xpc_string_create(v31);
  if (!values[1])
  {
    goto LABEL_56;
  }

  v32 = a2 ? xpc_string_create(a2) : xpc_null_create();
  *&v62 = v32;
  if (!v32)
  {
    goto LABEL_56;
  }

  v33 = a3 ? xpc_string_create(a3) : xpc_null_create();
  *(&v62 + 1) = v33;
  if (!v33)
  {
    goto LABEL_56;
  }

  v34 = a4 ? xpc_data_create(a4, 0x20uLL) : xpc_null_create();
  *&v63 = v34;
  if (!v34)
  {
    goto LABEL_56;
  }

  *(&v63 + 1) = xpc_BOOL_create(a5 != 0);
  if (!*(&v63 + 1))
  {
    goto LABEL_56;
  }

  if (a6)
  {
    BytePtr = CFDataGetBytePtr(a6);
    v36 = a6;
    v37 = BytePtr;
    Length = CFDataGetLength(v36);
    v39 = xpc_data_create(v37, Length);
  }

  else
  {
    v39 = xpc_null_create();
  }

  *&v64 = v39;
  if (!v39)
  {
    goto LABEL_56;
  }

  *(&v64 + 1) = xpc_null_create();
  if (!*(&v64 + 1))
  {
    goto LABEL_56;
  }

  *&v65 = xpc_null_create();
  if (!v65)
  {
    goto LABEL_56;
  }

  *(&v65 + 1) = xpc_null_create();
  if (*(&v65 + 1) && (*&v66 = xpc_uint64_create(0), v66) && (*(&v66 + 1) = xpc_int64_create(v16)) != 0 && (*&v67 = xpc_BOOL_create(v19 != 0), v67) && (*(&v67 + 1) = xpc_null_create()) != 0 && (*&v68 = xpc_BOOL_create(v18), v68) && (v40 = xpc_dictionary_create(keys, values, 0xFuLL)) != 0)
  {
    v41 = v40;
    v42 = tccd();
    if (v42)
    {
      v43 = v42;
      if (v8)
      {
        v44 = CFDictionaryGetValue(v8, @"auth_value");
        if (v44)
        {
          v45 = v44;
          v46 = CFGetTypeID(v44);
          if (v46 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v45, kCFNumberLongLongType, &valuePtr) != 1)
            {
              if (tcc_log_handle_onceToken != -1)
              {
                tccd_send_message_cold_2();
              }

              if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
              {
                TCCAccessSetInternal_cold_2();
              }
            }

            xpc_dictionary_set_uint64(v41, "auth_value", valuePtr);
            xpc_dictionary_set_uint64(v41, "TCCD_MSG_SPI_VERSION", 2uLL);
          }
        }
      }

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 0x40000000;
      v55[2] = __TCCAccessSetInternal_block_invoke;
      v55[3] = &unk_1E7AE0240;
      v55[4] = &v57;
      tccd_set_message_number(v41);
      tccd_send_message(v43, 0, v41, v55, 7, 0);
      free(v31);
      xpc_release(v41);
      v47 = v43;
    }

    else
    {
      free(v31);
      v47 = v41;
    }

    xpc_release(v47);
  }

  else
  {
LABEL_56:
    free(v31);
  }

  v48 = values[0];
  if (values[0])
  {
    v49 = &values[1];
    do
    {
      xpc_release(v48);
      v50 = *v49++;
      v48 = v50;
    }

    while (v50);
  }

  v51 = *(v58 + 24);
  _Block_object_dispose(&v57, 8);
  v52 = *MEMORY[0x1E69E9840];
  return v51;
}

void __TCCAccessSetInternal_block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessSetInternal_block_invoke_cold_2(a2);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "result");
  }
}

uint64_t TCCAccessSetForBundle(uint64_t a1, CFBundleRef bundle, char a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  Identifier = CFBundleGetIdentifier(bundle);
  if (Identifier && (v7 = Identifier, (v8 = CFBundleCopyBundleURL(bundle)) != 0))
  {
    v9 = v8;
    values = v8;
    keys[0] = @"bundle_url";
    v10 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], 0);
    v11 = TCCAccessSetForBundleIdWithOptions(a1, v7, a3, v10);
    CFRelease(v9);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t TCCAccessSetForBundleIdWithOptions(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v7 = stringCopyUTF8String(a2);
  v8 = v7;
  if (v7)
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 0x40000000;
    activity_block[2] = __TCCAccessSetForBundleIdWithOptions_block_invoke;
    activity_block[3] = &unk_1E7AE0268;
    activity_block[4] = &v13;
    activity_block[5] = a1;
    v12 = a3;
    activity_block[6] = v7;
    activity_block[7] = a4;
    _os_activity_initiate(&dword_1B1686000, "TCCAccessSetForBundleIdWithOptions() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
  }

  free(v8);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

uint64_t __TCCAccessSetForBundleIdWithOptions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  result = TCCAccessSetInternal(*(a1 + 40), "bundle", *(a1 + 48), 0, *(a1 + 64), 0, a7, *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TCCAccessSetForPathWithOptions(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v7 = stringCopyUTF8String(a2);
  v8 = v7;
  if (v7)
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 0x40000000;
    activity_block[2] = __TCCAccessSetForPathWithOptions_block_invoke;
    activity_block[3] = &unk_1E7AE0290;
    activity_block[4] = &v13;
    activity_block[5] = a1;
    v12 = a3;
    activity_block[6] = v7;
    activity_block[7] = a4;
    _os_activity_initiate(&dword_1B1686000, "TCCAccessSetForPathWithOptions() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
  }

  free(v8);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

uint64_t __TCCAccessSetForPathWithOptions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  result = TCCAccessSetInternal(*(a1 + 40), "path", *(a1 + 48), 0, *(a1 + 64), 0, a7, *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TCCAccessSetForAuditToken(uint64_t a1, __int128 *a2, char a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __TCCAccessSetForAuditToken_block_invoke;
  activity_block[3] = &unk_1E7AE02B8;
  activity_block[4] = &v10;
  activity_block[5] = a1;
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  v9 = a3;
  _os_activity_initiate(&dword_1B1686000, "TCCAccessSetForAuditToken() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
  v4 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t __TCCAccessSetForAuditToken_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  result = TCCAccessSetInternal(*(a1 + 40), 0, 0, (a1 + 48), *(a1 + 80), 0, a7, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TCCAccessSetForAuditTokenWithOptions(uint64_t a1, __int128 *a2, char a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v4 = a2[1];
  v8 = *a2;
  v7[2] = __TCCAccessSetForAuditTokenWithOptions_block_invoke;
  v7[3] = &unk_1E7AE02E0;
  v7[4] = &v11;
  v7[5] = a1;
  v9 = v4;
  v10 = a3;
  v7[6] = a4;
  _os_activity_initiate(&dword_1B1686000, "TCCAccessSetForAuditToken() IPC", OS_ACTIVITY_FLAG_DETACHED, v7);
  v5 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t __TCCAccessSetForAuditTokenWithOptions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  result = TCCAccessSetInternal(*(a1 + 40), 0, 0, (a1 + 56), *(a1 + 88), 0, a7, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t TCCAccessSetOverride(const __CFString *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  *keys = xmmword_1E7AE0300;
  v23 = "override";
  *values = 0u;
  v21 = 0u;
  v3 = stringCopyUTF8String(a1);
  if (v3 && (values[0] = xpc_string_create("TCCAccessSetOverride")) != 0 && (values[1] = xpc_string_create(v3)) != 0 && (*&v21 = xpc_BOOL_create(a2 != 0), v21) && (v4 = xpc_dictionary_create(keys, values, 3uLL)) != 0)
  {
    v5 = v4;
    v6 = tccd();
    if (v6)
    {
      v7 = v6;
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 0x40000000;
      activity_block[2] = __TCCAccessSetOverride_block_invoke;
      activity_block[3] = &unk_1E7AE0348;
      activity_block[5] = v6;
      activity_block[6] = v5;
      activity_block[4] = &v16;
      _os_activity_initiate(&dword_1B1686000, "TCCAccessSetOverride() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
      free(v3);
      xpc_release(v5);
      v8 = v7;
    }

    else
    {
      free(v3);
      v8 = v5;
    }

    xpc_release(v8);
  }

  else
  {
    free(v3);
  }

  v9 = values[0];
  if (values[0])
  {
    v10 = &values[1];
    do
    {
      xpc_release(v9);
      v11 = *v10++;
      v9 = v11;
    }

    while (v11);
  }

  v12 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __TCCAccessSetOverride_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCAccessSetOverride_block_invoke_2;
  v3[3] = &unk_1E7AE0320;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCAccessSetOverride_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessSetOverride_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "result");
  }
}

void __TCCAccessGetOverride_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __TCCAccessGetOverride_block_invoke_2;
  v4[3] = &unk_1E7AE0370;
  v3 = a1[7];
  v4[4] = a1[4];
  v4[5] = v3;
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v4, 7, 0);
}

CFMutableSetRef TCCAccessCopyOverrides()
{
  keys[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v18 = 0;
  keys[0] = "function";
  values = xpc_string_create("TCCAccessGetOverrides");
  if (values)
  {
    v0 = xpc_dictionary_create(keys, &values, 1uLL);
    if (v0)
    {
      v1 = v0;
      v2 = tccd();
      if (v2)
      {
        v3 = v2;
        activity_block[0] = MEMORY[0x1E69E9820];
        activity_block[1] = 0x40000000;
        activity_block[2] = __TCCGetOverridesInternal_block_invoke;
        activity_block[3] = &unk_1E7AE0818;
        activity_block[5] = v2;
        activity_block[6] = v1;
        activity_block[4] = &v13;
        _os_activity_initiate(&dword_1B1686000, "TCCAccessGetOverrides() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
        xpc_release(v3);
      }

      xpc_release(v1);
    }

    v4 = values;
    if (values)
    {
      v5 = &v18;
      do
      {
        xpc_release(v4);
        v6 = *v5++;
        v4 = v6;
      }

      while (v6);
    }
  }

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9F8]);
    v20.length = CFArrayGetCount(v7);
    v20.location = 0;
    CFArrayApplyFunction(v7, v20, _append_override, Mutable);
    CFRelease(v7);
  }

  else
  {
    Mutable = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void _append_override(const void *a1, __CFSet *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {

    CFSetSetValue(a2, a1);
  }

  else
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      _append_override_cold_2();
    }
  }
}

uint64_t TCCAccessResetForBundle(const __CFString *a1, CFBundleRef bundle)
{
  Identifier = CFBundleGetIdentifier(bundle);
  if (Identifier)
  {
    v4 = stringCopyUTF8String(Identifier);
    if (v4)
    {
      v5 = TCCResetInternal("TCCAccessResetInternal", a1, "bundle", v4, 0);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  free(v4);
  return v5;
}

uint64_t TCCAccessResetForBundleId(const __CFString *a1, const __CFString *a2)
{
  v3 = stringCopyUTF8String(a2);
  if (v3)
  {
    v4 = TCCResetInternal("TCCAccessResetInternal", a1, "bundle", v3, 0);
  }

  else
  {
    v4 = 0;
  }

  free(v3);
  return v4;
}

uint64_t TCCAccessResetForBundleIdWithAuditToken(const __CFString *a1, const __CFString *a2)
{
  v3 = stringCopyUTF8String(a2);
  if (v3)
  {
    v4 = TCCResetInternal("TCCAccessResetInternal", a1, "bundle", v3, 0);
  }

  else
  {
    v4 = 0;
  }

  free(v3);
  return v4;
}

uint64_t TCCAccessResetForPath(const __CFString *a1, const __CFString *a2)
{
  v3 = stringCopyUTF8String(a2);
  if (v3)
  {
    v4 = TCCResetInternal("TCCAccessResetInternal", a1, "path", v3, 0);
  }

  else
  {
    v4 = 0;
  }

  free(v3);
  return v4;
}

uint64_t TCCAccessResetForBundleIdWithOptions(const __CFString *a1, const __CFString *a2, const __CFDictionary *a3)
{
  v5 = stringCopyUTF8String(a2);
  if (v5)
  {
    v6 = TCCResetInternal("TCCAccessResetInternal", a1, "bundle", v5, a3);
  }

  else
  {
    v6 = 0;
  }

  free(v5);
  return v6;
}

uint64_t TCCAccessDeclarePolicy(const __CFUUID *a1, const __CFString *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  uuid = CFUUIDGetUUIDBytes(a1);
  v24 = "display";
  v22 = 0u;
  *keys = xmmword_1E7AE03B8;
  *values = 0u;
  v3 = stringCopyUTF8String(a2);
  if (v3 && (values[0] = xpc_string_create("TCCAccessDeclarePolicy")) != 0 && (values[1] = xpc_uuid_create(&uuid.byte0)) != 0 && (*&v22 = xpc_string_create(v3), v22) && (v4 = xpc_dictionary_create(keys, values, 3uLL)) != 0)
  {
    v5 = v4;
    v6 = tccd();
    if (v6)
    {
      v7 = v6;
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 0x40000000;
      activity_block[2] = __TCCAccessDeclarePolicy_block_invoke;
      activity_block[3] = &unk_1E7AE0400;
      activity_block[5] = v6;
      activity_block[6] = v5;
      activity_block[4] = &v17;
      _os_activity_initiate(&dword_1B1686000, "TCCAccessDeclarePolicy() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
      free(v3);
      xpc_release(v5);
      v8 = v7;
    }

    else
    {
      free(v3);
      v8 = v5;
    }

    xpc_release(v8);
  }

  else
  {
    free(v3);
  }

  v9 = values[0];
  if (values[0])
  {
    v10 = &values[1];
    do
    {
      xpc_release(v9);
      v11 = *v10++;
      v9 = v11;
    }

    while (v11);
  }

  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __TCCAccessDeclarePolicy_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCAccessDeclarePolicy_block_invoke_2;
  v3[3] = &unk_1E7AE03D8;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCAccessDeclarePolicy_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessDeclarePolicy_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "result");
  }
}

uint64_t TCCAccessSelectPolicyForExtensionWithIdentifier(const __CFUUID *a1, const __CFString *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  uuid = CFUUIDGetUUIDBytes(a1);
  v24 = "bundle_id";
  v22 = 0u;
  *keys = xmmword_1E7AE0420;
  *values = 0u;
  v3 = stringCopyUTF8String(a2);
  if (v3 && (values[0] = xpc_string_create("TCCAccessSelectPolicyForExtensionWithIdentifier")) != 0 && (values[1] = xpc_uuid_create(&uuid.byte0)) != 0 && (*&v22 = xpc_string_create(v3), v22) && (v4 = xpc_dictionary_create(keys, values, 3uLL)) != 0)
  {
    v5 = v4;
    v6 = tccd();
    if (v6)
    {
      v7 = v6;
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 0x40000000;
      activity_block[2] = __TCCAccessSelectPolicyForExtensionWithIdentifier_block_invoke;
      activity_block[3] = &unk_1E7AE0468;
      activity_block[5] = v6;
      activity_block[6] = v5;
      activity_block[4] = &v17;
      _os_activity_initiate(&dword_1B1686000, "TCCAccessSelectPolicyForExtensionWithIdentifier() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
      free(v3);
      xpc_release(v5);
      v8 = v7;
    }

    else
    {
      free(v3);
      v8 = v5;
    }

    xpc_release(v8);
  }

  else
  {
    free(v3);
  }

  v9 = values[0];
  if (values[0])
  {
    v10 = &values[1];
    do
    {
      xpc_release(v9);
      v11 = *v10++;
      v9 = v11;
    }

    while (v11);
  }

  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __TCCAccessSelectPolicyForExtensionWithIdentifier_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCAccessSelectPolicyForExtensionWithIdentifier_block_invoke_2;
  v3[3] = &unk_1E7AE0440;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCAccessSelectPolicyForExtensionWithIdentifier_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessSelectPolicyForExtensionWithIdentifier_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "result");
  }
}

_xpc_connection_s *TCCAccessResetPoliciesExcept(const __CFArray *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E7AE0488;
  values = 0;
  v13[0] = 0;
  v13[1] = 0;
  result = xpc_array_create(0, 0);
  if (result)
  {
    v3 = result;
    v16.length = CFArrayGetCount(a1);
    v16.location = 0;
    CFArrayApplyFunction(a1, v16, _append_policy, v3);
    values = xpc_string_create("TCCAccessResetPoliciesExcept");
    if (values)
    {
      v13[0] = xpc_retain(v3);
      if (v13[0])
      {
        v4 = xpc_dictionary_create(keys, &values, 2uLL);
        if (v4)
        {
          v5 = v4;
          v6 = tccd();
          if (v6)
          {
            v7 = v6;
            activity_block[0] = MEMORY[0x1E69E9820];
            activity_block[1] = 0x40000000;
            activity_block[2] = __TCCAccessResetPoliciesExcept_block_invoke;
            activity_block[3] = &__block_descriptor_tmp_418;
            activity_block[4] = v6;
            activity_block[5] = v5;
            _os_activity_initiate(&dword_1B1686000, "TCCAccessResetPoliciesExcept() IPC", OS_ACTIVITY_FLAG_DETACHED, activity_block);
            xpc_release(v3);
            v3 = v5;
            v5 = v7;
          }

          xpc_release(v3);
          v3 = v5;
        }
      }
    }

    xpc_release(v3);
    result = values;
  }

  if (result)
  {
    v8 = v13;
    do
    {
      xpc_release(result);
      v9 = *v8++;
      result = v9;
    }

    while (v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __TCCAccessResetPoliciesExcept_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  tccd_set_message_number(v2);

  tccd_send_message(v1, 0, v2, &__block_literal_global_417, 7, 0);
}

void __TCCAccessResetPoliciesExcept_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessResetPoliciesExcept_block_invoke_2_cold_2(a2);
    }
  }
}

uint64_t TCCExpirationCopyInformationForService(const __CFString *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  values = 0;
  *keys = xmmword_1E7AE04D8;
  v19[0] = 0;
  v19[1] = 0;
  v1 = stringCopyUTF8String(a1);
  if (v1 && (values = xpc_string_create("TCCExpirationCopyInformationForService")) != 0 && (v19[0] = xpc_string_create(v1)) != 0 && (v2 = xpc_dictionary_create(keys, &values, 2uLL)) != 0)
  {
    v3 = v2;
    v4 = tccd();
    if (v4)
    {
      v5 = v4;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __TCCExpirationCopyInformationForService_block_invoke;
      v13[3] = &unk_1E7AE0518;
      v13[5] = v4;
      v13[6] = v3;
      v13[4] = &v14;
      _os_activity_initiate(&dword_1B1686000, "TCCExpirationCopyInformationForService() IPC", OS_ACTIVITY_FLAG_DETACHED, v13);
      free(v1);
      xpc_release(v3);
      v6 = v5;
    }

    else
    {
      free(v1);
      v6 = v3;
    }

    xpc_release(v6);
  }

  else
  {
    free(v1);
  }

  v7 = values;
  if (values)
  {
    v8 = v19;
    do
    {
      xpc_release(v7);
      v9 = *v8++;
      v7 = v9;
    }

    while (v9);
  }

  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __TCCExpirationCopyInformationForService_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCExpirationCopyInformationForService_block_invoke_2;
  v3[3] = &unk_1E7AE04F0;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCExpirationCopyInformationForService_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCExpirationCopyInformationForService_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(a2, "clients");
    if (value)
    {
      *(*(*(a1 + 32) + 8) + 24) = TCCAccessCopyInformationInternal(value);
    }
  }
}

uint64_t TCCExpirationResetServiceForBundleIdentifier(const __CFString *a1, const __CFString *a2)
{
  v3 = stringCopyUTF8String(a2);
  if (v3)
  {
    v4 = TCCResetInternal("TCCExpirationReset", a1, "bundle", v3, 0);
  }

  else
  {
    v4 = 0;
  }

  free(v3);
  return v4;
}

uint64_t TCCExpirationResetServiceForPath(const __CFString *a1, const __CFString *a2)
{
  v3 = stringCopyUTF8String(a2);
  if (v3)
  {
    v4 = TCCResetInternal("TCCExpirationReset", a1, "path", v3, 0);
  }

  else
  {
    v4 = 0;
  }

  free(v3);
  return v4;
}

uint64_t TCCServiceCopyDescriptions(const __CFString *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  values = 0;
  *keys = xmmword_1E7AE0538;
  v19[0] = 0;
  v19[1] = 0;
  if (a1)
  {
    v1 = stringCopyUTF8String(a1);
    if (!v1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = 0;
  }

  values = xpc_string_create("TCCServiceCopyDescriptions");
  if (!values)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = xpc_string_create(v1);
  }

  else
  {
    v2 = xpc_null_create();
  }

  v19[0] = v2;
  if (v2)
  {
    v3 = xpc_dictionary_create(keys, &values, 2uLL);
    if (v3)
    {
      v4 = v3;
      v5 = tccd();
      if (v5)
      {
        v6 = v5;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 0x40000000;
        v13[2] = __TCCServiceCopyDescriptions_block_invoke;
        v13[3] = &unk_1E7AE0578;
        v13[5] = v5;
        v13[6] = v4;
        v13[4] = &v14;
        _os_activity_initiate(&dword_1B1686000, "TCCServiceCopyDescriptions() IPC", OS_ACTIVITY_FLAG_DETACHED, v13);
        xpc_release(v4);
        v4 = v6;
      }

      xpc_release(v4);
    }
  }

LABEL_14:
  v7 = values;
  if (values)
  {
    v8 = v19;
    do
    {
      xpc_release(v7);
      v9 = *v8++;
      v7 = v9;
    }

    while (v9);
  }

LABEL_17:
  free(v1);
  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __TCCServiceCopyDescriptions_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCServiceCopyDescriptions_block_invoke_2;
  v3[3] = &unk_1E7AE0550;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCServiceCopyDescriptions_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCServiceCopyDescriptions_block_invoke_2_cold_4(a2);
    }
  }

  else if (xpc_dictionary_get_value(a2, "service_descriptions"))
  {
    if (MEMORY[0x1B2732690]() == MEMORY[0x1E69E9E50])
    {
      *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tcc_log_handle_cold_1();
      }

      if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
      {
        __TCCServiceCopyDescriptions_block_invoke_2_cold_2();
      }
    }
  }
}

CFArrayRef TCCServiceCopyNames(const __CFString *a1)
{
  v1 = TCCServiceCopyDescriptions(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    if (CFArrayGetCount(v2) >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        Value = CFDictionaryGetValue(ValueAtIndex, @"name");
        if (Value)
        {
          CFArrayAppendValue(v5, Value);
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(v2));
    }

    CFRelease(v2);
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v5);
  }

  else
  {
    Copy = 0;
    v5 = v2;
  }

  CFRelease(v5);
  return Copy;
}

uint64_t TCCTestInternalWithReplyHander4(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = stringCopyUTF8String(a2);
  v15 = tccd();
  v16 = v15;
  if (v13 && v14 && v15)
  {
    xpc_dictionary_set_string(v13, "function", "TCCTestInternal");
    xpc_dictionary_set_string(v13, "operation", v14);
    if (a3)
    {
      (*(a3 + 16))(a3, v13, "arg1");
    }

    if (a4)
    {
      (*(a4 + 16))(a4, v13, "arg2");
    }

    if (a5)
    {
      (*(a5 + 16))(a5, v13, "arg3");
    }

    if (a6)
    {
      (*(a6 + 16))(a6, v13, "arg4");
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = __TCCTestInternalWithReplyHander4_block_invoke;
    v19[3] = &unk_1E7AE05C8;
    v19[6] = v16;
    v19[7] = v13;
    v19[4] = a7;
    v19[5] = &v20;
    _os_activity_initiate(&dword_1B1686000, "TCCTestInternal() IPC", OS_ACTIVITY_FLAG_DETACHED, v19);
  }

  else if (!v14)
  {
    goto LABEL_15;
  }

  free(v14);
LABEL_15:
  if (v13)
  {
    xpc_release(v13);
  }

  if (v16)
  {
    xpc_release(v16);
  }

  v17 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v17;
}

void __TCCTestInternalWithReplyHander4_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCTestInternalWithReplyHander4_block_invoke_2;
  v3[3] = &unk_1E7AE05A0;
  v4 = *(a1 + 32);
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCTestInternalWithReplyHander4_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCTestInternalWithReplyHander4_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "result");
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(*(*(a1 + 40) + 8) + 24);
      v6 = *(v4 + 16);

      v6();
    }
  }
}

uint64_t TCCCopyIconResourcePathForService(unsigned int a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  *keys = xmmword_1E7AE05E8;
  v31 = "badgeWithPrivacyHand";
  *values = 0u;
  v29 = 0u;
  if (tcc_log_handle_onceToken != -1)
  {
    tccd_send_message_cold_2();
  }

  v4 = tcc_client_log;
  if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = TCCAuthPromptIconString(a1);
    v6 = "YES";
    *buf = 136446722;
    v23 = "TCCCopyIconResourcePathForService";
    v24 = 2080;
    if (!a2)
    {
      v6 = "NO";
    }

    v25 = v5;
    v26 = 2080;
    v27 = v6;
    _os_log_impl(&dword_1B1686000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s Requesting icon for %s; badgeWithPrivacyHand: %s", buf, 0x20u);
  }

  values[0] = xpc_string_create("TCCCopyIconResourcePathForService");
  if (values[0] && (values[1] = xpc_int64_create(a1)) != 0 && (*&v29 = xpc_BOOL_create(a2 != 0), v29))
  {
    v7 = xpc_dictionary_create(keys, values, 3uLL);
    if (v7)
    {
      v8 = tccd();
      if (v8)
      {
        v9 = v8;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = __TCCCopyIconResourcePathForService_block_invoke;
        v16[3] = &unk_1E7AE0630;
        v16[5] = v8;
        v16[6] = v7;
        v16[4] = &v18;
        v17 = a1;
        _os_activity_initiate(&dword_1B1686000, "TCCCopyIconResourcePathForService() Sync IPC", OS_ACTIVITY_FLAG_DETACHED, v16);
        xpc_release(v7);
        v7 = v9;
LABEL_19:
        xpc_release(v7);
        goto LABEL_20;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (tcc_log_handle_onceToken != -1)
  {
    tccd_send_message_cold_2();
  }

  if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
  {
    TCCCopyIconResourcePathForService_cold_3();
  }

  if (v7)
  {
    goto LABEL_19;
  }

LABEL_20:
  v10 = values[0];
  if (values[0])
  {
    v11 = &values[1];
    do
    {
      xpc_release(v10);
      v12 = *v11++;
      v10 = v12;
    }

    while (v12);
  }

  v13 = v19[3];
  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

char *TCCAuthPromptIconString(unsigned int a1)
{
  if (a1 > 0x17)
  {
    return 0;
  }

  else
  {
    return off_1E7AE08B8[a1];
  }
}

void __TCCCopyIconResourcePathForService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCCopyIconResourcePathForService_block_invoke_2;
  v3[3] = &unk_1E7AE0608;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 56);
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 4, 0);
}

void __TCCCopyIconResourcePathForService_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCCopyIconResourcePathForService_block_invoke_2_cold_4(a2);
    }
  }

  else
  {
    string = xpc_dictionary_get_string(a2, "pathToIconFile");
    if (string)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
    }

    else
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tcc_log_handle_cold_1();
      }

      if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
      {
        __TCCCopyIconResourcePathForService_block_invoke_2_cold_2(a1);
      }
    }
  }
}

uint64_t TCCAuthPromptIconFromServiceName(const __CFString *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = stringCopyUTF8String(a1);
  v2 = strlen(v1);
  v3 = malloc_type_malloc(v2, 0x100004077774924uLL);
  v4 = strstr(v1, "kTCCService");
  if (!v3)
  {
    TCCAuthPromptIconFromServiceName_cold_2();
  }

  if (v4)
  {
    v5 = v4 + 11;
    v6 = &v1[strlen(v1)] - (v4 + 11);
    strncpy(v3, v5, v6);
    v3[v6] = 0;
  }

  else
  {
    strcpy(v3, v1);
  }

  if (!strcmp("Location", v3))
  {
    LODWORD(v7) = 0;
  }

  else
  {
    LODWORD(v7) = 24;
  }

  if (!strcmp("UserTracking", v3))
  {
    LODWORD(v7) = 1;
  }

  if (!strcmp("AddressBook", v3))
  {
    LODWORD(v7) = 2;
  }

  if (!strcmp("Calendar", v3))
  {
    LODWORD(v7) = 3;
  }

  if (!strcmp("ContactlessAccess", v3))
  {
    LODWORD(v7) = 4;
  }

  if (!strcmp("ContactlessAccessPayments", v3))
  {
    LODWORD(v7) = 5;
  }

  if (!strcmp("FocusStatus", v3))
  {
    LODWORD(v7) = 6;
  }

  if (!strcmp("Willow", v3))
  {
    LODWORD(v7) = 7;
  }

  if (!strcmp("MediaLibrary", v3))
  {
    LODWORD(v7) = 8;
  }

  if (!strcmp("WebBrowserPublicKeyCredential", v3))
  {
    LODWORD(v7) = 9;
  }

  if (!strcmp("Photos", v3))
  {
    LODWORD(v7) = 10;
  }

  if (!strcmp("PhotosAdd", v3))
  {
    LODWORD(v7) = 11;
  }

  if (!strcmp("Reminders", v3))
  {
    LODWORD(v7) = 12;
  }

  if (!strcmp("FinancialData", v3))
  {
    LODWORD(v7) = 13;
  }

  if (!strcmp("PKPassLibraryBackgroundAddPasses", v3))
  {
    LODWORD(v7) = 14;
  }

  if (!strcmp("BluetoothAlways", v3))
  {
    LODWORD(v7) = 15;
  }

  if (!strcmp("Camera", v3))
  {
    LODWORD(v7) = 16;
  }

  if (!strcmp("Microphone", v3))
  {
    LODWORD(v7) = 17;
  }

  if (!strcmp("Motion", v3))
  {
    LODWORD(v7) = 18;
  }

  if (!strcmp("NearbyInteraction", v3))
  {
    LODWORD(v7) = 19;
  }

  if (!strcmp("SensorKitBedSensingWriting", v3))
  {
    LODWORD(v7) = 20;
  }

  if (!strcmp("SpeechRecognition", v3))
  {
    LODWORD(v7) = 21;
  }

  if (!strcmp("Thunderbolt", v3))
  {
    LODWORD(v7) = 22;
  }

  if (!strcmp("USB", v3))
  {
    v7 = 23;
  }

  else
  {
    v7 = v7;
  }

  if (tcc_log_handle_onceToken != -1)
  {
    tcc_log_handle_cold_1();
  }

  v8 = tcc_client_log;
  if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446722;
    v12 = "TCCAuthPromptIconFromServiceName";
    v13 = 2082;
    v14 = v3;
    v15 = 1026;
    v16 = v7;
    _os_log_impl(&dword_1B1686000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: icon for %{public}s (rawValue: %{public}d)", &v11, 0x1Cu);
  }

  free(v3);
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t TCCAccessResetAll()
{
  keys[1] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v14 = 0;
  keys[0] = "function";
  values = xpc_string_create("TCCAccessResetAll");
  if (values)
  {
    v0 = xpc_dictionary_create(keys, &values, 1uLL);
    if (v0)
    {
      v1 = v0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = __TCCAccessResetAll_block_invoke;
      v8[3] = &unk_1E7AE0680;
      v8[4] = &v9;
      v8[5] = v0;
      _os_activity_initiate(&dword_1B1686000, "TCCResetAll() IPC", OS_ACTIVITY_FLAG_DETACHED, v8);
      xpc_release(v1);
    }

    v2 = values;
    if (values)
    {
      v3 = &v14;
      do
      {
        xpc_release(v2);
        v4 = *v3++;
        v2 = v4;
      }

      while (v4);
    }
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __TCCAccessResetAll_block_invoke(uint64_t a1)
{
  v2 = tccd();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __TCCAccessResetAll_block_invoke_2;
  v4[3] = &unk_1E7AE0658;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  tccd_set_message_number(v3);
  tccd_send_message(v2, 0, v3, v4, 7, 0);
}

void __TCCAccessResetAll_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCAccessResetAll_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "result");
  }
}

uint64_t TCCIntegrityFlagCheck(void *a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "function", "TCCIntegrityFlagCheck");
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = tccd();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __TCCIntegrityFlagCheck_block_invoke;
  v7[3] = &unk_1E7AE06A8;
  v7[4] = &v8;
  v7[5] = &v12;
  tccd_set_message_number(empty);
  tccd_send_message(v3, 0, empty, v7, 7, 0);
  v4 = v9;
  v5 = *(v9 + 24);
  if (a1 && *(v9 + 24))
  {
    *a1 = v13[3];
    v5 = *(v4 + 24);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void __TCCIntegrityFlagCheck_block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCIntegrityFlagCheck_block_invoke_cold_4(a2);
    }
  }

  else if (xpc_dictionary_get_BOOL(a2, "success"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (xpc_dictionary_get_BOOL(a2, "result"))
    {
      *(*(*(a1 + 40) + 8) + 24) |= 2uLL;
    }
  }

  else
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCIntegrityFlagCheck_block_invoke_cold_2();
    }
  }
}

uint64_t TCCIntegrityFlagReset()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "function", "TCCIntegrityFlagReset");
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = tccd();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __TCCIntegrityFlagReset_block_invoke;
  v4[3] = &unk_1E7AE06D0;
  v4[4] = &v5;
  tccd_set_message_number(empty);
  tccd_send_message(v1, 0, empty, v4, 7, 0);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __TCCIntegrityFlagReset_block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCIntegrityFlagReset_block_invoke_cold_4(a2);
    }
  }

  else if (xpc_dictionary_get_BOOL(a2, "success"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCIntegrityFlagReset_block_invoke_cold_2();
    }
  }
}

void __TCCGetOverridesInternal_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCGetOverridesInternal_block_invoke_2;
  v3[3] = &unk_1E7AE07F0;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCGetOverridesInternal_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCGetOverridesInternal_block_invoke_2_cold_4(a2);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(a2, "overrides");
    if (value && MEMORY[0x1B2732690](value) == MEMORY[0x1E69E9E50])
    {
      *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      if (tcc_log_handle_onceToken != -1)
      {
        tcc_log_handle_cold_1();
      }

      if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
      {
        __TCCGetOverridesInternal_block_invoke_2_cold_2();
      }
    }
  }
}

uint64_t TCCResetInternal(const char *a1, const __CFString *cf1, const char *a3, const char *a4, const __CFDictionary *a5)
{
  v10 = CFEqual(cf1, kTCCServiceAll);
  v11 = tccd();
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      v13 = TCCResetInternalWithConnection(v11, a1, cf1, a3, a4, a5);
      xpc_release(v12);
      if (!v13)
      {
        return v13;
      }

      v12 = tccd();
      if (!v12)
      {
        return v13;
      }

LABEL_7:
      v14 = TCCResetInternalWithConnection(v12, a1, cf1, a3, a4, a5);
      xpc_release(v12);
      return v14;
    }
  }

  else if (v11)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t TCCResetInternalWithConnection(uint64_t a1, const char *a2, const __CFString *a3, const char *a4, const char *a5, CFDictionaryRef theDict)
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  valuePtr = 1;
  v34 = 0;
  *keys = xmmword_1E7AE0838;
  v40 = *&off_1E7AE0848;
  v41 = xmmword_1E7AE0858;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *values = 0u;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kTCCSetNoKill);
    v13 = Value;
    if (Value)
    {
      v14 = CFGetTypeID(Value);
      if (v14 == CFBooleanGetTypeID())
      {
        LODWORD(v13) = CFBooleanGetValue(v13);
      }

      else
      {
        LODWORD(v13) = 0;
      }
    }

    v15 = CFDictionaryGetValue(theDict, kTCCResetSyncAuth);
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID() && !CFNumberGetValue(v16, kCFNumberSInt64Type, &valuePtr))
      {
        if (tcc_log_handle_onceToken != -1)
        {
          tccd_send_message_cold_2();
        }

        if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
        {
          TCCResetInternalWithConnection_cold_2();
        }
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  v18 = stringCopyUTF8String(a3);
  if (!v18)
  {
    goto LABEL_29;
  }

  values[0] = xpc_string_create(a2);
  if (!values[0])
  {
    goto LABEL_29;
  }

  values[1] = xpc_string_create(v18);
  if (!values[1])
  {
    goto LABEL_29;
  }

  v19 = a4 ? xpc_string_create(a4) : xpc_null_create();
  *&v36 = v19;
  if (v19 && (!a5 ? (v20 = xpc_null_create()) : (v20 = xpc_string_create(a5)), (*(&v36 + 1) = v20) != 0 && (*&v37 = xpc_BOOL_create(v13 != 0), v37) && (*(&v37 + 1) = xpc_int64_create(valuePtr)) != 0 && (v21 = xpc_dictionary_create(keys, values, 6uLL)) != 0))
  {
    v22 = v21;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = __TCCResetInternalWithConnection_block_invoke;
    v29[3] = &unk_1E7AE0898;
    v29[5] = a1;
    v29[6] = v21;
    v29[4] = &v31;
    _os_activity_initiate(&dword_1B1686000, "TCCResetInternal() IPC", OS_ACTIVITY_FLAG_DETACHED, v29);
    free(v18);
    xpc_release(v22);
  }

  else
  {
LABEL_29:
    free(v18);
  }

  v23 = values[0];
  if (values[0])
  {
    v24 = &values[1];
    do
    {
      xpc_release(v23);
      v25 = *v24++;
      v23 = v25;
    }

    while (v25);
  }

  v26 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

void __TCCResetInternalWithConnection_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TCCResetInternalWithConnection_block_invoke_2;
  v3[3] = &unk_1E7AE0870;
  v3[4] = a1[4];
  tccd_set_message_number(v2);
  tccd_send_message(v1, 0, v2, v3, 7, 0);
}

void __TCCResetInternalWithConnection_block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    if (tcc_log_handle_onceToken != -1)
    {
      tcc_log_handle_cold_1();
    }

    if (os_log_type_enabled(tcc_client_log, OS_LOG_TYPE_ERROR))
    {
      __TCCResetInternalWithConnection_block_invoke_2_cold_2(a2);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "result");
  }
}

void _append_policy(const __CFUUID *a1, void *a2)
{
  v4 = CFUUIDGetUUIDBytes(a1);
  v3 = xpc_uuid_create(&v4.byte0);
  xpc_array_append_value(a2, v3);
}

void tcc_metrics_create()
{
  tcc_metrics_alloc(72, &tcc_metrics_object_ops);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
}

void *tcc_metrics_set_service_name(uint64_t a1, CFTypeRef cf)
{
  v3 = CFRetain(cf);
  *(a1 + 56) = v3;
  result = stringCopyUTF8String(v3);
  *(a1 + 64) = result;
  return result;
}

void tcc_metrics_dispose(uint64_t a1)
{
  CFRelease(*(a1 + 56));
  v2 = *(a1 + 64);

  free(v2);
}

void tcc_authorization_request_with_endpoint(_xpc_endpoint_s *a1, void *key, uint64_t a3, void (*a4)(void, void, void))
{
  v6 = tcc_service_singleton_for_CF_name(key);
  v7 = tcc_credential_singleton_for_self();
  if (a1)
  {
    v8 = tcc_server_create_with_endpoint(0, a1);
  }

  else
  {
    v8 = tcc_server_singleton_default();
  }

  v9 = v8;
  tcc_message_options_create();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __tcc_authorization_request_with_endpoint_block_invoke;
  v11[3] = &unk_1E7AE0980;
  v11[4] = a4;
  v11[5] = v10;
  v11[6] = a1;
  v11[7] = v9;
  tcc_server_message_request_authorization(v9, v10, v7, v6, 0, v11);
}

uint64_t __tcc_authorization_request_with_endpoint_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __tcc_authorization_request_with_endpoint_block_invoke_cold_1();
    }

    v4 = *(a1[4] + 16);
  }

  else
  {
    tcc_authorization_record_get_authorization_right(a2);
    v4 = *(a1[4] + 16);
  }

  v4();
  v5 = a1[5];
  result = tcc_release();
  if (a1[6])
  {
    v7 = a1[7];
    return tcc_release();
  }

  return result;
}

uint64_t tcc_authorization_audit_token_request_change(void *a1, __int128 *a2, uint64_t a3, const __CFDictionary *a4)
{
  v8 = tcc_server_singleton_default();
  tcc_message_options_create();
  v10 = v9;
  tcc_message_options_set_reply_handler_policy(v9, 1);
  if (a4 && CFDictionaryContainsKey(a4, kTCCAccessClientDictionary))
  {
    Value = CFDictionaryGetValue(a4, kTCCAccessClientDictionary);
    tcc_message_options_set_client_dict(v10, Value);
  }

  v12 = a2[1];
  v19 = *a2;
  v20 = v12;
  tcc_credential_create_for_process_with_audit_token(&v19);
  v14 = v13;
  v15 = tcc_service_singleton_for_CF_name(a1);
  *&v19 = 0;
  *(&v19 + 1) = &v19;
  *&v20 = 0x2000000000;
  *(&v20 + 1) = 1;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __tcc_authorization_audit_token_request_change_block_invoke;
  v18[3] = &unk_1E7AE09F8;
  v18[4] = &v19;
  v18[5] = v10;
  v18[6] = v14;
  tcc_server_message_request_authorization_change(v8, v10, v14, v15, a3, 0, v18);
  v16 = *(*(&v19 + 1) + 24);
  _Block_object_dispose(&v19, 8);
  return v16;
}

uint64_t __tcc_authorization_audit_token_request_change_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __tcc_authorization_audit_token_request_change_block_invoke_cold_1();
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = tcc_authorization_record_get_authorization_right(a2);
  }

  v4 = a1[5];
  tcc_release();
  v5 = a1[6];
  return tcc_release();
}

uint64_t tcc_authorization_audit_token_report_use(void *a1, _OWORD *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 1;
  v4 = tcc_server_singleton_default();
  tcc_message_options_create();
  v6 = v5;
  tcc_message_options_set_reply_handler_policy(v5, 1);
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  tcc_credential_create_for_process_with_audit_token(v14);
  v9 = v8;
  v10 = tcc_service_singleton_for_CF_name(a1);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __tcc_authorization_audit_token_report_use_block_invoke;
  v13[3] = &unk_1E7AE0A20;
  v13[4] = &v15;
  v13[5] = v6;
  v13[6] = v9;
  tcc_server_message_credential_report_use(v4, v6, v9, v10, v13);
  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t __tcc_authorization_audit_token_report_use_block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __tcc_authorization_audit_token_report_use_block_invoke_cold_1();
    }

    *(*(a1[4] + 8) + 24) = 0;
  }

  v3 = a1[5];
  tcc_release();
  v4 = a1[6];
  return tcc_release();
}

void tcc_authorization_request_change(void *a1, uint64_t a2, const __CFDictionary *a3, void (*a4)(void, void, void))
{
  v8 = tcc_server_singleton_default();
  tcc_message_options_create();
  v10 = v9;
  if (a3 && CFDictionaryContainsKey(a3, kTCCAccessClientDictionary))
  {
    Value = CFDictionaryGetValue(a3, kTCCAccessClientDictionary);
    tcc_message_options_set_client_dict(v10, Value);
  }

  v12 = tcc_credential_singleton_for_self();
  v13 = tcc_service_singleton_for_CF_name(a1);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __tcc_authorization_request_change_block_invoke;
  v14[3] = &unk_1E7AE0A48;
  v14[4] = a4;
  v14[5] = v10;
  tcc_server_message_request_authorization_change(v8, v10, v12, v13, a2, 0, v14);
}

uint64_t __tcc_authorization_request_change_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __tcc_authorization_request_change_block_invoke_cold_1();
    }

    v4 = *(*(a1 + 32) + 16);
  }

  else
  {
    tcc_authorization_record_get_authorization_right(a2);
    v4 = *(*(a1 + 32) + 16);
  }

  v4();
  v5 = *(a1 + 40);
  return tcc_release();
}

void tcc_authorization_set_access_with_prompt(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = tcc_service_singleton_for_CF_name(a1);
  v9 = tcc_server_singleton_default();
  tcc_message_options_create();
  v11 = v10;
  tcc_message_options_set_reply_handler_policy(v10, 1);
  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  v13 = tcc_identity_create(0, CStringPtr);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __tcc_authorization_set_access_with_prompt_block_invoke;
  v14[3] = &unk_1E7AE0A70;
  v14[4] = a5;
  v14[5] = v11;
  v14[6] = v13;
  tcc_server_message_prompt_authorization_value(v9, v11, v13, v8, 0, a3, v14);
}

uint64_t __tcc_authorization_set_access_with_prompt_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __tcc_authorization_set_access_with_prompt_block_invoke_cold_1();
    }

    v4 = *(a1[4] + 16);
  }

  else
  {
    tcc_authorization_record_get_authorization_right(a2);
    v4 = *(a1[4] + 16);
  }

  v4();
  v5 = a1[5];
  tcc_release();
  v6 = a1[6];
  return tcc_release();
}

void tcc_authorization_cache_handle_authorization_changed_for_service(uint64_t a1, const void *a2)
{
  *(&v35[1] + 4) = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 64));
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    v5 = Value;
    Count = CFDictionaryGetCount(Value);
    v23 = a2;
    v7 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    v8 = v23;
    v21 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    v22 = v7;
    CFDictionaryGetKeysAndValues(v5, v7, v21);
    if (Count >= 1)
    {
      v24 = MEMORY[0x1E69E9820];
      v9 = v21;
      do
      {
        v10 = *v7;
        v11 = *v9;
        block = v24;
        p_block = 0x40000000;
        v27 = ___tcc_authorization_cache_lazy_init_server_block_invoke;
        v28 = &__block_descriptor_tmp_9;
        v29 = a1;
        if (_tcc_authorization_cache_lazy_init_server_init_once != -1)
        {
          dispatch_once(&_tcc_authorization_cache_lazy_init_server_init_once, &block);
        }

        if (*(a1 + 104))
        {
          tcc_message_options_create();
          v13 = v12;
          tcc_message_options_set_request_prompt_policy(v12, 2);
          tcc_message_options_set_request_usage_string_policy(v13, 2);
          tcc_message_options_set_reply_handler_policy(v13, 1);
          tcc_message_options_set_cache_policy(v13, 1);
          block = 0;
          p_block = &block;
          v27 = 0x2000000000;
          v28 = 0;
          v14 = *(a1 + 104);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___tcc_authorization_cache_copy_current_authorization_block_invoke;
          v31 = &unk_1E7AE0AD8;
          v32 = &block;
          v33 = a1;
          tcc_server_message_request_authorization(v14, v13, v10, v8, 0, buf);
          tcc_release();
          v15 = *(p_block + 24);
          _Block_object_dispose(&block, 8);
          if (v15)
          {
            if (!tcc_object_equal(v15, v11))
            {
              v16 = tcc_object_copy_description(v11);
              v17 = tcc_object_copy_description(v15);
              v18 = *(a1 + 56);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *&buf[4] = v16;
                *&buf[12] = 2114;
                *&buf[14] = v17;
                _os_log_impl(&dword_1B1686000, v18, OS_LOG_TYPE_DEFAULT, "UPDATE:\n%{public}@ ->\n%{public}@", buf, 0x16u);
              }

              CFRelease(v16);
              CFRelease(v17);
              v8 = v23;
              _tcc_authorization_cache_locked_set_authorization(a1, v23, v10, v15);
            }

            tcc_release();
          }
        }

        else
        {
          v19 = *(a1 + 56);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            tcc_authorization_cache_handle_authorization_changed_for_service_cold_1(v34, v35, v19);
          }
        }

        ++v9;
        ++v7;
        --Count;
      }

      while (Count);
    }

    free(v22);
    free(v21);
  }

  else if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
  {
    tcc_authorization_cache_handle_authorization_changed_for_service_cold_2(a2);
  }

  os_unfair_lock_unlock((a1 + 64));
  v20 = *MEMORY[0x1E69E9840];
}

void tcc_authorization_cache_handle_authorization_changed_for_service_clear(uint64_t a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 64));
  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  v5 = *(a1 + 56);
  if (Value)
  {
    v6 = Value;
    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      name = tcc_service_get_name(a2);
      _os_log_impl(&dword_1B1686000, v5, OS_LOG_TYPE_DEFAULT, "CLEAR:\n%{public}s", &v8, 0xCu);
    }

    CFDictionaryRemoveAllValues(v6);
  }

  else if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
  {
    tcc_authorization_cache_handle_authorization_changed_for_service_clear_cold_1(a2);
  }

  os_unfair_lock_unlock((a1 + 64));
  v7 = *MEMORY[0x1E69E9840];
}

void tcc_authorization_cache_dispose(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 88))
  {
    os_state_remove_handler();
  }

  if (*(a1 + 96))
  {
    tcc_release();
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    Count = CFDictionaryGetCount(v3);
    v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(*(a1 + 72), 0, v5);
    if (Count >= 1)
    {
      v6 = v5;
      do
      {
        v7 = *v6++;
        CFDictionaryRemoveAllValues(v7);
        --Count;
      }

      while (Count);
    }

    free(v5);
    CFDictionaryRemoveAllValues(*(a1 + 72));
    v8 = *(a1 + 72);

    CFRelease(v8);
  }
}

CFStringRef tcc_authorization_cache_copy_description(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 64));
  v2 = CFCopyDescription(*(a1 + 72));
  os_unfair_lock_unlock((a1 + 64));
  return v2;
}

void ___tcc_authorization_cache_copy_current_authorization_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = tcc_retain();
  }

  else
  {
    v4 = *(*(a1 + 40) + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___tcc_authorization_cache_copy_current_authorization_block_invoke_cold_1(a3, v4);
    }
  }
}

void *___tcc_authorization_cache_lazy_init_server_block_invoke(void *result)
{
  v1 = result[4];
  if (!*(v1 + 104))
  {
    result = tcc_server_create(0);
    *(v1 + 104) = result;
  }

  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t tcc_attributed_entity_create(int a1, const char *a2)
{
  tcc_attributed_entity_alloc(72, &entity_object_ops);
  v5 = v4;
  *(v4 + 56) = a1;
  *(v4 + 64) = strdup(a2);
  return v5;
}

uint64_t tcc_attributed_entity_get_path(uint64_t a1)
{
  if (*(a1 + 56) > 1u)
  {
    return 0;
  }

  else
  {
    return *(a1 + 64);
  }
}

void tcc_attributed_entity_dispose(uint64_t a1)
{
  if (*(a1 + 56) <= 1u)
  {
    free(*(a1 + 64));
  }
}

void tcc_attributed_entity_encode_to_dictionary(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_uint64(xdict, "TCCD_MSG_ATTRIBUTED_ENTITY_TYPE_KEY", *(a1 + 56));
  v4 = *(a1 + 56);
  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = "TCCD_MSG_ATTRIBUTED_ENTITY_EXECUTABLE_PATH_KEY";
  }

  else
  {
    v5 = "TCCD_MSG_ATTRIBUTED_ENTITY_APPLICATION_PATH_KEY";
  }

  v6 = *(a1 + 64);

  xpc_dictionary_set_string(xdict, v5, v6);
}

__CFString *tcc_attributed_entity_copy_description(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  v4 = *(a1 + 56);
  if (v4 > 1)
  {
    CFStringAppendFormat(Mutable, 0, @"Entity Type Unknown/%u", *(a1 + 56));
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"%s(%u)", *(a1 + 64), v4);
  }

  return v3;
}

size_t tcc_attributed_entity_hash(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    v2 = *(a1 + 64);
    no_copy = xpc_string_create_no_copy();
    v1 = xpc_hash(no_copy) - v1 + 32 * v1;
    xpc_release(no_copy);
  }

  return v1;
}

uint64_t tcc_credential_create_for_self_with_assumed_identity()
{
  tcc_credential_alloc(104, &credential_object_ops);
  v1 = v0;
  *(v0 + 56) = 0;
  *(v0 + 96) = tcc_retain();
  return v1;
}

uint64_t tcc_credential_create_for_process_with_audit_token_and_assumed_identity(__int128 *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  tcc_credential_alloc(104, &credential_object_ops);
  v2 = v1;
  if (v1)
  {
    *(v1 + 56) = 1;
    *(v1 + 64) = v5;
    *(v1 + 80) = v6;
  }

  *(v1 + 96) = tcc_retain();
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t tcc_credential_create_data_from_process_with_audit_token()
{
  v0 = xpc_null_create();
  tcc_credential_alloc(104, &credential_object_ops);
  v2 = v1;
  if (v1)
  {
    *(v1 + 56) = 2;
    *(v1 + 64) = xpc_retain(v0);
  }

  xpc_release(v0);
  return v2;
}

uint64_t tcc_credential_create_for_file_provider_domain_identifier(const char *a1)
{
  tcc_credential_alloc(104, &credential_object_ops);
  v3 = v2;
  if (v2)
  {
    *(v2 + 56) = 3;
    *(v2 + 64) = strdup(a1);
  }

  return v3;
}

uint64_t tcc_events_filter_singleton_for_check_in()
{
  if (tcc_events_filter_singleton_for_check_in_init_once != -1)
  {
    tcc_events_filter_singleton_for_check_in_cold_1();
  }

  return tcc_events_filter_singleton_for_check_in_events_filter_for_check_in;
}

void __tcc_events_filter_singleton_for_check_in_block_invoke()
{
  tcc_events_filter_alloc(72, &events_filter_object_ops);
  tcc_events_filter_singleton_for_check_in_events_filter_for_check_in = v0;
  *(v0 + 56) = 0;
  *(v0 + 12) = 0x7FFFFFFF;
  *(v0 + 8) = 0x7FFFFFFF;
}

uint64_t tcc_events_filter_create_with_criteria(void *a1)
{
  tcc_events_filter_alloc(72, &events_filter_object_ops);
  v3 = v2;
  *(v2 + 56) = 1;
  v4 = xpc_copy(a1);
  *(v3 + 64) = v4;
  if (!v4)
  {
    tcc_release();
    return 0;
  }

  return v3;
}

void tcc_events_subscribe(const char *a1, uint64_t a2, NSObject *a3, const void *a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  _tcc_events_initialize();
  tcc_events_subscription_alloc(88, &events_subscription_object_ops);
  v9 = v8;
  v8[7] = strdup(a1);
  if (a2)
  {
    tcc_retain();
  }

  else
  {
    *v19 = "kTCCServiceAll";
    values[0] = xpc_BOOL_create(1);
    v10 = xpc_dictionary_create(v19, values, 1uLL);
    a2 = tcc_events_filter_create_with_criteria(v10);
    xpc_release(v10);
  }

  v9[8] = a2;
  v9[9] = a3;
  dispatch_retain(a3);
  v9[10] = _Block_copy(a4);
  os_unfair_lock_lock(&unk_1EB759228);
  v11 = v9[7];
  if (xpc_dictionary_get_pointer())
  {
    v12 = qword_1EB759220;
    if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_DEBUG))
    {
      tcc_events_subscribe_cold_1(v9 + 7, v12);
    }

    tcc_release();
  }

  v13 = v9[7];
  xpc_dictionary_set_pointer();
  v14 = v9[8];
  if (*(v14 + 56) == 1)
  {
    v15 = v9[7];
    v16 = *(v14 + 64);
    xpc_set_event();
  }

  os_unfair_lock_unlock(&unk_1EB759228);
  v17 = qword_1EB759220;
  if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_INFO))
  {
    *v19 = 136446210;
    *&v19[4] = a1;
    _os_log_impl(&dword_1B1686000, v17, OS_LOG_TYPE_INFO, "%{public}s subscribed", v19, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void _tcc_events_initialize()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___tcc_events_initialize_block_invoke;
  block[3] = &__block_descriptor_tmp_8_0;
  block[4] = &_tcc_events_global_state;
  if (_tcc_events_global_state != -1)
  {
    dispatch_once(&_tcc_events_global_state, block);
  }
}

void tcc_events_unsubscribe(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  _tcc_events_initialize();
  os_unfair_lock_lock(&unk_1EB759228);
  if (xpc_dictionary_get_pointer())
  {
    xpc_dictionary_set_pointer();
    tcc_release();
    xpc_set_event();
  }

  else if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_ERROR))
  {
    tcc_events_unsubscribe_cold_1();
  }

  os_unfair_lock_unlock(&unk_1EB759228);
  v2 = qword_1EB759220;
  if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = a1;
    _os_log_impl(&dword_1B1686000, v2, OS_LOG_TYPE_INFO, "%{public}s unsubscribed", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void tcc_events_filter_dispose(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    xpc_release(v1);
  }
}

void ___tcc_events_initialize_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = os_log_create("com.apple.TCC", "events");
  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 24) = xpc_dictionary_create(0, 0, 0);

  xpc_set_event_stream_handler("com.apple.tccd.events", 0, &__block_literal_global_7);
}

void ___tcc_events_initialize_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1B2732690](a2);
  v4 = MEMORY[0x1B2732510](a2);
  if (v3 != MEMORY[0x1E69E9E98])
  {
    v5 = qword_1EB759220;
    if (v3 != MEMORY[0x1E69E9E80])
    {
      if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_ERROR))
      {
        ___tcc_events_initialize_block_invoke_2_cold_1(v3, v4, v5);
      }

      goto LABEL_46;
    }

    if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_DEBUG))
    {
      ___tcc_events_initialize_block_invoke_2_cold_2();
    }

    if (xpc_dictionary_get_uint64(a2, "event_type"))
    {
      if (xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E40]))
      {
        os_unfair_lock_lock(&unk_1EB759228);
        pointer = xpc_dictionary_get_pointer();
        if (!pointer)
        {
          if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_ERROR))
          {
            ___tcc_events_initialize_block_invoke_2_cold_7();
          }

          goto LABEL_45;
        }

        v8 = pointer;
        os_unfair_lock_assert_owner(&unk_1EB759228);
        if (!*(v8 + 72))
        {
          tcc_authorization_changed_for_service_notification_name_cold_1();
        }

        if (!*(v8 + 80))
        {
          tcc_authorization_changed_for_service_notification_name_cold_1();
        }

        uint64 = xpc_dictionary_get_uint64(a2, "event_type");
        tcc_authorization_record_create();
        v11 = v10;
        string = xpc_dictionary_get_string(a2, "service");
        if (string)
        {
          v13 = tcc_service_singleton_for_name(string);
        }

        else
        {
          v13 = 0;
        }

        v17 = xpc_dictionary_get_uint64(a2, "TCCD_MSG_IDENTITY_TYPE_KEY");
        v18 = xpc_dictionary_get_string(a2, "TCCD_MSG_IDENTITY_ID_KEY");
        if (v18)
        {
          v19 = tcc_identity_create(v17, v18);
        }

        else
        {
          v19 = 0;
        }

        v20 = xpc_dictionary_get_uint64(a2, "auth_value");
        if (v11 && v13 && v19)
        {
          v21 = v20;
          tcc_authorization_record_set_service(v11);
          tcc_authorization_record_set_subject_identity(v11);
          tcc_authorization_record_set_authorization_value(v11, v21);
        }

        else
        {
          v22 = MEMORY[0x1B2732510](a2);
          if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_ERROR))
          {
            ___tcc_events_initialize_block_invoke_2_cold_3();
          }

          free(v22);
          if (v11)
          {
            tcc_release();
          }

          if (!v19)
          {
            goto LABEL_42;
          }

          v11 = 0;
        }

        tcc_release();
        if (uint64 && v11)
        {
          tcc_retain();
          v23 = *(v8 + 72);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___tcc_events_handle_event_for_subscription_block_invoke;
          block[3] = &__block_descriptor_tmp_10;
          block[4] = v8;
          block[5] = uint64;
          block[6] = v11;
          dispatch_async(v23, block);
LABEL_45:
          os_unfair_lock_unlock(&unk_1EB759228);
          goto LABEL_46;
        }

LABEL_42:
        v24 = MEMORY[0x1B2732510](a2);
        if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_ERROR))
        {
          ___tcc_events_initialize_block_invoke_2_cold_4();
        }

        free(v24);
        goto LABEL_45;
      }

      v16 = MEMORY[0x1B2732510](a2);
      if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_ERROR))
      {
        ___tcc_events_initialize_block_invoke_2_cold_8();
      }
    }

    else
    {
      reply = xpc_dictionary_create_reply(a2);
      if (reply)
      {
        v15 = reply;
        xpc_dictionary_send_reply();
        xpc_release(v15);
        goto LABEL_46;
      }

      v16 = MEMORY[0x1B2732510](a2);
      if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_ERROR))
      {
        ___tcc_events_initialize_block_invoke_2_cold_9();
      }
    }

    free(v16);
    goto LABEL_46;
  }

  v6 = qword_1EB759220;
  if (os_log_type_enabled(qword_1EB759220, OS_LOG_TYPE_ERROR))
  {
    ___tcc_events_initialize_block_invoke_2_cold_10(a2, v6);
  }

LABEL_46:
  free(v4);
}

uint64_t ___tcc_events_handle_event_for_subscription_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(*(a1[4] + 80) + 16))();
  v4 = a1[4];
  tcc_release();
  v5 = a1[6];

  return tcc_release();
}

void tcc_events_subscription_dispose(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    free(v2);
  }

  if (a1[8])
  {
    tcc_release();
  }

  v3 = a1[9];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[10];
  if (v4)
  {

    _Block_release(v4);
  }
}

const char *TCCAuthGetReasonDescription(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 <= 1001)
    {
      switch(a1)
      {
        case 6:
          return "Set";
        case 1000:
          return "Error";
        case 1001:
          return "Service Override";
      }
    }

    else
    {
      if (a1 <= 1003)
      {
        if (a1 == 1002)
        {
          return "Missing Usage String";
        }

        else
        {
          return "Prompt Timeout";
        }
      }

      if (a1 == 1004)
      {
        return "Preflight Unknown";
      }

      if (a1 == 2000)
      {
        return "Entitled";
      }
    }

    return "<Unknown Reason>";
  }

  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return "None";
      case 1:
        return "Recorded";
      case 2:
        return "Service Default";
    }

    return "<Unknown Reason>";
  }

  if (a1 == 3)
  {
    return "Service Policy";
  }

  if (a1 == 4)
  {
    return "Compatibility Policy";
  }

  return "Override Policy";
}

char *TCCAuthCopyDescription(uint64_t a1)
{
  v2 = 0;
  if ((a1 & 0x100000000000000) != 0)
  {
    if ((a1 & 0x200000000000000) != 0)
    {
      asprintf(&v2, "Auth:{Access:Unknown}");
    }

    else
    {
      TCCAuthGetReasonDescription(WORD2(a1));
      asprintf(&v2, "{Access:%s, reason:%s}");
    }
  }

  else
  {
    asprintf(&v2, "Auth:{Invalid}");
  }

  return v2;
}

const char *tcc_service_singleton_for_name(const char *cStr)
{
  if (cStr)
  {
    v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    v2 = tcc_service_singleton_for_CF_name(v1);
    CFRelease(v1);
    return v2;
  }

  return cStr;
}

dispatch_queue_t __tcc_service_get_message_queue_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = xmmword_1B169EE10;
  v13 = unk_1B169EE20;
  v10 = xmmword_1B169EDF0;
  v11 = unk_1B169EE00;
  v16 = xmmword_1B169EE50;
  v17 = unk_1B169EE60;
  v14 = xmmword_1B169EE30;
  v15 = unk_1B169EE40;
  v20 = xmmword_1B169EE90;
  v21 = unk_1B169EEA0;
  v18 = xmmword_1B169EE70;
  v19 = unk_1B169EE80;
  strcpy(v5, "com.apple.tcc.auth.");
  v6 = 0;
  v7 = 0;
  v8 = xmmword_1B169EDD0;
  v9 = unk_1B169EDE0;
  v2 = *(*(a1 + 32) + 64);
  __strlcat_chk();
  result = dispatch_queue_create(v5, 0);
  *(*(a1 + 32) + 112) = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void tcc_service_dispose(uint64_t a1)
{
  CFRelease(*(a1 + 56));
  free(*(a1 + 64));
  v2 = *(a1 + 112);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t tcc_server_convert_xpc_object_to_record(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  tcc_authorization_record_create();
  v9 = v8;
  if (!v8)
  {
    goto LABEL_46;
  }

  if (!a2)
  {
    if (!xpc_dictionary_get_value(a1, "service"))
    {
      goto LABEL_6;
    }

    string = xpc_dictionary_get_string(a1, "service");
    tcc_service_singleton_for_name(string);
    v8 = v9;
  }

  tcc_authorization_record_set_service(v8);
LABEL_6:
  if (!xpc_dictionary_get_value(a1, "auth_value"))
  {
    _tcc_util_create_CFError_with_user_info(2, @"missing 'auth_value' in reply message");
    goto LABEL_34;
  }

  uint64 = xpc_dictionary_get_uint64(a1, "auth_value");
  if (xpc_dictionary_get_value(a1, "auth_reason"))
  {
    v12 = xpc_dictionary_get_uint64(a1, "auth_reason");
  }

  else
  {
    v12 = 0;
  }

  v13 = xpc_dictionary_get_uint64(a1, "auth_version");
  v14 = xpc_dictionary_get_BOOL(a1, "has_prompted_for_allow");
  if (xpc_dictionary_get_BOOL(a1, "non_modifiable"))
  {
    tcc_authorization_record_set_non_modifiable(v9, 1);
  }

  tcc_authorization_record_set_authorization_value(v9, uint64);
  tcc_authorization_record_set_authorization_reason(v9, v12);
  tcc_authorization_record_set_version(v9, v13);
  tcc_authorization_record_set_has_prompted_for_allow(v9, v14);
  if (xpc_dictionary_get_value(a1, "session_pid"))
  {
    v15 = xpc_dictionary_get_uint64(a1, "session_pid");
    tcc_authorization_record_set_session_pid(v9, v15);
  }

  if (xpc_dictionary_get_value(a1, "session_pid_version"))
  {
    v16 = xpc_dictionary_get_uint64(a1, "session_pid_version");
    tcc_authorization_record_set_session_pid_version(v9, v16);
  }

  v17 = xpc_dictionary_get_string(a1, "session_boot_UUID");
  if (v17)
  {
    tcc_authorization_record_set_bootUUID(v9, v17);
  }

  v18 = xpc_dictionary_get_BOOL(a1, "TCCD_MSG_ALLOW_STANDARD_USER_TO_SET_SYSTEM_SERVICE");
  tcc_authorization_record_set_allow_standard_user_to_set_system_service(v9, v18);
  if (xpc_dictionary_get_value(a1, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_IDENTITY_DICTIONARY_KEY"))
  {
    value = xpc_dictionary_get_value(a1, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_IDENTITY_DICTIONARY_KEY");
    v20 = xpc_dictionary_get_uint64(value, "TCCD_MSG_IDENTITY_TYPE_KEY");
    v21 = xpc_dictionary_get_string(value, "TCCD_MSG_IDENTITY_ID_KEY");
    v22 = tcc_identity_create(v20, v21);
    if (v22)
    {
      v23 = v22;
      v24 = xpc_dictionary_get_value(a1, "code_requirement");
      tcc_identity_set_verifier_code_requirement_data(v23, v24);
      tcc_authorization_record_set_subject_identity(v9);
      tcc_release();
      goto LABEL_24;
    }

    _tcc_util_create_CFError_with_user_info(2, @"Failed to allocate subject identity.");
LABEL_34:
    tcc_release();
    v9 = 0;
    goto LABEL_46;
  }

  if (a3)
  {
    tcc_authorization_record_set_subject_identity(v9);
  }

LABEL_24:
  if (xpc_dictionary_get_value(a1, "indirect_object_identifier"))
  {
    int64 = xpc_dictionary_get_int64(a1, "indirect_object_identifier_type");
    v26 = xpc_dictionary_get_string(a1, "indirect_object_identifier");
    v27 = tcc_identity_create(int64, v26);
    if (v27)
    {
      v28 = v27;
      v29 = xpc_dictionary_get_value(a1, "indirect_object_code_requirement");
      tcc_identity_set_verifier_code_requirement_data(v28, v29);
      tcc_authorization_record_set_indirect_object_identity(v9);
      tcc_release();
    }
  }

  else if (a4)
  {
    tcc_authorization_record_set_indirect_object_identity(v9);
  }

  v30 = _TCCTCCAccessCopyInformationInternalForEntry(a1);
  if (v30)
  {
    v31 = v30;
    v32 = CFDictionaryGetValue(v30, kTCCInfoBundle);
    if (v32)
    {
      v33 = CFBundleCopyBundleURL(v32);
      if (CFURLGetFileSystemRepresentation(v33, 0, buffer, 1024))
      {
        v34 = tcc_attributed_entity_create(0, buffer);
      }

      else
      {
        v34 = 0;
      }

      CFRelease(v33);
    }

    else
    {
      v35 = CFDictionaryGetValue(v31, kTCCInfoPath);
      if (!v35)
      {
LABEL_41:
        v37 = CFDictionaryGetValue(v31, kTCCInfoLastModified);
        if (v37)
        {
          tcc_authorization_record_set_last_modified_date(v9, v37);
        }

        v38 = CFDictionaryGetValue(v31, kTCCInfoExpiredAt);
        if (v38)
        {
          tcc_authorization_record_set_last_modified_date(v9, v38);
        }

        CFRelease(v31);
        goto LABEL_46;
      }

      v36 = stringCopyUTF8String(v35);
      v34 = tcc_attributed_entity_create(1, v36);
      free(v36);
    }

    if (v34)
    {
      tcc_authorization_record_set_subject_attributed_entity(v9);
      tcc_release();
    }

    goto LABEL_41;
  }

LABEL_46:
  v39 = *MEMORY[0x1E69E9840];
  return v9;
}

void *tcc_server_create_with_endpoint(NSObject *a1, _xpc_endpoint_s *a2)
{
  v3 = tcc_server_create(a1);
  v4 = xpc_connection_create_from_endpoint(a2);
  v3[9] = v4;
  xpc_connection_set_event_handler(v4, &__block_literal_global_4);
  xpc_connection_activate(v3[9]);
  return v3;
}

void tcc_server_message_set_authorization_value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  valuePtr = a6;
  if (tcc_identity_get_type(a3))
  {
    if (tcc_identity_get_type(a3) != 1)
    {
      type = tcc_identity_get_type(a3);
      CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"Unhandled identity type: %llu", type);
      goto LABEL_16;
    }

    v12 = "path";
  }

  else
  {
    v12 = "bundle";
  }

  v13 = *MEMORY[0x1E695E4C0];
  if (a2)
  {
    nokill_policy = tcc_message_options_get_nokill_policy(a2);
    if (nokill_policy)
    {
      v15 = nokill_policy;
    }

    else
    {
      v15 = v13;
    }

    has_prompted_for_allow = tcc_message_options_get_has_prompted_for_allow(a2);
    if (has_prompted_for_allow)
    {
      v13 = has_prompted_for_allow;
    }
  }

  else
  {
    v15 = *MEMORY[0x1E695E4C0];
  }

  if (a6 != 1)
  {
    v19 = a6 != 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    v21 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    CFDictionarySetValue(Mutable, @"auth_value", v21);
    CFDictionarySetValue(Mutable, kTCCSetNoKill, v15);
    CFDictionarySetValue(Mutable, @"has_prompted_for_allow", v13);
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 0x40000000;
    activity_block[2] = __tcc_server_message_set_authorization_value_block_invoke;
    activity_block[3] = &unk_1E7AE0C78;
    activity_block[6] = v12;
    activity_block[7] = a3;
    v24 = v19;
    activity_block[8] = Mutable;
    activity_block[4] = a7;
    activity_block[5] = a4;
    _os_activity_initiate(&dword_1B1686000, "tcc_authorization_set_authorization_value IPC", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    CFRelease(v21);
    CFRelease(Mutable);
    return;
  }

  CFError_with_user_info = _tcc_util_create_CFError_with_user_info(8, @"Authorization right cannot be Unknown");
LABEL_16:
  v18 = CFError_with_user_info;
  if (a7)
  {
    (*(a7 + 16))(a7, CFError_with_user_info);
  }

  CFRelease(v18);
}

void __tcc_server_message_set_authorization_value_block_invoke(uint64_t a1)
{
  CF_name = tcc_service_get_CF_name(*(a1 + 40));
  v3 = *(a1 + 48);
  identifier = tcc_identity_get_identifier(*(a1 + 56));
  v5 = TCCAccessSetInternal(CF_name, v3, identifier, 0, *(a1 + 72), 0, 0, *(a1 + 64));
  CFError_with_user_info = 0;
  if (!v5)
  {
    name = tcc_service_get_name(*(a1 + 40));
    v8 = tcc_identity_get_identifier(*(a1 + 56));
    CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"Failed to set authorization for %s, %s", name, v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, CFError_with_user_info);
  }

  if (CFError_with_user_info)
  {

    CFRelease(CFError_with_user_info);
  }
}

void tcc_server_message_prompt_authorization_value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v13, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v13, "TCCD_MSG_REQUEST_TYPE_KEY", 9uLL);
  xpc_dictionary_set_string(v13, "function", "TCCAccessSetWithPrompt");
  v14 = 0;
  if (!a2)
  {
    tcc_message_options_create();
    v14 = v15;
    a2 = v15;
  }

  tcc_object_encode_to_dictionary(a2);
  if (tcc_identity_get_type(a3))
  {
    if (tcc_identity_get_type(a3) != 1)
    {
      goto LABEL_8;
    }

    v16 = "path";
  }

  else
  {
    v16 = "bundle";
  }

  xpc_dictionary_set_string(v13, "client_type", v16);
  identifier = tcc_identity_get_identifier(a3);
  xpc_dictionary_set_string(v13, "client", identifier);
LABEL_8:
  name = tcc_service_get_name(a4);
  xpc_dictionary_set_string(v13, "service", name);
  xpc_dictionary_set_uint64(v13, "desired_auth_value", a6);
  v19 = tcc_message_options_get_reply_handler_policy(a2) == 1;
  v20 = _Block_copy(a7);
  xpc_retain(v13);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___tcc_server_send_prompt_authorization_value_block_invoke;
  v23[3] = &unk_1E7AE0E20;
  v24 = v19;
  v23[6] = v13;
  v23[7] = a4;
  v23[4] = v20;
  v23[5] = a1;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = ___tcc_server_send_prompt_authorization_value_block_invoke_2_104;
  activity_block[3] = &unk_1E7AE0E48;
  v22 = v19;
  activity_block[4] = v23;
  _os_activity_initiate(&dword_1B1686000, "tcc_send_prompt_authorization_value() IPC", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  if (v14)
  {
    tcc_release();
  }

  xpc_release(v13);
}

void tcc_server_message_get_authorization_records_by_identity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v10, "TCCD_MSG_REQUEST_TYPE_KEY", 2uLL);
  v11 = 0;
  if (!a2)
  {
    tcc_message_options_create();
    v11 = v12;
    tcc_message_options_set_reply_handler_policy(v12, 1);
    a2 = v11;
  }

  tcc_object_encode_to_dictionary(a2);
  if (!tcc_identity_get_type(a3))
  {
    v13 = "bundle";
LABEL_7:
    xpc_dictionary_set_string(v10, "client_type", v13);
    xpc_dictionary_set_string(v10, "function", "TCCAccessCopyInformationForBundle");
    identifier = tcc_identity_get_identifier(a3);
    xpc_dictionary_set_string(v10, "client", identifier);
    _tcc_server_send_get_authorization_records(a1, 0, a2, 0, a3, a4, v10, a5);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (tcc_identity_get_type(a3) == 1)
  {
    v13 = "path";
    goto LABEL_7;
  }

  _tcc_util_create_CFError_with_user_info(8, @"Invalid identity type");
  if (v11)
  {
LABEL_8:
    tcc_release();
  }

LABEL_9:

  xpc_release(v10);
}

void tcc_server_set_authorization_change_handler()
{
  if (tcc_server_set_authorization_change_handler_log_once != -1)
  {
    tcc_server_set_authorization_change_handler_cold_1();
  }
}

void __tcc_server_set_authorization_change_handler_block_invoke()
{
  v0 = tcc_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __tcc_server_set_authorization_change_handler_block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void tcc_server_message_set_authorization_change_policy()
{
  if (tcc_server_message_set_authorization_change_policy_log_once != -1)
  {
    tcc_server_message_set_authorization_change_policy_cold_1();
  }
}

void __tcc_server_message_set_authorization_change_policy_block_invoke()
{
  v0 = tcc_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __tcc_server_message_set_authorization_change_policy_block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void tcc_server_message_credential_report_use(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v10, "TCCD_MSG_REQUEST_TYPE_KEY", 8uLL);
  v11 = 0;
  if (!a2)
  {
    tcc_message_options_create();
    v11 = v12;
    a2 = v12;
  }

  tcc_object_encode_to_dictionary(a2);
  v13 = xpc_dictionary_create(0, 0, 0);
  tcc_object_encode_to_dictionary(a3);
  xpc_dictionary_set_value(v10, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY", v13);
  xpc_release(v13);
  tcc_object_encode_to_dictionary(a4);
  v14 = tcc_message_options_get_reply_handler_policy(a2) == 1;
  v15 = _Block_copy(a5);
  xpc_retain(v10);
  xpc_dictionary_set_string(v10, "function", "TCCReportUse");
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___tcc_server_send_report_resource_use_block_invoke;
  v18[3] = &unk_1E7AE1018;
  v18[5] = v10;
  v18[6] = a1;
  v19 = v14;
  v18[4] = v15;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___tcc_server_send_report_resource_use_block_invoke_2_143;
  v16[3] = &unk_1E7AE1040;
  v17 = v14;
  v16[4] = v18;
  _os_activity_initiate(&dword_1B1686000, "tcc_send_report_resource_use() IPC", OS_ACTIVITY_FLAG_DEFAULT, v16);
  if (v11)
  {
    tcc_release();
  }

  xpc_release(v10);
}

void tcc_server_message_get_authorization_records_by_services(uint64_t a1, const __CFArray *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v42 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a3;
    v7 = 0;
  }

  else
  {
    tcc_message_options_create();
    v7 = v8;
    tcc_message_options_set_reply_handler_policy(v8, 1);
    v6 = v7;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v9, "TCCD_MSG_REQUEST_TYPE_KEY", 5uLL);
  xpc_dictionary_set_string(v9, "function", "TCCAccessCopyInformationForServices");
  tcc_object_encode_to_dictionary(v6);
  v10 = xpc_array_create(0, 0);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v12 = Count;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v15 = tcc_service_singleton_for_CF_name(ValueAtIndex);
      if (v15)
      {
        name = tcc_service_get_name(v15);
        v17 = xpc_string_create(name);
        xpc_array_append_value(v10, v17);
        xpc_release(v17);
      }

      else
      {
        v18 = stringCopyUTF8String(ValueAtIndex);
        v19 = tcc_log_handle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v18;
          _os_log_error_impl(&dword_1B1686000, v19, OS_LOG_TYPE_ERROR, "%s, service invalid", &buf, 0xCu);
        }

        free(v18);
      }
    }
  }

  if (xpc_array_get_count(v10))
  {
    xpc_dictionary_set_value(v9, "services", v10);
  }

  else
  {
    xpc_release(v9);
    v9 = 0;
  }

  xpc_release(v10);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  if (v9)
  {
    v20 = _Block_copy(a4);
    reply_handler_policy = tcc_message_options_get_reply_handler_policy(v6);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = ___tcc_server_send_get_authorization_records_by_services_block_invoke;
    v27[3] = &unk_1E7AE10B8;
    v22 = reply_handler_policy == 1;
    v27[4] = v20;
    v27[5] = &v28;
    v23 = tcc_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B1686000, v23, OS_LOG_TYPE_INFO, "tcc_server_message_get_authorization_records_by_services() IPC", &buf, 2u);
    }

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v33 = ___tcc_server_send_get_authorization_records_by_services_block_invoke_157;
    v34 = &unk_1E7AE1130;
    v38 = a1;
    v39 = v9;
    v36 = v20;
    v37 = &v28;
    v35 = v27;
    v40 = v22;
    v41 = 1;
    _os_activity_initiate(&dword_1B1686000, "tcc_server_message_get_authorization_records_by_services() IPC", OS_ACTIVITY_FLAG_DEFAULT, &buf);
  }

  else
  {
    CFError_with_user_info = _tcc_util_create_CFError_with_user_info(8, @"Invalid services list");
    v29[3] = CFError_with_user_info;
    (a4)[2](a4, 0, CFError_with_user_info);
  }

  _Block_object_dispose(&v28, 8);
  if (v7)
  {
    tcc_release();
  }

  v25 = *MEMORY[0x1E69E9840];
}

void tcc_server_send_analytics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = 0;
  }

  else
  {
    tcc_message_options_create();
    v6 = v7;
    tcc_message_options_set_reply_handler_policy(v7, 0);
    v5 = v6;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "TCCD_MSG_SPI_VERSION", 2uLL);
  xpc_dictionary_set_uint64(v8, "TCCD_MSG_REQUEST_TYPE_KEY", 5uLL);
  xpc_dictionary_set_string(v8, "function", "TCCExternalMetrics");
  tcc_object_encode_to_dictionary(v5);
  tcc_object_encode_to_dictionary(a2);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v13[3] = 0;
  xpc_retain(v8);
  v9 = tcc_message_options_get_reply_handler_policy(v5) == 1;
  v10 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___tcc_server_send_analytics_for_external_service_block_invoke;
  v12[3] = &unk_1E7AE1158;
  v11 = v9;
  v12[4] = v13;
  v12[5] = v8;
  tccd_send_v2(v10, 1, v11, 0, v8, v12);
  _Block_object_dispose(v13, 8);
  if (v6)
  {
    tcc_release();
  }

  if (a2)
  {
    tcc_release();
  }

  xpc_release(v8);
}

void ___tcc_server_send_request_authorization_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  tcc_release();
  v4 = *(a1 + 32);

  _Block_release(v4);
}

void ___tcc_server_send_request_authorization_block_invoke_71(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  tcc_release();
  v4 = *(a1 + 32);

  _Block_release(v4);
}

void ___tcc_server_send_request_authorization_block_invoke_94(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v4 = *(a1 + 56);
  tcc_release();
  if (*(a1 + 40))
  {
    tcc_release();
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void ___tcc_server_send_request_authorization_block_invoke_2_98(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v2)
  {
    dispatch_sync(v3, v4);
  }

  else
  {
    dispatch_async(v3, v4);
  }
}

void ___tcc_server_send_prompt_authorization_value_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 72);
  v3 = *(a1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___tcc_server_send_prompt_authorization_value_block_invoke_2;
  v4[3] = &unk_1E7AE0DF8;
  v5 = *(a1 + 48);
  v7 = v3;
  v4[4] = *(a1 + 32);
  v6 = v1;
  tccd_send_v2(v2, 0, v3, 0, v5, v4);
}

void ___tcc_server_send_prompt_authorization_value_block_invoke_2(uint64_t a1, void *a2)
{
  xpc_release(*(a1 + 40));
  if (MEMORY[0x1B2732690](a2) != MEMORY[0x1E69E9E98])
  {
    if (xpc_dictionary_get_value(a2, "auth_value"))
    {
      uint64 = xpc_dictionary_get_uint64(a2, "auth_value");
      CFError_with_user_info = 0;
    }

    else
    {
      CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"missing 'auth_value' in reply message");
      uint64 = 0;
    }

    if (xpc_dictionary_get_value(a2, "auth_reason"))
    {
      v10 = xpc_dictionary_get_uint64(a2, "auth_reason");
    }

    else
    {
      v10 = 0;
    }

    v11 = xpc_dictionary_get_uint64(a2, "auth_version");
    if (CFError_with_user_info)
    {
      xpc_dictionary_get_BOOL(a2, "TCCD_MSG_ALLOW_STANDARD_USER_TO_SET_SYSTEM_SERVICE");
LABEL_13:
      v12 = 0;
      v13 = 0;
LABEL_23:
      if (*(a1 + 64))
      {
        (*(*(a1 + 32) + 16))();
        _Block_release(*(a1 + 32));
        if ((v12 & 1) == 0)
        {
          CFRelease(CFError_with_user_info);
        }

        if (v13)
        {

          tcc_release();
        }
      }

      else
      {
        v21 = *(*(a1 + 56) + 56);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___tcc_server_send_prompt_authorization_value_block_invoke_100;
        block[3] = &unk_1E7AE0DD0;
        block[4] = *(a1 + 32);
        block[5] = v13;
        block[6] = CFError_with_user_info;
        dispatch_async(v21, block);
      }

      return;
    }

    v14 = v11;
    if (xpc_dictionary_get_value(a2, "auth_error_string"))
    {
      if (xpc_dictionary_get_value(a2, "auth_error_code"))
      {
        v15 = xpc_dictionary_get_uint64(a2, "auth_error_code");
      }

      else
      {
        v15 = 2;
      }

      string = xpc_dictionary_get_string(a2, "auth_error_string");
      CFError_with_user_info = _tcc_util_create_CFError_with_user_info(v15, @"server error: %s", string);
      v16 = xpc_dictionary_get_BOOL(a2, "TCCD_MSG_ALLOW_STANDARD_USER_TO_SET_SYSTEM_SERVICE");
      if (CFError_with_user_info)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = xpc_dictionary_get_BOOL(a2, "TCCD_MSG_ALLOW_STANDARD_USER_TO_SET_SYSTEM_SERVICE");
    }

    v18 = v16;
    tcc_authorization_record_create();
    v13 = v19;
    if (v19)
    {
      v20 = *(a1 + 48);
      tcc_authorization_record_set_service(v19);
      tcc_authorization_record_set_authorization_value(v13, uint64);
      tcc_authorization_record_set_authorization_reason(v13, v10);
      tcc_authorization_record_set_version(v13, v14);
      tcc_authorization_record_set_allow_standard_user_to_set_system_service(v13, v18);
    }

    CFError_with_user_info = 0;
    v12 = 1;
    goto LABEL_23;
  }

  v6 = tcc_log_handle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  v8 = *MEMORY[0x1E69E9E28];
  if (v7)
  {
    ___tcc_server_send_prompt_authorization_value_block_invoke_2_cold_1(a2, *MEMORY[0x1E69E9E28]);
  }

  v9 = xpc_dictionary_get_string(a2, v8);
  _tcc_util_create_CFError_with_user_info(2, @"%s", v9);
}

uint64_t ___tcc_server_send_prompt_authorization_value_block_invoke_100(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  result = *(a1 + 40);
  if (result)
  {

    return tcc_release();
  }

  return result;
}

void ___tcc_server_send_prompt_authorization_value_block_invoke_2_104(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (_tcc_server_resource_use_queue_resource_use_queue_once != -1)
    {
      ___tcc_server_send_prompt_authorization_value_block_invoke_2_104_cold_1();
    }

    v2 = _tcc_server_resource_use_queue_resource_use_queue;
    v3 = *(a1 + 32);

    dispatch_sync(v2, v3);
  }

  else
  {
    if (_tcc_server_resource_use_queue_resource_use_queue_once != -1)
    {
      ___tcc_server_send_prompt_authorization_value_block_invoke_2_104_cold_1();
    }

    v4 = _tcc_server_resource_use_queue_resource_use_queue;
    v5 = *(a1 + 32);

    dispatch_async(v4, v5);
  }
}

dispatch_queue_t ___tcc_server_resource_use_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.TCC.send_report_resource_use", 0);
  _tcc_server_resource_use_queue_resource_use_queue = result;
  return result;
}

BOOL ___tcc_server_send_get_authorization_records_block_invoke_114(void *a1, uint64_t a2, void *a3)
{
  v4 = tcc_server_convert_xpc_object_to_record(a3, a1[6], a1[7], a1[8]);
  v5 = *(*(a1[5] + 8) + 24);
  if (!v5)
  {
    v6 = v4;
    (*(a1[4] + 16))();
    if (v6)
    {
      tcc_release();
    }
  }

  return v5 == 0;
}

void ___tcc_server_send_get_identity_for_credential_block_invoke_127(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  if (*(a1 + 40))
  {
    tcc_release();
  }

  v4 = *(a1 + 48);
  if (v4)
  {

    CFRelease(v4);
  }
}

void ___tcc_server_send_get_identity_for_credential_block_invoke_2_131(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (_tcc_server_attribution_ipc_queue_attribution_queue_once != -1)
    {
      ___tcc_server_send_get_identity_for_credential_block_invoke_2_131_cold_1();
    }

    v2 = _tcc_server_attribution_ipc_queue_attribution_queue;
    v3 = *(a1 + 32);

    dispatch_sync(v2, v3);
  }

  else
  {
    if (_tcc_server_attribution_ipc_queue_attribution_queue_once != -1)
    {
      ___tcc_server_send_get_identity_for_credential_block_invoke_2_131_cold_1();
    }

    v4 = _tcc_server_attribution_ipc_queue_attribution_queue;
    v5 = *(a1 + 32);

    dispatch_async(v4, v5);
  }
}

dispatch_queue_t ___tcc_server_attribution_ipc_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.TCC.send_get_identity_for_credential", 0);
  _tcc_server_attribution_ipc_queue_attribution_queue = result;
  return result;
}

void ___tcc_server_send_report_resource_use_block_invoke(uint64_t a1)
{
  length = 0;
  value = xpc_dictionary_get_value(*(a1 + 40), "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");
  if (value && (v3 = value, xpc_dictionary_get_uint64(value, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_TYPE_KEY") == 1))
  {
    data = xpc_dictionary_get_data(v3, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_DATA_KEY", &length);
  }

  else
  {
    data = 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(v6 + 72);
  v8 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___tcc_server_send_report_resource_use_block_invoke_2;
  v9[3] = &unk_1E7AE0FF0;
  v10 = v8;
  v9[4] = *(a1 + 32);
  v9[5] = v5;
  v9[6] = v6;
  tccd_send_v2(v7, 0, v8, data, v5, v9);
}

void ___tcc_server_send_report_resource_use_block_invoke_2(uint64_t a1, void *a2)
{
  xpc_release(*(a1 + 40));
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    v5 = tcc_log_handle();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    v7 = *MEMORY[0x1E69E9E28];
    if (v6)
    {
      ___tcc_server_send_report_resource_use_block_invoke_2_cold_1(a2, *MEMORY[0x1E69E9E28]);
    }

    v8 = a2;
    v9 = v7;
  }

  else
  {
    if (xpc_dictionary_get_BOOL(a2, "result"))
    {
      CFError_with_user_info = 0;
      goto LABEL_9;
    }

    v9 = *MEMORY[0x1E69E9E28];
    v8 = a2;
  }

  string = xpc_dictionary_get_string(v8, v9);
  CFError_with_user_info = _tcc_util_create_CFError_with_user_info(2, @"%s", string);
LABEL_9:
  if (*(a1 + 56))
  {
    (*(*(a1 + 32) + 16))();
    _Block_release(*(a1 + 32));
    if (CFError_with_user_info)
    {
      CFRelease(CFError_with_user_info);
    }
  }

  else
  {
    v11 = *(*(a1 + 48) + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___tcc_server_send_report_resource_use_block_invoke_139;
    block[3] = &unk_1E7AE0FC8;
    block[4] = *(a1 + 32);
    block[5] = CFError_with_user_info;
    dispatch_async(v11, block);
  }
}

void ___tcc_server_send_report_resource_use_block_invoke_139(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void ___tcc_server_send_report_resource_use_block_invoke_2_143(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (_tcc_server_resource_use_queue_resource_use_queue_once != -1)
    {
      ___tcc_server_send_prompt_authorization_value_block_invoke_2_104_cold_1();
    }

    v2 = _tcc_server_resource_use_queue_resource_use_queue;
    v3 = *(a1 + 32);

    dispatch_sync(v2, v3);
  }

  else
  {
    if (_tcc_server_resource_use_queue_resource_use_queue_once != -1)
    {
      ___tcc_server_send_prompt_authorization_value_block_invoke_2_104_cold_1();
    }

    v4 = _tcc_server_resource_use_queue_resource_use_queue;
    v5 = *(a1 + 32);

    dispatch_async(v4, v5);
  }
}

void ___tcc_server_send_get_authorization_records_by_services_block_invoke(uint64_t a1, void *a2)
{
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    if (MEMORY[0x1B2732690](a2) != MEMORY[0x1E69E9E98] && MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E80])
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 0x40000000;
      applier[2] = ___tcc_server_send_get_authorization_records_by_services_block_invoke_151;
      applier[3] = &unk_1E7AE1090;
      v7 = *(a1 + 32);
      xpc_dictionary_apply(a2, applier);
    }

    else
    {
      string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
      *(*(*(a1 + 40) + 8) + 24) = _tcc_util_create_CFError_with_user_info(2, @"Failed to get clients for services: %s", string);
      v5 = tcc_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        ___tcc_server_send_get_authorization_records_by_services_block_invoke_cold_1();
      }
    }
  }
}

BOOL ___tcc_server_send_get_authorization_records_by_services_block_invoke_151(uint64_t a1, uint64_t a2, void *a3)
{
  if (MEMORY[0x1B2732690](a3) != MEMORY[0x1E69E9E98] && MEMORY[0x1B2732690](a3) == MEMORY[0x1E69E9E50])
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = ___tcc_server_send_get_authorization_records_by_services_block_invoke_152;
    applier[3] = &unk_1E7AE1068;
    v11 = a2;
    v10 = *(a1 + 32);
    xpc_array_apply(a3, applier);
    return *(*(*(a1 + 40) + 8) + 24) == 0;
  }

  else
  {
    string = xpc_dictionary_get_string(a3, *MEMORY[0x1E69E9E28]);
    *(*(*(a1 + 40) + 8) + 24) = _tcc_util_create_CFError_with_user_info(2, @"Failed to get clients for services: %s", string);
    v7 = tcc_log_handle();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      ___tcc_server_send_get_authorization_records_by_services_block_invoke_cold_1();
      return 0;
    }
  }

  return result;
}

BOOL ___tcc_server_send_get_authorization_records_by_services_block_invoke_152(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = tcc_service_singleton_for_name(*(a1 + 48));
  v6 = tcc_server_convert_xpc_object_to_record(a3, v5, 0, 0);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (!v7)
  {
    v8 = v6;
    (*(*(a1 + 32) + 16))();
    if (v8)
    {
      tcc_release();
    }
  }

  return v7 == 0;
}

void ___tcc_server_send_get_authorization_records_by_services_block_invoke_157(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 56) + 72);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___tcc_server_send_get_authorization_records_by_services_block_invoke_2;
    v12[3] = &unk_1E7AE10E0;
    v14 = *(a1 + 48);
    v15 = v3;
    v13 = *(a1 + 32);
    v16 = *(a1 + 76);
    v5 = v12;
  }

  else
  {
    v6 = _Block_copy(*(a1 + 32));
    v3 = *(a1 + 64);
    v7 = *(*(a1 + 56) + 72);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___tcc_server_send_get_authorization_records_by_services_block_invoke_3;
    v8[3] = &unk_1E7AE1108;
    v8[4] = v6;
    v10 = v3;
    v9 = *(a1 + 40);
    v2 = *(a1 + 72);
    v11 = *(a1 + 76);
    v5 = v8;
    v4 = v7;
  }

  tccd_send_v2(v4, 0, v2, 0, v3, v5);
}

void ___tcc_server_send_get_authorization_records_by_services_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  xpc_release(*(a1 + 56));
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    (*(*(a1 + 40) + 16))();
    CFRelease(*(*(*(a1 + 48) + 8) + 24));
  }

  else if (*(a1 + 64))
  {
    (*(*(a1 + 40) + 16))();
  }

  v2 = *(a1 + 40);

  _Block_release(v2);
}

void ___tcc_server_send_get_authorization_records_by_services_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  xpc_release(*(a1 + 56));
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    (*(*(a1 + 40) + 16))();
    CFRelease(*(*(*(a1 + 48) + 8) + 24));
  }

  else if (*(a1 + 64))
  {
    (*(*(a1 + 40) + 16))();
  }

  _Block_release(*(a1 + 40));
  v2 = *(a1 + 32);

  _Block_release(v2);
}

void ___tcc_server_send_analytics_for_external_service_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B2732690](a2) == MEMORY[0x1E69E9E98])
  {
    *(*(*(a1 + 32) + 8) + 24) = _tcc_util_create_CFError_with_user_info(2, @"Failed to report external prompt");
    v4 = tcc_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___tcc_server_send_analytics_for_external_service_block_invoke_cold_2();
    }
  }

  else
  {
    v3 = tcc_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___tcc_server_send_analytics_for_external_service_block_invoke_cold_1();
    }
  }

  xpc_release(*(a1 + 40));
}

const __CFNumber *tcc_identity_create_from_external_representation(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, kTCCIdentityType);
  v4 = Value;
  if (!Value)
  {
    return v4;
  }

  v5 = CFGetTypeID(Value);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  v6 = CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
  v4 = 0;
  if (v6 && valuePtr <= 3)
  {
    v7 = CFDictionaryGetValue(a1, kTCCIdentityIdentifier);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID())
      {
        v10 = CFDictionaryGetValue(a1, kTCCIdentityCodeRequirementString);
        v11 = v10;
        if (!v10 || (v12 = CFGetTypeID(v10), v12 == CFStringGetTypeID()))
        {
          tcc_identity_alloc(88, &identity_object_ops);
          v4 = v13;
          *(v13 + 7) = valuePtr;
          *(v13 + 8) = stringCopyUTF8String(v8);
          if (v11)
          {
            *(v4 + 9) = 1;
            *(v4 + 10) = stringCopyUTF8String(v11);
          }

          else
          {
            *(v4 + 9) = 0;
          }

          return v4;
        }
      }
    }

    return 0;
  }

  return v4;
}

char *tcc_identity_set_verifier_code_requirement_string(uint64_t a1, char *__s1)
{
  result = strdup(__s1);
  *(a1 + 72) = 1;
  *(a1 + 80) = result;
  return result;
}

uint64_t tcc_identity_get_verifier_code_requirement_string(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    return *(a1 + 80);
  }

  else
  {
    return 0;
  }
}

CFDictionaryRef tcc_identity_copy_external_representation(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  v4 = CFNumberCreate(0, kCFNumberSInt64Type, (a1 + 56));
  if (!v4)
  {
    Copy = 0;
    v7 = v3;
LABEL_15:
    CFRelease(v7);
    return Copy;
  }

  v5 = v4;
  CFDictionarySetValue(v3, kTCCIdentityType, v4);
  v6 = CFStringCreateWithCString(0, *(a1 + 64), 0x8000100u);
  if (!v6)
  {
    Copy = 0;
    v7 = 0;
    goto LABEL_12;
  }

  CFDictionarySetValue(v3, kTCCIdentityIdentifier, v6);
  if (*(a1 + 72) != 1)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v7 = CFStringCreateWithCString(0, *(a1 + 80), 0x8000100u);
  if (v7)
  {
    CFDictionarySetValue(v3, kTCCIdentityCodeRequirementString, v7);
LABEL_11:
    Copy = CFDictionaryCreateCopy(0, v3);
    goto LABEL_12;
  }

  Copy = 0;
LABEL_12:
  CFRelease(v3);
  CFRelease(v5);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    goto LABEL_15;
  }

  return Copy;
}