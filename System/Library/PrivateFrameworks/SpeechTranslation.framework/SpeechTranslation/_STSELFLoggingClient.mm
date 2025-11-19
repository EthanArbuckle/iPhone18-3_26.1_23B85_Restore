@interface _STSELFLoggingClient
- (_STSELFLoggingClient)init;
- (void)_endSessionWithError:(id)a3;
- (void)registerClientList:(id)a3 configuration:(id)a4;
- (void)translationDidStart;
@end

@implementation _STSELFLoggingClient

- (_STSELFLoggingClient)init
{
  v7.receiver = self;
  v7.super_class = _STSELFLoggingClient;
  v2 = [(_STSELFLoggingClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.SpeechTranslation.Instrumentation", 0);
    loggingQueue = v2->_loggingQueue;
    v2->_loggingQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)registerClientList:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _LTOSLogSTInstrumentation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26B5BC000, v8, OS_LOG_TYPE_INFO, "Register new client list for instrumentation observation", buf, 2u);
  }

  [v7 setDelegate:self];

  objc_initWeak(buf, self);
  loggingQueue = self->_loggingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___STSELFLoggingClient_registerClientList_configuration___block_invoke;
  block[3] = &unk_279CF7BA8;
  objc_copyWeak(&v14, buf);
  v12 = v6;
  v13 = self;
  v10 = v6;
  dispatch_async(loggingQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_endSessionWithError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  loggingQueue = self->_loggingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45___STSELFLoggingClient__endSessionWithError___block_invoke;
  v7[3] = &unk_279CF7BA8;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(loggingQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)translationDidStart
{
  objc_initWeak(&location, self);
  loggingQueue = self->_loggingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___STSELFLoggingClient_translationDidStart__block_invoke;
  block[3] = &unk_279CF7BD0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(loggingQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end