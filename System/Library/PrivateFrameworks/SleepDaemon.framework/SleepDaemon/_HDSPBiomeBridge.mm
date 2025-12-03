@interface _HDSPBiomeBridge
- (_HDSPBiomeBridge)init;
- (id)subscribe:(id)subscribe callback:(id)callback;
- (void)publish:(id)publish stream:(id)stream;
@end

@implementation _HDSPBiomeBridge

- (_HDSPBiomeBridge)init
{
  v9.receiver = self;
  v9.super_class = _HDSPBiomeBridge;
  v2 = [(_HDSPBiomeBridge *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.sleep.HDSPBiomeManager.queue", v3);

    v5 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.sleepd.biome" targetQueue:v4 waking:1];
    scheduler = v2->_scheduler;
    v2->_scheduler = v5;

    v7 = v2;
  }

  return v2;
}

- (id)subscribe:(id)subscribe callback:(id)callback
{
  callbackCopy = callback;
  v7 = [subscribe subscribeOn:self->_scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39___HDSPBiomeBridge_subscribe_callback___block_invoke_406;
  v11[3] = &unk_279C7CB38;
  v12 = callbackCopy;
  v8 = callbackCopy;
  v9 = [v7 sinkWithCompletion:&__block_literal_global_21 receiveInput:v11];

  return v9;
}

- (void)publish:(id)publish stream:(id)stream
{
  v14 = *MEMORY[0x277D85DE8];
  publishCopy = publish;
  streamCopy = stream;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = publishCopy;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] publishing event: [%{public}@]", &v10, 0x16u);
  }

  source = [streamCopy source];

  [source sendEvent:publishCopy];
  v9 = *MEMORY[0x277D85DE8];
}

@end