@interface REPipedLocationDonor
+ (id)_locationFromDefaults;
+ (void)_locationFromDefaults;
+ (void)_saveLocationIntoDefaultsWithLocation:(id)a3;
- (CLLocation)location;
- (id)_init;
- (void)_handleInvalidation;
- (void)setConnection:(id)a3;
- (void)updateLocation:(id)a3;
@end

@implementation REPipedLocationDonor

- (id)_init
{
  v13.receiver = self;
  v13.super_class = REPipedLocationDonor;
  v2 = [(RESingleton *)&v13 _init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.relevanced.pipedlocationdonor.%p", v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    v5 = v2[3];
    v2[3] = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v7 = v2[5];
    v2[5] = v6;

    v8 = objc_alloc_init(REObserverStore);
    v9 = v2[1];
    v2[1] = v8;

    v10 = [objc_opt_class() _locationFromDefaults];
    v11 = v2[4];
    v2[4] = v10;
  }

  return v2;
}

- (void)setConnection:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__REPipedLocationDonor_setConnection___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __38__REPipedLocationDonor_setConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    *(v2 + 16) = 0;
    v4 = v3;

    [v4 setInvalidationHandler:0];
    [v4 setExportedObject:0];
    [v4 invalidate];

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 16), *(a1 + 40));
  v5 = *(*(a1 + 32) + 16);
  v6 = REPipedLocationDonorInterface();
  [v5 setRemoteObjectInterface:v6];

  v7 = *(*(a1 + 32) + 16);
  v8 = REPipedLocationReceiverInterface();
  [v7 setExportedInterface:v8];

  [*(*(a1 + 32) + 16) setExportedObject:?];
  objc_initWeak(&location, *(a1 + 32));
  v9 = *(*(a1 + 32) + 16);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __38__REPipedLocationDonor_setConnection___block_invoke_2;
  v13 = &unk_2785F9A90;
  objc_copyWeak(&v14, &location);
  [v9 setInvalidationHandler:&v10];
  [*(*(a1 + 32) + 16) resume];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __38__REPipedLocationDonor_setConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

- (void)updateLocation:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = RELogForDomain(5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 description];
    *buf = 136315138;
    v14 = [v7 UTF8String];
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_INFO, "REPipedLocationDonor updated location to %s", buf, 0xCu);
  }

  [(NSLock *)self->_locationAccessLock lock];
  objc_storeStrong(&self->_location, a3);
  [(NSLock *)self->_locationAccessLock unlock];
  [objc_opt_class() _saveLocationIntoDefaultsWithLocation:v5];
  observers = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__REPipedLocationDonor_updateLocation___block_invoke;
  v11[3] = &unk_2785FD6F8;
  v12 = v5;
  v9 = v5;
  [(REObserverStore *)observers enumerateObserversWithBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (CLLocation)location
{
  [(NSLock *)self->_locationAccessLock lock];
  v3 = self->_location;
  [(NSLock *)self->_locationAccessLock unlock];

  return v3;
}

- (void)_handleInvalidation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__REPipedLocationDonor__handleInvalidation__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__REPipedLocationDonor__handleInvalidation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setExportedObject:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

+ (id)_locationFromDefaults
{
  v2 = CFPreferencesCopyAppValue(@"LastPipedLocation", @"com.apple.RelevanceEngine");
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = RELogForDomain(5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[(REPipedLocationDonor *)v4];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)_saveLocationIntoDefaultsWithLocation:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  if (v4)
  {
LABEL_6:
    CFPreferencesSetAppValue(@"LastPipedLocation", v4, @"com.apple.RelevanceEngine");
    goto LABEL_7;
  }

  v4 = RELogForDomain(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(REPipedLocationDonor *)v3 _saveLocationIntoDefaultsWithLocation:v4];
  }

LABEL_7:
}

+ (void)_locationFromDefaults
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "REPipedLocationDonor: Failed to decode last location with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_saveLocationIntoDefaultsWithLocation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "REPipedLocationDonor: Failed to serialize location: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end