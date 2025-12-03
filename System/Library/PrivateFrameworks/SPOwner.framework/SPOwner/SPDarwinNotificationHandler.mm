@interface SPDarwinNotificationHandler
- (SPDarwinNotificationHandler)initWithNotificationName:(id)name changeBlock:(id)block;
- (void)dealloc;
@end

@implementation SPDarwinNotificationHandler

- (SPDarwinNotificationHandler)initWithNotificationName:(id)name changeBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = SPDarwinNotificationHandler;
  v8 = [(SPDarwinNotificationHandler *)&v15 init];
  if (v8)
  {
    uTF8String = [nameCopy UTF8String];
    v10 = dispatch_get_global_queue(21, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__SPDarwinNotificationHandler_initWithNotificationName_changeBlock___block_invoke;
    v12[3] = &unk_279B595C8;
    v13 = nameCopy;
    v14 = blockCopy;
    notify_register_dispatch(uTF8String, &v8->_notifyToken, v10, v12);
  }

  return v8;
}

void __68__SPDarwinNotificationHandler_initWithNotificationName_changeBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __68__SPDarwinNotificationHandler_initWithNotificationName_changeBlock___block_invoke_2;
  v2[3] = &unk_279B58B80;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  _os_activity_initiate(&dword_2643D0000, "SPDarwinNotificationHandler: Calling changeBlock()", OS_ACTIVITY_FLAG_DEFAULT, v2);
}

uint64_t __68__SPDarwinNotificationHandler_initWithNotificationName_changeBlock___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPDarwinNotificationHandler handling %@", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  notify_cancel([(SPDarwinNotificationHandler *)self notifyToken]);
  v3.receiver = self;
  v3.super_class = SPDarwinNotificationHandler;
  [(SPDarwinNotificationHandler *)&v3 dealloc];
}

@end