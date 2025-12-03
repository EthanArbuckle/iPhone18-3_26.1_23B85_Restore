@interface CSSearchableIndexAsyncProcessor
- (CSSearchableIndexAsyncProcessor)initWithName:(id)name;
- (void)indexSearchableItemsAsync:(id)async protectionClass:(id)class bundleIdentifier:(id)identifier indexOptions:(int64_t)options completion:(id)completion;
@end

@implementation CSSearchableIndexAsyncProcessor

- (CSSearchableIndexAsyncProcessor)initWithName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = CSSearchableIndexAsyncProcessor;
  v6 = [(CSSearchableIndexAsyncProcessor *)&v16 init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(4);
    semaphore = v6->_semaphore;
    v6->_semaphore = v7;

    bzero(label, 0x400uLL);
    __sprintf_chk(label, 0, 0x400uLL, "com.apple.spotlight.indexitems.%s", [nameCopy UTF8String]);
    objc_storeStrong(&v6->_processorName, name);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, 5u, 0);
    v11 = dispatch_queue_create(label, v10);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v11;

    v13 = v6;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)indexSearchableItemsAsync:(id)async protectionClass:(id)class bundleIdentifier:(id)identifier indexOptions:(int64_t)options completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  asyncCopy = async;
  classCopy = class;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v16 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = self->_processorName;
      uTF8String = [(NSString *)v17 UTF8String];

      *buf = 136315138;
      v32 = uTF8String;
      _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_INFO, "[%s] Submitting async job to index CSSearchableItem", buf, 0xCu);
    }
  }

  serialQueue = self->_serialQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __118__CSSearchableIndexAsyncProcessor_indexSearchableItemsAsync_protectionClass_bundleIdentifier_indexOptions_completion___block_invoke;
  v25[3] = &unk_27893D838;
  v25[4] = self;
  v26 = classCopy;
  v27 = identifierCopy;
  v28 = asyncCopy;
  v29 = completionCopy;
  optionsCopy = options;
  v20 = completionCopy;
  v21 = asyncCopy;
  v22 = identifierCopy;
  v23 = classCopy;
  dispatch_async(serialQueue, v25);

  v24 = *MEMORY[0x277D85DE8];
}

void __118__CSSearchableIndexAsyncProcessor_indexSearchableItemsAsync_protectionClass_bundleIdentifier_indexOptions_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CC34A8]);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 _initWithName:v4 protectionClass:*(a1 + 40) bundleIdentifier:*(a1 + 48) options:*(a1 + 72)];
  v6 = objc_alloc(MEMORY[0x277CCA9B8]);
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = *(v7 + 8);
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%s", v7, "Timeout"];
  v9 = [v6 initWithDomain:v8 code:-1 userInfo:0];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __118__CSSearchableIndexAsyncProcessor_indexSearchableItemsAsync_protectionClass_bundleIdentifier_indexOptions_completion___block_invoke_2;
  v11[3] = &unk_27893D810;
  v11[4] = *(a1 + 32);
  v10 = *(a1 + 56);
  v12 = *(a1 + 64);
  [v5 indexSearchableItems:v10 timeout:v9 timeoutError:v11 completion:6.0e10];
}

void __118__CSSearchableIndexAsyncProcessor_indexSearchableItemsAsync_protectionClass_bundleIdentifier_indexOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  dispatch_semaphore_signal(v4);
  (*(*(a1 + 40) + 16))();
}

@end