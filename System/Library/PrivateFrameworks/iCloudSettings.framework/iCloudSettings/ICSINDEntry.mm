@interface ICSINDEntry
+ (id)_requestQueue;
- (void)syncFPItem:(id)item observeItemIDs:(id)ds notifyURL:(id)l completion:(id)completion;
@end

@implementation ICSINDEntry

+ (id)_requestQueue
{
  if (_requestQueue_onceToken != -1)
  {
    +[ICSINDEntry _requestQueue];
  }

  v3 = _requestQueue_requestQueue;

  return v3;
}

void __28__ICSINDEntry__requestQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.icloudsettings.ind", v0);
  v2 = _requestQueue_requestQueue;
  _requestQueue_requestQueue = v1;
}

- (void)syncFPItem:(id)item observeItemIDs:(id)ds notifyURL:(id)l completion:(id)completion
{
  itemCopy = item;
  dsCopy = ds;
  lCopy = l;
  completionCopy = completion;
  _requestQueue = [objc_opt_class() _requestQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__ICSINDEntry_syncFPItem_observeItemIDs_notifyURL_completion___block_invoke;
  v18[3] = &unk_27A6669F8;
  v19 = itemCopy;
  v20 = dsCopy;
  v21 = lCopy;
  v22 = completionCopy;
  v14 = lCopy;
  v15 = dsCopy;
  v16 = itemCopy;
  v17 = completionCopy;
  dispatch_async(_requestQueue, v18);
}

void __62__ICSINDEntry_syncFPItem_observeItemIDs_notifyURL_completion___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = getINDaemonConnectionClass_softClass;
  v17 = getINDaemonConnectionClass_softClass;
  if (!getINDaemonConnectionClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getINDaemonConnectionClass_block_invoke;
    v12 = &unk_27A6664B0;
    v13 = &v14;
    __getINDaemonConnectionClass_block_invoke(buf);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  v4 = objc_alloc_init(v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ICSINDEntry_syncFPItem_observeItemIDs_notifyURL_completion___block_invoke_2;
  v7[3] = &unk_27A6669D0;
  v8 = *(a1 + 56);
  v5 = [v4 synchronousDaemonWithErrorHandler:v7];
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "ICSINDEntry: Initiating item observation", buf, 2u);
  }

  [v5 syncFPItem:*(a1 + 32) observeItemIDs:*(a1 + 40) notifyURL:*(a1 + 48) completion:*(a1 + 56)];
}

void __62__ICSINDEntry_syncFPItem_observeItemIDs_notifyURL_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__ICSINDEntry_syncFPItem_observeItemIDs_notifyURL_completion___block_invoke_2_cold_1(v4);
  }

  (*(*(a1 + 32) + 16))();
}

@end