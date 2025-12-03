@interface PBItemCollection
+ (id)allowedClassesForSecureCoding;
- ($115C4C562B26FF47E01F9F4EA65B5887)establishConnectionToDataProviderCompletionBlock:(SEL)block;
- (BOOL)canInstantiateObjectOfClass:(Class)class;
- (BOOL)hasItemWithRepresentationConformingToType:(id)type;
- (BOOL)hasItemWithRepresentationOfType:(id)type;
- (BOOL)isDataProvider;
- (BOOL)isDeviceLockedPasteboard;
- (BOOL)isGeneralPasteboard;
- (BOOL)isLocalOnly;
- (BOOL)isOrWasRemote;
- (BOOL)isPersistent;
- (BOOL)isRemote;
- (BOOL)isRemoteDataLoaded;
- (BOOL)isRemoteMetadataLoaded;
- (BOOL)isSystemPasteboard;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)loadsDataSynchronously;
- (BOOL)originatorAllowedToCopyOnPaste;
- (NSArray)items;
- (NSData)originatorPersistentID;
- (NSDate)expirationDate;
- (NSDictionary)metadata;
- (NSDictionary)privateMetadata;
- (NSString)description;
- (NSString)name;
- (NSString)originatorBundleID;
- (NSString)originatorLocalizedName;
- (NSString)originatorTeamID;
- (NSString)persistenceName;
- (NSString)remoteDeviceName;
- (NSUUID)UUID;
- (NSUUID)saveBootSession;
- (NSXPCListenerEndpoint)dataConsumersEndpoint;
- (PBItemCollection)initWithCoder:(id)coder;
- (PBItemCollection)initWithItems:(id)items;
- (PBItemCollectionDataTransferDelegate)dataTransferDelegate;
- (PBItemCollectionDataTransferDelegate)itemQueue_dataTransferDelegate;
- (UISPasteSharingToken)sharingToken;
- (id)_remoteDataProviderConnection;
- (id)availableRepresentationTypes;
- (id)copyWithDoNothingLoaders;
- (id)copyWithItems:(id)items;
- (id)dataConsumersListener;
- (int64_t)changeCount;
- (int64_t)originatorDataOwner;
- (unint64_t)saveTimestamp;
- (void)_setMetadataValue:(id)value forKey:(id)key;
- (void)addInvalidationDelegate:(id)delegate;
- (void)addItems:(id)items;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)item:(id)item representation:(id)representation beganDataTransferWithProgress:(id)progress;
- (void)item:(id)item representationFinishedDataTransfer:(id)transfer;
- (void)registerLocalAvailableDerivedRepresentations;
- (void)removeInvalidationDelegate:(id)delegate;
- (void)setChangeCount:(int64_t)count;
- (void)setDataProviderEndpoint:(id)endpoint;
- (void)setDataTransferDelegate:(id)delegate;
- (void)setDeviceLockedPasteboard:(BOOL)pasteboard;
- (void)setIsOrWasRemote:(BOOL)remote;
- (void)setIsRemote:(BOOL)remote;
- (void)setItems:(id)items;
- (void)setLoadsDataSynchronously:(BOOL)synchronously;
- (void)setMetadata:(id)metadata;
- (void)setOriginatorAllowedToCopyOnPaste:(BOOL)paste;
- (void)setOriginatorBundleID:(id)d;
- (void)setOriginatorDataOwner:(int64_t)owner;
- (void)setOriginatorLocalizedName:(id)name;
- (void)setOriginatorPersistentID:(id)d;
- (void)setOriginatorTeamID:(id)d;
- (void)setPrivateMetadata:(id)metadata;
- (void)setRemoteDataLoaded;
- (void)setRemoteDeviceName:(id)name;
- (void)setRemoteMetadataLoaded;
- (void)setSaveBootSession:(id)session;
- (void)setSaveTimestamp:(unint64_t)timestamp;
- (void)setSharingToken:(id)token;
- (void)setUUID:(id)d;
- (void)setUsesServerConnectionToLoadDataWithAuthenticationBlock:(id)block dataOwnerBlock:(id)ownerBlock;
- (void)shutdown;
- (void)waitForItemRequestsDeliveryCompletion:(id)completion;
@end

@implementation PBItemCollection

+ (id)allowedClassesForSecureCoding
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = +[PBItem allowedClassesForSecureCoding];
  v12 = [v10 setByAddingObjectsFromSet:v11];

  return v12;
}

- (BOOL)isRemote
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = PBItemQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__PBItemCollection_isRemote__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __28__PBItemCollection_isRemote__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_remotePasteboardState];
  *(*(*(a1 + 40) + 8) + 24) = result > 0;
  return result;
}

- (NSArray)items
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__PBItemCollection_items__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __25__PBItemCollection_items__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_items];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSUUID)UUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__PBItemCollection_UUID__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __24__PBItemCollection_UUID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_UUID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(PBItemCollection *)self shutdown];
  v3.receiver = self;
  v3.super_class = PBItemCollection;
  [(PBItemCollection *)&v3 dealloc];
}

- (void)shutdown
{
  v3 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PBItemCollection_shutdown__block_invoke;
  block[3] = &unk_279A063A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __28__PBItemCollection_shutdown__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 168);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * v6++) didInvalidateItemCollectionWithUUID:{*(*(a1 + 32) + 72), v12}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 24) invalidate];
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  [*(*(a1 + 32) + 40) invalidate];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerLocalAvailableDerivedRepresentations
{
  v3 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PBItemCollection_registerLocalAvailableDerivedRepresentations__block_invoke;
  block[3] = &unk_279A063A0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __64__PBItemCollection_registerLocalAvailableDerivedRepresentations__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) itemQueue_items];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) itemQueue_registerLocalAvailableDerivedRepresentations];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__PBItemCollection_setItems___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_sync(v5, v7);
}

- (void)setUUID:(id)d
{
  dCopy = d;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__PBItemCollection_setUUID___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(v5, v7);
}

- (NSDictionary)metadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__PBItemCollection_metadata__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __28__PBItemCollection_metadata__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_metadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__PBItemCollection_setMetadata___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = metadataCopy;
  v6 = metadataCopy;
  dispatch_sync(v5, v7);
}

- (NSDictionary)privateMetadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__PBItemCollection_privateMetadata__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __35__PBItemCollection_privateMetadata__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_privateMetadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setPrivateMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PBItemCollection_setPrivateMetadata___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = metadataCopy;
  v6 = metadataCopy;
  dispatch_sync(v5, v7);
}

- (NSXPCListenerEndpoint)dataConsumersEndpoint
{
  dataConsumersListener = [(PBItemCollection *)self dataConsumersListener];
  endpoint = [dataConsumersListener endpoint];

  return endpoint;
}

- (BOOL)isDataProvider
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = PBItemQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PBItemCollection_isDataProvider__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __34__PBItemCollection_isDataProvider__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_isDataProvider];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSUUID)saveBootSession
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__PBItemCollection_saveBootSession__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __35__PBItemCollection_saveBootSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_saveBootSession];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setSaveBootSession:(id)session
{
  sessionCopy = session;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PBItemCollection_setSaveBootSession___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_sync(v5, v7);
}

- (unint64_t)saveTimestamp
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__PBItemCollection_saveTimestamp__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __33__PBItemCollection_saveTimestamp__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_saveTimestamp];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setSaveTimestamp:(unint64_t)timestamp
{
  v5 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PBItemCollection_setSaveTimestamp___block_invoke;
  v6[3] = &unk_279A070A8;
  v6[4] = self;
  v6[5] = timestamp;
  dispatch_sync(v5, v6);
}

- (NSData)originatorPersistentID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PBItemCollection_originatorPersistentID__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__PBItemCollection_originatorPersistentID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_originatorPersistentID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setOriginatorPersistentID:(id)d
{
  dCopy = d;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PBItemCollection_setOriginatorPersistentID___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(v5, v7);
}

- (NSString)originatorBundleID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PBItemCollection_originatorBundleID__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__PBItemCollection_originatorBundleID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_originatorBundleID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setOriginatorBundleID:(id)d
{
  dCopy = d;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PBItemCollection_setOriginatorBundleID___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(v5, v7);
}

- (NSString)originatorTeamID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PBItemCollection_originatorTeamID__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __36__PBItemCollection_originatorTeamID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_originatorTeamID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setOriginatorTeamID:(id)d
{
  dCopy = d;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__PBItemCollection_setOriginatorTeamID___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(v5, v7);
}

- (NSString)originatorLocalizedName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PBItemCollection_originatorLocalizedName__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__PBItemCollection_originatorLocalizedName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_originatorLocalizedName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setOriginatorLocalizedName:(id)name
{
  nameCopy = name;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PBItemCollection_setOriginatorLocalizedName___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(v5, v7);
}

- (BOOL)originatorAllowedToCopyOnPaste
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = PBItemQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PBItemCollection_originatorAllowedToCopyOnPaste__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __50__PBItemCollection_originatorAllowedToCopyOnPaste__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_originatorAllowedToCopyOnPaste];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setOriginatorAllowedToCopyOnPaste:(BOOL)paste
{
  v5 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PBItemCollection_setOriginatorAllowedToCopyOnPaste___block_invoke;
  v6[3] = &unk_279A070D0;
  v6[4] = self;
  pasteCopy = paste;
  dispatch_sync(v5, v6);
}

- (int64_t)originatorDataOwner
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PBItemCollection_originatorDataOwner__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __39__PBItemCollection_originatorDataOwner__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_originatorDataOwner];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setOriginatorDataOwner:(int64_t)owner
{
  v5 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PBItemCollection_setOriginatorDataOwner___block_invoke;
  v6[3] = &unk_279A070A8;
  v6[4] = self;
  v6[5] = owner;
  dispatch_sync(v5, v6);
}

- (BOOL)isDeviceLockedPasteboard
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = PBItemQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PBItemCollection_isDeviceLockedPasteboard__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __44__PBItemCollection_isDeviceLockedPasteboard__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_isDeviceLockedPasteboard];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setDeviceLockedPasteboard:(BOOL)pasteboard
{
  v5 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PBItemCollection_setDeviceLockedPasteboard___block_invoke;
  v6[3] = &unk_279A070D0;
  v6[4] = self;
  pasteboardCopy = pasteboard;
  dispatch_sync(v5, v6);
}

- (BOOL)isOrWasRemote
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = PBItemQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__PBItemCollection_isOrWasRemote__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __33__PBItemCollection_isOrWasRemote__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_isOrWasRemote];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setIsOrWasRemote:(BOOL)remote
{
  v5 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PBItemCollection_setIsOrWasRemote___block_invoke;
  v6[3] = &unk_279A070D0;
  v6[4] = self;
  remoteCopy = remote;
  dispatch_sync(v5, v6);
}

- (NSString)remoteDeviceName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PBItemCollection_remoteDeviceName__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __36__PBItemCollection_remoteDeviceName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_remoteDeviceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setRemoteDeviceName:(id)name
{
  nameCopy = name;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__PBItemCollection_setRemoteDeviceName___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(v5, v7);
}

- (UISPasteSharingToken)sharingToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__PBItemCollection_sharingToken__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __32__PBItemCollection_sharingToken__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_sharingToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setSharingToken:(id)token
{
  tokenCopy = token;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PBItemCollection_setSharingToken___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_sync(v5, v7);
}

- (BOOL)loadsDataSynchronously
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = PBItemQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PBItemCollection_loadsDataSynchronously__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __42__PBItemCollection_loadsDataSynchronously__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_loadsDataSynchronously];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setLoadsDataSynchronously:(BOOL)synchronously
{
  v5 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PBItemCollection_setLoadsDataSynchronously___block_invoke;
  v6[3] = &unk_279A070D0;
  v6[4] = self;
  synchronouslyCopy = synchronously;
  dispatch_sync(v5, v6);
}

- (id)dataConsumersListener
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PBItemCollection_dataConsumersListener__block_invoke;
  v6[3] = &unk_279A066F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __41__PBItemCollection_dataConsumersListener__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[3])
  {
    v3 = [MEMORY[0x277CCAE98] anonymousListener];
    [v3 setDelegate:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;
    v6 = v3;

    [v6 resume];
    v2 = *(a1 + 32);
  }

  v7 = [v2 itemQueue_dataConsumersListener];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;

  [connectionCopy resume];
  return 1;
}

- (void)setDataProviderEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PBItemCollection_setDataProviderEndpoint___block_invoke;
  v7[3] = &unk_279A064E0;
  v8 = endpointCopy;
  selfCopy = self;
  v6 = endpointCopy;
  dispatch_sync(v5, v7);
}

void __44__PBItemCollection_setDataProviderEndpoint___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) itemQueue_remoteDataProviderEndpoint];

  if (v1 != v2)
  {
    [*(a1 + 40) setItemQueue_remoteDataProviderEndpoint:*(a1 + 32)];
    v3 = [*(a1 + 40) itemQueue_remoteDataProviderConnection];
    [v3 invalidate];

    [*(a1 + 40) setItemQueue_remoteDataProviderConnection:0];
    if (*(a1 + 32))
    {
      objc_initWeak(&location, *(a1 + 40));
      for (i = 0; ; ++i)
      {
        v5 = [*(a1 + 40) itemQueue_items];
        v6 = i < [v5 count];

        if (!v6)
        {
          break;
        }

        v7 = [*(a1 + 40) itemQueue_items];
        v8 = [v7 objectAtIndexedSubscript:i];

        v9 = [v8 itemQueue_typeOrder];
        v10 = [v9 array];
        v11 = [v10 copy];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v13)
        {
          v14 = *v24;
          do
          {
            v15 = 0;
            do
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v23 + 1) + 8 * v15);
              v17 = [PBItemRepresentation alloc];
              v21[0] = MEMORY[0x277D85DD0];
              v21[1] = 3221225472;
              v21[2] = __44__PBItemCollection_setDataProviderEndpoint___block_invoke_2;
              v21[3] = &unk_279A07170;
              objc_copyWeak(v22, &location);
              v21[4] = v16;
              v22[1] = i;
              v18 = [(PBItemRepresentation *)v17 initWithType:v16 preferredRepresentation:0 v3_loader:v21];
              [v8 itemQueue_setItemRepresentation:v18];

              objc_destroyWeak(v22);
              ++v15;
            }

            while (v13 != v15);
            v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v13);
        }
      }

      objc_destroyWeak(&location);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

id __44__PBItemCollection_setDataProviderEndpoint___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained _remoteDataProviderConnection];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__PBItemCollection_setDataProviderEndpoint___block_invoke_3;
    v25[3] = &unk_279A070F8;
    v25[4] = *(a1 + 32);
    v8 = v4;
    v26 = v8;
    v9 = MEMORY[0x25F8AC430](v25);
    v19 = v9;
    if ([v6 itemQueue_loadsDataSynchronously])
    {
      [v7 synchronousRemoteObjectProxyWithErrorHandler:v9];
    }

    else
    {
      [v7 remoteObjectProxyWithErrorHandler:v9];
    }
    v12 = ;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __44__PBItemCollection_setDataProviderEndpoint___block_invoke_20;
    v24[3] = &unk_279A07120;
    v24[4] = *(a1 + 32);
    v13 = MEMORY[0x25F8AC430](v24);
    v14 = [v7 remoteObjectProxyWithErrorHandler:v13];
    v11 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
    [v11 becomeCurrentWithPendingUnitCount:100];
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __44__PBItemCollection_setDataProviderEndpoint___block_invoke_22;
    v21[3] = &unk_279A07148;
    v22 = v14;
    v23 = v8;
    v17 = v14;
    [v12 loadRepresentationForItemAtIndex:v15 type:v16 completionBlock:v21];
    [v11 resignCurrent];
  }

  else
  {
    v10 = _PBLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_25E138000, v10, OS_LOG_TYPE_FAULT, "Cannot retrieve a strong reference to PBItemCollection.", buf, 2u);
    }

    v7 = PBCannotLoadRepresentationError(*(a1 + 32), 0);
    (*(v4 + 2))(v4, 0, 0, 0, v7, 0);
    v11 = 0;
  }

  return v11;
}

void __44__PBItemCollection_setDataProviderEndpoint___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PBLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_fault_impl(&dword_25E138000, v4, OS_LOG_TYPE_FAULT, "Could not retrieve data representation of type %@. Error: %@", &v9, 0x16u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = PBCannotLoadRepresentationError(*(a1 + 32), v3);
    (*(v5 + 16))(v5, 0, 0, 0, v6, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __44__PBItemCollection_setDataProviderEndpoint___block_invoke_20(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PBLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_fault_impl(&dword_25E138000, v4, OS_LOG_TYPE_FAULT, "Could not call cleanup block for type %@. Error: %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __44__PBItemCollection_setDataProviderEndpoint___block_invoke_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__PBItemCollection_setDataProviderEndpoint___block_invoke_2_23;
  v13[3] = &unk_279A064E0;
  v14 = v9;
  v10 = *(a1 + 40);
  v15 = *(a1 + 32);
  v11 = *(v10 + 16);
  v12 = v9;
  v11(v10, a2, a3, 0, a4, v13);
}

uint64_t __44__PBItemCollection_setDataProviderEndpoint___block_invoke_2_23(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) callCleanupBlockWithUUID:?];
  }

  return result;
}

- (void)waitForItemRequestsDeliveryCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = PBItemQueue();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__PBItemCollection_waitForItemRequestsDeliveryCompletion___block_invoke;
    v6[3] = &unk_279A06A10;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_sync(v5, v6);
  }
}

void __58__PBItemCollection_waitForItemRequestsDeliveryCompletion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__PBItemCollection_waitForItemRequestsDeliveryCompletion___block_invoke_2;
    v7[3] = &unk_279A06718;
    v8 = *(a1 + 40);
    v2 = MEMORY[0x25F8AC430](v7);
    v3 = [*(*(a1 + 32) + 40) remoteObjectProxyWithErrorHandler:v2];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__PBItemCollection_waitForItemRequestsDeliveryCompletion___block_invoke_26;
    v5[3] = &unk_279A063F0;
    v6 = *(a1 + 40);
    [v3 waitForItemRequestsDeliveryCompletion:v5];
  }

  else
  {
    v4 = *(a1 + 40);

    PBDispatchAsyncCallback(v4);
  }
}

void __58__PBItemCollection_waitForItemRequestsDeliveryCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PBLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_fault_impl(&dword_25E138000, v4, OS_LOG_TYPE_FAULT, "Could not wait for item requests delivery. Error: %@", &v6, 0xCu);
  }

  PBDispatchAsyncCallback(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

- (id)_remoteDataProviderConnection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PBItemCollection__remoteDataProviderConnection__block_invoke;
  v6[3] = &unk_279A066F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__PBItemCollection__remoteDataProviderConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_remoteDataProviderConnection];
  if (v2)
  {
  }

  else
  {
    v3 = [*(a1 + 32) itemQueue_remoteDataProviderEndpoint];

    if (v3)
    {
      v4 = objc_alloc(MEMORY[0x277CCAE80]);
      v5 = [*(a1 + 32) itemQueue_remoteDataProviderEndpoint];
      v6 = [v4 initWithListenerEndpoint:v5];

      v7 = PBNewDataProviderXPCInterface();
      [v6 setRemoteObjectInterface:v7];

      objc_initWeak(&location, *(a1 + 32));
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __49__PBItemCollection__remoteDataProviderConnection__block_invoke_2;
      v14 = &unk_279A07198;
      objc_copyWeak(&v15, &location);
      [v6 setInvalidationHandler:&v11];
      [*(a1 + 32) setItemQueue_remoteDataProviderConnection:{v6, v11, v12, v13, v14}];
      [v6 resume];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  v8 = [*(a1 + 32) itemQueue_remoteDataProviderConnection];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __49__PBItemCollection__remoteDataProviderConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PBItemQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PBItemCollection__remoteDataProviderConnection__block_invoke_3;
    block[3] = &unk_279A063A0;
    block[4] = WeakRetained;
    dispatch_sync(v2, block);
  }
}

uint64_t __49__PBItemCollection__remoteDataProviderConnection__block_invoke_3(uint64_t a1)
{
  v2 = _PBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_25E138000, v2, OS_LOG_TYPE_FAULT, "Connection to data provider has been invalidated.", v4, 2u);
  }

  return [*(a1 + 32) setItemQueue_remoteDataProviderConnection:0];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)establishConnectionToDataProviderCompletionBlock:(SEL)block
{
  v6 = a4;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__PBItemCollection_establishConnectionToDataProviderCompletionBlock___block_invoke;
  v20[3] = &unk_279A063F0;
  v21 = v6;
  v7 = v6;
  v8 = MEMORY[0x25F8AC430](v20);
  _remoteDataProviderConnection = [(PBItemCollection *)self _remoteDataProviderConnection];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__PBItemCollection_establishConnectionToDataProviderCompletionBlock___block_invoke_2;
  v18 = &unk_279A06718;
  v10 = v8;
  v19 = v10;
  v11 = [_remoteDataProviderConnection remoteObjectProxyWithErrorHandler:&v15];

  [v11 helloCompletionBlock:{v10, v15, v16, v17, v18}];
  _remoteDataProviderConnection2 = [(PBItemCollection *)self _remoteDataProviderConnection];
  v13 = _remoteDataProviderConnection2;
  if (_remoteDataProviderConnection2)
  {
    [_remoteDataProviderConnection2 auditToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

uint64_t __69__PBItemCollection_establishConnectionToDataProviderCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __69__PBItemCollection_establishConnectionToDataProviderCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PBLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315394;
    v7 = "[PBItemCollection establishConnectionToDataProviderCompletionBlock:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_fault_impl(&dword_25E138000, v4, OS_LOG_TYPE_FAULT, "%s could not establish connection to data provider. Error: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (PBItemCollection)initWithItems:(id)items
{
  itemsCopy = items;
  v13.receiver = self;
  v13.super_class = PBItemCollection;
  v5 = [(PBItemCollection *)&v13 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    itemQueue_items = v5->_itemQueue_items;
    v5->_itemQueue_items = v6;

    v5->_itemQueue_isDataProvider = 1;
    uUID = [MEMORY[0x277CCAD78] UUID];
    itemQueue_UUID = v5->_itemQueue_UUID;
    v5->_itemQueue_UUID = uUID;

    date = [MEMORY[0x277CBEAA8] date];
    creationDate = v5->_creationDate;
    v5->_creationDate = date;
  }

  return v5;
}

- (id)copyWithItems:(id)items
{
  itemsCopy = items;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__3;
  v57 = __Block_byref_object_dispose__3;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__3;
  v51 = __Block_byref_object_dispose__3;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v4 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PBItemCollection_copyWithItems___block_invoke;
  block[3] = &unk_279A071C0;
  block[4] = self;
  block[5] = &v53;
  block[6] = &v47;
  block[7] = &v43;
  block[8] = &v37;
  block[9] = &v33;
  block[10] = &v27;
  block[11] = &v21;
  block[12] = &v15;
  block[13] = &v9;
  dispatch_sync(v4, block);

  v5 = [[PBItemCollection alloc] initWithItems:itemsCopy];
  [(PBItemCollection *)v5 setMetadata:v54[5]];
  [(PBItemCollection *)v5 setPrivateMetadata:v48[5]];
  [(PBItemCollection *)v5 setOriginatorDataOwner:v44[3]];
  [(PBItemCollection *)v5 setSaveBootSession:v38[5]];
  [(PBItemCollection *)v5 setSaveTimestamp:v34[3]];
  [(PBItemCollection *)v5 setOriginatorPersistentID:v28[5]];
  [(PBItemCollection *)v5 setOriginatorBundleID:v22[5]];
  [(PBItemCollection *)v5 setOriginatorTeamID:v16[5]];
  [(PBItemCollection *)v5 setOriginatorLocalizedName:v10[5]];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  return v5;
}

uint64_t __34__PBItemCollection_copyWithItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_metadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) itemQueue_privateMetadata];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) itemQueue_originatorDataOwner];
  v8 = [*(a1 + 32) itemQueue_saveBootSession];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) itemQueue_saveTimestamp];
  v11 = [*(a1 + 32) itemQueue_originatorPersistentID];
  v12 = *(*(a1 + 80) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) itemQueue_originatorBundleID];
  v15 = *(*(a1 + 88) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [*(a1 + 32) itemQueue_originatorTeamID];
  v18 = *(*(a1 + 96) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(a1 + 32) itemQueue_originatorLocalizedName];
  v21 = *(*(a1 + 104) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  return MEMORY[0x2821F96F8]();
}

- (id)copyWithDoNothingLoaders
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  array = [MEMORY[0x277CBEB18] array];
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PBItemCollection_copyWithDoNothingLoaders__block_invoke;
  v6[3] = &unk_279A066F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [(PBItemCollection *)self copyWithItems:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__PBItemCollection_copyWithDoNothingLoaders__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 48);
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

        v7 = [*(*(&v9 + 1) + 8 * v6) _itemQueue_copyWithDoNothingRepresentations];
        [*(*(*(a1 + 40) + 8) + 40) addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addItems:(id)items
{
  itemsCopy = items;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__PBItemCollection_addItems___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_sync(v5, v7);
}

void __29__PBItemCollection_addItems___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) mutableCopy];
  [v2 addObjectsFromArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (BOOL)hasItemWithRepresentationOfType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  [(PBItemCollection *)self items];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) hasRepresentationOfType:{typeCopy, v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)hasItemWithRepresentationConformingToType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  [(PBItemCollection *)self items];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) hasRepresentationConformingToType:{typeCopy, v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)canInstantiateObjectOfClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  [(PBItemCollection *)self items];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * i) canInstantiateObjectOfClass:{class, v12}])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)availableRepresentationTypes
{
  v18 = *MEMORY[0x277D85DE8];
  items = [(PBItemCollection *)self items];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = items;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        availableTypes = [*(*(&v13 + 1) + 8 * i) availableTypes];
        [v3 addObjectsFromArray:availableTypes];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  v11 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (PBItemCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = PBItemCollection;
  v5 = [(PBItemCollection *)&v39 init];
  if (v5)
  {
    v6 = +[PBItem allowedClassesForSecureCoding];
    v7 = [v6 setByAddingObject:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"items"];
    itemQueue_items = v5->_itemQueue_items;
    v5->_itemQueue_items = v8;

    v10 = PBAllowedMetadataClasses();
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"privateMetadata"];
    itemQueue_privateMetadata = v5->_itemQueue_privateMetadata;
    v5->_itemQueue_privateMetadata = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    itemQueue_UUID = v5->_itemQueue_UUID;
    v5->_itemQueue_UUID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saveBootSession"];
    itemQueue_saveBootSession = v5->_itemQueue_saveBootSession;
    v5->_itemQueue_saveBootSession = v17;

    v5->_itemQueue_saveTimestamp = [coderCopy decodeInt64ForKey:@"saveTimestamp"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
    itemQueue_originatorPersistentID = v5->_itemQueue_originatorPersistentID;
    v5->_itemQueue_originatorPersistentID = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    itemQueue_originatorBundleID = v5->_itemQueue_originatorBundleID;
    v5->_itemQueue_originatorBundleID = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamIdentifier"];
    itemQueue_originatorTeamID = v5->_itemQueue_originatorTeamID;
    v5->_itemQueue_originatorTeamID = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    itemQueue_originatorLocalizedName = v5->_itemQueue_originatorLocalizedName;
    v5->_itemQueue_originatorLocalizedName = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceLocked"];
    v5->_itemQueue_deviceLockedPasteboard = [v27 BOOLValue];

    v5->_itemQueue_originatorAllowedToCopyOnPaste = [coderCopy decodeBoolForKey:@"allowedToCopyOnPaste"];
    v5->_itemQueue_isOrWasRemote = [coderCopy decodeBoolForKey:@"isOrWasRemote"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceName"];
    itemQueue_remoteDeviceName = v5->_itemQueue_remoteDeviceName;
    v5->_itemQueue_remoteDeviceName = v28;

    v5->_itemQueue_originatorDataOwner = [coderCopy decodeIntegerForKey:@"originatorDataOwner"];
    v30 = PBAllowedMetadataClasses();
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"metadata"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __34__PBItemCollection_initWithCoder___block_invoke;
      v37[3] = &unk_279A06E98;
      v33 = dictionary;
      v38 = v33;
      [v31 enumerateKeysAndObjectsUsingBlock:v37];
      itemQueue_metadata = v5->_itemQueue_metadata;
      v5->_itemQueue_metadata = v33;
      v35 = v33;
    }
  }

  return v5;
}

void __34__PBItemCollection_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isEqualToString:@"name"] || objc_msgSend(v6, "isEqualToString:", @"changeCount") || objc_msgSend(v6, "isEqualToString:", @"persistent") || objc_msgSend(v6, "isEqualToString:", @"localOnly") || objc_msgSend(v6, "isEqualToString:", @"expirationDate"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setObject:v5 forKey:v6];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__3;
  v98 = __Block_byref_object_dispose__3;
  v99 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__3;
  v92 = __Block_byref_object_dispose__3;
  v93 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__3;
  v86 = __Block_byref_object_dispose__3;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__3;
  v80 = __Block_byref_object_dispose__3;
  v81 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__3;
  v74 = __Block_byref_object_dispose__3;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__3;
  v64 = __Block_byref_object_dispose__3;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__3;
  v58 = __Block_byref_object_dispose__3;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__3;
  v52 = __Block_byref_object_dispose__3;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PBItemCollection_encodeWithCoder___block_invoke;
  block[3] = &unk_279A071E8;
  block[4] = self;
  block[5] = &v94;
  block[6] = &v88;
  block[7] = &v82;
  block[8] = &v76;
  block[9] = &v70;
  block[10] = &v66;
  block[11] = &v60;
  block[12] = &v54;
  block[13] = &v48;
  block[14] = &v42;
  block[15] = &v38;
  block[16] = &v34;
  block[17] = &v30;
  block[18] = &v24;
  block[19] = &v20;
  dispatch_sync(v5, block);

  v6 = v95[5];
  if (v6)
  {
    [coderCopy encodeObject:v6 forKey:@"items"];
  }

  v7 = v89[5];
  if (v7)
  {
    [coderCopy encodeObject:v7 forKey:@"metadata"];
  }

  v8 = v83[5];
  if (v8)
  {
    [coderCopy encodeObject:v8 forKey:@"privateMetadata"];
  }

  v9 = v77[5];
  if (v9)
  {
    [coderCopy encodeObject:v9 forKey:@"UUID"];
  }

  creationDate = [(PBItemCollection *)self creationDate];
  if (creationDate)
  {
    [coderCopy encodeObject:creationDate forKey:@"creationDate"];
  }

  v11 = v71[5];
  if (v11)
  {
    [coderCopy encodeObject:v11 forKey:@"saveBootSession"];
  }

  v12 = v67[3];
  if (v12)
  {
    [coderCopy encodeInt64:v12 forKey:@"saveTimestamp"];
  }

  v13 = v61[5];
  if (v13)
  {
    [coderCopy encodeObject:v13 forKey:@"persistentIdentifier"];
  }

  v14 = v55[5];
  if (v14)
  {
    [coderCopy encodeObject:v14 forKey:@"bundleIdentifier"];
  }

  v15 = v49[5];
  if (v15)
  {
    [coderCopy encodeObject:v15 forKey:@"teamIdentifier"];
  }

  v16 = v43[5];
  if (v16)
  {
    [coderCopy encodeObject:v16 forKey:@"localizedName"];
  }

  v17 = v25[5];
  if (v17)
  {
    [coderCopy encodeObject:v17 forKey:@"remoteDeviceName"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v35 + 24)];
  [coderCopy encodeObject:v18 forKey:@"deviceLocked"];

  [coderCopy encodeBool:*(v31 + 24) forKey:@"isOrWasRemote"];
  [coderCopy encodeBool:*(v21 + 24) forKey:@"allowedToCopyOnPaste"];
  [coderCopy encodeInteger:v39[3] forKey:@"originatorDataOwner"];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v82, 8);

  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v94, 8);
}

uint64_t __36__PBItemCollection_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_items];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) itemQueue_metadata];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) itemQueue_privateMetadata];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) itemQueue_UUID];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) itemQueue_saveBootSession];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) itemQueue_saveTimestamp];
  v17 = [*(a1 + 32) itemQueue_originatorPersistentID];
  v18 = *(*(a1 + 88) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(a1 + 32) itemQueue_originatorBundleID];
  v21 = *(*(a1 + 96) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v23 = [*(a1 + 32) itemQueue_originatorTeamID];
  v24 = *(*(a1 + 104) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v26 = [*(a1 + 32) itemQueue_originatorLocalizedName];
  v27 = *(*(a1 + 112) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  *(*(*(a1 + 120) + 8) + 24) = [*(a1 + 32) itemQueue_originatorDataOwner];
  *(*(*(a1 + 128) + 8) + 24) = [*(a1 + 32) itemQueue_isDeviceLockedPasteboard];
  *(*(*(a1 + 136) + 8) + 24) = [*(a1 + 32) itemQueue_isOrWasRemote];
  v29 = [*(a1 + 32) itemQueue_remoteDeviceName];
  v30 = *(*(a1 + 144) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  result = [*(a1 + 32) itemQueue_originatorAllowedToCopyOnPaste];
  *(*(*(a1 + 152) + 8) + 24) = result;
  return result;
}

- (void)setUsesServerConnectionToLoadDataWithAuthenticationBlock:(id)block dataOwnerBlock:(id)ownerBlock
{
  blockCopy = block;
  ownerBlockCopy = ownerBlock;
  v8 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__PBItemCollection_setUsesServerConnectionToLoadDataWithAuthenticationBlock_dataOwnerBlock___block_invoke;
  block[3] = &unk_279A07260;
  block[4] = self;
  v12 = blockCopy;
  v13 = ownerBlockCopy;
  v9 = ownerBlockCopy;
  v10 = blockCopy;
  dispatch_sync(v8, block);
}

void __92__PBItemCollection_setUsesServerConnectionToLoadDataWithAuthenticationBlock_dataOwnerBlock___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] itemQueue_items];
  v3 = [v2 count];

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = [a1[4] itemQueue_items];
      v6 = [v5 objectAtIndexedSubscript:v4];

      [v6 setItemQueue_isStoredOnServer:1];
      v7 = [v6 itemQueue_typeOrder];
      v8 = [v7 array];
      v9 = [v8 copy];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v9;
      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = *v27;
        do
        {
          v12 = 0;
          do
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v26 + 1) + 8 * v12);
            objc_initWeak(&location, a1[4]);
            v14 = [PBItemRepresentation alloc];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __92__PBItemCollection_setUsesServerConnectionToLoadDataWithAuthenticationBlock_dataOwnerBlock___block_invoke_2;
            v21[3] = &unk_279A07238;
            objc_copyWeak(v24, &location);
            v22 = a1[5];
            v15 = a1[6];
            v24[1] = v4;
            v23 = v15;
            v21[4] = v13;
            v16 = [(PBItemRepresentation *)v14 initWithType:v13 preferredRepresentation:1 v3_loader:v21];
            [v6 itemQueue_setItemRepresentation:v16];

            objc_destroyWeak(v24);
            objc_destroyWeak(&location);
            ++v12;
          }

          while (v10 != v12);
          v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }

      v17 = [a1[4] itemQueue_items];
      v18 = [v17 count];

      ++v4;
    }

    while (v4 < v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

id __92__PBItemCollection_setUsesServerConnectionToLoadDataWithAuthenticationBlock_dataOwnerBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
    [v8 becomeCurrentWithPendingUnitCount:100];
    v9 = *(a1 + 40);
    if (v9)
    {
      v19 = (*(v9 + 16))();
    }

    else
    {
      v19 = 0;
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v18 = (*(v11 + 16))();
    }

    else
    {
      v18 = 0;
    }

    v12 = +[PBServerConnection defaultConnection];
    v13 = [WeakRetained name];
    v14 = [WeakRetained UUID];
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __92__PBItemCollection_setUsesServerConnectionToLoadDataWithAuthenticationBlock_dataOwnerBlock___block_invoke_3;
    v20[3] = &unk_279A07210;
    v21 = v6;
    [v12 requestItemFromPasteboardWithName:v13 UUID:v14 authenticationMessage:v19 itemIndex:v15 typeIdentifier:v16 dataOwner:v18 loadContext:v5 completionBlock:v20];

    [v8 resignCurrent];
  }

  else
  {
    if (v6)
    {
      v10 = PBCannotLoadRepresentationError(*(a1 + 32), 0);
      (*(v6 + 2))(v6, 0, 0, 0, v10, 0);
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __92__PBItemCollection_setUsesServerConnectionToLoadDataWithAuthenticationBlock_dataOwnerBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a4, a5, 0);
  }

  return result;
}

- (void)addInvalidationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PBItemCollection_addInvalidationDelegate___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(v5, v7);
}

void __44__PBItemCollection_addInvalidationDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_invalidationDelegates];

  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [*(a1 + 32) setItemQueue_invalidationDelegates:v3];
  }

  v4 = [*(a1 + 32) itemQueue_invalidationDelegates];
  [v4 addObject:*(a1 + 40)];
}

- (void)removeInvalidationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PBItemCollection_removeInvalidationDelegate___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(v5, v7);
}

void __47__PBItemCollection_removeInvalidationDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_invalidationDelegates];
  [v2 removeObject:*(a1 + 40)];
}

- (void)setIsRemote:(BOOL)remote
{
  v5 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__PBItemCollection_setIsRemote___block_invoke;
  v6[3] = &unk_279A070D0;
  v6[4] = self;
  remoteCopy = remote;
  dispatch_sync(v5, v6);
}

uint64_t __32__PBItemCollection_setIsRemote___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) itemQueue_remotePasteboardState];
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  result = [*(a1 + 32) setItemQueue_remotePasteboardState:v3];
  if (*(a1 + 40) == 1)
  {
    v5 = *(a1 + 32);

    return [v5 setItemQueue_isOrWasRemote:1];
  }

  return result;
}

- (BOOL)isRemoteMetadataLoaded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = PBItemQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PBItemCollection_isRemoteMetadataLoaded__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __42__PBItemCollection_isRemoteMetadataLoaded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_remotePasteboardState];
  *(*(*(a1 + 40) + 8) + 24) = result > 1;
  return result;
}

- (void)setRemoteMetadataLoaded
{
  v3 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PBItemCollection_setRemoteMetadataLoaded__block_invoke;
  block[3] = &unk_279A063A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)isRemoteDataLoaded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = PBItemQueue();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__PBItemCollection_isRemoteDataLoaded__block_invoke;
  v5[3] = &unk_279A06A60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __38__PBItemCollection_isRemoteDataLoaded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_remotePasteboardState];
  *(*(*(a1 + 40) + 8) + 24) = result == 3;
  return result;
}

- (void)setRemoteDataLoaded
{
  v3 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PBItemCollection_setRemoteDataLoaded__block_invoke;
  block[3] = &unk_279A063A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)setDataTransferDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PBItemCollection_setDataTransferDelegate___block_invoke;
  v7[3] = &unk_279A064E0;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_sync(v5, v7);
}

void __44__PBItemCollection_setDataTransferDelegate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = *(a1 + 40);
  }

  v3 = v2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(a1 + 40) + 48);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) itemQueue_setDataTransferDelegate:{v3, v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_storeWeak((*(a1 + 40) + 160), *(a1 + 32));
  v9 = *MEMORY[0x277D85DE8];
}

- (PBItemCollectionDataTransferDelegate)dataTransferDelegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PBItemCollection_dataTransferDelegate__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__PBItemCollection_dataTransferDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)item:(id)item representation:(id)representation beganDataTransferWithProgress:(id)progress
{
  progressCopy = progress;
  representationCopy = representation;
  itemCopy = item;
  dataTransferDelegate = [(PBItemCollection *)self dataTransferDelegate];
  [dataTransferDelegate itemCollection:self item:itemCopy representation:representationCopy beganDataTransferWithProgress:progressCopy];
}

- (void)item:(id)item representationFinishedDataTransfer:(id)transfer
{
  transferCopy = transfer;
  itemCopy = item;
  dataTransferDelegate = [(PBItemCollection *)self dataTransferDelegate];
  [dataTransferDelegate itemCollection:self item:itemCopy representationFinishedDataTransfer:transferCopy];
}

- (NSString)description
{
  v29 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = PBItemCollection;
  v3 = [(PBItemCollection *)&v27 description];
  v4 = [v3 mutableCopy];

  name = [(PBItemCollection *)self name];
  isSystemPasteboard = [(PBItemCollection *)self isSystemPasteboard];
  v7 = &stru_286FD7D38;
  if (isSystemPasteboard)
  {
    v7 = @" (System)";
  }

  [v4 appendFormat:@"\nName               : %@%@\n", name, v7];

  persistenceName = [(PBItemCollection *)self persistenceName];
  [v4 appendFormat:@"Persistence name   : %@\n", persistenceName];

  uUID = [(PBItemCollection *)self UUID];
  [v4 appendFormat:@"UUID               : %@\n", uUID];

  creationDate = [(PBItemCollection *)self creationDate];
  [v4 appendFormat:@"Creation date      : %@\n", creationDate];

  originatorBundleID = [(PBItemCollection *)self originatorBundleID];
  [v4 appendFormat:@"Originator BundleID: %@\n", originatorBundleID];

  originatorTeamID = [(PBItemCollection *)self originatorTeamID];
  [v4 appendFormat:@"Originator TeamID  : %@\n", originatorTeamID];

  originatorLocalizedName = [(PBItemCollection *)self originatorLocalizedName];
  [v4 appendFormat:@"Originator localized name: %@\n", originatorLocalizedName];

  metadata = [(PBItemCollection *)self metadata];
  [v4 appendFormat:@"Metadata           : %@\n", metadata];

  items = [(PBItemCollection *)self items];
  [v4 appendFormat:@"Items: %u\n", objc_msgSend(items, "count")];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  items2 = [(PBItemCollection *)self items];
  v17 = [items2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(items2);
        }

        [v4 appendFormat:@"%@\n", *(*(&v23 + 1) + 8 * i)];
      }

      v18 = [items2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (PBItemCollectionDataTransferDelegate)itemQueue_dataTransferDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_itemQueue_dataTransferDelegate);

  return WeakRetained;
}

- (void)_setMetadataValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v8 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PBItemCollection_Pasteboard___setMetadataValue_forKey___block_invoke;
  block[3] = &unk_279A06F10;
  block[4] = self;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_sync(v8, block);
}

void __57__PBItemCollection_Pasteboard___setMetadataValue_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_metadata];
  v6 = [v2 mutableCopy];

  v3 = v6;
  if (!v6)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v3;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 copy];
    [v7 setObject:v5 forKeyedSubscript:*(a1 + 48)];
  }

  else
  {
    [v7 removeObjectForKey:*(a1 + 48)];
  }

  [*(a1 + 32) setItemQueue_metadata:v7];
}

- (NSString)name
{
  metadata = [(PBItemCollection *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isSystemPasteboard
{
  name = [(PBItemCollection *)self name];
  v3 = [name isEqualToString:@"com.apple.UIKit.pboard.general"];

  return v3;
}

- (NSString)persistenceName
{
  name = [(PBItemCollection *)self name];
  originatorBundleID = [(PBItemCollection *)self originatorBundleID];
  originatorTeamID = [(PBItemCollection *)self originatorTeamID];
  v6 = PBPasteboardPersistenceName(name, originatorBundleID, originatorTeamID, [(PBItemCollection *)self isDeviceLockedPasteboard]);

  return v6;
}

- (int64_t)changeCount
{
  metadata = [(PBItemCollection *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"changeCount"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setChangeCount:(int64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [(PBItemCollection *)self _setMetadataValue:v4 forKey:@"changeCount"];
}

- (BOOL)isGeneralPasteboard
{
  name = [(PBItemCollection *)self name];
  v3 = [name isEqualToString:@"com.apple.UIKit.pboard.general"];

  return v3;
}

- (BOOL)isPersistent
{
  if ([(PBItemCollection *)self isSystemPasteboard])
  {
    return 1;
  }

  metadata = [(PBItemCollection *)self metadata];
  v5 = [metadata objectForKeyedSubscript:@"persistent"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (NSDate)expirationDate
{
  metadata = [(PBItemCollection *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"expirationDate"];

  return v3;
}

- (BOOL)isLocalOnly
{
  metadata = [(PBItemCollection *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"localOnly"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end