@interface WFCaptiveObserver
- (WFCaptiveObserver)init;
- (void)dealloc;
- (void)init;
- (void)startObservingEvents;
- (void)stopObservingEvents;
@end

@implementation WFCaptiveObserver

- (WFCaptiveObserver)init
{
  v6.receiver = self;
  v6.super_class = WFCaptiveObserver;
  v2 = [(WFCaptiveObserver *)&v6 init];
  v3 = dispatch_queue_create("com.apple.wifikit.captive", 0);
  captiveNotificationQueue = v2->_captiveNotificationQueue;
  v2->_captiveNotificationQueue = v3;

  if (!v2->_captiveNotificationQueue)
  {
    [(WFCaptiveObserver *)v2 init];
    return 0;
  }

  return v2;
}

- (void)dealloc
{
  [(WFCaptiveObserver *)self stopObservingEvents];
  v3.receiver = self;
  v3.super_class = WFCaptiveObserver;
  [(WFCaptiveObserver *)&v3 dealloc];
}

- (void)startObservingEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(WFCaptiveObserver *)self isObserving];
  v4 = WFLogForCategory(2uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v3)
  {
    if (v7 && os_log_type_enabled(v4, v5))
    {
      *buf = 136315138;
      v17 = "[WFCaptiveObserver startObservingEvents]";
      _os_log_impl(&dword_273ECD000, v4, v5, "%s: already observing", buf, 0xCu);
    }
  }

  else
  {
    if (v7 && os_log_type_enabled(v4, v5))
    {
      *buf = 136315138;
      v17 = "[WFCaptiveObserver startObservingEvents]";
      _os_log_impl(&dword_273ECD000, v4, v5, "%s", buf, 0xCu);
    }

    [(WFCaptiveObserver *)self setObserving:1];
    objc_initWeak(buf, self);
    self->_startCaptiveNotificationToken = 0;
    captiveNotificationQueue = self->_captiveNotificationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __41__WFCaptiveObserver_startObservingEvents__block_invoke;
    handler[3] = &unk_279EBDFA0;
    objc_copyWeak(&v15, buf);
    notify_register_dispatch("com.apple.networking.nanowebsheet.start", &self->_startCaptiveNotificationToken, captiveNotificationQueue, handler);
    self->_endCaptiveNotificationToken = 0;
    p_endCaptiveNotificationToken = &self->_endCaptiveNotificationToken;
    v10 = *(p_endCaptiveNotificationToken + 2);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__WFCaptiveObserver_startObservingEvents__block_invoke_2;
    v12[3] = &unk_279EBDFA0;
    objc_copyWeak(&v13, buf);
    notify_register_dispatch("com.apple.networking.nanowebsheet.end", p_endCaptiveNotificationToken, v10, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __41__WFCaptiveObserver_startObservingEvents__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(2uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    *buf = 136315138;
    v8 = "[WFCaptiveObserver startObservingEvents]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: captive start notification", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WFCaptiveObserver_startObservingEvents__block_invoke_4;
  block[3] = &unk_279EBCEA0;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __41__WFCaptiveObserver_startObservingEvents__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained eventHandler];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v4 = [v5 eventHandler];
    v4[2](v4, 0);
  }
}

void __41__WFCaptiveObserver_startObservingEvents__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(2uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    *buf = 136315138;
    v8 = "[WFCaptiveObserver startObservingEvents]_block_invoke_2";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: captive end notification", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WFCaptiveObserver_startObservingEvents__block_invoke_8;
  block[3] = &unk_279EBCEA0;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __41__WFCaptiveObserver_startObservingEvents__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained eventHandler];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v4 = [v5 eventHandler];
    v4[2](v4, 1);
  }
}

- (void)stopObservingEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(2uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    v7 = "[WFCaptiveObserver stopObservingEvents]";
    _os_log_impl(&dword_273ECD000, v3, v4, "%s", &v6, 0xCu);
  }

  [(WFCaptiveObserver *)self setObserving:0];
  notify_cancel(self->_startCaptiveNotificationToken);
  self->_startCaptiveNotificationToken = -1;
  notify_cancel(self->_endCaptiveNotificationToken);
  self->_endCaptiveNotificationToken = -1;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(2uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v5 = 136315138;
    v6 = "[WFCaptiveObserver init]";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: failed to create queue", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end