@interface REPipedLocationReceiver
- (CLLocation)location;
- (id)_init;
- (void)_queue_clearConnection;
- (void)_queue_setLocation:(id)location;
- (void)_queue_setupConnection;
- (void)dealloc;
- (void)setLocation:(id)location;
@end

@implementation REPipedLocationReceiver

- (id)_init
{
  v6.receiver = self;
  v6.super_class = REPipedLocationReceiver;
  _init = [(RESingleton *)&v6 _init];
  if (_init)
  {
    v3 = dispatch_queue_create("com.apple.relevanceengine.REPipedLocationReceiver", 0);
    v4 = _init[4];
    _init[4] = v3;
  }

  return _init;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = REPipedLocationReceiver;
  [(REPipedLocationReceiver *)&v3 dealloc];
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__REPipedLocationReceiver_setLocation___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_setLocation:(id)location
{
  v20 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v6 = RELogForDomain(5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [locationCopy description];
    *buf = 136315138;
    uTF8String = [v7 UTF8String];
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_INFO, "REPipedLocationReceiver preparing to set location to %s", buf, 0xCu);
  }

  objc_storeStrong(&self->_location, location);
  connection = self->_connection;
  if (!connection)
  {
    [(REPipedLocationReceiver *)self _queue_setupConnection];
    connection = self->_connection;
  }

  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_25];
  v10 = v9;
  if (v9)
  {
    [v9 updateLocation:self->_location];
    v11 = RELogForDomain(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [locationCopy description];
      uTF8String2 = [v12 UTF8String];
      *buf = 136315138;
      uTF8String = uTF8String2;
      _os_log_impl(&dword_22859F000, v11, OS_LOG_TYPE_INFO, "REPipedLocationReceiver sent location to %s", buf, 0xCu);
    }

    ++self->_connectionWindowRetainCount;
    v14 = dispatch_time(0, 60000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__REPipedLocationReceiver__queue_setLocation___block_invoke_5;
    block[3] = &unk_2785F9AB8;
    block[4] = self;
    dispatch_after(v14, queue, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __46__REPipedLocationReceiver__queue_setLocation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = RELogForDomain(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__REPipedLocationReceiver__queue_setLocation___block_invoke_cold_1(v2, v3);
  }
}

uint64_t __46__REPipedLocationReceiver__queue_setLocation___block_invoke_5(uint64_t result)
{
  --*(*(result + 32) + 24);
  v1 = *(result + 32);
  if (*(v1 + 24) <= 0 && *(v1 + 8))
  {
    v2 = result;
    v3 = RELogForDomain(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_INFO, "Closing out REPipedLocationReceiver connection", v4, 2u);
    }

    return [*(*(v2 + 32) + 8) invalidate];
  }

  return result;
}

- (CLLocation)location
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__REPipedLocationReceiver_location__block_invoke;
  v5[3] = &unk_2785FADB8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_queue_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.relevanceengine.pipedlocation" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = self->_connection;
  v6 = REPipedLocationReceiverInterface();
  [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

  v7 = self->_connection;
  v8 = REPipedLocationDonorInterface();
  [(NSXPCConnection *)v7 setExportedInterface:v8];

  [(NSXPCConnection *)self->_connection setExportedObject:self];
  objc_initWeak(&location, self);
  v9 = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__REPipedLocationReceiver__queue_setupConnection__block_invoke;
  v13[3] = &unk_2785F9A90;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)v9 setInterruptionHandler:v13];
  v10 = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__REPipedLocationReceiver__queue_setupConnection__block_invoke_2;
  v11[3] = &unk_2785F9A90;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)v10 setInvalidationHandler:v11];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __49__REPipedLocationReceiver__queue_setupConnection__block_invoke(uint64_t a1)
{
  v2 = RELogForDomain(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "REPipedLocationReceiver XPC connection interrupted.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__REPipedLocationReceiver__queue_setupConnection__block_invoke_6;
    block[3] = &unk_2785F9AB8;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void __49__REPipedLocationReceiver__queue_setupConnection__block_invoke_2(uint64_t a1)
{
  v2 = RELogForDomain(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "REPipedLocationReceiver XPC connection invalidated.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__REPipedLocationReceiver__queue_setupConnection__block_invoke_7;
    block[3] = &unk_2785F9AB8;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

- (void)_queue_clearConnection
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_connection setExportedObject:0];
  connection = self->_connection;
  self->_connection = 0;
}

void __46__REPipedLocationReceiver__queue_setLocation___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 136315138;
  v6 = [v3 UTF8String];
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Failed to get REPipedLocationReceiver proxy: %s", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end