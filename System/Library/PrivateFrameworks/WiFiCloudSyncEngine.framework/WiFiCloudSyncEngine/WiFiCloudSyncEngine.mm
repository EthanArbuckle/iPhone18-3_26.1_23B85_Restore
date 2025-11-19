uint64_t OUTLINED_FUNCTION_2()
{

  return _os_log_send_and_compose_impl();
}

void WiFiCloudSyncEngineLoggerLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a4 arguments:&a9];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %s: %@", a2, a3, v12];
  LogCallbackFunction = WiFiCloudSyncEngineGetLogCallbackFunction(a1);
  if (LogCallbackFunction)
  {
    LogCallbackFunction(v13);
  }

  else
  {
    NSLog(&cfstr_NoClientLogger.isa, "Oct 22 2025", "21:20:44", v13);
  }
}

void *WiFiCloudSyncEngineCreate()
{
  if (!__wiFiCloudEngineTypeID)
  {
    pthread_once(&__wiFiCloudEngineTypeInit, __WiFiCloudSyncEngineRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v1 = Instance;
    Instance[16] = 0u;
    Instance[17] = 0u;
    Instance[14] = 0u;
    Instance[15] = 0u;
    Instance[12] = 0u;
    Instance[13] = 0u;
    Instance[10] = 0u;
    Instance[11] = 0u;
    Instance[8] = 0u;
    Instance[9] = 0u;
    Instance[6] = 0u;
    Instance[7] = 0u;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    v2 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v1[18] = Mutable;
    if (!Mutable)
    {
      goto LABEL_13;
    }

    v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
    v1[30] = v4;
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = [[WiFiCloudSyncEngineCore alloc] initWithEncryptedKVS:0];
    v1[5] = v5;
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = [[WiFiCloudSyncEngineCore alloc] initWithEncryptedKVS:1];
    v1[6] = v6;
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = dispatch_queue_create("com.apple.wifi.wcse.serialQ.circleChanges", 0);
    v1[27] = v7;
    if (!v7 || (v8 = dispatch_source_create(MEMORY[0x277D85CE0], 0, 0, v7), (v1[28] = v8) == 0) || (v9 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v10 = dispatch_queue_create("com.apple.wifi.wcse.kvs_events", v9), (v1[34] = v10) == 0) || (v11 = dispatch_semaphore_create(4), (v1[35] = v11) == 0))
    {
LABEL_13:
      CFRelease(v1);
      return 0;
    }
  }

  else
  {
    WiFiCloudSyncEngineCreate_cold_1();
    return v13;
  }

  return v1;
}

void WiFiCloudSyncEngineScheduleWithQueue(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "WiFiCloudSyncEngineScheduleWithQueue";
      v8 = 2080;
      v9 = "WiFiCloudSyncEngine.m";
      v10 = 1024;
      v11 = 735;
      _os_log_send_and_compose_impl();
    }

    __WiFiCloudSyncEngineSetupKeychainChangedNotification(a1);
    v3 = *(a1 + 224);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __WiFiCloudSyncEngineScheduleWithQueue_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    dispatch_resume(*(a1 + 224));
    __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification(a1);
  }

  else
  {
    WiFiCloudSyncEngineScheduleWithQueue_cold_1();
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __WiFiCloudSyncEngineSetupKeychainChangedNotification(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  if (!a1)
  {
    result = __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_3();
    goto LABEL_14;
  }

  if (*(a1 + 16) && *(a1 + 24))
  {
    v2 = *(a1 + 200);
    if (!v2)
    {
      notify_port = 0;
      result = notify_register_mach_port(kKeychainChangedNotificationName, &notify_port, 0, (a1 + 192));
      if (result)
      {
        goto LABEL_14;
      }

      result = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], notify_port, __WiFiCloudSyncEngineKeychainChangedNotificationCallback, &context, 0);
      *(a1 + 200) = result;
      if (!result)
      {
        goto LABEL_14;
      }

      v2 = result;
    }

    if (!*(a1 + 208))
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], v2, 0);
      *(a1 + 208) = RunLoopSource;
      if (!RunLoopSource)
      {
        result = __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_1();
        goto LABEL_14;
      }
    }
  }

  else if (!*(a1 + 32))
  {
    result = __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_2();
    goto LABEL_14;
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    notify_port = 136315650;
    v8 = "__WiFiCloudSyncEngineSetupKeychainChangedNotification";
    v9 = 2080;
    v10 = "WiFiCloudSyncEngine.m";
    v11 = 1024;
    v12 = 978;
    result = _os_log_send_and_compose_impl();
  }

LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineScheduleWithQueue_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    data = dispatch_source_get_data(*(*(a1 + 32) + 224));
    v7 = 136315906;
    v8 = "WiFiCloudSyncEngineScheduleWithQueue_block_invoke";
    v9 = 2080;
    v10 = "WiFiCloudSyncEngine.m";
    v11 = 1024;
    v12 = 741;
    v13 = 2048;
    v14 = data;
    LODWORD(v6) = 38;
    v5 = &v7;
    _os_log_send_and_compose_impl();
  }

  [*(*(a1 + 32) + 40) queryKeychainSyncState];
  result = [*(*(a1 + 32) + 48) queryKeychainSyncState];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  if (!a1)
  {
    __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_3();
    goto LABEL_17;
  }

  if (*(a1 + 16) && *(a1 + 24))
  {
    v2 = *(a1 + 176);
    if (!v2)
    {
      notify_port = 0;
      if (notify_register_mach_port(*MEMORY[0x277CDBDA0], &notify_port, 0, (a1 + 168)))
      {
        goto LABEL_17;
      }

      v3 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], notify_port, __WiFiCloudSyncEngineKeychainSyncStateChanged, &context, 0);
      *(a1 + 176) = v3;
      if (!v3)
      {
        goto LABEL_17;
      }

      v2 = v3;
    }

    RunLoopSource = *(a1 + 184);
    if (!RunLoopSource)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], v2, 0);
      *(a1 + 184) = RunLoopSource;
      if (!RunLoopSource)
      {
        __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_1();
        goto LABEL_17;
      }
    }

    CFRunLoopAddSource(*(a1 + 16), RunLoopSource, *(a1 + 24));
  }

  else if (!*(a1 + 32))
  {
    __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_2();
    goto LABEL_17;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *MEMORY[0x277CDBDA0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ____WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_block_invoke;
    handler[3] = &__block_descriptor_40_e8_v12__0i8l;
    handler[4] = a1;
    notify_register_dispatch(v6, (a1 + 168), v5, handler);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    notify_port = 136315650;
    v11 = "__WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification";
    v12 = 2080;
    v13 = "WiFiCloudSyncEngine.m";
    v14 = 1024;
    v15 = 939;
    _os_log_send_and_compose_impl();
  }

  WiFiCloudSyncEngineCheckKeychainSyncState(a1);
LABEL_17:
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiCloudSyncEngineUnScheduleWithQueue(uint64_t result, const void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a2)
    {
      v2 = result;
      result = *(result + 32);
      if (result)
      {
        result = CFEqual(result, a2);
        if (result)
        {
          WiFiCloudSyncEngineStopEngine(v2);
          v3 = *(v2 + 168);
          if (v3)
          {
            notify_cancel(v3);
          }

          result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            result = _os_log_send_and_compose_impl();
          }
        }
      }
    }
  }

  else
  {
    result = WiFiCloudSyncEngineUnScheduleWithQueue_cold_1();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void WiFiCloudSyncEngineStopEngine(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 56);
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v3)
      {
        v9 = 136315650;
        v10 = "WiFiCloudSyncEngineStopEngine";
        v11 = 2080;
        v12 = "WiFiCloudSyncEngine.m";
        v13 = 1024;
        v14 = 1374;
        LODWORD(v8) = 28;
        v7 = &v9;
        _os_log_send_and_compose_impl();
      }

      *(a1 + 56) = 0;
      [*(a1 + 40) enableIcloudSyncing:0 ForBundleId:{0, v7, v8}];
      [*(a1 + 48) enableIcloudSyncing:0 ForBundleId:0];
      v4 = *(a1 + 144);
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v5)
        {
          v9 = 136315650;
          v10 = "__WiFiCloudSyncEngineFlushWaitingForPasswordList";
          v11 = 2080;
          v12 = "WiFiCloudSyncEngine.m";
          v13 = 1024;
          v14 = 2802;
          _os_log_send_and_compose_impl();
        }

        __WiFiCloudSyncEngineStopKeychainChangedNotifications(a1);
        CFArrayRemoveAllValues(*(a1 + 144));
      }

      else
      {
        WiFiCloudSyncEngineStopEngine_cold_1(v5);
      }
    }

    else if (v3)
    {
      v9 = 136315650;
      v10 = "WiFiCloudSyncEngineStopEngine";
      v11 = 2080;
      v12 = "WiFiCloudSyncEngine.m";
      v13 = 1024;
      v14 = 1370;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    WiFiCloudSyncEngineStopEngine_cold_2();
  }

  v6 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEngineScheduleWithRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    *(a1 + 32) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "WiFiCloudSyncEngineScheduleWithRunLoop";
      v9 = 2080;
      v10 = "WiFiCloudSyncEngine.m";
      v11 = 1024;
      v12 = 789;
      _os_log_send_and_compose_impl();
    }

    __WiFiCloudSyncEngineSetupKeychainChangedNotification(a1);
    v4 = *(a1 + 224);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __WiFiCloudSyncEngineScheduleWithRunLoop_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = a1;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(*(a1 + 224));
    __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification(a1);
  }

  else
  {
    WiFiCloudSyncEngineScheduleWithRunLoop_cold_1();
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __WiFiCloudSyncEngineScheduleWithRunLoop_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    data = dispatch_source_get_data(*(*(a1 + 32) + 224));
    v7 = 136315906;
    v8 = "WiFiCloudSyncEngineScheduleWithRunLoop_block_invoke";
    v9 = 2080;
    v10 = "WiFiCloudSyncEngine.m";
    v11 = 1024;
    v12 = 795;
    v13 = 2048;
    v14 = data;
    LODWORD(v6) = 38;
    v5 = &v7;
    _os_log_send_and_compose_impl();
  }

  [*(*(a1 + 32) + 40) queryKeychainSyncState];
  result = [*(*(a1 + 32) + 48) queryKeychainSyncState];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineUnScheduleWithRunLoop(uint64_t result, void *cf2, const __CFString *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (cf2)
    {
      v4 = result;
      result = *(result + 16);
      if (result)
      {
        if (a3)
        {
          if (*(v4 + 24))
          {
            result = CFEqual(result, cf2);
            if (result)
            {
              result = CFEqual(*(v4 + 24), a3);
              if (result)
              {
                WiFiCloudSyncEngineStopEngine(v4);
                CFRunLoopRemoveSource(cf2, *(v4 + 184), a3);
                result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                if (result)
                {
                  result = _os_log_send_and_compose_impl();
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = WiFiCloudSyncEngineUnScheduleWithRunLoop_cold_1();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (a4)
      {
        if (v8)
        {
          v14 = *a2;
          _os_log_send_and_compose_impl();
        }

        if (a2[5])
        {
          if (a2[1])
          {
            if (a2[3])
            {
              if (a2[6])
              {
                if (a2[2])
                {
                  if (a2[7])
                  {
                    if (a2[4])
                    {
                      *(a1 + 136) = a3;
                      *(a1 + 64) = *a2;
                      v9 = *(a2 + 1);
                      v10 = *(a2 + 2);
                      v11 = *(a2 + 3);
                      *(a1 + 128) = a2[8];
                      *(a1 + 96) = v10;
                      *(a1 + 112) = v11;
                      *(a1 + 80) = v9;

                      *(a1 + 160) = [a4 copy];
                      [*(a1 + 40) registerCallback:__WiFiCloudSyncEngineCloudEventCallback context:a1];
                      [*(a1 + 48) registerCallback:__WiFiCloudSyncEngineCloudEventCallback context:a1];
                      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                      if (result)
                      {
                        result = _os_log_send_and_compose_impl();
                      }
                    }

                    else
                    {
                      result = WiFiCloudSyncEngineRegisterCallbacks_cold_1();
                    }
                  }

                  else
                  {
                    result = WiFiCloudSyncEngineRegisterCallbacks_cold_2();
                  }
                }

                else
                {
                  result = WiFiCloudSyncEngineRegisterCallbacks_cold_3();
                }
              }

              else
              {
                result = WiFiCloudSyncEngineRegisterCallbacks_cold_4();
              }
            }

            else
            {
              result = WiFiCloudSyncEngineRegisterCallbacks_cold_5();
            }
          }

          else
          {
            result = WiFiCloudSyncEngineRegisterCallbacks_cold_6();
          }
        }

        else
        {
          result = WiFiCloudSyncEngineRegisterCallbacks_cold_7();
        }
      }

      else
      {
        result = WiFiCloudSyncEngineRegisterCallbacks_cold_8(v8);
      }
    }

    else
    {
      result = WiFiCloudSyncEngineRegisterCallbacks_cold_9();
    }
  }

  else
  {
    result = WiFiCloudSyncEngineRegisterCallbacks_cold_10();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (a4)
      {
        if (v10)
        {
          v16 = *a2;
          _os_log_send_and_compose_impl();
        }

        if (a2[5])
        {
          if (a2[1])
          {
            if (a2[3])
            {
              if (a2[6])
              {
                if (a2[2])
                {
                  if (a2[7])
                  {
                    if (a2[4])
                    {
                      *(a1 + 136) = a3;
                      *(a1 + 64) = *a2;
                      v11 = *(a2 + 1);
                      v12 = *(a2 + 2);
                      v13 = *(a2 + 3);
                      *(a1 + 128) = a2[8];
                      *(a1 + 96) = v12;
                      *(a1 + 112) = v13;
                      *(a1 + 80) = v11;

                      *(a1 + 160) = [a4 copy];
                      [*(a1 + 40) registerCallback:__WiFiCloudSyncEngineCloudEventCallback queue:a5 context:a1];
                      [*(a1 + 48) registerCallback:__WiFiCloudSyncEngineCloudEventCallback queue:a5 context:a1];
                      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                      if (result)
                      {
                        result = _os_log_send_and_compose_impl();
                      }
                    }

                    else
                    {
                      result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_1();
                    }
                  }

                  else
                  {
                    result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_2();
                  }
                }

                else
                {
                  result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_3();
                }
              }

              else
              {
                result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_4();
              }
            }

            else
            {
              result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_5();
            }
          }

          else
          {
            result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_6();
          }
        }

        else
        {
          result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_7();
        }
      }

      else
      {
        result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_8(v10);
      }
    }

    else
    {
      result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_9();
    }
  }

  else
  {
    result = WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_10();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void WiFiCloudSyncEngineCheckKeychainSyncState(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (v2)
    {
      _os_log_send_and_compose_impl();
    }

    dispatch_source_merge_data(*(a1 + 224), 1uLL);
  }

  else
  {
    WiFiCloudSyncEngineCheckKeychainSyncState_cold_1(v2);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __WiFiCloudSyncEngineIsNetworkSyncableFromCloud(void *a1, void *a2)
{
  if (![a1 isKVSEncrypted])
  {
    if (a2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [a2 objectForKey:@"minVersion"];
        if (v6 && [v6 integerValue] >= 3)
        {
          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_2();
        }

        else
        {
          v7 = [a2 objectForKey:@"NOT_SYNCABLE"];
          if (v7 && [v7 BOOLValue])
          {
            __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_3();
          }

          else
          {
            v8 = [a2 objectForKey:@"IS_NETWORK_EAP"];
            if (v8 && [v8 BOOLValue])
            {
              __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_4();
            }

            else
            {
              v9 = [a2 objectForKey:@"IS_NETWORK_CUSTOMIZED"];
              if (v9 && [v9 BOOLValue])
              {
                __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_5();
              }

              else
              {
                v10 = [a2 objectForKey:@"IS_NETWORK_CONFIGURED"];
                if (v10 && [v10 BOOLValue])
                {
                  __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_6();
                }

                else
                {
                  v11 = [a2 objectForKey:@"AP_MODE"];
                  if (v11 && [v11 intValue] != 2)
                  {
                    __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_7();
                  }

                  else
                  {
                    v12 = [a2 objectForKey:@"IS_NETWORK_EXPIRABLE"];
                    if (v12 && [v12 BOOLValue])
                    {
                      __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_8();
                    }

                    else
                    {
                      v13 = [a2 objectForKey:@"enabled"];
                      if (v13 && ([v13 BOOLValue] & 1) == 0)
                      {
                        __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_9();
                      }

                      else
                      {
                        v14 = [a2 objectForKey:@"IS_NETWORK_CARPLAY_ONLY"];
                        if (v14 && [v14 BOOLValue])
                        {
                          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_10();
                        }

                        else if (__WiFiCloudSyncEngineIsNetworkHidden(a1, a2))
                        {
                          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_13();
                        }

                        else if (__WiFiCloudSyncEngineGetNetworkSecurity(a1, a2))
                        {
                          v15 = [a2 objectForKey:@"IS_NETWORK_CAPTIVE"];
                          if (v15 && ![v15 BOOLValue])
                          {
                            return 1;
                          }

                          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_11();
                        }

                        else
                        {
                          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_12();
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

      else
      {
        __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_1();
      }
    }

    else
    {
      __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_14();
    }

    return v16;
  }

  if (!a2)
  {
    __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_17();
    return v16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_15();
    return v16;
  }

  v4 = [a2 objectForKey:@"minVersion"];
  if (v4 && [v4 integerValue] >= 3)
  {
    __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_16();
    return v16;
  }

  return __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted(a1, a2);
}

uint64_t __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 104))
  {
    __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback_cold_1();
    v33 = v51;
    goto LABEL_43;
  }

  v6 = objc_autoreleasePoolPush();
  if (![a2 isKVSEncrypted])
  {
    v15 = (*(a1 + 104))(a3, *(a1 + 136));
    goto LABEL_41;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"SSID", @"SSID_STR"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"BSSID", @"BSSID"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isPSK", "BOOLValue"}];
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isEAP", "BOOLValue"}];
  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isWEP", "BOOLValue"}];
  v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isWPA", "BOOLValue"}];
  v12 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isWPA2", "BOOLValue"}];
  v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isWPA3", "BOOLValue"}];
  if (!v9)
  {
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"IS_NETWORK_EAP"];
    if (!v8)
    {
      goto LABEL_22;
    }

    if ((v12 & v13) == 1)
    {
      v46 = @"IE_KEY_RSN_VERSION";
      v47 = @"IE_KEY_RSN_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E3750;
      v16 = &unk_2882E3930;
      v48 = @"IE_KEY_RSN_UCIPHERS";
      v49 = @"IE_KEY_RSN_AUTHSELS";
      v17 = &unk_2882E3948;
LABEL_10:
      v53 = v16;
      v54 = v17;
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v51;
      v20 = &v46;
LABEL_20:
      v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:4];
      v22 = @"RSN_IE";
      goto LABEL_21;
    }

    if (v13)
    {
      v46 = @"IE_KEY_RSN_VERSION";
      v47 = @"IE_KEY_RSN_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E3750;
      v48 = @"IE_KEY_RSN_UCIPHERS";
      v49 = @"IE_KEY_RSN_AUTHSELS";
      v53 = &unk_2882E3960;
      v54 = &unk_2882E3978;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v46 count:4];
      v22 = @"WPA3_RSN_IE";
LABEL_21:
      [v7 setObject:v21 forKeyedSubscript:v22];
      goto LABEL_22;
    }

    if ((v11 & v12) == 1)
    {
      v46 = @"IE_KEY_WPA_VERSION";
      v47 = @"IE_KEY_WPA_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E37B0;
      v48 = @"IE_KEY_WPA_UCIPHERS";
      v49 = @"IE_KEY_WPA_AUTHSELS";
      v53 = &unk_2882E3990;
      v54 = &unk_2882E39A8;
      [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v51, &v46, 4), @"WPA_IE"}];
      v38 = @"IE_KEY_RSN_VERSION";
      v39 = @"IE_KEY_RSN_MCIPHER";
      v42 = &unk_2882E3738;
      v43 = &unk_2882E3750;
      v40 = @"IE_KEY_RSN_UCIPHERS";
      v41 = @"IE_KEY_RSN_AUTHSELS";
      v44 = &unk_2882E39C0;
      v45 = &unk_2882E39D8;
      goto LABEL_19;
    }

    if (v12)
    {
      v46 = @"IE_KEY_RSN_VERSION";
      v47 = @"IE_KEY_RSN_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E3750;
      v16 = &unk_2882E39F0;
      v48 = @"IE_KEY_RSN_UCIPHERS";
      v49 = @"IE_KEY_RSN_AUTHSELS";
      v17 = &unk_2882E3A08;
      goto LABEL_10;
    }

    if (v11)
    {
      v46 = @"IE_KEY_WPA_VERSION";
      v47 = @"IE_KEY_WPA_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E37B0;
      v36 = &unk_2882E3A20;
      v48 = @"IE_KEY_WPA_UCIPHERS";
      v49 = @"IE_KEY_WPA_AUTHSELS";
      v37 = &unk_2882E3A38;
      goto LABEL_53;
    }

LABEL_54:
    if (!v10)
    {
      goto LABEL_22;
    }

    v21 = MEMORY[0x277CBEC38];
    v22 = @"WEP";
    goto LABEL_21;
  }

  v14 = MEMORY[0x277CBEC38];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IS_NETWORK_EAP"];
  if ((v12 & v13) != 1)
  {
    if (v13)
    {
      v46 = @"IE_KEY_RSN_VERSION";
      v47 = @"IE_KEY_RSN_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E3750;
      v48 = @"IE_KEY_RSN_UCIPHERS";
      v49 = @"IE_KEY_RSN_AUTHSELS";
      v53 = &unk_2882E3840;
      v54 = &unk_2882E3858;
      v50 = @"IE_KEY_RSN_CAPS";
      v38 = @"MFP_CAPABLE";
      v39 = @"MFP_REQUIRED";
      v42 = v14;
      v43 = v14;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v38 count:2];
      [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v51, &v46, 5), @"WPA3_RSN_IE"}];
      goto LABEL_22;
    }

    if ((v11 & v12) == 1)
    {
      v46 = @"IE_KEY_WPA_VERSION";
      v47 = @"IE_KEY_WPA_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E37B0;
      v48 = @"IE_KEY_WPA_UCIPHERS";
      v49 = @"IE_KEY_WPA_AUTHSELS";
      v53 = &unk_2882E3870;
      v54 = &unk_2882E3888;
      [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v51, &v46, 4), @"WPA_IE"}];
      v38 = @"IE_KEY_RSN_VERSION";
      v39 = @"IE_KEY_RSN_MCIPHER";
      v42 = &unk_2882E3738;
      v43 = &unk_2882E37B0;
      v40 = @"IE_KEY_RSN_UCIPHERS";
      v41 = @"IE_KEY_RSN_AUTHSELS";
      v44 = &unk_2882E38A0;
      v45 = &unk_2882E38B8;
LABEL_19:
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v42;
      v20 = &v38;
      goto LABEL_20;
    }

    if (v12)
    {
      v46 = @"IE_KEY_RSN_VERSION";
      v47 = @"IE_KEY_RSN_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E3750;
      v16 = &unk_2882E38D0;
      v48 = @"IE_KEY_RSN_UCIPHERS";
      v49 = @"IE_KEY_RSN_AUTHSELS";
      v17 = &unk_2882E38E8;
      goto LABEL_10;
    }

    if (v11)
    {
      v46 = @"IE_KEY_WPA_VERSION";
      v47 = @"IE_KEY_WPA_MCIPHER";
      v51 = &unk_2882E3738;
      v52 = &unk_2882E37B0;
      v36 = &unk_2882E3900;
      v48 = @"IE_KEY_WPA_UCIPHERS";
      v49 = @"IE_KEY_WPA_AUTHSELS";
      v37 = &unk_2882E3918;
LABEL_53:
      v53 = v36;
      v54 = v37;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v46 count:4];
      v22 = @"WPA_IE";
      goto LABEL_21;
    }

    goto LABEL_54;
  }

  v46 = @"IE_KEY_RSN_VERSION";
  v47 = @"IE_KEY_RSN_MCIPHER";
  v51 = &unk_2882E3738;
  v52 = &unk_2882E3750;
  v48 = @"IE_KEY_RSN_UCIPHERS";
  v49 = @"IE_KEY_RSN_AUTHSELS";
  v53 = &unk_2882E3810;
  v54 = &unk_2882E3828;
  v50 = @"IE_KEY_RSN_CAPS";
  v38 = @"MFP_CAPABLE";
  v39 = @"MFP_REQUIRED";
  v42 = v14;
  v43 = v14;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v38 count:2];
  [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v51, &v46, 5), @"RSN_IE"}];
LABEL_22:
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isHidden", @"UserDirected"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isCaptive", @"IS_NETWORK_CAPTIVE"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWhitelistedCaptive", @"IS_NETWORK_WHITELISTING_CAPTIVE"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isExpirable", @"IS_NETWORK_EXPIRABLE"}];
  v23 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isCustom", "BOOLValue"}];
  v24 = MEMORY[0x277CBEC28];
  v25 = MEMORY[0x277CBEC38];
  if (v23)
  {
    v26 = MEMORY[0x277CBEC38];
  }

  else
  {
    v26 = MEMORY[0x277CBEC28];
  }

  [v7 setObject:v26 forKeyedSubscript:@"IS_NETWORK_CUSTOMIZED"];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"isProfileBased", "BOOLValue"}])
  {
    v27 = v25;
  }

  else
  {
    v27 = v24;
  }

  [v7 setObject:v27 forKeyedSubscript:@"IS_NETWORK_CONFIGURED"];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isAppBased", @"IS_NETWORK_APPBASED"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isCarPlayOnly", @"IS_NETWORK_CARPLAY_ONLY"}];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"isIBSS", "BOOLValue"}])
  {
    v28 = &unk_2882E3738;
  }

  else
  {
    v28 = &unk_2882E37B0;
  }

  [v7 setObject:v28 forKeyedSubscript:@"AP_MODE"];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"isAutoJoinDisabled", "BOOLValue"}])
  {
    v29 = v24;
  }

  else
  {
    v29 = v25;
  }

  [v7 setObject:v29 forKeyedSubscript:@"enabled"];
  v30 = [a3 objectForKeyedSubscript:@"lowDataMode"];
  if (v30)
  {
    if ([v30 BOOLValue])
    {
      v31 = &unk_2882E3738;
    }

    else
    {
      v31 = &unk_2882E37B0;
    }
  }

  else
  {
    v31 = &unk_2882E37E0;
  }

  [v7 setObject:v31 forKeyedSubscript:@"LOW_DATA_MODE"];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"addedAt", @"AddedAt"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"lastJoinedByUserAt", @"UserJoinedAt"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"lastJoinedBySystemAtWeek", @"lastJoinedBySystemAtWeek"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"preferredOrderTimestamp", @"UserPreferredTimestamp"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"minVersion", @"minVersion"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"NOT_SYNCABLE", @"NOT_SYNCABLE"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isPrivacyProxyEnabled", @"IS_PRIVACY_PROXY_ENABLED"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isMoving", @"IS_MOVING"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isPublic", @"IS_PUBLIC"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"was6GHzOnlyAtWeek", @"was6GHzOnlyAtWeek"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"seamlessSSIDList", @"seamlessSSIDList"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"privateMacPref", @"privateMacPref"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"prvateMacPrefTimestamp", @"prvateMacPrefTimestamp"}];
  v32 = [v7 copy];
  if (!v32)
  {
    v33 = 0;
    goto LABEL_42;
  }

  v15 = (*(a1 + 104))(v32, *(a1 + 136));
LABEL_41:
  v33 = v15;
LABEL_42:
  objc_autoreleasePoolPop(v6);
LABEL_43:
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

void WiFiCloudSyncEngineStartEngine(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 56);
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v3)
      {
        v11 = 136315650;
        v12 = "WiFiCloudSyncEngineStartEngine";
        v13 = 2080;
        v14 = "WiFiCloudSyncEngine.m";
        v15 = 1024;
        v16 = 1300;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      if (v3)
      {
        v11 = 136315650;
        v12 = "WiFiCloudSyncEngineStartEngine";
        v13 = 2080;
        v14 = "WiFiCloudSyncEngine.m";
        v15 = 1024;
        v16 = 1303;
        LODWORD(v9) = 28;
        v8 = &v11;
        _os_log_send_and_compose_impl();
      }

      [*(a1 + 40) enableIcloudSyncing:1 ForBundleId:{*(a1 + 160), v8, v9}];
      [*(a1 + 48) enableIcloudSyncing:1 ForBundleId:*(a1 + 160)];
      *(a1 + 56) = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = "WiFiCloudSyncEngineStartEngine";
        v13 = 2080;
        v14 = "WiFiCloudSyncEngine.m";
        v15 = 1024;
        v16 = 1311;
        _os_log_send_and_compose_impl();
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __WiFiCloudSyncEngineStartEngine_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      v5 = *(a1 + 32);
      if (v5)
      {
        dispatch_async(v5, v4);
      }

      else
      {
        v6 = *(a1 + 16);
        if (v6)
        {
          CFRunLoopPerformBlock(v6, *(a1 + 24), v4);
          CFRunLoopWakeUp(*(a1 + 16));
        }
      }

      _Block_release(v4);
    }
  }

  else
  {
    WiFiCloudSyncEngineStartEngine_cold_1();
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __WiFiCloudSyncEngineStartEngine_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_msgSend(*(v2 + 40) "keyValueStore")];
  v4 = [objc_msgSend(*(v2 + 48) "keyValueStore")];
  v33 = a1;
  v34 = v2;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v50 = 136315650;
      v51 = "__WiFiCloudSyncEngineMigrateToEncryptedKVS";
      v52 = 2080;
      v53 = "WiFiCloudSyncEngine.m";
      v54 = 1024;
      v55 = 528;
      LODWORD(v31) = 28;
      v29 = &v50;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    [objc_msgSend(*(v2 + 48) "keyValueStore")];
    v5 = [*(v2 + 48) keyValueStore];
    [v5 setObject:MEMORY[0x277CBEC38] forKey:@"enable_network_sync"];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [v3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v38 objects:&v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = @"WiFiCloudSyncEngineNonSSIDKeyPrefix_";
    v36 = *v39;
    do
    {
      v10 = 0;
      v35 = v8;
      do
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 length];
        v14 = [(__CFString *)v9 length];
        if (!v4 && v13 < v14)
        {
          v15 = [v3 objectForKeyedSubscript:v11];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [__WiFiCloudSyncEngineTranslateFromLegacyFormat(v15) mutableCopy];
            if (!v16)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              v42 = 136315906;
              v43 = "__WiFiCloudSyncEngineMigrateToEncryptedKVS";
              v44 = 2080;
              v45 = "WiFiCloudSyncEngine.m";
              v46 = 1024;
              v47 = 559;
              v48 = 2112;
              v49 = v15;
              LODWORD(v32) = 38;
              v30 = &v42;
              goto LABEL_20;
            }

            v17 = v16;
            v18 = v9;
            v19 = v6;
            v20 = v3;
            __WiFiCloudSyncEngineAddVersionsToCloudNetwork(v16);
            v21 = [v17 objectForKeyedSubscript:@"SSID"];
            if (v21)
            {
              v22 = v21;
              v23 = [*(v34 + 48) keyValueStore];
              [v23 setObject:v17 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", @"network.", v22)}];
              v3 = v20;
              v6 = v19;
              v9 = v18;
              v4 = 0;
              v8 = v35;
              goto LABEL_21;
            }

            v6 = v19;
            v9 = v18;
            v4 = 0;
            v8 = v35;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v42 = 136315906;
              v43 = "__WiFiCloudSyncEngineMigrateToEncryptedKVS";
              v44 = 2080;
              v45 = "WiFiCloudSyncEngine.m";
              v46 = 1024;
              v47 = 554;
              v48 = 2112;
              v49 = v15;
              LODWORD(v32) = 38;
              v30 = &v42;
LABEL_20:
              _os_log_send_and_compose_impl();
            }
          }
        }

LABEL_21:
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v38 objects:&v50 count:16];
    }

    while (v8);
  }

  [objc_msgSend(*(v34 + 48) keyValueStore];
  v24 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v25 = *(v33 + 32);
  if (v24)
  {
    [*(v25 + 40) clearKVS];
    result = [*(*(v33 + 32) + 48) clearKVS];
  }

  else
  {
    v27 = *(v25 + 48);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __WiFiCloudSyncEngineStartEngine_block_invoke_2;
    v37[3] = &unk_279EBBB50;
    v37[4] = v27;
    v37[5] = v25;
    result = [v27 pruneKVSStoreAndReply:v37];
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void __WiFiCloudSyncEngineStartEngine_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[4];
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __WiFiCloudSyncEngineStartEngine_block_invoke_3;
    block[3] = &unk_279EBBAB8;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }

  else
  {
    v4 = v2[2];
    if (v4)
    {
      v5 = v2[3];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __WiFiCloudSyncEngineStartEngine_block_invoke_4;
      v6[3] = &unk_279EBBAB8;
      v6[4] = *(a1 + 32);
      CFRunLoopPerformBlock(v4, v5, v6);
      CFRunLoopWakeUp(*(*(a1 + 40) + 16));
    }
  }
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS(void *a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    result = WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_6();
    goto LABEL_56;
  }

  if (!a2)
  {
    result = WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_5();
    goto LABEL_56;
  }

  if (!a1[14])
  {
    result = WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_4();
    goto LABEL_56;
  }

  v6 = a1[15];
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    result = WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_3(v7);
    goto LABEL_56;
  }

  if (v7)
  {
    *v58 = 136315906;
    *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
    v59 = 2080;
    v60 = "WiFiCloudSyncEngine.m";
    v61 = 1024;
    v62 = 1504;
    v63 = 2112;
    v64 = [a3 allKeys];
    LODWORD(v50) = 38;
    v48 = v58;
    _os_log_send_and_compose_impl();
    v6 = a1[15];
  }

  v8 = v6(a1[17]);
  v56 = a3;
  v52 = a1;
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (Count)
    {
      if (v11)
      {
        *v58 = 136315906;
        *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
        v59 = 2080;
        v60 = "WiFiCloudSyncEngine.m";
        v61 = 1024;
        v62 = 1515;
        v63 = 2048;
        v64 = Count;
        LODWORD(v50) = 38;
        v48 = v58;
        _os_log_send_and_compose_impl();
      }

      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v14 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          if (ValueAtIndex)
          {
            CloudFromNetworkFormatCallback = __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback(a1, a2, ValueAtIndex);
            if (CloudFromNetworkFormatCallback)
            {
              v17 = CloudFromNetworkFormatCallback;
              [v12 insertObject:CloudFromNetworkFormatCallback atIndex:i];
            }
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke;
      block[3] = &unk_279EBBB78;
      block[8] = v9;
      block[9] = a1;
      v55 = v12;
      block[4] = v12;
      block[5] = a2;
      a3 = v56;
      block[6] = v56;
      block[7] = Count;
      dispatch_async(global_queue, block);
      goto LABEL_18;
    }

    WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_1(v11);
  }

  else
  {
    WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_2();
  }

  v55 = *v58;
LABEL_18:
  v19 = [a3 count];
  v20 = [a3 allKeys];
  if (v19)
  {
    v21 = 0;
    v53 = v19;
    do
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [v20 objectAtIndex:v21];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 136316162;
        *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
        v59 = 2080;
        v60 = "WiFiCloudSyncEngine.m";
        v61 = 1024;
        v62 = 1637;
        v63 = 2048;
        v64 = v21;
        v65 = 2112;
        v66 = v23;
        LODWORD(v51) = 48;
        v49 = v58;
        _os_log_send_and_compose_impl();
      }

      if ([a2 isKVSEncrypted])
      {
        if ([v23 hasPrefix:@"network."])
        {
          v24 = [a3 objectForKey:v23];
          if (v24 && (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v54 = [v25 objectForKeyedSubscript:@"SSID"];
            v26 = [v25 objectForKeyedSubscript:@"removedAt"];
            v27 = [v25 objectForKeyedSubscript:@"addedAt"];
            v28 = __WiFiCloudSyncEngineIsCloudNetworkOnDevice(a2, v25, v55);
            if (v28)
            {
              v29 = [v28 objectForKeyedSubscript:@"addedAt"];
              [v26 timeIntervalSinceReferenceDate];
              v31 = v30;
              [v29 timeIntervalSinceReferenceDate];
              if (v31 > v32)
              {
                a3 = v56;
                v19 = v53;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v58 = 136315906;
                  *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                  v59 = 2080;
                  v60 = "WiFiCloudSyncEngine.m";
                  v61 = 1024;
                  v62 = 1657;
                  v63 = 2112;
                  v64 = v54;
                  LODWORD(v51) = 38;
                  v49 = v58;
                  _os_log_send_and_compose_impl();
                }

                WiFiCloudSyncEngineRemoveNetworkFromKnownNetworksList(v52, a2, v25);
                goto LABEL_43;
              }

              [v29 timeIntervalSinceReferenceDate];
              v34 = v33;
              [v27 timeIntervalSinceReferenceDate];
              v36 = v35;
              v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              v19 = v53;
              if (v34 < v36)
              {
                a3 = v56;
                if (v37)
                {
                  *v58 = 136315906;
                  *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                  v59 = 2080;
                  v60 = "WiFiCloudSyncEngine.m";
                  v61 = 1024;
                  v62 = 1666;
                  v63 = 2112;
                  v64 = v54;
                  LODWORD(v51) = 38;
                  v49 = v58;
                  goto LABEL_52;
                }

                goto LABEL_53;
              }

              a3 = v56;
              if (v37)
              {
                *v58 = 136315906;
                *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                v59 = 2080;
                v60 = "WiFiCloudSyncEngine.m";
                v61 = 1024;
                v62 = 1662;
                v63 = 2112;
                v64 = v54;
                LODWORD(v51) = 38;
                v49 = v58;
LABEL_42:
                _os_log_send_and_compose_impl();
              }
            }

            else
            {
              [v26 timeIntervalSinceReferenceDate];
              v42 = v41;
              [v27 timeIntervalSinceReferenceDate];
              v44 = v43;
              v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v42 <= v44)
              {
                v19 = v53;
                if (v45)
                {
                  *v58 = 136315906;
                  *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                  v59 = 2080;
                  v60 = "WiFiCloudSyncEngine.m";
                  v61 = 1024;
                  v62 = 1679;
                  v63 = 2112;
                  v64 = v54;
                  LODWORD(v51) = 38;
                  v49 = v58;
LABEL_52:
                  _os_log_send_and_compose_impl();
                }

LABEL_53:
                WiFiCloudSyncEngineAddNetworkToKnownNetworksList(v52, a2, v25);
                goto LABEL_43;
              }

              v19 = v53;
              if (v45)
              {
                *v58 = 136315906;
                *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                v59 = 2080;
                v60 = "WiFiCloudSyncEngine.m";
                v61 = 1024;
                v62 = 1675;
                v63 = 2112;
                v64 = v54;
                LODWORD(v51) = 38;
                v49 = v58;
                goto LABEL_42;
              }
            }
          }

          else
          {
            [a2 removeFromKVStore:v23];
          }
        }
      }

      else
      {
        if (!v23)
        {
          goto LABEL_43;
        }

        v38 = [v23 length];
        v39 = v38 >= [@"WiFiCloudSyncEngineNonSSIDKeyPrefix_" length];
        a3 = v56;
        if (v39)
        {
          goto LABEL_43;
        }

        v40 = [v56 objectForKey:v23];
        if (!v40)
        {
          goto LABEL_43;
        }

        v25 = v40;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_43;
        }

        if (!__WiFiCloudSyncEngineIsCloudNetworkOnDevice(a2, v25, v55))
        {
          goto LABEL_53;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 136315906;
          *&v58[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
          v59 = 2080;
          v60 = "WiFiCloudSyncEngine.m";
          v61 = 1024;
          v62 = 1699;
          v63 = 2112;
          v64 = v23;
          LODWORD(v51) = 38;
          v49 = v58;
          goto LABEL_42;
        }
      }

LABEL_43:
      objc_autoreleasePoolPop(v22);
      ++v21;
    }

    while (v19 != v21);
  }

  result = [v20 indexOfObject:{@"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS", v49, v51}];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [a2 removeFromKVStore:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"];
  }

LABEL_56:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

id __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 112))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = (*(a1 + 112))(a3, *(a1 + 136));
    if ([a2 isKVSEncrypted])
    {
      v8 = __WiFiCloudSyncEngineTranslateFromLegacyFormat(v7);

      v7 = v8;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback_cold_1();
    return v10;
  }

  return v7;
}

void __WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) < 1)
  {
    goto LABEL_40;
  }

  v34 = 0;
  v2 = 0;
  v3 = 0x277CBE000uLL;
  v4 = @"SSID_STR";
  v5 = @"SSID";
  v6 = MEMORY[0x277D86220];
  while (v2 < [*(a1 + 32) count])
  {
    v7 = objc_autoreleasePoolPush();
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v2);
    v9 = [*(a1 + 32) objectAtIndex:v2];
    v10 = *(v3 + 2752);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([*(a1 + 40) isKVSEncrypted])
      {
        v11 = v5;
      }

      else
      {
        v11 = v4;
      }

      v12 = [v9 objectForKeyedSubscript:v11];
      if (!v12)
      {
        goto LABEL_33;
      }

      v13 = v12;
      if ([*(a1 + 40) isKVSEncrypted])
      {
        v14 = [v9 objectForKeyedSubscript:@"addedAt"];
        v15 = [*(a1 + 48) objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", @"network.", v13)}];
        if (!v15 || (v16 = v15, v17 = *(v3 + 2752), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v6 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v35 = 136315906;
            v36 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
            v37 = 2080;
            v38 = "WiFiCloudSyncEngine.m";
            v39 = 1024;
            v40 = 1594;
            v41 = 2112;
            v42 = v13;
            LODWORD(v33) = 38;
            v32 = &v35;
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        v18 = v5;
        v19 = v4;
        v20 = [v16 objectForKeyedSubscript:@"removedAt"];
        v21 = [v16 objectForKeyedSubscript:@"addedAt"];
        [v20 timeIntervalSinceReferenceDate];
        v23 = v22;
        [v14 timeIntervalSinceReferenceDate];
        if (v23 <= v24)
        {
          [v21 timeIntervalSinceReferenceDate];
          v27 = v26;
          [v14 timeIntervalSinceReferenceDate];
          v29 = v28;
          v6 = MEMORY[0x277D86220];
          v30 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          v4 = v19;
          if (v27 < v29)
          {
            if (v30)
            {
              v35 = 136315906;
              v36 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
              v37 = 2080;
              v38 = "WiFiCloudSyncEngine.m";
              v39 = 1024;
              v40 = 1587;
              v41 = 2112;
              v42 = v13;
              LODWORD(v33) = 38;
              v32 = &v35;
              _os_log_send_and_compose_impl();
            }

            __WiFiCloudSyncEngineAddNetworkToCloudAndPurge(*(a1 + 72), *(a1 + 40), ValueAtIndex, 0);
            v34 = 1;
          }

          else if (v30)
          {
            v35 = 136315906;
            v36 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
            v37 = 2080;
            v38 = "WiFiCloudSyncEngine.m";
            v39 = 1024;
            v40 = 1583;
            v41 = 2112;
            v42 = v13;
            LODWORD(v33) = 38;
            v32 = &v35;
LABEL_25:
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          v6 = MEMORY[0x277D86220];
          v4 = v19;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v35 = 136315906;
            v36 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
            v37 = 2080;
            v38 = "WiFiCloudSyncEngine.m";
            v39 = 1024;
            v40 = 1579;
            v41 = 2112;
            v42 = v13;
            LODWORD(v33) = 38;
            v32 = &v35;
            goto LABEL_25;
          }
        }

        v5 = v18;
        v3 = 0x277CBE000;
        goto LABEL_33;
      }

      if (![*(a1 + 48) objectForKey:v13] || (v25 = *(v3 + 2752), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 136315906;
          v36 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
          v37 = 2080;
          v38 = "WiFiCloudSyncEngine.m";
          v39 = 1024;
          v40 = 1608;
          v41 = 2112;
          v42 = v13;
          LODWORD(v33) = 38;
          v32 = &v35;
LABEL_31:
          _os_log_send_and_compose_impl();
        }

LABEL_32:
        __WiFiCloudSyncEngineAddNetworkToCloudAndPurge(*(a1 + 72), *(a1 + 40), ValueAtIndex, 0);
        v34 = 1;
        goto LABEL_33;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315906;
        v36 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
        v37 = 2080;
        v38 = "WiFiCloudSyncEngine.m";
        v39 = 1024;
        v40 = 1604;
        v41 = 2112;
        v42 = v13;
        LODWORD(v33) = 38;
        v32 = &v35;
        goto LABEL_21;
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315650;
      v36 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
      v37 = 2080;
      v38 = "WiFiCloudSyncEngine.m";
      v39 = 1024;
      v40 = 1557;
      LODWORD(v33) = 28;
      v32 = &v35;
LABEL_21:
      _os_log_send_and_compose_impl();
    }

LABEL_33:
    objc_autoreleasePoolPop(v7);
    if (++v2 >= *(a1 + 56))
    {
      break;
    }
  }

  if (v34)
  {
    [*(a1 + 40) synchronizeKVS];
  }

LABEL_40:
  CFRelease(*(a1 + 64));
  v31 = *MEMORY[0x277D85DE8];
}

void *__WiFiCloudSyncEngineIsCloudNetworkOnDevice(void *a1, void *a2, void *a3)
{
  if (!a3)
  {
    __WiFiCloudSyncEngineIsCloudNetworkOnDevice_cold_2();
    return v16;
  }

  v6 = [a3 count];
  if (!v6)
  {
    __WiFiCloudSyncEngineIsCloudNetworkOnDevice_cold_1();
    return v16;
  }

  v7 = v6;
  if (v6 < 1)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = [a3 objectAtIndex:v8];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 isKVSEncrypted] ? @"SSID" : @"SSID_STR";
      v12 = [a2 objectForKeyedSubscript:v11];
      v13 = [a1 isKVSEncrypted] ? @"SSID" : @"SSID_STR";
      if ([v12 isEqualToString:{objc_msgSend(v10, "objectForKeyedSubscript:", v13)}])
      {
        NetworkSecurity = __WiFiCloudSyncEngineGetNetworkSecurity(a1, a2);
        if (NetworkSecurity == __WiFiCloudSyncEngineGetNetworkSecurity(a1, v10))
        {
          break;
        }
      }
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return v10;
}

void WiFiCloudSyncEngineAddNetworkToCloud(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    if (a1)
    {
      if (*(a1 + 56))
      {
        v3 = *(a1 + 48);

        __WiFiCloudSyncEngineAddNetworkToCloudAndPurge(a1, v3, cf, 1);
      }

      else
      {
        WiFiCloudSyncEngineAddNetworkToCloud_cold_1();
      }
    }

    else
    {
      WiFiCloudSyncEngineAddNetworkToCloud_cold_2();
    }
  }

  else
  {
    WiFiCloudSyncEngineAddNetworkToCloud_cold_3();
  }
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud(uint64_t a1, CFTypeRef cf)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_7();
    goto LABEL_20;
  }

  v4 = CFRetain(cf);
  if (a1)
  {
    if (*(a1 + 56))
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        if (*(a1 + 112))
        {
          CloudFromNetworkFormatCallback = __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback(a1, *(a1 + 48), cf);
          if (CloudFromNetworkFormatCallback)
          {
            v7 = CloudFromNetworkFormatCallback;
            if ([v5 isKVSEncrypted])
            {
              v8 = @"SSID";
            }

            else
            {
              v8 = @"SSID_STR";
            }

            v9 = [v7 objectForKeyedSubscript:v8];
            v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v9)
            {
              if (v10)
              {
                *v20 = 136315906;
                *&v20[4] = "WiFiCloudSyncEngineRemoveNetworkFromCloud";
                v21 = 2080;
                v22 = "WiFiCloudSyncEngine.m";
                v23 = 1024;
                v24 = 2115;
                v25 = 2112;
                v26 = v9;
                LODWORD(v17) = 38;
                v16 = v20;
                _os_log_send_and_compose_impl();
              }

              if ([v5 isKVSEncrypted])
              {
                v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"network.", v9];
                v12 = [objc_msgSend(v5 "keyValueStore")];
                if (v12)
                {
                  v13 = v12;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v14 = [v13 mutableCopy];
                    [v14 setObject:objc_msgSend(MEMORY[0x277CBEAA8] forKeyedSubscript:{"date"), @"removedAt"}];
                    v18 = v11;
                    v19 = v14;
                    [v5 addToKVStore:objc_msgSend(MEMORY[0x277CBEAC0] synchronize:{"dictionaryWithObjects:forKeys:count:", &v19, &v18, 1), 1}];
                  }
                }
              }

              else
              {
                [v5 removeFromKVStore:v9];
              }

              goto LABEL_18;
            }

            WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_1(v10, v7, v20);
          }

          else
          {
            WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_2();
          }
        }

        else
        {
          WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_3();
        }
      }

      else
      {
        WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_4();
      }
    }

    else
    {
      WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_5();
    }
  }

  else
  {
    WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_6();
  }

  v7 = *v20;
LABEL_18:

  if (v4)
  {
    CFRelease(v4);
  }

LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloud(uint64_t a1)
{
  if (!a1)
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_3();
  }

  if (!*(a1 + 56))
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_2();
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_1();
  }

  v3 = [objc_msgSend(*(a1 + 48) "keyValueStore")];

  return WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS(a1, v2, v3);
}

uint64_t WiFiCloudSyncEngineGetLogCallbackFunction(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineIsRunning()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CDBD50]);
  [v1 setContext:*MEMORY[0x277CDBD90]];
  v2 = [objc_alloc(MEMORY[0x277CDBD48]) initWithContextData:v1];
  if (v2)
  {
    v6 = 0;
    v3 = [v2 fetchUserControllableViewsSyncingEnabled:&v6];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = "WiFiCloudSyncEngineIsRunning";
      v9 = 2080;
      v10 = "WiFiCloudSyncEngine.m";
      v11 = 1024;
      v12 = 2897;
      v13 = 1024;
      v14 = v3;
      v15 = 2112;
      v16 = v6;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v3 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "WiFiCloudSyncEngineIsRunning";
      v9 = 2080;
      v10 = "WiFiCloudSyncEngine.m";
      v11 = 1024;
      v12 = 2901;
      _os_log_send_and_compose_impl();
      v3 = 0;
    }
  }

  objc_autoreleasePoolPop(v0);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t WiFiCloudSyncEngineCopyCompleteKVS(uint64_t a1, int a2)
{
  v2 = 48;
  if (a2)
  {
    v2 = 40;
  }

  v3 = [objc_msgSend(*(a1 + v2) "keyValueStore")];

  return [v3 copy];
}

uint64_t __WiFiCloudSyncEngineRegister()
{
  result = _CFRuntimeRegisterClass();
  __wiFiCloudEngineTypeID = result;
  return result;
}

void __WiFiCloudSyncEngineRelease(uint64_t a1)
{
  if (a1)
  {
    WiFiCloudSyncEngineStopEngine(a1);
    v2 = *(a1 + 176);
    if (v2)
    {
      CFMachPortInvalidate(v2);
      v3 = *(a1 + 176);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 176) = 0;
      }
    }

    v4 = *(a1 + 184);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 184) = 0;
    }

    v5 = *(a1 + 216);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      dispatch_source_cancel(v6);
      dispatch_release(*(a1 + 224));
    }

    v7 = *(a1 + 248);
    if (v7)
    {
      CFRunLoopTimerInvalidate(v7);
      v8 = *(a1 + 248);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 248) = 0;
      }
    }

    v9 = *(a1 + 256);
    if (v9)
    {
      dispatch_release(v9);
      *(a1 + 256) = 0;
    }

    v10 = *(a1 + 200);
    if (v10)
    {
      CFMachPortInvalidate(v10);
      v11 = *(a1 + 200);
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 200) = 0;
      }
    }

    v12 = *(a1 + 208);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 208) = 0;
    }

    v13 = *(a1 + 240);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 240) = 0;
    }

    v14 = *(a1 + 144);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 144) = 0;
    }

    v15 = *(a1 + 272);
    if (v15)
    {
      dispatch_release(v15);
    }

    v16 = *(a1 + 280);
    if (v16)
    {
      dispatch_release(v16);
    }

    *(a1 + 160) = 0;
    v17 = *(a1 + 48);
  }

  else
  {
    __WiFiCloudSyncEngineRelease_cold_1();
  }
}

void __WiFiCloudSyncEngineKeychainSyncStateChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v5)
    {
      _os_log_send_and_compose_impl();
    }

    WiFiCloudSyncEngineCheckKeychainSyncState(a4);
  }

  else
  {
    __WiFiCloudSyncEngineKeychainSyncStateChanged_cold_1(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineKeychainChangedNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v5)
    {
      _os_log_send_and_compose_impl();
    }

    *(a4 + 232) = 1;
    __WiFiCloudSyncEngineCheckWaitingForPasswordList(a4, *(a4 + 48));
  }

  else
  {
    __WiFiCloudSyncEngineKeychainChangedNotificationCallback_cold_1(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineCheckWaitingForPasswordList(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (!a1)
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_7();
    goto LABEL_59;
  }

  v5 = *(a1 + 144);
  if (!v5)
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_6();
    goto LABEL_59;
  }

  if (!*(a1 + 240))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_5();
    goto LABEL_59;
  }

  if (!*(a1 + 104))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_4();
    goto LABEL_59;
  }

  if (!*(a1 + 72))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_3();
    goto LABEL_59;
  }

  v6 = Current;
  if (*(a1 + 16) && *(a1 + 24) && *(a1 + 248))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_1(*(a1 + 248));
    goto LABEL_59;
  }

  if (*(a1 + 32) && *(a1 + 256))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_2(a1, Current);
    goto LABEL_59;
  }

  Count = CFArrayGetCount(v5);
  if (Count)
  {
    v8 = Count;
    if (*(a1 + 152) < Count)
    {
      v9 = objc_autoreleasePoolPush();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 152);
        v40 = 136316162;
        v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
        v42 = 2080;
        v43 = "WiFiCloudSyncEngine.m";
        v44 = 1024;
        v45 = 2614;
        v46 = 2048;
        *v47 = v8;
        *&v47[8] = 2048;
        *&v47[10] = v10;
        _os_log_send_and_compose_impl();
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), *(a1 + 152));
      NetworkFromCloudFormatCallback = __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback(a1, a2, ValueAtIndex);
      if (NetworkFromCloudFormatCallback)
      {
        v13 = CFDateCreate(*MEMORY[0x277CBECE8], v6);
        if (v13)
        {
          v14 = v13;
          if (CFArrayGetCount(*(a1 + 240)) == 5)
          {
            CFArrayRemoveValueAtIndex(*(a1 + 240), 0);
          }

          CFArrayAppendValue(*(a1 + 240), v14);
          CFRelease(v14);
        }

        v15 = (*(a1 + 88))(NetworkFromCloudFormatCallback, *(a1 + 136));
        v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v16)
          {
            v17 = *(a1 + 152);
            v40 = 136315906;
            v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
            v42 = 2080;
            v43 = "WiFiCloudSyncEngine.m";
            v44 = 1024;
            v45 = 2644;
            v46 = 2048;
            *v47 = v17;
            _os_log_send_and_compose_impl();
          }

          (*(a1 + 72))(NetworkFromCloudFormatCallback, *(a1 + 136));
          CFArrayRemoveValueAtIndex(*(a1 + 144), *(a1 + 152));
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v40 = 136315650;
            v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
            v42 = 2080;
            v43 = "WiFiCloudSyncEngine.m";
            v44 = 1024;
            v45 = 2651;
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          if (v16)
          {
            v20 = *(a1 + 152);
            v40 = 136315906;
            v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
            v42 = 2080;
            v43 = "WiFiCloudSyncEngine.m";
            v44 = 1024;
            v45 = 2639;
            v46 = 2048;
            *v47 = v20;
            _os_log_send_and_compose_impl();
          }

          ++*(a1 + 152);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v40 = 136315906;
          v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
          v42 = 2080;
          v43 = "WiFiCloudSyncEngine.m";
          v44 = 1024;
          v45 = 2620;
          v46 = 2112;
          *v47 = ValueAtIndex;
          _os_log_send_and_compose_impl();
        }

        CFArrayRemoveValueAtIndex(*(a1 + 144), *(a1 + 152));
      }

      objc_autoreleasePoolPop(v9);
LABEL_41:
      v21 = objc_autoreleasePoolPush();
      if (CFArrayGetCount(*(a1 + 240)) == 5 && (v22 = CFArrayGetValueAtIndex(*(a1 + 240), 0)) != 0 && (v24 = MEMORY[0x2743E1110](v22, v23), v6 > v24) && v6 - v24 <= 10.0)
      {
        v25 = v24 - v6 + 12.0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v40 = 136316418;
          v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
          v42 = 2080;
          v43 = "WiFiCloudSyncEngine.m";
          v44 = 1024;
          v45 = 2694;
          v46 = 1024;
          *v47 = 5;
          *&v47[4] = 2048;
          *&v47[6] = 0x4024000000000000;
          *&v47[14] = 2048;
          *&v47[16] = v25;
          _os_log_send_and_compose_impl();
        }

        if (*(a1 + 16) && *(a1 + 24))
        {
          v26 = *MEMORY[0x277CBECE8];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_51;
          block[3] = &unk_279EBBBC0;
          block[4] = a2;
          block[5] = a1;
          v27 = CFRunLoopTimerCreateWithHandler(v26, v6 + v25, 0.0, 0, 0, block);
          *(a1 + 248) = v27;
          CFRunLoopAddTimer(*(a1 + 16), v27, *(a1 + 24));
        }

        v28 = *(a1 + 32);
        if (v28)
        {
          v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v28);
          *(a1 + 256) = v29;
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_2_53;
          handler[3] = &unk_279EBBB50;
          handler[4] = a2;
          handler[5] = a1;
          dispatch_source_set_event_handler(v29, handler);
          v30 = *(a1 + 256);
          v31 = dispatch_time(0, (v25 * 1000000000.0));
          dispatch_source_set_timer(v30, v31, 0xFFFFFFFFFFFFFFFFLL, 0);
          *(a1 + 264) = v6 + v25;
          dispatch_activate(*(a1 + 256));
        }
      }

      else
      {
        v32 = *(a1 + 16);
        if (v32)
        {
          v33 = *(a1 + 24);
          if (v33)
          {
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke;
            v39[3] = &unk_279EBBB50;
            v39[4] = a2;
            v39[5] = a1;
            CFRunLoopPerformBlock(v32, v33, v39);
            CFRunLoopWakeUp(*(a1 + 16));
          }
        }

        v34 = *(a1 + 32);
        if (v34)
        {
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_2;
          v38[3] = &unk_279EBBB50;
          v38[4] = a2;
          v38[5] = a1;
          dispatch_async(v34, v38);
        }
      }

      objc_autoreleasePoolPop(v21);
      if (NetworkFromCloudFormatCallback)
      {
        CFRelease(NetworkFromCloudFormatCallback);
      }

      goto LABEL_59;
    }

    v18 = *(a1 + 232);
    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v19)
      {
        v40 = 136315906;
        v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
        v42 = 2080;
        v43 = "WiFiCloudSyncEngine.m";
        v44 = 1024;
        v45 = 2600;
        v46 = 2048;
        *v47 = v8;
        _os_log_send_and_compose_impl();
      }

      NetworkFromCloudFormatCallback = 0;
      *(a1 + 152) = 0;
      *(a1 + 232) = 0;
      goto LABEL_41;
    }

    if (v19)
    {
      v40 = 136315906;
      v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
      v42 = 2080;
      v43 = "WiFiCloudSyncEngine.m";
      v44 = 1024;
      v45 = 2607;
      v46 = 2048;
      *v47 = v8;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v40 = 136315650;
      v41 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
      v42 = 2080;
      v43 = "WiFiCloudSyncEngine.m";
      v44 = 1024;
      v45 = 2589;
      _os_log_send_and_compose_impl();
    }

    __WiFiCloudSyncEngineStopKeychainChangedNotifications(a1);
  }

LABEL_59:
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2 && (v3 = *(a1 + 24)) != 0)
    {
      v4 = *(a1 + 208);
      if (!v4)
      {
        result = __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_1();
        goto LABEL_12;
      }

      CFRunLoopRemoveSource(v2, v4, v3);
    }

    else if (!*(a1 + 32))
    {
      result = __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_3();
      goto LABEL_12;
    }

    if (*(a1 + 32))
    {
      v5 = *(a1 + 192);
      if (!v5)
      {
        result = __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_2();
        goto LABEL_12;
      }

      notify_cancel(v5);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      result = _os_log_send_and_compose_impl();
    }
  }

  else
  {
    result = __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_4();
  }

LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __WiFiCloudSyncEngineProcessCloudChangeEvent(NSObject **a1, uint64_t a2, void *a3)
{
  if (a1 && a3)
  {
    v6 = [a3 count];
    CFRetain(a1);
    dispatch_semaphore_wait(a1[35], 0xFFFFFFFFFFFFFFFFLL);
    v7 = a1[34];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ____WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke;
    v8[3] = &unk_279EBBBE8;
    v8[4] = a3;
    v8[5] = a2;
    v8[6] = v6;
    v8[7] = a1;
    dispatch_async(v7, v8);
  }

  else
  {
    __WiFiCloudSyncEngineProcessCloudChangeEvent_cold_1();
  }
}

uint64_t __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent_cold_2();
  }

  if (!a2)
  {
    return __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent_cold_1();
  }

  return [a2 readStoreValueForKey:?];
}

id __WiFiCloudSyncEngineTranslateFromLegacyFormat(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"SSID_STR", @"SSID"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"BSSID", @"BSSID"}];
  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{@"WEP", "BOOLValue"}];
  v4 = MEMORY[0x277CBEC38];
  if (v3)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = 0;
  }

  [v2 setObject:v5 forKeyedSubscript:@"isWEP"];
  if ([a1 objectForKeyedSubscript:@"WPA_IE"])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  [v2 setObject:v6 forKeyedSubscript:@"isWPA"];
  if ([a1 objectForKeyedSubscript:@"RSN_IE"])
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  [v2 setObject:v7 forKeyedSubscript:@"isWPA2"];
  if ([a1 objectForKeyedSubscript:@"WPA3_RSN_IE"])
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  [v2 setObject:v8 forKeyedSubscript:@"isWPA3"];
  if (([objc_msgSend(v2 objectForKeyedSubscript:{@"isWEP", "BOOLValue"}] & 1) == 0 && (objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", @"isWPA"), "BOOLValue") & 1) == 0 && (objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", @"isWPA2"), "BOOLValue") & 1) == 0 && (objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", @"isWPA3"), "BOOLValue") & 1) == 0)
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isOpen"];
  }

  if (([objc_msgSend(v2 objectForKeyedSubscript:{@"isOpen", "BOOLValue"}] & 1) == 0)
  {
    if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_EAP", "BOOLValue"}])
    {
      v9 = @"isEAP";
    }

    else
    {
      v9 = @"isPSK";
    }

    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v9];
  }

  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"UserDirected", @"isHidden"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_NETWORK_CAPTIVE", @"isCaptive"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_NETWORK_WHITELISTING_CAPTIVE", @"isWhitelistedCaptive"}];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_EXPIRABLE", "BOOLValue"}])
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  [v2 setObject:v10 forKeyedSubscript:@"isExpirable"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_CUSTOMIZED", "BOOLValue"}])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  [v2 setObject:v11 forKeyedSubscript:@"isCustom"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_CONFIGURED", "BOOLValue"}])
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  [v2 setObject:v12 forKeyedSubscript:@"isProfileBased"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_APPBASED", "BOOLValue"}])
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  [v2 setObject:v13 forKeyedSubscript:@"isAppBased"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_CARPLAY_ONLY", "BOOLValue"}])
  {
    v14 = v4;
  }

  else
  {
    v14 = 0;
  }

  [v2 setObject:v14 forKeyedSubscript:@"isCarPlayOnly"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"AP_MODE", "intValue"}] == 1)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  [v2 setObject:v15 forKeyedSubscript:@"isIBSS"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"enabled", "BOOLValue"}])
  {
    v16 = 0;
  }

  else
  {
    v16 = v4;
  }

  [v2 setObject:v16 forKeyedSubscript:@"isAutoJoinDisabled"];
  v17 = [a1 objectForKeyedSubscript:@"LOW_DATA_MODE"];
  if (v17)
  {
    v18 = v17;
    if ([v17 integerValue] == 1)
    {
      v19 = MEMORY[0x277CBEC38];
    }

    else
    {
      if ([v18 integerValue] != 2)
      {
        goto LABEL_50;
      }

      v19 = MEMORY[0x277CBEC28];
    }

    [v2 setObject:v19 forKeyedSubscript:@"lowDataMode"];
  }

LABEL_50:
  v20 = [a1 objectForKeyedSubscript:@"AddedAt"];
  if (!v20)
  {
    v20 = [MEMORY[0x277CBEAA8] date];
  }

  [v2 setObject:v20 forKeyedSubscript:@"addedAt"];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"UserJoinedAt", @"lastJoinedByUserAt"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"lastJoinedBySystemAtWeek", @"lastJoinedBySystemAtWeek"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"UserPreferredTimestamp", @"preferredOrderTimestamp"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"minVersion", @"minVersion"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"NOT_SYNCABLE", @"NOT_SYNCABLE"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_PRIVACY_PROXY_ENABLED", @"isPrivacyProxyEnabled"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_MOVING", @"isMoving"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_PUBLIC", @"isPublic"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"was6GHzOnlyAtWeek", @"was6GHzOnlyAtWeek"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"seamlessSSIDList", @"seamlessSSIDList"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"privateMacPref", @"privateMacPref"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"prvateMacPrefTimestamp", @"prvateMacPrefTimestamp"}];
  v21 = [v2 copy];

  return v21;
}

uint64_t __WiFiCloudSyncEngineAddVersionsToCloudNetwork(void *a1)
{
  if (!a1)
  {
    return __WiFiCloudSyncEngineAddVersionsToCloudNetwork_cold_2();
  }

  result = [a1 objectForKeyedSubscript:@"addedByVersion"];
  if (!result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
    v4 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{@"ProductBuildVersion", "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_2882E33B8), "stringByReplacingOccurrencesOfString:withString:", @".", @"_", "lowercaseString"}];
    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{@"ProductVersion", "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_2882E33B8), "stringByReplacingOccurrencesOfString:withString:", @".", @"_", "lowercaseString"}];
    v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{@"ProductName", "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_2882E33B8), "stringByReplacingOccurrencesOfString:withString:", @".", @"_", "lowercaseString"}];
    v7 = *MEMORY[0x277CD28A0];
    v8 = IOServiceMatching("IOPlatformExpertDevice");
    MatchingService = IOServiceGetMatchingService(v7, v8);
    if (MatchingService)
    {
      __WiFiCloudSyncEngineAddVersionsToCloudNetwork_cold_1(MatchingService, &v13);
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_msgSend(objc_msgSend(v10 stringByReplacingOccurrencesOfString:@" " withString:{&stru_2882E33B8), "stringByReplacingOccurrencesOfString:withString:", @".", @"_", "lowercaseString"}];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.%@.%ld", v6, v5, v4, v11, 2];

    return [a1 setObject:v12 forKeyedSubscript:@"addedByVersion"];
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted(void *a1, void *a2)
{
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [a2 objectForKey:@"NOT_SYNCABLE"];
      if (v4 && [v4 BOOLValue])
      {
        __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_2();
        return v16;
      }

      else
      {
        v5 = [a2 objectForKey:@"isEAP"];
        if (v5 && [v5 BOOLValue])
        {
          __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_3();
          return v17;
        }

        else
        {
          v6 = [a2 objectForKey:@"isCustom"];
          if (v6 && [v6 BOOLValue])
          {
            __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_4();
            return v18;
          }

          else
          {
            v7 = [a2 objectForKey:@"isProfileBased"];
            if (v7 && [v7 BOOLValue])
            {
              __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_5();
              return v19;
            }

            else
            {
              v8 = [a2 objectForKey:@"isIBSS"];
              if (v8 && [v8 BOOLValue])
              {
                __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_6();
                return v20;
              }

              else
              {
                v9 = [a2 objectForKey:@"isExpirable"];
                if (v9 && [v9 BOOLValue])
                {
                  __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_7();
                  return v21;
                }

                else
                {
                  v10 = [a2 objectForKey:@"isAutoJoinDisabled"];
                  if (v10 && [v10 BOOLValue])
                  {
                    __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_8();
                    return v22;
                  }

                  else
                  {
                    v11 = [a2 objectForKey:@"isCarPlayOnly"];
                    if (v11 && [v11 BOOLValue])
                    {
                      __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_9();
                      return v23;
                    }

                    else if (__WiFiCloudSyncEngineIsNetworkHidden(a1, a2))
                    {
                      __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_12();
                      return v26;
                    }

                    else
                    {
                      v12 = [a2 objectForKey:@"isOpen"];
                      if (v12 && [v12 BOOLValue])
                      {
                        __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_10();
                        return v24;
                      }

                      else
                      {
                        v13 = [a2 objectForKey:@"isCaptive"];
                        if (!v13 || [v13 BOOLValue])
                        {
                          __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_11();
                          return v25;
                        }

                        else
                        {
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

    else
    {
      __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_1();
      return v15;
    }
  }

  else
  {
    __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_13();
    return v27;
  }
}

uint64_t __WiFiCloudSyncEngineIsNetworkHidden(void *a1, void *a2)
{
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 isKVSEncrypted])
      {
        v4 = @"isHidden";
      }

      else
      {
        v4 = @"UserDirected";
      }

      v5 = [a2 objectForKey:v4];
      if (v5)
      {

        return [v5 BOOLValue];
      }

      else
      {
        __WiFiCloudSyncEngineIsNetworkHidden_cold_2();
        return v8;
      }
    }

    else
    {
      __WiFiCloudSyncEngineIsNetworkHidden_cold_1();
      return v7;
    }
  }

  else
  {
    __WiFiCloudSyncEngineIsNetworkHidden_cold_3();
    return v9;
  }
}

BOOL OUTLINED_FUNCTION_23()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void __WiFiCloudSyncEngineCloudEventCallback(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22();
  if ([v6 isKVSEncrypted])
  {
    v7 = [objc_msgSend(v3 objectForKey:{@"reason", "intValue"}];
    v8 = [v3 objectForKey:@"changedKeys"];
    switch(v7)
    {
      case 0:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      case 1:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_13:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_2_0();
          _os_log_send_and_compose_impl();
        }

LABEL_14:
        __WiFiCloudSyncEngineProcessCloudChangeEvent(a3, v4, v8);
        goto LABEL_15;
      case 2:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      case 3:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

LABEL_10:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_6();
        break;
      default:
        goto LABEL_15;
    }

LABEL_11:
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEngineAddNetworkToKnownNetworksList(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_22();
  if (__WiFiCloudSyncEngineIsNetworkSyncableFromCloud(v6, a3))
  {
    NetworkSecurity = __WiFiCloudSyncEngineGetNetworkSecurity(v3, a3);
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (NetworkSecurity)
    {
      if (v8)
      {
        LODWORD(handler) = 136315650;
        *(&handler + 4) = "WiFiCloudSyncEngineAddNetworkToKnownNetworksList";
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_2_0();
        _os_log_send_and_compose_impl();
      }

      v9 = *(v4 + 144);
      if (v9)
      {
        Count = CFArrayGetCount(v9);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(handler) = 136315906;
          *(&handler + 4) = "__WiFiCloudSyncEngineAddToWaitingForPasswordList";
          OUTLINED_FUNCTION_5();
          LODWORD(v26) = 2752;
          WORD2(v26) = 2048;
          *(&v26 + 6) = Count;
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_2_0();
          _os_log_send_and_compose_impl();
        }

        if ([v3 isKVSEncrypted])
        {
          v11 = @"SSID";
        }

        else
        {
          v11 = @"SSID_STR";
        }

        v12 = [a3 objectForKeyedSubscript:v11];
        if (v12)
        {
          v13 = v12;
          if (Count >= 1)
          {
            v14 = 0;
            do
            {
              v15 = objc_autoreleasePoolPush();
              ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 144), v14);
              if ([v3 isKVSEncrypted])
              {
                v17 = @"SSID";
              }

              else
              {
                v17 = @"SSID_STR";
              }

              v18 = [ValueAtIndex objectForKeyedSubscript:v17];
              if (v18 && ![v18 compare:v13])
              {
                CFArrayRemoveValueAtIndex(*(v4 + 144), v14);
              }

              else
              {
                ++v14;
              }

              Count = CFArrayGetCount(*(v4 + 144));
              objc_autoreleasePoolPop(v15);
            }

            while (v14 < Count);
          }

          CFArrayAppendValue(*(v4 + 144), a3);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(handler) = 136315906;
            *(&handler + 4) = "__WiFiCloudSyncEngineAddToWaitingForPasswordList";
            OUTLINED_FUNCTION_5();
            LODWORD(v26) = 2778;
            WORD2(v26) = 2112;
            *(&v26 + 6) = v13;
            OUTLINED_FUNCTION_8();
            OUTLINED_FUNCTION_2_0();
            _os_log_send_and_compose_impl();
          }

          if (Count)
          {
            goto LABEL_42;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(handler) = 136315650;
            *(&handler + 4) = "__WiFiCloudSyncEngineAddToWaitingForPasswordList";
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_2_0();
            _os_log_send_and_compose_impl();
          }

          v19 = *(v4 + 16);
          if (v19 && (v20 = *(v4 + 24)) != 0)
          {
            v21 = *(v4 + 208);
            if (v21)
            {
              CFRunLoopAddSource(v19, v21, v20);
              v22 = *(v4 + 32);
              if (!v22)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_42;
            }
          }

          else
          {
            v22 = *(v4 + 32);
            if (v22)
            {
LABEL_38:
              *&handler = MEMORY[0x277D85DD0];
              *(&handler + 1) = 3221225472;
              v25 = ____WiFiCloudSyncEngineStartKeychainChangedNotifications_block_invoke;
              *&v26 = &__block_descriptor_40_e8_v12__0i8l;
              *(&v26 + 1) = v4;
              notify_register_dispatch(kKeychainChangedNotificationName, (v4 + 192), v22, &handler);
LABEL_39:
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
LABEL_42:
                __WiFiCloudSyncEngineCheckWaitingForPasswordList(v4, v3);
                goto LABEL_43;
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_0();
LABEL_41:
              OUTLINED_FUNCTION_2_0();
              _os_log_send_and_compose_impl();
              goto LABEL_42;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_42;
            }
          }

          LODWORD(handler) = 136315650;
          *(&handler + 4) = "__WiFiCloudSyncEngineStartKeychainChangedNotifications";
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4();
          goto LABEL_41;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }
      }

      else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      LODWORD(handler) = 136315650;
      *(&handler + 4) = "__WiFiCloudSyncEngineAddToWaitingForPasswordList";
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4();
      goto LABEL_36;
    }

    if (v8)
    {
LABEL_35:
      LODWORD(handler) = 136315650;
      *(&handler + 4) = "WiFiCloudSyncEngineAddNetworkToKnownNetworksList";
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4();
LABEL_36:
      OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl();
    }
  }

LABEL_43:
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __WiFiCloudSyncEngineGetNetworkSecurity(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    OUTLINED_FUNCTION_22();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 isKVSEncrypted])
      {
        v4 = [v2 objectForKey:@"isWEP"];
        if (!v4 || ([v4 BOOLValue] & 1) == 0)
        {
          v5 = [v2 objectForKey:@"isWPA3"];
          if (!v5 || ([v5 BOOLValue] & 1) == 0)
          {
            v6 = [v2 objectForKey:@"isWPA2"];
            if (!v6 || ([v6 BOOLValue] & 1) == 0)
            {
              v7 = [v2 objectForKey:@"isWPA"];
              if (v7 && ([v7 BOOLValue] & 1) != 0)
              {
                result = 2;
                goto LABEL_18;
              }

              goto LABEL_12;
            }

LABEL_24:
            result = 3;
            goto LABEL_18;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v9 = [v2 objectForKey:@"WEP"];
        if (!v9 || ([v9 BOOLValue] & 1) == 0)
        {
          if (![v2 objectForKey:@"WPA3_RSN_IE"])
          {
            if (![v2 objectForKey:@"RSN_IE"])
            {
              result = 2 * ([v2 objectForKey:@"WPA_IE"] != 0);
              goto LABEL_18;
            }

            goto LABEL_24;
          }

LABEL_23:
          result = 4;
          goto LABEL_18;
        }
      }

      result = 1;
      goto LABEL_18;
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_send_and_compose_impl();
LABEL_12:
  result = 0;
LABEL_18:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void WiFiCloudSyncEngineRemoveNetworkFromKnownNetworksList(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1 || !a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (!*(a1 + 104))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (!*(a1 + 80))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (![a2 isKVSEncrypted] || __WiFiCloudSyncEngineIsNetworkSyncableFromCloud(a2, a3))
  {
    NetworkFromCloudFormatCallback = __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback(a1, a2, a3);
    if (NetworkFromCloudFormatCallback)
    {
      v7 = NetworkFromCloudFormatCallback;
      (*(a1 + 80))(NetworkFromCloudFormatCallback, *(a1 + 136));
      v8 = *(a1 + 144);
      if (v8)
      {
        Count = CFArrayGetCount(v8);
        v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (Count)
        {
          if (v10)
          {
            OUTLINED_FUNCTION_17();
            OUTLINED_FUNCTION_21();
            OUTLINED_FUNCTION_8();
            OUTLINED_FUNCTION_2_0();
            _os_log_send_and_compose_impl();
          }

          if ([a2 isKVSEncrypted])
          {
            v11 = @"SSID";
          }

          else
          {
            v11 = @"SSID_STR";
          }

          v12 = [a3 objectForKeyedSubscript:v11];
          if (Count >= 1)
          {
            v13 = v12;
            v14 = 0;
            v15 = MEMORY[0x277D86220];
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), v14);
              if ([a2 isKVSEncrypted])
              {
                v17 = @"SSID";
              }

              else
              {
                v17 = @"SSID_STR";
              }

              v18 = [ValueAtIndex objectForKeyedSubscript:v17];
              if (v18 && ![v18 compare:v13])
              {
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_17();
                  OUTLINED_FUNCTION_21();
                  OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_2_0();
                  _os_log_send_and_compose_impl();
                }

                CFArrayRemoveValueAtIndex(*(a1 + 144), v14);
              }

              else
              {
                ++v14;
              }
            }

            while (v14 < CFArrayGetCount(*(a1 + 144)));
          }

          if (!CFArrayGetCount(*(a1 + 144)))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_17();
              OUTLINED_FUNCTION_21();
              OUTLINED_FUNCTION_4();
              OUTLINED_FUNCTION_2_0();
              _os_log_send_and_compose_impl();
            }

            __WiFiCloudSyncEngineStopKeychainChangedNotifications(a1);
          }

          goto LABEL_31;
        }

        if (v10)
        {
          goto LABEL_44;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_44:
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_2_0();
        _os_log_send_and_compose_impl();
      }

LABEL_31:
      CFRelease(v7);
      goto LABEL_32;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

LABEL_40:
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

LABEL_32:
  v19 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEnginePruneNetworksInCloud(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a2 && ([a2 isKVSEncrypted] & 1) == 0)
  {
    v57 = a2;
    v5 = [a3 count];
    v6 = [a3 allKeys];
    if (v5)
    {
      v8 = v6;
      v9 = 0;
      *&v7 = 136315650;
      v55 = v7;
      do
      {
        v10 = [v8 objectAtIndex:{v9, v53}];
        if (OUTLINED_FUNCTION_23())
        {
          v59[0] = 136316162;
          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_15();
          v60 = 1438;
          v61 = 2048;
          v62 = v9;
          v63 = 2112;
          v64 = v10;
          LODWORD(v54) = 48;
          v53 = v59;
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_14();
          _os_log_send_and_compose_impl();
        }

        if (!v10)
        {
          goto LABEL_10;
        }

        v11 = [v10 length];
        if (v11 >= [@"WiFiCloudSyncEngineNonSSIDKeyPrefix_" length])
        {
          goto LABEL_10;
        }

        v12 = [a3 objectForKey:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || __WiFiCloudSyncEngineGetNetworkSecurity(v57, v12))
        {
          goto LABEL_10;
        }

        if (v12)
        {
          if (a1)
          {
            if (*(a1 + 56))
            {
              if ([v57 isKVSEncrypted])
              {
                v13 = @"SSID";
              }

              else
              {
                v13 = @"SSID_STR";
              }

              v14 = [v12 objectForKeyedSubscript:{v13, v53}];
              v15 = OUTLINED_FUNCTION_23();
              if (v14)
              {
                if (v15)
                {
                  v59[0] = 136315906;
                  OUTLINED_FUNCTION_16();
                  OUTLINED_FUNCTION_15();
                  v60 = 1404;
                  v61 = 2112;
                  v62 = v14;
                  LODWORD(v54) = 38;
                  v53 = v59;
                  OUTLINED_FUNCTION_2_0();
                  OUTLINED_FUNCTION_14();
                  _os_log_send_and_compose_impl();
                }

                if ([v57 isKVSEncrypted])
                {
                  v53 = @"network.";
                  v54 = v14;
                  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@"];
                  v24 = v57;
                }

                else
                {
                  v24 = v57;
                  v23 = v14;
                }

                [v24 removeFromKVStore:v23];
                goto LABEL_10;
              }

              if (v15)
              {
                OUTLINED_FUNCTION_24(v15, v16, v17, v18, v19, v20, v21, v22, v53, v54, v55);
                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_15();
                v60 = 1403;
                OUTLINED_FUNCTION_11();
                v53 = v59;
                OUTLINED_FUNCTION_2_0();
                OUTLINED_FUNCTION_14();
                goto LABEL_34;
              }
            }

            else
            {
              v41 = OUTLINED_FUNCTION_23();
              if (v41)
              {
                OUTLINED_FUNCTION_24(v41, v42, v43, v44, v45, v46, v47, v48, v53, v54, v55);
                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_15();
                v60 = 1397;
                OUTLINED_FUNCTION_11();
                v53 = v59;
                OUTLINED_FUNCTION_2_0();
                OUTLINED_FUNCTION_14();
                goto LABEL_34;
              }
            }
          }

          else
          {
            v33 = OUTLINED_FUNCTION_23();
            if (v33)
            {
              OUTLINED_FUNCTION_24(v33, v34, v35, v36, v37, v38, v39, v40, v53, v54, v55);
              OUTLINED_FUNCTION_16();
              OUTLINED_FUNCTION_15();
              v60 = 1395;
              OUTLINED_FUNCTION_11();
              v53 = v59;
              OUTLINED_FUNCTION_2_0();
              OUTLINED_FUNCTION_14();
              goto LABEL_34;
            }
          }
        }

        else
        {
          v25 = OUTLINED_FUNCTION_23();
          if (v25)
          {
            OUTLINED_FUNCTION_24(v25, v26, v27, v28, v29, v30, v31, v32, v53, v54, v55);
            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_15();
            v60 = 1393;
            OUTLINED_FUNCTION_11();
            v53 = v59;
            OUTLINED_FUNCTION_2_0();
            OUTLINED_FUNCTION_14();
LABEL_34:
            _os_log_send_and_compose_impl();
          }
        }

LABEL_10:
        ++v9;
      }

      while (v5 != v9);
    }

    v49 = [MEMORY[0x277CCABB0] numberWithInteger:{2, v53}];
    v50 = [objc_msgSend(a3 objectForKeyedSubscript:{@"WiFiCloudSyncEngineNonSSIDKeyPrefix_NonNetworkContainer", "mutableCopy"}];
    if (!v50)
    {
      v50 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v50 setObject:v49 forKeyedSubscript:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_KVSVersion"];
    [v50 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UserDirected"];
    [objc_msgSend(v57 "keyValueStore")];
    [objc_msgSend(v57 "keyValueStore")];
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __WiFiCloudSyncEnginePruneNetworksInCloud_block_invoke;
    block[3] = &unk_279EBBAB8;
    block[4] = v57;
    dispatch_async(global_queue, block);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineAddNetworkToCloudAndPurge(uint64_t a1, void *a2, CFTypeRef cf, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl();
    }

    v24 = 0;
    v8 = 0;
    goto LABEL_76;
  }

  v8 = CFRetain(cf);
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!*(a1 + 56))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!*(a1 + 112))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!*(a1 + 96))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  CloudFromNetworkFormatCallback = __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback(a1, a2, v8);
  if (!CloudFromNetworkFormatCallback)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_74:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl();
    }

LABEL_75:
    v24 = 0;
LABEL_76:
    v30 = 0;
    v10 = 0;
    goto LABEL_57;
  }

  v10 = CloudFromNetworkFormatCallback;
  if ([a2 isKVSEncrypted])
  {
    v11 = @"SSID";
  }

  else
  {
    v11 = @"SSID_STR";
  }

  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  if (v13)
  {
    LODWORD(v32) = 136315906;
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  if (([a2 isKVSEncrypted] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v10 objectForKey:@"NOT_SYNCABLE"];
      if (v14 && [v14 BOOLValue])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }
      }

      else
      {
        v15 = [v10 objectForKey:@"IS_NETWORK_EAP"];
        if (v15)
        {
          if ([v15 BOOLValue])
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_118;
            }
          }

          else
          {
            v16 = [v10 objectForKey:@"IS_NETWORK_CUSTOMIZED"];
            if (v16)
            {
              if ([v16 BOOLValue])
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_118;
                }
              }

              else
              {
                v17 = [v10 objectForKey:@"IS_NETWORK_CONFIGURED"];
                if (v17)
                {
                  if ([v17 BOOLValue])
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_118;
                    }
                  }

                  else
                  {
                    v18 = [v10 objectForKey:@"AP_MODE"];
                    if (v18 && [v18 intValue] != 2)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_118;
                      }
                    }

                    else
                    {
                      v19 = [v10 objectForKey:@"IS_NETWORK_EXPIRABLE"];
                      if (v19 && [v19 BOOLValue])
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_118;
                        }
                      }

                      else
                      {
                        v20 = [v10 objectForKey:@"enabled"];
                        if (v20 && ([v20 BOOLValue] & 1) == 0)
                        {
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_118;
                          }
                        }

                        else
                        {
                          v21 = [v10 objectForKey:@"IS_NETWORK_CARPLAY_ONLY"];
                          if (v21 && [v21 BOOLValue])
                          {
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_118;
                            }
                          }

                          else if (__WiFiCloudSyncEngineIsNetworkHidden(a2, v10))
                          {
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_118;
                            }
                          }

                          else if (__WiFiCloudSyncEngineGetNetworkSecurity(a2, v10))
                          {
                            v22 = [v10 objectForKey:@"IS_NETWORK_CAPTIVE"];
                            if (v22 && ![v22 BOOLValue])
                            {
                              goto LABEL_38;
                            }

                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_118;
                            }
                          }

                          else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_118;
                          }
                        }
                      }
                    }
                  }
                }

                else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_118;
                }
              }
            }

            else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_118;
            }
          }
        }

        else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }
      }
    }

    else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_118;
    }

LABEL_116:
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    goto LABEL_117;
  }

  if (!__WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted(a2, v10))
  {
    goto LABEL_118;
  }

LABEL_38:
  v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_0();
LABEL_117:
      OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl();
    }

LABEL_118:
    v24 = 0;
    goto LABEL_119;
  }

  v24 = v23;
  [v23 addEntriesFromDictionary:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([a2 isKVSEncrypted] & 1) == 0)
    {
      if (![v24 objectForKey:@"AP_MODE"])
      {
        [v24 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 2), @"AP_MODE"}];
      }

      if (![v24 objectForKey:@"UserDirected"])
      {
        [v24 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 0), @"UserDirected"}];
      }

      if (![v24 objectForKey:@"enabled"])
      {
        [v24 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), @"enabled"}];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v32) = 136315650;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  if (!__WiFiCloudSyncEngineGetNetworkSecurity(a2, v24))
  {
LABEL_52:
    __WiFiCloudSyncEngineAddVersionsToCloudNetwork(v24);
    v27 = [a2 isKVSEncrypted];
    v28 = objc_alloc(MEMORY[0x277CBEAC0]);
    if (v27)
    {
      v29 = [v28 initWithObjectsAndKeys:{v24, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", @"network.", v12), 0, v32}];
    }

    else
    {
      v29 = [v28 initWithObjectsAndKeys:{v24, v12, 0, v32}];
    }

    v30 = v29;
    if (v29)
    {
      [a2 addToKVStore:v29 synchronize:a4 != 0];
      goto LABEL_57;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_119;
    }

    goto LABEL_88;
  }

  v25 = (*(a1 + 88))(cf, *(a1 + 136));
  v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v26)
    {
      LODWORD(v32) = 136315650;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl();
    }

    (*(a1 + 96))(v8, 1, *(a1 + 136));
    goto LABEL_52;
  }

  if (v26)
  {
LABEL_88:
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

LABEL_119:
  v30 = 0;
LABEL_57:

  if (v8)
  {
    CFRelease(v8);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEngineCreate_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiCloudSyncEngineScheduleWithQueue_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineUnScheduleWithQueue_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineStopEngine_cold_1(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineStopEngine_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineScheduleWithRunLoop_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineUnScheduleWithRunLoop_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_5()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_6()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_7()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_8(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_9()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_10()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_5()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_6()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_7()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_8(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_9()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_10()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineCheckKeychainSyncState_cold_1(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_2()
{
  OUTLINED_FUNCTION_22();
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [v0 integerValue];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v1 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_3()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_4()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_5()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_6()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_7()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_8()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_9()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_10()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_11()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_12()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_13()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_14()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_15()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_16()
{
  OUTLINED_FUNCTION_22();
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [v0 integerValue];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v1 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_17()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiCloudSyncEngineStartEngine_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_1(char a1)
{
  v2 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v1 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_2()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_3(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_5()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_6()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsCloudNetworkOnDevice_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsCloudNetworkOnDevice_cold_2()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiCloudSyncEngineAddNetworkToCloud_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineAddNetworkToCloud_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineAddNetworkToCloud_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_1(uint64_t result, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  *a3 = a2;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_2()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_3()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_4()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_5()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_6()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_19();
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_7()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineRelease_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineKeychainSyncStateChanged_cold_1(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineKeychainChangedNotificationCallback_cold_1(uint64_t result)
{
  v2 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_1(__CFRunLoopTimer *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    CFRunLoopTimerGetNextFireDate(a1);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_2(uint64_t a1, double a2)
{
  v7 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v5 = *(a1 + 264) - a2;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_5()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_6()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_7()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineProcessCloudChangeEvent_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiCloudSyncEngineAddVersionsToCloudNetwork_cold_1(io_registry_entry_t a1, void *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"model", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [v6 initWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", CFDataGetBytePtr(v5), 4)];
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;

  return IOObjectRelease(a1);
}

uint64_t __WiFiCloudSyncEngineAddVersionsToCloudNetwork_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl();
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_2()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_3()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_4()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_5()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_6()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_7()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_8()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_9()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_10()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_11()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_12()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_13()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkHidden_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkHidden_cold_2()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}

void __WiFiCloudSyncEngineIsNetworkHidden_cold_3()
{
  v1 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x277D85DE8];
}