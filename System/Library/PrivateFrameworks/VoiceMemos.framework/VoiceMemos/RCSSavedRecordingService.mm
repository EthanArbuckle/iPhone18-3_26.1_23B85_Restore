@interface RCSSavedRecordingService
+ (NSPersistentHistoryToken)changeToken;
+ (id)sharedService;
+ (void)setChangeToken:(id)token;
- (BOOL)disableOrphanedFragmentCleanupForCompositionAVURL:(id)l error:(id *)error;
- (BOOL)endAccessSessionWithToken:(id)token error:(id *)error;
- (BOOL)firstImportIsComplete;
- (RCSSavedRecordingService)init;
- (id)_onQueueAddPendingServiceMessageReplyBlockInvalidationHandler:(id)handler;
- (id)observeFinalizingRecordings:(id)recordings;
- (id)prepareToCaptureToCompositionAVURL:(id)l error:(id *)error;
- (id)prepareToExportCompositionAVURL:(id)l error:(id *)error;
- (id)prepareToPreviewCompositionAVURL:(id)l error:(id *)error;
- (id)prepareToTrimCompositionAVURL:(id)l error:(id *)error;
- (id)serviceProxy;
- (id)synchronousServiceProxy;
- (id)valueForServiceKey:(id)key;
- (void)__fetchAllAccessTokens:(id)tokens;
- (void)_fetchAllAccessTokens:(id)tokens;
- (void)_invalidatePendingSynchronousCompletionHandlersWithError:(id)error;
- (void)_onQueueCloseServiceConnection;
- (void)_onQueueInvalidatePendingCompletionHandlerWithToken:(id)token withError:(id)error;
- (void)_onQueueInvalidatePendingCompletionHandlersWithError:(id)error;
- (void)_sendServiceMessage:(SEL)message connectionFailureReplyInfo:(id)info infoAndErrorReplyHandler:(id)handler messagingBlock:(id)block;
- (void)_sendServiceMessage:(SEL)message connectionFailureReplyInfo:(id)info infoAndErrorReplyHandler:(id)handler withServiceProxy:(id)proxy messagingBlock:(id)block;
- (void)_sendServiceMessage:(SEL)message withBasicReplyBlock:(id)block messagingBlock:(id)messagingBlock;
- (void)_sendServiceMessage:(SEL)message withBasicReplyBlock:(id)block withServiceProxy:(id)proxy messagingBlock:(id)messagingBlock;
- (void)_sendSynchronousServiceMessage:(SEL)message connectionFailureReplyInfo:(id)info infoAndErrorReplyHandler:(id)handler messagingBlock:(id)block;
- (void)_sendSynchronousServiceMessage:(SEL)message withBasicReplyBlock:(id)block messagingBlock:(id)messagingBlock;
- (void)_valueForServiceKey:(id)key synchronous:(BOOL)synchronous completion:(id)completion;
- (void)checkRecordingAvailability:(id)availability;
- (void)clearAndReloadSearchMetadataWithCompletionBlock:(id)block;
- (void)closeServiceConnection;
- (void)dealloc;
- (void)disableOrphanedFragmentCleanupForCompositionAVURL:(id)l completionBlock:(id)block;
- (void)enableCloudRecordingsWithCompletionBlock:(id)block;
- (void)enableOrphanHandlingWithCompletionBlock:(id)block;
- (void)enableOrphanedFragmentCleanupForCompositionAVURL:(id)l;
- (void)endAccessSessionWithToken:(id)token completionBlock:(id)block;
- (void)exportRecordingsToCloud:(id)cloud;
- (void)expungeRecordingsFromCloud:(id)cloud;
- (void)fetchCompositionAVURLsBeingExported:(id)exported;
- (void)fetchCompositionAVURLsBeingModified:(id)modified;
- (void)fetchMetadataForRecordingWithUUID:(id)d completionBlock:(id)block;
- (void)fetchRecordingUUIDsForExport:(id)export;
- (void)importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date userInfo:(id)info importCompletionBlock:(id)block;
- (void)importRecordingsFromCloud:(id)cloud;
- (void)openServiceConnection;
- (void)prepareToCaptureToCompositionAVURL:(id)l accessRequestHandler:(id)handler;
- (void)prepareToExportCompositionAVURL:(id)l accessRequestHandler:(id)handler;
- (void)prepareToPreviewCompositionAVURL:(id)l accessRequestHandler:(id)handler;
- (void)prepareToTrimCompositionAVURL:(id)l accessRequestHandler:(id)handler;
- (void)reloadExistingSearchMetadataWithCompletionBlock:(id)block;
- (void)setCompositionAVURLsBeingExported:(id)exported;
- (void)setCompositionAVURLsBeingModified:(id)modified;
- (void)sizeOfRecordingsForExport:(id)export;
- (void)updateSearchMetadataWithRecordingURIsToInsert:(id)insert recordingURIsToUpdate:(id)update recordingURIsToDelete:(id)delete completionBlock:(id)block;
@end

@implementation RCSSavedRecordingService

- (RCSSavedRecordingService)init
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = RCSSavedRecordingService;
  v2 = [(RCSSavedRecordingService *)&v23 init];
  if (v2)
  {
    v3 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[RCSSavedRecordingService init]";
      _os_log_impl(&dword_272442000, v3, OS_LOG_TYPE_DEFAULT, "%s -- Opening RCSSavedRecordingService connection", buf, 0xCu);
    }

    v4 = dispatch_queue_create("com.apple.VoiceMemos.RCSSavedRecordingServiceSerialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    objc_storeStrong(&v2->_completionQueue, MEMORY[0x277D85CD0]);
    v6 = objc_opt_new();
    pendingServiceCompletionHandlers = v2->_pendingServiceCompletionHandlers;
    v2->_pendingServiceCompletionHandlers = v6;

    v8 = objc_opt_new();
    pendingSynchronousServiceCompletionHandlers = v2->_pendingSynchronousServiceCompletionHandlers;
    v2->_pendingSynchronousServiceCompletionHandlers = v8;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    interruptionObservers = v2->_interruptionObservers;
    v2->_interruptionObservers = weakObjectsHashTable;

    [(RCSSavedRecordingService *)v2 openServiceConnection];
    objc_initWeak(buf, v2);
    [(NSXPCConnection *)v2->_xpcConnection resume];
    uTF8String = [@"RCSavedRecordingServiceDidChangeCompositionAVURLsBeingExportedDistributedNotification" UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__RCSSavedRecordingService_init__block_invoke;
    handler[3] = &unk_279E44830;
    objc_copyWeak(&v22, buf);
    notify_register_dispatch(uTF8String, &v2->_compositionAVURLsBeingExportedDistributedNotificationToken, MEMORY[0x277D85CD0], handler);

    uTF8String2 = [@"RCSavedRecordingServiceDidChangeCompositionAVURLsBeingModifiedDistributedNotification" UTF8String];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __32__RCSSavedRecordingService_init__block_invoke_2;
    v19 = &unk_279E44830;
    objc_copyWeak(&v20, buf);
    notify_register_dispatch(uTF8String2, &v2->_compositionAVURLsBeingModifiedDistributedNotificationToken, MEMORY[0x277D85CD0], &v16);

    [(RCSSavedRecordingService *)v2 _handleCompositionAVURLsBeingExportedDidChange:v16];
    [(RCSSavedRecordingService *)v2 _handleCompositionAVURLsBeingModifiedDidChange];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)serviceProxy
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v3 = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RCSSavedRecordingService_serviceProxy__block_invoke;
  block[3] = &unk_279E43B48;
  v8 = v3;
  v9 = &v10;
  block[4] = self;
  v4 = v3;
  dispatch_sync(v4, block);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __40__RCSSavedRecordingService_serviceProxy__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 40));
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) openServiceConnection];
    objc_initWeak(&location, *(a1 + 32));
    v2 = *(*(a1 + 32) + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__RCSSavedRecordingService_serviceProxy__block_invoke_2;
    v6[3] = &unk_279E44C50;
    objc_copyWeak(&v8, &location);
    v7 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    objc_storeStrong((*(a1 + 32) + 40), *(*(*(a1 + 48) + 8) + 40));
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)openServiceConnection
{
  if (!self->_xpcConnection)
  {
    v3 = +[RCSSavedRecordingServiceConnection newConnection];
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = v3;

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    v5 = +[RCSSavedRecordingServiceConnection clientInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v5];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__RCSSavedRecordingService_openServiceConnection__block_invoke;
    v8[3] = &unk_279E448F8;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__RCSSavedRecordingService_openServiceConnection__block_invoke_2;
    v6[3] = &unk_279E448F8;
    objc_copyWeak(&v7, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

+ (id)sharedService
{
  if (sharedService___once != -1)
  {
    +[RCSSavedRecordingService sharedService];
  }

  v3 = sharedService___sharedService;

  return v3;
}

uint64_t __41__RCSSavedRecordingService_sharedService__block_invoke()
{
  sharedService___sharedService = objc_alloc_init(RCSSavedRecordingService);

  return MEMORY[0x2821F96F8]();
}

void __32__RCSSavedRecordingService_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCompositionAVURLsBeingExportedDidChange];
}

void __32__RCSSavedRecordingService_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCompositionAVURLsBeingModifiedDidChange];
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setCompositionAVURLsBeingExported:(id)exported
{
  exportedCopy = exported;
  if (([(NSSet *)self->_compositionAVURLsBeingExported isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_compositionAVURLsBeingExported, exported);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"RCSavedRecordingServiceCompositionAVURLsBeingExportedDidChangeNotification" object:self];
  }
}

- (void)setCompositionAVURLsBeingModified:(id)modified
{
  modifiedCopy = modified;
  if (([(NSSet *)self->_compositionAVURLsBeingModified isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_compositionAVURLsBeingModified, modified);
    [RCComposition _markCompositionAVURLsBeingModified:self->_compositionAVURLsBeingModified];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"RCSavedRecordingServiceCompositionAVURLsBeingModifiedDidChangeNotification" object:self];
  }
}

+ (NSPersistentHistoryToken)changeToken
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults dataForKey:@"RCSavedRecordingsChangeToken"];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setChangeToken:(id)token
{
  if (token)
  {
    v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:token requiringSecureCoding:1 error:0];
    if (!v3)
    {
      goto LABEL_6;
    }

    standardUserDefaults2 = v3;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:standardUserDefaults2 forKey:@"RCSavedRecordingsChangeToken"];
  }

  else
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 removeObjectForKey:@"RCSavedRecordingsChangeToken"];
  }

  v3 = standardUserDefaults2;
LABEL_6:
}

void __49__RCSSavedRecordingService_openServiceConnection__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[RCSSavedRecordingService openServiceConnection]_block_invoke";
    _os_log_impl(&dword_272442000, v2, OS_LOG_TYPE_DEFAULT, "%s -- service connection closed.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained[7] allObjects];
  v5 = [WeakRetained completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__RCSSavedRecordingService_openServiceConnection__block_invoke_27;
  v8[3] = &unk_279E43AD0;
  v9 = v4;
  v10 = WeakRetained;
  v6 = v4;
  dispatch_async(v5, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __49__RCSSavedRecordingService_openServiceConnection__block_invoke_27(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) serviceWasInterrupted:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __49__RCSSavedRecordingService_openServiceConnection__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[RCSSavedRecordingService openServiceConnection]_block_invoke_2";
    _os_log_impl(&dword_272442000, v2, OS_LOG_TYPE_DEFAULT, "%s -- service connection invalidated.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained closeServiceConnection];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)closeServiceConnection
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RCSSavedRecordingService_closeServiceConnection__block_invoke;
  block[3] = &unk_279E43B20;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date userInfo:(id)info importCompletionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  nameCopy = name;
  dateCopy = date;
  infoCopy = info;
  blockCopy = block;
  v18 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v24 = [lCopy url];
    *buf = 136315906;
    v31 = "[RCSSavedRecordingService importRecordingWithSourceAudioURL:name:date:userInfo:importCompletionBlock:]";
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = nameCopy;
    v36 = 2112;
    v37 = dateCopy;
    _os_log_debug_impl(&dword_272442000, v18, OS_LOG_TYPE_DEBUG, "%s -- Sending service request to importRecordingWithSourceAudioURL:%@ name:%@ date:%@", buf, 0x2Au);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __103__RCSSavedRecordingService_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock___block_invoke;
  v25[3] = &unk_279E44920;
  v26 = lCopy;
  v27 = nameCopy;
  v28 = dateCopy;
  v29 = infoCopy;
  v19 = infoCopy;
  v20 = dateCopy;
  v21 = nameCopy;
  v22 = lCopy;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 importRequestReplyBlock:blockCopy messagingBlock:v25];

  v23 = *MEMORY[0x277D85DE8];
}

void __103__RCSSavedRecordingService_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__RCSSavedRecordingService_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock___block_invoke_2;
  v11[3] = &unk_279E43A20;
  v12 = v6;
  v13 = v5;
  v10 = v5;
  [a2 importRecordingWithSourceAudioURL:v12 name:v7 date:v9 userInfo:v8 importCompletionBlock:v11];
}

void __103__RCSSavedRecordingService_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __103__RCSSavedRecordingService_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock___block_invoke_2_cold_1(a1);
    }
  }

  else if (v8)
  {
    __103__RCSSavedRecordingService_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock___block_invoke_2_cold_2(a1);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)enableCloudRecordingsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService enableCloudRecordingsWithCompletionBlock:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:blockCopy messagingBlock:&__block_literal_global_33];
}

- (void)importRecordingsFromCloud:(id)cloud
{
  cloudCopy = cloud;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService importRecordingsFromCloud:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 connectionFailureReplyInfo:0 infoAndErrorReplyHandler:cloudCopy messagingBlock:&__block_literal_global_36];
}

void __54__RCSSavedRecordingService_importRecordingsFromCloud___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RCSSavedRecordingService_importRecordingsFromCloud___block_invoke_2;
  v6[3] = &unk_279E44988;
  v7 = v4;
  v5 = v4;
  [a2 importRecordingsFromCloud:v6];
}

void __54__RCSSavedRecordingService_importRecordingsFromCloud___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      __54__RCSSavedRecordingService_importRecordingsFromCloud___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __54__RCSSavedRecordingService_importRecordingsFromCloud___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)exportRecordingsToCloud:(id)cloud
{
  cloudCopy = cloud;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService exportRecordingsToCloud:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 connectionFailureReplyInfo:0 infoAndErrorReplyHandler:cloudCopy messagingBlock:&__block_literal_global_40];
}

void __52__RCSSavedRecordingService_exportRecordingsToCloud___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__RCSSavedRecordingService_exportRecordingsToCloud___block_invoke_2;
  v6[3] = &unk_279E44988;
  v7 = v4;
  v5 = v4;
  [a2 exportRecordingsToCloud:v6];
}

void __52__RCSSavedRecordingService_exportRecordingsToCloud___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      __52__RCSSavedRecordingService_exportRecordingsToCloud___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __52__RCSSavedRecordingService_exportRecordingsToCloud___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)fetchRecordingUUIDsForExport:(id)export
{
  exportCopy = export;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService fetchRecordingUUIDsForExport:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 connectionFailureReplyInfo:0 infoAndErrorReplyHandler:exportCopy messagingBlock:&__block_literal_global_44];
}

void __57__RCSSavedRecordingService_fetchRecordingUUIDsForExport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__RCSSavedRecordingService_fetchRecordingUUIDsForExport___block_invoke_2;
  v6[3] = &unk_279E44578;
  v7 = v4;
  v5 = v4;
  [a2 fetchRecordingUUIDsForExport:v6];
}

void __57__RCSSavedRecordingService_fetchRecordingUUIDsForExport___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __57__RCSSavedRecordingService_fetchRecordingUUIDsForExport___block_invoke_2_cold_1(v5);
    }
  }

  else if (v8)
  {
    __57__RCSSavedRecordingService_fetchRecordingUUIDsForExport___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)fetchMetadataForRecordingWithUUID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v9 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService fetchMetadataForRecordingWithUUID:completionBlock:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__RCSSavedRecordingService_fetchMetadataForRecordingWithUUID_completionBlock___block_invoke;
  v11[3] = &unk_279E449F8;
  v12 = dCopy;
  v10 = dCopy;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 connectionFailureReplyInfo:0 infoAndErrorReplyHandler:blockCopy messagingBlock:v11];
}

void __78__RCSSavedRecordingService_fetchMetadataForRecordingWithUUID_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__RCSSavedRecordingService_fetchMetadataForRecordingWithUUID_completionBlock___block_invoke_2;
  v8[3] = &unk_279E449D0;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  [a2 fetchMetadataForRecordingWithUUID:v9 completionBlock:v8];
}

void __78__RCSSavedRecordingService_fetchMetadataForRecordingWithUUID_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __78__RCSSavedRecordingService_fetchMetadataForRecordingWithUUID_completionBlock___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __78__RCSSavedRecordingService_fetchMetadataForRecordingWithUUID_completionBlock___block_invoke_2_cold_2(a1);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)sizeOfRecordingsForExport:(id)export
{
  exportCopy = export;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService sizeOfRecordingsForExport:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 connectionFailureReplyInfo:0 infoAndErrorReplyHandler:exportCopy messagingBlock:&__block_literal_global_51];
}

void __54__RCSSavedRecordingService_sizeOfRecordingsForExport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RCSSavedRecordingService_sizeOfRecordingsForExport___block_invoke_2;
  v6[3] = &unk_279E44988;
  v7 = v4;
  v5 = v4;
  [a2 sizeOfRecordingsForExport:v6];
}

void __54__RCSSavedRecordingService_sizeOfRecordingsForExport___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __54__RCSSavedRecordingService_sizeOfRecordingsForExport___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __54__RCSSavedRecordingService_sizeOfRecordingsForExport___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)expungeRecordingsFromCloud:(id)cloud
{
  cloudCopy = cloud;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService expungeRecordingsFromCloud:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 connectionFailureReplyInfo:0 infoAndErrorReplyHandler:cloudCopy messagingBlock:&__block_literal_global_54];
}

void __55__RCSSavedRecordingService_expungeRecordingsFromCloud___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__RCSSavedRecordingService_expungeRecordingsFromCloud___block_invoke_2;
  v6[3] = &unk_279E44988;
  v7 = v4;
  v5 = v4;
  [a2 expungeRecordingsFromCloud:v6];
}

void __55__RCSSavedRecordingService_expungeRecordingsFromCloud___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      __55__RCSSavedRecordingService_expungeRecordingsFromCloud___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __55__RCSSavedRecordingService_expungeRecordingsFromCloud___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (id)prepareToCaptureToCompositionAVURL:(id)l error:(id *)error
{
  lCopy = l;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_error___block_invoke;
  v16[3] = &unk_279E44A20;
  v8 = lCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v9 = MEMORY[0x2743CA3B0](v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_error___block_invoke_60;
  v14[3] = &unk_279E44A48;
  v10 = v8;
  v15 = v10;
  [(RCSSavedRecordingService *)self _sendSynchronousServiceMessage:a2 accessRequestReplyBlock:v9 messagingBlock:v14];
  v11 = v27[5];
  if (error && !v11)
  {
    *error = v21[5];
    v11 = v27[5];
  }

  v12 = v11;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __69__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __69__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_error___block_invoke_cold_1();
    }
  }

  else if (v8)
  {
    __69__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_error___block_invoke_cold_2();
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
}

- (void)prepareToCaptureToCompositionAVURL:(id)l accessRequestHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService prepareToCaptureToCompositionAVURL:lCopy accessRequestHandler:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_accessRequestHandler___block_invoke;
  v11[3] = &unk_279E44A48;
  v12 = lCopy;
  v10 = lCopy;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 accessRequestReplyBlock:handlerCopy messagingBlock:v11];
}

void __84__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_accessRequestHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_accessRequestHandler___block_invoke_2;
  v8[3] = &unk_279E44A70;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  [a2 prepareToCaptureToCompositionAVURL:v9 accessRequestHandler:v8];
}

void __84__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_accessRequestHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __84__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_accessRequestHandler___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __84__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_accessRequestHandler___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (id)prepareToPreviewCompositionAVURL:(id)l error:(id *)error
{
  lCopy = l;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_error___block_invoke;
  v16[3] = &unk_279E44A20;
  v8 = lCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v9 = MEMORY[0x2743CA3B0](v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_error___block_invoke_66;
  v14[3] = &unk_279E44A48;
  v10 = v8;
  v15 = v10;
  [(RCSSavedRecordingService *)self _sendSynchronousServiceMessage:a2 accessRequestReplyBlock:v9 messagingBlock:v14];
  v11 = v27[5];
  if (error && !v11)
  {
    *error = v21[5];
    v11 = v27[5];
  }

  v12 = v11;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __67__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __67__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_error___block_invoke_cold_1();
    }
  }

  else if (v8)
  {
    __67__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_error___block_invoke_cold_2();
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
}

- (void)prepareToPreviewCompositionAVURL:(id)l accessRequestHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService prepareToPreviewCompositionAVURL:lCopy accessRequestHandler:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_accessRequestHandler___block_invoke;
  v11[3] = &unk_279E44A48;
  v12 = lCopy;
  v10 = lCopy;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 accessRequestReplyBlock:handlerCopy messagingBlock:v11];
}

void __82__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_accessRequestHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_accessRequestHandler___block_invoke_2;
  v8[3] = &unk_279E44A70;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  [a2 prepareToPreviewCompositionAVURL:v9 accessRequestHandler:v8];
}

void __82__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_accessRequestHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __82__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_accessRequestHandler___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __82__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_accessRequestHandler___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (id)prepareToExportCompositionAVURL:(id)l error:(id *)error
{
  lCopy = l;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__RCSSavedRecordingService_prepareToExportCompositionAVURL_error___block_invoke;
  v16[3] = &unk_279E44A20;
  v8 = lCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v9 = MEMORY[0x2743CA3B0](v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__RCSSavedRecordingService_prepareToExportCompositionAVURL_error___block_invoke_71;
  v14[3] = &unk_279E44A48;
  v10 = v8;
  v15 = v10;
  [(RCSSavedRecordingService *)self _sendSynchronousServiceMessage:a2 accessRequestReplyBlock:v9 messagingBlock:v14];
  v11 = v27[5];
  if (error && !v11)
  {
    *error = v21[5];
    v11 = v27[5];
  }

  v12 = v11;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __66__RCSSavedRecordingService_prepareToExportCompositionAVURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __66__RCSSavedRecordingService_prepareToExportCompositionAVURL_error___block_invoke_cold_1();
    }
  }

  else if (v8)
  {
    __66__RCSSavedRecordingService_prepareToExportCompositionAVURL_error___block_invoke_cold_2();
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
}

- (void)prepareToExportCompositionAVURL:(id)l accessRequestHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService prepareToExportCompositionAVURL:lCopy accessRequestHandler:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__RCSSavedRecordingService_prepareToExportCompositionAVURL_accessRequestHandler___block_invoke;
  v11[3] = &unk_279E44A48;
  v12 = lCopy;
  v10 = lCopy;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 accessRequestReplyBlock:handlerCopy messagingBlock:v11];
}

void __81__RCSSavedRecordingService_prepareToExportCompositionAVURL_accessRequestHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__RCSSavedRecordingService_prepareToExportCompositionAVURL_accessRequestHandler___block_invoke_2;
  v8[3] = &unk_279E44A70;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  [a2 prepareToExportCompositionAVURL:v9 accessRequestHandler:v8];
}

void __81__RCSSavedRecordingService_prepareToExportCompositionAVURL_accessRequestHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __81__RCSSavedRecordingService_prepareToExportCompositionAVURL_accessRequestHandler___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __81__RCSSavedRecordingService_prepareToExportCompositionAVURL_accessRequestHandler___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (id)prepareToTrimCompositionAVURL:(id)l error:(id *)error
{
  lCopy = l;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__RCSSavedRecordingService_prepareToTrimCompositionAVURL_error___block_invoke;
  v16[3] = &unk_279E44A20;
  v8 = lCopy;
  v17 = v8;
  v18 = &v26;
  v19 = &v20;
  v9 = MEMORY[0x2743CA3B0](v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__RCSSavedRecordingService_prepareToTrimCompositionAVURL_error___block_invoke_76;
  v14[3] = &unk_279E44A48;
  v10 = v8;
  v15 = v10;
  [(RCSSavedRecordingService *)self _sendSynchronousServiceMessage:a2 accessRequestReplyBlock:v9 messagingBlock:v14];
  v11 = v27[5];
  if (error && !v11)
  {
    *error = v21[5];
    v11 = v27[5];
  }

  v12 = v11;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __64__RCSSavedRecordingService_prepareToTrimCompositionAVURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __64__RCSSavedRecordingService_prepareToTrimCompositionAVURL_error___block_invoke_cold_1();
    }
  }

  else if (v8)
  {
    __64__RCSSavedRecordingService_prepareToTrimCompositionAVURL_error___block_invoke_cold_2();
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
}

- (void)prepareToTrimCompositionAVURL:(id)l accessRequestHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService prepareToTrimCompositionAVURL:lCopy accessRequestHandler:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__RCSSavedRecordingService_prepareToTrimCompositionAVURL_accessRequestHandler___block_invoke;
  v11[3] = &unk_279E44A48;
  v12 = lCopy;
  v10 = lCopy;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 accessRequestReplyBlock:handlerCopy messagingBlock:v11];
}

void __79__RCSSavedRecordingService_prepareToTrimCompositionAVURL_accessRequestHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__RCSSavedRecordingService_prepareToTrimCompositionAVURL_accessRequestHandler___block_invoke_2;
  v8[3] = &unk_279E44A70;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  [a2 prepareToTrimCompositionAVURL:v9 accessRequestHandler:v8];
}

void __79__RCSSavedRecordingService_prepareToTrimCompositionAVURL_accessRequestHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory(@"Service");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __79__RCSSavedRecordingService_prepareToTrimCompositionAVURL_accessRequestHandler___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __79__RCSSavedRecordingService_prepareToTrimCompositionAVURL_accessRequestHandler___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (BOOL)endAccessSessionWithToken:(id)token error:(id *)error
{
  tokenCopy = token;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__RCSSavedRecordingService_endAccessSessionWithToken_error___block_invoke;
  v15[3] = &unk_279E44A98;
  v15[4] = &v16;
  v8 = MEMORY[0x2743CA3B0](v15);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__RCSSavedRecordingService_endAccessSessionWithToken_error___block_invoke_2;
  v13[3] = &unk_279E44AC0;
  v9 = tokenCopy;
  v14 = v9;
  [(RCSSavedRecordingService *)self _sendSynchronousServiceMessage:a2 withBasicReplyBlock:v8 messagingBlock:v13];
  v10 = v17[5];
  if (error && v10)
  {
    v10 = v10;
    *error = v10;
  }

  v11 = v10 == 0;

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (void)endAccessSessionWithToken:(id)token completionBlock:(id)block
{
  tokenCopy = token;
  if (tokenCopy)
  {
    blockCopy = block;
    v9 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [RCSSavedRecordingService endAccessSessionWithToken:completionBlock:];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__RCSSavedRecordingService_endAccessSessionWithToken_completionBlock___block_invoke;
    v10[3] = &unk_279E44AC0;
    v11 = tokenCopy;
    [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:blockCopy messagingBlock:v10];
  }
}

- (BOOL)disableOrphanedFragmentCleanupForCompositionAVURL:(id)l error:(id *)error
{
  lCopy = l;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__RCSSavedRecordingService_disableOrphanedFragmentCleanupForCompositionAVURL_error___block_invoke;
  v15[3] = &unk_279E44A98;
  v15[4] = &v16;
  v8 = MEMORY[0x2743CA3B0](v15);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__RCSSavedRecordingService_disableOrphanedFragmentCleanupForCompositionAVURL_error___block_invoke_2;
  v13[3] = &unk_279E44AC0;
  v9 = lCopy;
  v14 = v9;
  [(RCSSavedRecordingService *)self _sendSynchronousServiceMessage:a2 withBasicReplyBlock:v8 messagingBlock:v13];
  v10 = v17[5];
  if (error && v10)
  {
    v10 = v10;
    *error = v10;
  }

  v11 = v10 == 0;

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (void)disableOrphanedFragmentCleanupForCompositionAVURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v9 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService disableOrphanedFragmentCleanupForCompositionAVURL:lCopy completionBlock:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__RCSSavedRecordingService_disableOrphanedFragmentCleanupForCompositionAVURL_completionBlock___block_invoke;
  v11[3] = &unk_279E44AC0;
  v12 = lCopy;
  v10 = lCopy;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:blockCopy messagingBlock:v11];
}

- (void)enableOrphanedFragmentCleanupForCompositionAVURL:(id)l
{
  lCopy = l;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService enableOrphanedFragmentCleanupForCompositionAVURL:lCopy];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__RCSSavedRecordingService_enableOrphanedFragmentCleanupForCompositionAVURL___block_invoke;
  v8[3] = &unk_279E44A48;
  v9 = lCopy;
  v7 = lCopy;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 accessRequestReplyBlock:0 messagingBlock:v8];
}

- (void)enableOrphanHandlingWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService enableOrphanHandlingWithCompletionBlock:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:blockCopy messagingBlock:&__block_literal_global_80];
}

- (void)fetchCompositionAVURLsBeingExported:(id)exported
{
  exportedCopy = exported;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__7;
  v13[4] = __Block_byref_object_dispose__7;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingExported___block_invoke;
  v10[3] = &unk_279E44AE8;
  v12 = v13;
  v10[4] = self;
  v6 = exportedCopy;
  v11 = v6;
  v7 = MEMORY[0x2743CA3B0](v10);
  v8 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService fetchCompositionAVURLsBeingExported:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingExported___block_invoke_81;
  v9[3] = &unk_279E44B38;
  v9[4] = v13;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:v7 messagingBlock:v9];

  _Block_object_dispose(v13, 8);
}

void __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingExported___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  [*(a1 + 32) setCompositionAVURLsBeingExported:*(*(*(a1 + 48) + 8) + 40)];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 48) + 8) + 40));
  }
}

void __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingExported___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingExported___block_invoke_2;
  v8[3] = &unk_279E44B10;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 fetchCompositionAVURLsBeingExported:v8];
}

void __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingExported___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)fetchCompositionAVURLsBeingModified:(id)modified
{
  modifiedCopy = modified;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__7;
  v13[4] = __Block_byref_object_dispose__7;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingModified___block_invoke;
  v10[3] = &unk_279E44AE8;
  v12 = v13;
  v10[4] = self;
  v6 = modifiedCopy;
  v11 = v6;
  v7 = MEMORY[0x2743CA3B0](v10);
  v8 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService fetchCompositionAVURLsBeingModified:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingModified___block_invoke_83;
  v9[3] = &unk_279E44B38;
  v9[4] = v13;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:v7 messagingBlock:v9];

  _Block_object_dispose(v13, 8);
}

void __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingModified___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  [*(a1 + 32) setCompositionAVURLsBeingModified:*(*(*(a1 + 48) + 8) + 40)];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 48) + 8) + 40));
  }
}

void __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingModified___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingModified___block_invoke_2;
  v8[3] = &unk_279E44B10;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 fetchCompositionAVURLsBeingModified:v8];
}

void __64__RCSSavedRecordingService_fetchCompositionAVURLsBeingModified___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)_fetchAllAccessTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService _fetchAllAccessTokens:];
  }

  if (tokensCopy)
  {
    completionQueue = self->_completionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__RCSSavedRecordingService__fetchAllAccessTokens___block_invoke;
    block[3] = &unk_279E43E18;
    v8 = tokensCopy;
    dispatch_async(completionQueue, block);
  }
}

void __50__RCSSavedRecordingService__fetchAllAccessTokens___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB98] set];
  (*(v1 + 16))(v1, v2);
}

- (void)__fetchAllAccessTokens:(id)tokens
{
  tokensCopy = tokens;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__7;
  v13[4] = __Block_byref_object_dispose__7;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__RCSSavedRecordingService___fetchAllAccessTokens___block_invoke;
  v10[3] = &unk_279E44B60;
  v12 = v13;
  v6 = tokensCopy;
  v11 = v6;
  v7 = MEMORY[0x2743CA3B0](v10);
  v8 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService __fetchAllAccessTokens:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__RCSSavedRecordingService___fetchAllAccessTokens___block_invoke_85;
  v9[3] = &unk_279E44B38;
  v9[4] = v13;
  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:v7 messagingBlock:v9];

  _Block_object_dispose(v13, 8);
}

void __51__RCSSavedRecordingService___fetchAllAccessTokens___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 40) + 8) + 40));
  }
}

void __51__RCSSavedRecordingService___fetchAllAccessTokens___block_invoke_85(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__RCSSavedRecordingService___fetchAllAccessTokens___block_invoke_2;
  v8[3] = &unk_279E44B10;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 _fetchAllAccessTokens:v8];
}

void __51__RCSSavedRecordingService___fetchAllAccessTokens___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)observeFinalizingRecordings:(id)recordings
{
  recordingsCopy = recordings;
  v5 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke;
  v22[3] = &unk_279E44BB0;
  v6 = recordingsCopy;
  v24 = v6;
  v7 = v5;
  v23 = v7;
  v8 = MEMORY[0x2743CA3B0](v22);
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"compositionAVURLsBeingExported"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke_99;
  v18[3] = &unk_279E44BD8;
  v19 = v7;
  v20 = v6;
  v10 = v8;
  v21 = v10;
  v11 = v6;
  v12 = v7;
  v13 = RCObserveChangesToKeyPath(self, v9, v18);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke_2_101;
  block[3] = &unk_279E44640;
  block[4] = self;
  v17 = v10;
  v14 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return v13;
}

void __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [RCComposition compositionLoadedForComposedAVURL:v7 createIfNeeded:0];
        v9 = [v8 savedRecordingUUID];
        if (v9)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"RCFinalizationProgressNotificationName", v9];
          out_token = 0;
          v11 = [v10 UTF8String];
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke_2;
          handler[3] = &unk_279E44B88;
          v12 = v9;
          v18 = v12;
          v19 = *(a1 + 40);
          if (!notify_register_dispatch(v11, &out_token, MEMORY[0x277D85CD0], handler))
          {
            v25[0] = @"recordingID";
            v25[1] = @"token";
            v26[0] = v12;
            v13 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
            v26[1] = v13;
            v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
            [*(a1 + 32) setObject:v14 forKeyedSubscript:v7];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke_2(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke_2_cold_1(a1);
  }

  v4 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))(*&state64);
}

void __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke_99(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = getChange(v5, *MEMORY[0x277CCA300]);
  v7 = getChange(v5, *MEMORY[0x277CCA2F0]);
  if ([v6 count])
  {
    v23 = v6;
    v24 = v5;
    v8 = [v6 mutableCopy];
    v22 = v7;
    [v8 minusSet:v7];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [*(a1 + 32) objectForKeyedSubscript:v14];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 objectForKeyedSubscript:@"recordingID"];
            (*(*(a1 + 40) + 16))(1.0);
            v18 = [v16 objectForKeyedSubscript:@"token"];
            v19 = [v18 intValue];

            notify_cancel(v19);
            [*(a1 + 32) setObject:0 forKeyedSubscript:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v6 = v23;
    v5 = v24;
    v7 = v22;
  }

  if ([v7 count])
  {
    v20 = [v7 mutableCopy];
    [v20 minusSet:v6];
    (*(*(a1 + 48) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke_2_101(uint64_t a1)
{
  v2 = [*(a1 + 32) compositionAVURLsBeingExported];
  if ([v2 count])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)checkRecordingAvailability:(id)availability
{
  availabilityCopy = availability;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__RCSSavedRecordingService_checkRecordingAvailability___block_invoke;
  v6[3] = &unk_279E44C00;
  v7 = availabilityCopy;
  v5 = availabilityCopy;
  [(RCSSavedRecordingService *)self __fetchAllAccessTokens:v6];
}

void __55__RCSSavedRecordingService_checkRecordingAvailability___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = [*(*(&v11 + 1) + 8 * v7) accessName];
      v9 = [v8 isEqualToString:@"capture"];

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  (*(*(a1 + 32) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)reloadExistingSearchMetadataWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService reloadExistingSearchMetadataWithCompletionBlock:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:blockCopy messagingBlock:&__block_literal_global_103];
}

- (void)clearAndReloadSearchMetadataWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCSSavedRecordingService clearAndReloadSearchMetadataWithCompletionBlock:];
  }

  [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:blockCopy messagingBlock:&__block_literal_global_105];
}

- (void)updateSearchMetadataWithRecordingURIsToInsert:(id)insert recordingURIsToUpdate:(id)update recordingURIsToDelete:(id)delete completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  insertCopy = insert;
  updateCopy = update;
  deleteCopy = delete;
  blockCopy = block;
  v15 = [insertCopy count];
  v16 = [updateCopy count] + v15;
  if (v16 + [deleteCopy count])
  {
    v17 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = MEMORY[0x2743CA3B0](blockCopy);
      *buf = 136316162;
      v25 = "[RCSSavedRecordingService updateSearchMetadataWithRecordingURIsToInsert:recordingURIsToUpdate:recordingURIsToDelete:completionBlock:]";
      v26 = 2112;
      v27 = insertCopy;
      v28 = 2112;
      v29 = updateCopy;
      v30 = 2112;
      v31 = deleteCopy;
      v32 = 2112;
      v33 = v19;
      _os_log_debug_impl(&dword_272442000, v17, OS_LOG_TYPE_DEBUG, "%s -- Sending service request to updateSearchMetadataWithRecordingURIsToInsert:%@ recordingURIsToUpdate:%@ recordingURIsToDelete:%@ completionBlock:%@", buf, 0x34u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __134__RCSSavedRecordingService_updateSearchMetadataWithRecordingURIsToInsert_recordingURIsToUpdate_recordingURIsToDelete_completionBlock___block_invoke;
    v20[3] = &unk_279E44C28;
    v21 = insertCopy;
    v22 = updateCopy;
    v23 = deleteCopy;
    [(RCSSavedRecordingService *)self _sendServiceMessage:a2 withBasicReplyBlock:blockCopy messagingBlock:v20];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __40__RCSSavedRecordingService_serviceProxy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__RCSSavedRecordingService_serviceProxy__block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__RCSSavedRecordingService_serviceProxy__block_invoke_108;
  v9[3] = &unk_279E43AD0;
  v10 = WeakRetained;
  v11 = v3;
  v7 = v3;
  v8 = WeakRetained;
  dispatch_async(v6, v9);
}

- (id)synchronousServiceProxy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__RCSSavedRecordingService_synchronousServiceProxy__block_invoke;
  v6[3] = &unk_279E43B70;
  v6[4] = self;
  v6[5] = &v7;
  v3 = serialQueue;
  dispatch_sync(v3, v6);
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__RCSSavedRecordingService_synchronousServiceProxy__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    [*(a1 + 32) openServiceConnection];
    objc_initWeak(&location, *(a1 + 32));
    v2 = *(*(a1 + 32) + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__RCSSavedRecordingService_synchronousServiceProxy__block_invoke_2;
    v6[3] = &unk_279E44C78;
    objc_copyWeak(&v7, &location);
    v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    objc_storeStrong((*(a1 + 32) + 48), *(*(*(a1 + 40) + 8) + 40));
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __51__RCSSavedRecordingService_synchronousServiceProxy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__RCSSavedRecordingService_synchronousServiceProxy__block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidatePendingSynchronousCompletionHandlersWithError:v3];
}

- (void)_onQueueCloseServiceConnection
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  [(RCSSavedRecordingService *)self _onQueueInvalidatePendingCompletionHandlersWithError:0];
}

- (void)_sendServiceMessage:(SEL)message connectionFailureReplyInfo:(id)info infoAndErrorReplyHandler:(id)handler withServiceProxy:(id)proxy messagingBlock:(id)block
{
  infoCopy = info;
  handlerCopy = handler;
  proxyCopy = proxy;
  blockCopy = block;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke;
  v33[3] = &unk_279E44CA0;
  v16 = handlerCopy;
  v34 = v16;
  v17 = MEMORY[0x2743CA3B0](v33);
  if (proxyCopy)
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__7;
    v31[4] = __Block_byref_object_dispose__7;
    v32 = 0;
    objc_initWeak(&location, self);
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_2;
    block[3] = &unk_279E44D18;
    v28 = v31;
    block[4] = self;
    objc_copyWeak(&v29, &location);
    v19 = v17;
    v27 = v19;
    v26 = infoCopy;
    dispatch_sync(serialQueue, block);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_5;
    v21[3] = &unk_279E44D40;
    objc_copyWeak(v24, &location);
    v24[1] = message;
    v23 = v31;
    v22 = v19;
    blockCopy[2](blockCopy, proxyCopy, v21);

    objc_destroyWeak(v24);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    _Block_object_dispose(v31, 8);
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSSavedRecordingServiceErrorDomain" code:201 userInfo:0];
    (v17)[2](v17, 0, v20);
  }
}

uint64_t __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_3;
  v6[3] = &unk_279E44CF0;
  objc_copyWeak(&v9, (a1 + 64));
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v3 = [v2 _onQueueAddPendingServiceMessageReplyBlockInvalidationHandler:v6];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_destroyWeak(&v9);
}

void __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (!v3)
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSSavedRecordingServiceErrorDomain" code:202 userInfo:0];
    }

    v5 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_4;
    block[3] = &unk_279E44CC8;
    v9 = a1[5];
    v7 = a1[4];
    v3 = v3;
    v8 = v3;
    dispatch_async(v5, block);
  }
}

void __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = RCTestSlowMessageServiceSleepAmount();
    if (v8 > 0.0)
    {
      v9 = v8;
      v10 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_5_cold_1(a1);
      }

      [MEMORY[0x277CCACC8] sleepForTimeInterval:v9];
      v11 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_5_cold_2(a1);
      }
    }

    v12 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_113;
    block[3] = &unk_279E43AF8;
    v13 = WeakRetained;
    v14 = *(a1 + 40);
    v21 = v13;
    v22 = v14;
    dispatch_sync(v12, block);
    v15 = v13[2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_2_114;
    v16[3] = &unk_279E44CC8;
    v19 = *(a1 + 32);
    v17 = v5;
    v18 = v6;
    dispatch_async(v15, v16);
  }
}

- (void)_sendServiceMessage:(SEL)message connectionFailureReplyInfo:(id)info infoAndErrorReplyHandler:(id)handler messagingBlock:(id)block
{
  blockCopy = block;
  handlerCopy = handler;
  infoCopy = info;
  serviceProxy = [(RCSSavedRecordingService *)self serviceProxy];
  [(RCSSavedRecordingService *)self _sendServiceMessage:message connectionFailureReplyInfo:infoCopy infoAndErrorReplyHandler:handlerCopy withServiceProxy:serviceProxy messagingBlock:blockCopy];
}

- (void)_sendSynchronousServiceMessage:(SEL)message connectionFailureReplyInfo:(id)info infoAndErrorReplyHandler:(id)handler messagingBlock:(id)block
{
  infoCopy = info;
  handlerCopy = handler;
  blockCopy = block;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke;
  v28[3] = &unk_279E44CA0;
  v13 = handlerCopy;
  v29 = v13;
  v14 = MEMORY[0x2743CA3B0](v28);
  synchronousServiceProxy = [(RCSSavedRecordingService *)self synchronousServiceProxy];
  if (synchronousServiceProxy)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random()];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke_2;
    v25[3] = &unk_279E44D68;
    v17 = v14;
    v27 = v17;
    v26 = infoCopy;
    v18 = MEMORY[0x2743CA3B0](v25);
    [(NSMutableDictionary *)self->_pendingSynchronousServiceCompletionHandlers setObject:v18 forKeyedSubscript:v16];

    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke_3;
    v20[3] = &unk_279E44D90;
    objc_copyWeak(v23, &location);
    v23[1] = message;
    v20[4] = self;
    v19 = v16;
    v21 = v19;
    v22 = v17;
    blockCopy[2](blockCopy, synchronousServiceProxy, v20);

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSSavedRecordingServiceErrorDomain" code:201 userInfo:0];
    (v14)[2](v14, 0, v19);
  }
}

uint64_t __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSSavedRecordingServiceErrorDomain" code:202 userInfo:0];
  }

  v4 = *(a1 + 32);
  v5 = v3;
  (*(*(a1 + 40) + 16))();
}

void __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = RCTestSlowMessageServiceSleepAmount();
    if (v8 > 0.0)
    {
      v9 = v8;
      v10 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke_3_cold_1(a1);
      }

      [MEMORY[0x277CCACC8] sleepForTimeInterval:v9];
      v11 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke_3_cold_2(a1);
      }
    }

    [*(*(a1 + 32) + 72) setObject:0 forKeyedSubscript:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_sendServiceMessage:(SEL)message withBasicReplyBlock:(id)block withServiceProxy:(id)proxy messagingBlock:(id)messagingBlock
{
  blockCopy = block;
  proxyCopy = proxy;
  messagingBlockCopy = messagingBlock;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke;
  v29[3] = &unk_279E44DB8;
  v13 = blockCopy;
  v30 = v13;
  v14 = MEMORY[0x2743CA3B0](v29);
  if (proxyCopy)
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__7;
    v27[4] = __Block_byref_object_dispose__7;
    v28 = 0;
    objc_initWeak(&location, self);
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_2;
    block[3] = &unk_279E44E08;
    v24 = v27;
    block[4] = self;
    objc_copyWeak(&v25, &location);
    v16 = v14;
    v23 = v16;
    dispatch_sync(serialQueue, block);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_5;
    v18[3] = &unk_279E44E30;
    objc_copyWeak(v21, &location);
    v21[1] = message;
    v20 = v27;
    v19 = v16;
    messagingBlockCopy[2](messagingBlockCopy, proxyCopy, v18);

    objc_destroyWeak(v21);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    _Block_object_dispose(v27, 8);
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSSavedRecordingServiceErrorDomain" code:201 userInfo:0];
    (v14)[2](v14, v17);
  }
}

uint64_t __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_3;
  v6[3] = &unk_279E44DE0;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 40);
  v3 = [v2 _onQueueAddPendingServiceMessageReplyBlockInvalidationHandler:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_destroyWeak(&v8);
}

void __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v3)
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSSavedRecordingServiceErrorDomain" code:202 userInfo:0];
    }

    v5 = WeakRetained[2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_4;
    v6[3] = &unk_279E44380;
    v8 = *(a1 + 32);
    v3 = v3;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = RCTestSlowMessageServiceSleepAmount();
    if (v5 > 0.0)
    {
      v6 = v5;
      v7 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_5_cold_1(a1);
      }

      [MEMORY[0x277CCACC8] sleepForTimeInterval:v6];
      v8 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_5_cold_2(a1);
      }
    }

    v9 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_117;
    block[3] = &unk_279E43AF8;
    v10 = WeakRetained;
    v11 = *(a1 + 40);
    v17 = v10;
    v18 = v11;
    dispatch_sync(v9, block);
    v12 = v10[2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_2_118;
    v13[3] = &unk_279E44380;
    v15 = *(a1 + 32);
    v14 = v3;
    dispatch_async(v12, v13);
  }
}

- (void)_sendServiceMessage:(SEL)message withBasicReplyBlock:(id)block messagingBlock:(id)messagingBlock
{
  messagingBlockCopy = messagingBlock;
  blockCopy = block;
  serviceProxy = [(RCSSavedRecordingService *)self serviceProxy];
  [(RCSSavedRecordingService *)self _sendServiceMessage:message withBasicReplyBlock:blockCopy withServiceProxy:serviceProxy messagingBlock:messagingBlockCopy];
}

- (void)_sendSynchronousServiceMessage:(SEL)message withBasicReplyBlock:(id)block messagingBlock:(id)messagingBlock
{
  blockCopy = block;
  messagingBlockCopy = messagingBlock;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__RCSSavedRecordingService__sendSynchronousServiceMessage_withBasicReplyBlock_messagingBlock___block_invoke;
  v19[3] = &unk_279E44CA0;
  v20 = blockCopy;
  v10 = blockCopy;
  v11 = MEMORY[0x2743CA3B0](v19);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __94__RCSSavedRecordingService__sendSynchronousServiceMessage_withBasicReplyBlock_messagingBlock___block_invoke_2;
  v17 = &unk_279E44E58;
  v18 = messagingBlockCopy;
  v12 = messagingBlockCopy;
  v13 = MEMORY[0x2743CA3B0](&v14);
  [(RCSSavedRecordingService *)self _sendSynchronousServiceMessage:message connectionFailureReplyInfo:0 infoAndErrorReplyHandler:v11 messagingBlock:v13, v14, v15, v16, v17];
}

uint64_t __94__RCSSavedRecordingService__sendSynchronousServiceMessage_withBasicReplyBlock_messagingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void __94__RCSSavedRecordingService__sendSynchronousServiceMessage_withBasicReplyBlock_messagingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__RCSSavedRecordingService__sendSynchronousServiceMessage_withBasicReplyBlock_messagingBlock___block_invoke_3;
  v9[3] = &unk_279E44DB8;
  v10 = v5;
  v7 = *(v6 + 16);
  v8 = v5;
  v7(v6, a2, v9);
}

- (id)_onQueueAddPendingServiceMessageReplyBlockInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random()];
  if (handlerCopy)
  {
    pendingServiceCompletionHandlers = self->_pendingServiceCompletionHandlers;
    v7 = MEMORY[0x2743CA3B0](handlerCopy);
    [(NSMutableDictionary *)pendingServiceCompletionHandlers setObject:v7 forKey:v5];
  }

  return v5;
}

- (void)_onQueueInvalidatePendingCompletionHandlersWithError:(id)error
{
  errorCopy = error;
  allValues = [(NSMutableDictionary *)self->_pendingServiceCompletionHandlers allValues];
  v6 = [allValues copy];

  [(NSMutableDictionary *)self->_pendingServiceCompletionHandlers removeAllObjects];
  if ([v6 count])
  {
    v7 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [RCSSavedRecordingService _onQueueInvalidatePendingCompletionHandlersWithError:v6];
    }

    completionQueue = self->_completionQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__RCSSavedRecordingService__onQueueInvalidatePendingCompletionHandlersWithError___block_invoke;
    v9[3] = &unk_279E43AD0;
    v10 = v6;
    v11 = errorCopy;
    dispatch_async(completionQueue, v9);
  }
}

void __81__RCSSavedRecordingService__onQueueInvalidatePendingCompletionHandlersWithError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_onQueueInvalidatePendingCompletionHandlerWithToken:(id)token withError:(id)error
{
  tokenCopy = token;
  errorCopy = error;
  v8 = [(NSMutableDictionary *)self->_pendingServiceCompletionHandlers objectForKey:tokenCopy];
  if (v8)
  {
    [(NSMutableDictionary *)self->_pendingServiceCompletionHandlers removeObjectForKey:tokenCopy];
    completionQueue = self->_completionQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__RCSSavedRecordingService__onQueueInvalidatePendingCompletionHandlerWithToken_withError___block_invoke;
    v10[3] = &unk_279E44380;
    v12 = v8;
    v11 = errorCopy;
    dispatch_async(completionQueue, v10);
  }
}

- (void)_invalidatePendingSynchronousCompletionHandlersWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  allValues = [(NSMutableDictionary *)self->_pendingSynchronousServiceCompletionHandlers allValues];
  v6 = [allValues copy];

  [(NSMutableDictionary *)self->_pendingSynchronousServiceCompletionHandlers removeAllObjects];
  if ([v6 count])
  {
    v7 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [RCSSavedRecordingService _invalidatePendingSynchronousCompletionHandlersWithError:v6];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_valueForServiceKey:(id)key synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  keyCopy = key;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__RCSSavedRecordingService__valueForServiceKey_synchronous_completion___block_invoke;
  v11[3] = &unk_279E44E80;
  v11[4] = keyCopy;
  completionCopy = completion;
  v10 = MEMORY[0x2743CA3B0](v11);
  if (synchronousCopy)
  {
    [(RCSSavedRecordingService *)self _sendSynchronousServiceMessage:sel_valueForServiceKey_completion_ connectionFailureReplyInfo:0 infoAndErrorReplyHandler:completionCopy messagingBlock:v10];
  }

  else
  {
    [(RCSSavedRecordingService *)self _sendServiceMessage:sel_valueForServiceKey_completion_ connectionFailureReplyInfo:0 infoAndErrorReplyHandler:completionCopy messagingBlock:v10];
  }
}

void __71__RCSSavedRecordingService__valueForServiceKey_synchronous_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__RCSSavedRecordingService__valueForServiceKey_synchronous_completion___block_invoke_2;
  v8[3] = &unk_279E44CA0;
  v9 = v5;
  v7 = v5;
  [a2 valueForServiceKey:v6 completion:v8];
}

- (id)valueForServiceKey:(id)key
{
  keyCopy = key;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__RCSSavedRecordingService_valueForServiceKey___block_invoke;
  v7[3] = &unk_279E44EA8;
  v7[4] = keyCopy;
  v7[5] = &v8;
  [(RCSSavedRecordingService *)self _valueForServiceKey:keyCopy synchronous:1 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __47__RCSSavedRecordingService_valueForServiceKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 && v6)
  {
    v8 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__RCSSavedRecordingService_valueForServiceKey___block_invoke_cold_1(a1);
    }
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)firstImportIsComplete
{
  v2 = [(RCSSavedRecordingService *)self valueForServiceKey:@"firstImportIsComplete"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

void __103__RCSSavedRecordingService_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __103__RCSSavedRecordingService_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock___block_invoke_2_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  v4 = 136315650;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_0(&dword_272442000, v1, v2, "%s -- Failed to import %@, error = %@", v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)enableCloudRecordingsWithCompletionBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)importRecordingsFromCloud:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__RCSSavedRecordingService_importRecordingsFromCloud___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__RCSSavedRecordingService_importRecordingsFromCloud___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)exportRecordingsToCloud:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__RCSSavedRecordingService_exportRecordingsToCloud___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__RCSSavedRecordingService_exportRecordingsToCloud___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecordingUUIDsForExport:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__RCSSavedRecordingService_fetchRecordingUUIDsForExport___block_invoke_2_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__RCSSavedRecordingService_fetchRecordingUUIDsForExport___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchMetadataForRecordingWithUUID:completionBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__RCSSavedRecordingService_fetchMetadataForRecordingWithUUID_completionBlock___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__RCSSavedRecordingService_fetchMetadataForRecordingWithUUID_completionBlock___block_invoke_2_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  v4 = 136315650;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_0(&dword_272442000, v1, v2, "%s -- Failed to fetch metadata for recordin with UUID %@, error = %@", v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)sizeOfRecordingsForExport:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__RCSSavedRecordingService_sizeOfRecordingsForExport___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__RCSSavedRecordingService_sizeOfRecordingsForExport___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)expungeRecordingsFromCloud:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__RCSSavedRecordingService_expungeRecordingsFromCloud___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__RCSSavedRecordingService_expungeRecordingsFromCloud___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __69__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareToCaptureToCompositionAVURL:(void *)a1 accessRequestHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __84__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_accessRequestHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __84__RCSSavedRecordingService_prepareToCaptureToCompositionAVURL_accessRequestHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __67__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __67__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareToPreviewCompositionAVURL:(void *)a1 accessRequestHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __82__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_accessRequestHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __82__RCSSavedRecordingService_prepareToPreviewCompositionAVURL_accessRequestHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__RCSSavedRecordingService_prepareToExportCompositionAVURL_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__RCSSavedRecordingService_prepareToExportCompositionAVURL_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareToExportCompositionAVURL:(void *)a1 accessRequestHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __81__RCSSavedRecordingService_prepareToExportCompositionAVURL_accessRequestHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __81__RCSSavedRecordingService_prepareToExportCompositionAVURL_accessRequestHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __64__RCSSavedRecordingService_prepareToTrimCompositionAVURL_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __64__RCSSavedRecordingService_prepareToTrimCompositionAVURL_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareToTrimCompositionAVURL:(void *)a1 accessRequestHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __79__RCSSavedRecordingService_prepareToTrimCompositionAVURL_accessRequestHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

void __79__RCSSavedRecordingService_prepareToTrimCompositionAVURL_accessRequestHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7_0();
  v1 = [OUTLINED_FUNCTION_6_0(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)endAccessSessionWithToken:completionBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)disableOrphanedFragmentCleanupForCompositionAVURL:(void *)a1 completionBlock:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enableOrphanedFragmentCleanupForCompositionAVURL:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enableOrphanHandlingWithCompletionBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchCompositionAVURLsBeingExported:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchCompositionAVURLsBeingModified:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAllAccessTokens:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)__fetchAllAccessTokens:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__RCSSavedRecordingService_observeFinalizingRecordings___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  v6 = 136315650;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_0(&dword_272442000, v3, v4, "%s -- recordingID = %@, progress = %f", v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)reloadExistingSearchMetadataWithCompletionBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearAndReloadSearchMetadataWithCompletionBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __40__RCSSavedRecordingService_serviceProxy__block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_272442000, v0, OS_LOG_TYPE_ERROR, "%s -- An error occurred while waiting for a reply from the service. Error = %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __51__RCSSavedRecordingService_synchronousServiceProxy__block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_272442000, v0, OS_LOG_TYPE_ERROR, "%s -- An error occurred while waiting for a reply from the service. Error = %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_5_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 56));
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __132__RCSSavedRecordingService__sendServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_withServiceProxy_messagingBlock___block_invoke_5_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 56));
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 64));
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __126__RCSSavedRecordingService__sendSynchronousServiceMessage_connectionFailureReplyInfo_infoAndErrorReplyHandler_messagingBlock___block_invoke_3_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 64));
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_5_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 56));
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __100__RCSSavedRecordingService__sendServiceMessage_withBasicReplyBlock_withServiceProxy_messagingBlock___block_invoke_5_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 56));
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_onQueueInvalidatePendingCompletionHandlersWithError:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidatePendingSynchronousCompletionHandlersWithError:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__RCSSavedRecordingService_valueForServiceKey___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  v5[0] = 136315650;
  OUTLINED_FUNCTION_3_1();
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_272442000, v3, OS_LOG_TYPE_ERROR, "%s -- failed to get value for %@, error = %@", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end