@interface LTDDaemon
@end

@implementation LTDDaemon

void __41___LTDDaemon__setupMemoryWarningListener__block_invoke(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x277D85D18], 0, 7uLL, MEMORY[0x277D85CD0]);
  v3 = _setupMemoryWarningListener_memoryNotificationSource;
  _setupMemoryWarningListener_memoryNotificationSource = v2;

  v4 = _setupMemoryWarningListener_memoryNotificationSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41___LTDDaemon__setupMemoryWarningListener__block_invoke_2;
  handler[3] = &unk_2789B53F0;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(_setupMemoryWarningListener_memoryNotificationSource);
  objc_destroyWeak(&v6);
}

void __41___LTDDaemon__setupMemoryWarningListener__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    data = dispatch_source_get_data(_setupMemoryWarningListener_memoryNotificationSource);
    v3 = _LTOSLogXPC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = data;
      _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEFAULT, "Memory pressure warning level %lu", &v6, 0xCu);
    }

    if (data == 4 || data == 2)
    {
      [WeakRetained[6] notifyOfMemoryPressure];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __37___LTDDaemon_clientConnectionClosed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __34___LTDDaemon__setupNotifyHandlers__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
    if (string)
    {
      v6 = string;
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
      v8 = _LTOSLogXPC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136446210;
        v11 = v6;
        _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "Got xpc event for notification %{public}s", &v10, 0xCu);
      }

      if (([v7 isEqualToString:@"com.apple.siri.uaf.com.apple.sequoia.asset"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"com.apple.siri.uaf.com.apple.speech.automaticspeechrecognition"))
      {
        [WeakRetained[6] ensureSelectedLocalesDownload];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end