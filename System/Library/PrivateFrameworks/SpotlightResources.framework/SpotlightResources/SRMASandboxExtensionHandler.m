@interface SRMASandboxExtensionHandler
- (SRMASandboxExtensionHandler)initWithAssetType:(id)a3;
- (void)executeBlock:(id)a3 wait:(BOOL)a4;
@end

@implementation SRMASandboxExtensionHandler

- (SRMASandboxExtensionHandler)initWithAssetType:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SRMASandboxExtensionHandler;
  v6 = [(SRMASandboxExtensionHandler *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetType, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);

    v10 = dispatch_queue_create("com.apple.spotlightresources.sandboxextension", v9);
    queue = v7->_queue;
    v7->_queue = v10;
  }

  return v7;
}

- (void)executeBlock:(id)a3 wait:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self->_assetType;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__SRMASandboxExtensionHandler_executeBlock_wait___block_invoke;
  v10[3] = &unk_1E7A2AFF0;
  v10[4] = self;
  v8 = v7;
  v11 = v8;
  if (executeBlock_wait__onceToken != -1)
  {
    dispatch_once(&executeBlock_wait__onceToken, v10);
  }

  queue = self->_queue;
  if (v4)
  {
    dispatch_sync(queue, v6);
  }

  else
  {
    dispatch_async(queue, v6);
  }
}

void __49__SRMASandboxExtensionHandler_executeBlock_wait___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SRMASandboxExtensionHandler_executeBlock_wait___block_invoke_2;
  block[3] = &unk_1E7A2B1B8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __49__SRMASandboxExtensionHandler_executeBlock_wait___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  _MAensureExtension();
  v3 = SRLogCategoryAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1AE58E000, v3, OS_LOG_TYPE_DEFAULT, "Got sandbox extension for %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end