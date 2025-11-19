@interface PBItem
+ (id)allowedClassesForSecureCoding;
+ (id)item;
+ (id)itemWithContentsOfFileURL:(id)a3 type:(id)a4 outError:(id *)a5;
+ (id)itemWithData:(id)a3 type:(id)a4;
+ (id)itemWithObject:(id)a3;
- (BOOL)_canInstantiateObjectOfClass:(Class)a3 excludingCoercionsFromTypes:(id)a4;
- (BOOL)hasRepresentationConformingToType:(id)a3;
- (BOOL)hasRepresentationOfType:(id)a3;
- (BOOL)isDataAvailableImmediatelyForType:(id)a3;
- (BOOL)itemQueue_canInstantiateObjectOfClass:(Class)a3 excludingCoercionsFromTypes:(id)a4;
- (BOOL)itemQueue_hasRepresentationConformingToType:(id)a3;
- (BOOL)itemQueue_hasRepresentationOfType:(id)a3;
- (NSArray)availableTypes;
- (NSArray)representations;
- (NSDictionary)metadata;
- (NSDictionary)privateMetadata;
- (NSString)description;
- (NSString)suggestedName;
- (PBItem)init;
- (PBItem)initWithCoder:(id)a3;
- (PBItem)initWithContentsOfFileURL:(id)a3 type:(id)a4 outError:(id *)a5;
- (PBItem)initWithData:(id)a3 type:(id)a4;
- (PBItem)initWithNSItemProvider:(id)a3;
- (PBItem)initWithObject:(id)a3;
- (PBItemDataTransferDelegate)dataTransferDelegate;
- (PBItemDataTransferDelegate)itemQueue_dataTransferDelegate;
- (id)_itemQueue_copyWithDoNothingRepresentations;
- (id)_loadObjectOfClass:(Class)a3 context:(id)a4 completionBlock:(id)a5;
- (id)_representationForType:(id)a3;
- (id)availableTypesWithPreferredRepresentation:(unint64_t)a3;
- (id)copyWithDoNothingRepresentations;
- (id)enumeratePatternDetectionsForPatterns:(id)a3 usingBlock:(id)a4;
- (id)initDoNothing;
- (id)itemQueue_availableTypes;
- (id)itemQueue_representationForType:(id)a3;
- (id)loadObjectOfClass:(Class)a3 completionBlock:(id)a4;
- (id)localObject;
- (id)localUserInfo;
- (id)representationConformingToType:(id)a3;
- (id)uikit_loadObjectOfClass:(Class)a3 completionBlock:(id)a4;
- (int64_t)visibilityForType:(id)a3;
- (unint64_t)preferredRepresentationForType:(id)a3;
- (void)_addRepresentationType:(id)a3 loaderBlock:(id)a4;
- (void)_commonInitGenerateUUID:(BOOL)a3;
- (void)_loadRepresentationAsType:(id)a3 context:(id)a4 completionBlock:(id)a5;
- (void)addDataRepresentationType:(id)a3 loader:(id)a4;
- (void)addFileCopyRepresentationType:(id)a3 loader:(id)a4;
- (void)addOpenInPlaceRepresentationType:(id)a3 loader:(id)a4;
- (void)addPatternDetections:(id)a3;
- (void)addRepresentation:(id)a3;
- (void)addRepresentationType:(id)a3 loader:(id)a4;
- (void)addRepresentationType:(id)a3 preferredRepresentation:(unint64_t)a4 loader:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)itemQueue_registerLocalAvailableDerivedRepresentations;
- (void)itemQueue_removeRepresentationOfType:(id)a3;
- (void)itemQueue_setDataTransferDelegate:(id)a3;
- (void)itemQueue_setItemRepresentation:(id)a3;
- (void)itemRepresentation:(id)a3 beganDataTransferWithProgress:(id)a4;
- (void)itemRepresentationFinishedDataTransfer:(id)a3;
- (void)loadRepresentationAsType:(id)a3 completionBlock:(id)a4;
- (void)removeRepresentationOfType:(id)a3;
- (void)setDataTransferDelegate:(id)a3;
- (void)setLocalObject:(id)a3;
- (void)setLocalUserInfo:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setPrivateMetadata:(id)a3;
- (void)uikit_loadRepresentationAsType:(id)a3 completionBlock:(id)a4;
- (void)v2_addFileCopyRepresentationType:(id)a3 loader:(id)a4;
- (void)v2_addRepresentationType:(id)a3 preferredRepresentation:(unint64_t)a4 loader:(id)a5;
@end

@implementation PBItem

+ (id)allowedClassesForSecureCoding
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (void)dealloc
{
  if (self->_itemQueue_primaryFileURL)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    [v3 removeItemAtURL:self->_itemQueue_primaryFileURL error:0];
  }

  v4.receiver = self;
  v4.super_class = PBItem;
  [(PBItem *)&v4 dealloc];
}

- (id)localUserInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__PBItem_localUserInfo__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __23__PBItem_localUserInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_localUserInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setLocalUserInfo:(id)a3
{
  v4 = a3;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__PBItem_setLocalUserInfo___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)localObject
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __21__PBItem_localObject__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __21__PBItem_localObject__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_localObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setLocalObject:(id)a3
{
  v4 = a3;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__PBItem_setLocalObject___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (NSDictionary)metadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __18__PBItem_metadata__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __18__PBItem_metadata__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_metadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setMetadata:(id)a3
{
  v4 = a3;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __22__PBItem_setMetadata___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (NSArray)availableTypes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__PBItem_availableTypes__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __24__PBItem_availableTypes__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_availableTypes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)availableTypesWithPreferredRepresentation:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = [MEMORY[0x277CBEB18] array];
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PBItem_availableTypesWithPreferredRepresentation___block_invoke;
  block[3] = &unk_279A06A88;
  block[5] = &v9;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __52__PBItem_availableTypesWithPreferredRepresentation___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1[4] + 56);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(a1[4] + 48) objectForKeyedSubscript:{v7, v11}];
        v9 = v8;
        if (v8 && [v8 preferredRepresentation] == a1[6])
        {
          [*(*(a1[5] + 8) + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)privateMetadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__PBItem_privateMetadata__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __25__PBItem_privateMetadata__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_privateMetadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setPrivateMetadata:(id)a3
{
  v4 = a3;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__PBItem_setPrivateMetadata___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (NSString)suggestedName
{
  v2 = [(PBItem *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.Pasteboard.suggestedName"];
  v4 = [v3 copy];

  return v4;
}

+ (id)item
{
  v2 = objc_alloc_init(PBItem);

  return v2;
}

+ (id)itemWithObject:(id)a3
{
  v3 = a3;
  v4 = [[PBItem alloc] initWithObject:v3];

  return v4;
}

+ (id)itemWithData:(id)a3 type:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PBItem alloc] initWithData:v6 type:v5];

  return v7;
}

+ (id)itemWithContentsOfFileURL:(id)a3 type:(id)a4 outError:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[PBItem alloc] initWithContentsOfFileURL:v8 type:v7 outError:a5];

  return v9;
}

- (PBItem)init
{
  v5.receiver = self;
  v5.super_class = PBItem;
  v2 = [(PBItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PBItem *)v2 _commonInitGenerateUUID:1];
  }

  return v3;
}

- (id)initDoNothing
{
  v3.receiver = self;
  v3.super_class = PBItem;
  return [(PBItem *)&v3 init];
}

- (id)_itemQueue_copyWithDoNothingRepresentations
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(objc_opt_class()) initDoNothing];
  v4 = [(NSMutableOrderedSet *)self->_itemQueue_typeOrder mutableCopy];
  v5 = *(v3 + 56);
  *(v3 + 56) = v4;

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->_itemQueue_representationByType, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = self->_itemQueue_representationByType;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_itemQueue_representationByType objectForKeyedSubscript:v12, v31];
        v14 = [v13 copyWithDoNothingLoaderBlock];
        [v6 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  v15 = *(v3 + 48);
  *(v3 + 48) = v6;
  v16 = v6;

  v17 = [(NSMutableDictionary *)self->_itemQueue_visibilityByType mutableCopy];
  v18 = *(v3 + 72);
  *(v3 + 72) = v17;

  v19 = [(NSMutableDictionary *)self->_itemQueue_preferredRepresentationByType mutableCopy];
  v20 = *(v3 + 64);
  *(v3 + 64) = v19;

  v21 = [(NSMutableDictionary *)self->_itemQueue_dataAvailabilityByType mutableCopy];
  v22 = *(v3 + 80);
  *(v3 + 80) = v21;

  v23 = [(NSUUID *)self->_UUID copy];
  v24 = *(v3 + 120);
  *(v3 + 120) = v23;

  v25 = [(NSDictionary *)self->_itemQueue_metadata copy];
  v26 = *(v3 + 112);
  *(v3 + 112) = v25;

  v27 = [(NSDictionary *)self->_itemQueue_privateMetadata copy];
  v28 = *(v3 + 40);
  *(v3 + 40) = v27;

  *(v3 + 8) = self->_itemQueue_isStoredOnServer;
  v29 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithDoNothingRepresentations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PBItem_copyWithDoNothingRepresentations__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__PBItem_copyWithDoNothingRepresentations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _itemQueue_copyWithDoNothingRepresentations];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_commonInitGenerateUUID:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  itemQueue_typeOrder = self->_itemQueue_typeOrder;
  self->_itemQueue_typeOrder = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemQueue_representationByType = self->_itemQueue_representationByType;
  self->_itemQueue_representationByType = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemQueue_preferredRepresentationByType = self->_itemQueue_preferredRepresentationByType;
  self->_itemQueue_preferredRepresentationByType = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemQueue_visibilityByType = self->_itemQueue_visibilityByType;
  self->_itemQueue_visibilityByType = v11;

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemQueue_dataAvailabilityByType = self->_itemQueue_dataAvailabilityByType;
  self->_itemQueue_dataAvailabilityByType = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemQueue_patternDetections = self->_itemQueue_patternDetections;
  self->_itemQueue_patternDetections = v15;

  if (v3)
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    UUID = self->_UUID;
    self->_UUID = v17;

    MEMORY[0x2821F96F8]();
  }
}

- (PBItem)initWithObject:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v56.receiver = self;
  v56.super_class = PBItem;
  val = [(PBItem *)&v56 init];
  if (val)
  {
    if ([v32 conformsToProtocol:&unk_286FDC6B8])
    {
      v4 = [v32 copyWithZone:0];
    }

    else
    {
      v4 = v32;
    }

    itemQueue_localObject = val->_itemQueue_localObject;
    val->_itemQueue_localObject = v4;

    [(PBItem *)val _commonInitGenerateUUID:1];
    v6 = +[PBCoercionRegistry defaultRegistry];
    v7 = [v6 availableRepresentationTypesForClass:objc_opt_class()];

    objc_initWeak(&location, val);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v9)
    {
      v10 = *v52;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v52 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v51 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [PBItemRepresentation alloc];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __25__PBItem_initWithObject___block_invoke;
          v49[3] = &unk_279A06B00;
          objc_copyWeak(&v50, &location);
          v49[4] = v12;
          v15 = [(PBItemRepresentation *)v14 initWithType:v12 preferredRepresentation:0 v3_loader:v49];
          [(PBItemRepresentation *)v15 setIsDataAvailableImmediately:1];
          [(PBItem *)val itemQueue_setItemRepresentation:v15];

          objc_destroyWeak(&v50);
          objc_autoreleasePoolPop(v13);
        }

        v9 = [v8 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v9);
    }

    v16 = +[PBCoercionRegistry defaultRegistry];
    v17 = [v16 _availableClassesToCoerceFromClass:objc_opt_class()];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v17;
    v18 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v18)
    {
      v34 = *v46;
      do
      {
        v19 = 0;
        v35 = v18;
        do
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v19;
          v20 = *(*(&v45 + 1) + 8 * v19);
          context = objc_autoreleasePoolPush();
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v21 = +[PBCoercionRegistry defaultRegistry];
          v22 = [v21 availableRepresentationTypesForClass:v20];

          v23 = [v22 countByEnumeratingWithState:&v41 objects:v57 count:16];
          if (v23)
          {
            v24 = *v42;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v42 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v41 + 1) + 8 * j);
                v27 = objc_autoreleasePoolPush();
                if (([v8 containsObject:v26] & 1) == 0)
                {
                  v28 = [PBItemRepresentation alloc];
                  v39[0] = MEMORY[0x277D85DD0];
                  v39[1] = 3221225472;
                  v39[2] = __25__PBItem_initWithObject___block_invoke_4;
                  v39[3] = &unk_279A06B00;
                  objc_copyWeak(&v40, &location);
                  v39[4] = v26;
                  v29 = [(PBItemRepresentation *)v28 initWithType:v26 preferredRepresentation:0 v3_loader:v39];
                  [(PBItem *)val itemQueue_setItemRepresentation:v29];

                  objc_destroyWeak(&v40);
                }

                objc_autoreleasePoolPop(v27);
              }

              v23 = [v22 countByEnumeratingWithState:&v41 objects:v57 count:16];
            }

            while (v23);
          }

          objc_autoreleasePoolPop(context);
          v19 = v37 + 1;
        }

        while (v37 + 1 != v35);
        v18 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v18);
    }

    objc_destroyWeak(&location);
  }

  v30 = *MEMORY[0x277D85DE8];
  return val;
}

uint64_t __25__PBItem_initWithObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = +[PBCoercionRegistry defaultRegistry];
    v7 = [WeakRetained localObject];
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __25__PBItem_initWithObject___block_invoke_2;
    v10[3] = &unk_279A06AD8;
    v11 = v4;
    [v6 loadRepresentationOfObject:v7 asType:v8 completionBlock:v10];
  }

  return 0;
}

void __25__PBItem_initWithObject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __25__PBItem_initWithObject___block_invoke_3;
    v9[3] = &unk_279A06AB0;
    v12 = v8;
    v10 = v6;
    v11 = v7;
    PBDispatchAsyncCallback(v9);
  }
}

uint64_t __25__PBItem_initWithObject___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = +[PBCoercionRegistry defaultRegistry];
    v7 = [WeakRetained localObject];
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __25__PBItem_initWithObject___block_invoke_5;
    v10[3] = &unk_279A06AD8;
    v11 = v4;
    [v6 loadRepresentationOfObject:v7 asType:v8 completionBlock:v10];
  }

  return 0;
}

void __25__PBItem_initWithObject___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __25__PBItem_initWithObject___block_invoke_6;
    v9[3] = &unk_279A06AB0;
    v12 = v8;
    v10 = v6;
    v11 = v7;
    PBDispatchAsyncCallback(v9);
  }
}

- (PBItem)initWithData:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PBItem;
  v8 = [(PBItem *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    itemQueue_primaryData = v8->_itemQueue_primaryData;
    v8->_itemQueue_primaryData = v9;

    [(PBItem *)v8 _commonInitGenerateUUID:1];
    v11 = [PBItemRepresentation alloc];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __28__PBItem_initWithData_type___block_invoke;
    v14[3] = &unk_279A06B50;
    v15 = v6;
    v12 = [(PBItemRepresentation *)v11 initWithType:v7 preferredRepresentation:0 v3_loader:v14];
    [(PBItemRepresentation *)v12 setIsDataAvailableImmediately:1];
    [(PBItem *)v8 itemQueue_setItemRepresentation:v12];
  }

  return v8;
}

uint64_t __28__PBItem_initWithData_type___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__PBItem_initWithData_type___block_invoke_2;
    v7[3] = &unk_279A06B28;
    v9 = v4;
    v8 = *(a1 + 32);
    PBDispatchAsyncCallback(v7);
  }

  return 0;
}

- (PBItem)initWithContentsOfFileURL:(id)a3 type:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v33.receiver = self;
  v33.super_class = PBItem;
  v10 = [(PBItem *)&v33 init];
  if (v10)
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = NSTemporaryDirectory();
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    v15 = [v12 stringByAppendingPathComponent:v14];
    v16 = [v11 fileURLWithPath:v15];

    if (copyfile([v8 fileSystemRepresentation], objc_msgSend(v16, "fileSystemRepresentation"), 0, 0x100000Fu))
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = __error();
      v19 = [v17 stringWithUTF8String:strerror(*v18)];
      v20 = PBCannotCopyFileError(v8, v19, 0);

      if (!v20)
      {
LABEL_9:

        goto LABEL_10;
      }

      if (a5)
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = __error();
        v23 = [v21 stringWithUTF8String:strerror(*v22)];
        *a5 = PBCannotCopyFileError(v8, v23, 0);
      }

      v10 = 0;
    }

    else
    {
      objc_storeStrong(&v10->_itemQueue_primaryFileURL, v16);
      [(PBItem *)v10 _commonInitGenerateUUID:1];
      v24 = [PBItemRepresentation alloc];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __50__PBItem_initWithContentsOfFileURL_type_outError___block_invoke;
      v30 = &unk_279A06BA0;
      v31 = v16;
      v32 = v9;
      v25 = [(PBItemRepresentation *)v24 initWithType:v32 preferredRepresentation:1 v3_loader:&v27];
      [(PBItemRepresentation *)v25 setIsDataAvailableImmediately:1, v27, v28, v29, v30];
      [(PBItem *)v10 itemQueue_setItemRepresentation:v25];

      v20 = v31;
    }

    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

uint64_t __50__PBItem_initWithContentsOfFileURL_type_outError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v20 = 0;
  v21 = 0;
  v7 = PBCloneURLToTemporaryFolder(v5, @"com.apple.pasteboard", v6, 0, &v21, &v20);
  v8 = v21;
  v9 = v20;
  v10 = 0;
  v11 = 0;
  if (!v9)
  {
    v10 = [[PBSecurityScopedURLWrapper alloc] initWithURL:v7 readonly:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__PBItem_initWithContentsOfFileURL_type_outError___block_invoke_2;
    v18[3] = &unk_279A063A0;
    v19 = v8;
    v11 = MEMORY[0x25F8AC430](v18);
  }

  if (v4)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__PBItem_initWithContentsOfFileURL_type_outError___block_invoke_3;
    v13[3] = &unk_279A06B78;
    v16 = v4;
    v14 = v10;
    v15 = v9;
    v17 = v11;
    PBDispatchAsyncCallback(v13);
  }

  return 0;
}

void __50__PBItem_initWithContentsOfFileURL_type_outError___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

- (NSArray)representations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__PBItem_representations__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __25__PBItem_representations__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)addDataRepresentationType:(id)a3 loader:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PBItem_addDataRepresentationType_loader___block_invoke;
  block[3] = &unk_279A06BF0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __43__PBItem_addDataRepresentationType_loader___block_invoke(uint64_t a1)
{
  v2 = [PBItemRepresentation alloc];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PBItem_addDataRepresentationType_loader___block_invoke_2;
  v5[3] = &unk_279A06288;
  v6 = *(a1 + 48);
  v4 = [(PBItemRepresentation *)v2 initWithType:v3 preferredRepresentation:0 v3_loader:v5];
  [*(a1 + 40) itemQueue_setItemRepresentation:v4];
}

id __43__PBItem_addDataRepresentationType_loader___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__PBItem_addDataRepresentationType_loader___block_invoke_3;
  v10[3] = &unk_279A06BC8;
  v11 = v4;
  v6 = *(v5 + 16);
  v7 = v4;
  v8 = v6(v5, v10);

  return v8;
}

- (void)addFileCopyRepresentationType:(id)a3 loader:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__PBItem_addFileCopyRepresentationType_loader___block_invoke;
  v10[3] = &unk_279A06C40;
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  [(PBItem *)self v2_addFileCopyRepresentationType:v8 loader:v10];
}

id __47__PBItem_addFileCopyRepresentationType_loader___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PBItem_addFileCopyRepresentationType_loader___block_invoke_2;
  v9[3] = &unk_279A06C18;
  v4 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v7 = v5(v4, v9);

  return v7;
}

void __47__PBItem_addFileCopyRepresentationType_loader___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (v5 | v6)
    {
      v8 = 0;
      v12 = v6;
    }

    else
    {
      v12 = PBCannotLoadRepresentationError(*(a1 + 32), 0);
      v8 = 0;
    }
  }

  else
  {
    v8 = CPTemporaryFileWithUniqueName();
    v9 = MEMORY[0x277CCACA8];
    v10 = __error();
    v11 = [v9 stringWithFormat:@"%s", strerror(*v10)];
    v12 = PBCannotCreateTemporaryFile(v11, 0);
  }

  (*(*(a1 + 40) + 16))();
  if (v8)
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    [v13 removeItemAtURL:v8 error:0];
  }
}

- (void)v2_addFileCopyRepresentationType:(id)a3 loader:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PBItem_v2_addFileCopyRepresentationType_loader___block_invoke;
  block[3] = &unk_279A06BF0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __50__PBItem_v2_addFileCopyRepresentationType_loader___block_invoke(id *a1)
{
  v2 = [PBItemRepresentation alloc];
  v3 = a1[4];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __50__PBItem_v2_addFileCopyRepresentationType_loader___block_invoke_2;
  v8 = &unk_279A06C90;
  v10 = a1[6];
  v9 = a1[4];
  v4 = [(PBItemRepresentation *)v2 initWithType:v3 preferredRepresentation:1 v3_loader:&v5];
  [a1[5] itemQueue_setItemRepresentation:{v4, v5, v6, v7, v8}];
}

id __50__PBItem_v2_addFileCopyRepresentationType_loader___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__PBItem_v2_addFileCopyRepresentationType_loader___block_invoke_3;
  v10[3] = &unk_279A06C68;
  v5 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v4;
  v6 = *(v5 + 16);
  v7 = v4;
  v8 = v6(v5, v10);

  return v8;
}

void __50__PBItem_v2_addFileCopyRepresentationType_loader___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v9 = v6;
  v10 = 0;
  if (v5 && !v6)
  {
    v11 = *(a1 + 32);
    v17 = 0;
    v18 = 0;
    v12 = PBCloneURLToTemporaryFolder(v5, @"com.apple.pasteboard", v11, 0, &v18, &v17);
    v13 = v18;
    v14 = v17;
    if (v14)
    {
      v9 = PBCannotCopyFileError(v5, 0, v14);
      v10 = 0;
      v8 = 0;
    }

    else
    {
      v10 = [[PBSecurityScopedURLWrapper alloc] initWithURL:v12 readonly:1];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __50__PBItem_v2_addFileCopyRepresentationType_loader___block_invoke_4;
      v15[3] = &unk_279A063A0;
      v16 = v13;
      v8 = MEMORY[0x25F8AC430](v15);

      v9 = 0;
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __50__PBItem_v2_addFileCopyRepresentationType_loader___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

- (void)addOpenInPlaceRepresentationType:(id)a3 loader:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PBItem_addOpenInPlaceRepresentationType_loader___block_invoke;
  block[3] = &unk_279A06BF0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __50__PBItem_addOpenInPlaceRepresentationType_loader___block_invoke(uint64_t a1)
{
  v2 = [PBItemRepresentation alloc];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PBItem_addOpenInPlaceRepresentationType_loader___block_invoke_2;
  v5[3] = &unk_279A06288;
  v6 = *(a1 + 48);
  v4 = [(PBItemRepresentation *)v2 initWithType:v3 preferredRepresentation:2 v3_loader:v5];
  [*(a1 + 40) itemQueue_setItemRepresentation:v4];
}

id __50__PBItem_addOpenInPlaceRepresentationType_loader___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__PBItem_addOpenInPlaceRepresentationType_loader___block_invoke_3;
  v10[3] = &unk_279A06CB8;
  v11 = v4;
  v6 = *(v5 + 16);
  v7 = v4;
  v8 = v6(v5, v10);

  return v8;
}

void __50__PBItem_addOpenInPlaceRepresentationType_loader___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v6 = a2;
    v5 = [[PBSecurityScopedURLWrapper alloc] initWithURL:v6 readonly:0];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)v2_addRepresentationType:(id)a3 preferredRepresentation:(unint64_t)a4 loader:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = PBItemQueue();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__PBItem_v2_addRepresentationType_preferredRepresentation_loader___block_invoke;
  v13[3] = &unk_279A06CE0;
  v16 = v9;
  v17 = a4;
  v14 = v8;
  v15 = self;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

void __66__PBItem_v2_addRepresentationType_preferredRepresentation_loader___block_invoke(uint64_t a1)
{
  v2 = [PBItemRepresentation alloc];
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__PBItem_v2_addRepresentationType_preferredRepresentation_loader___block_invoke_2;
  v6[3] = &unk_279A06288;
  v4 = *(a1 + 56);
  v7 = *(a1 + 48);
  v5 = [(PBItemRepresentation *)v2 initWithType:v3 preferredRepresentation:v4 v3_loader:v6];
  [*(a1 + 40) itemQueue_setItemRepresentation:v5];
}

id __66__PBItem_v2_addRepresentationType_preferredRepresentation_loader___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__PBItem_v2_addRepresentationType_preferredRepresentation_loader___block_invoke_3;
  v10[3] = &unk_279A06238;
  v11 = v4;
  v6 = *(v5 + 16);
  v7 = v4;
  v8 = v6(v5, v10);

  return v8;
}

- (void)addRepresentationType:(id)a3 loader:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__PBItem_addRepresentationType_loader___block_invoke;
  v8[3] = &unk_279A06D30;
  v9 = v6;
  v7 = v6;
  [(PBItem *)self v2_addRepresentationType:a3 preferredRepresentation:0 loader:v8];
}

id __39__PBItem_addRepresentationType_loader___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__PBItem_addRepresentationType_loader___block_invoke_2;
  v9[3] = &unk_279A06D08;
  v10 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v7 = v5(v4, v9);

  return v7;
}

- (void)addRepresentationType:(id)a3 preferredRepresentation:(unint64_t)a4 loader:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PBItem_addRepresentationType_preferredRepresentation_loader___block_invoke;
  v10[3] = &unk_279A06D30;
  v11 = v8;
  v9 = v8;
  [(PBItem *)self v2_addRepresentationType:a3 preferredRepresentation:a4 loader:v10];
}

id __63__PBItem_addRepresentationType_preferredRepresentation_loader___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__PBItem_addRepresentationType_preferredRepresentation_loader___block_invoke_2;
  v9[3] = &unk_279A06D08;
  v10 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v7 = v5(v4, v9);

  return v7;
}

- (void)itemQueue_registerLocalAvailableDerivedRepresentations
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[PBCoercionRegistry defaultRegistry];
  v4 = [(NSMutableOrderedSet *)self->_itemQueue_typeOrder array];
  v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(NSMutableDictionary *)self->_itemQueue_representationByType objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v9)];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __64__PBItem_itemQueue_registerLocalAvailableDerivedRepresentations__block_invoke;
        v13[3] = &unk_279A06D58;
        v14 = v5;
        v15 = self;
        [v3 enumerateAvailableCoercionLoaderBlocksForRepresentation:v10 usingBlock:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __64__PBItem_itemQueue_registerLocalAvailableDerivedRepresentations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v7 = [PBItemRepresentation alloc];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__PBItem_itemQueue_registerLocalAvailableDerivedRepresentations__block_invoke_2;
    v9[3] = &unk_279A06288;
    v10 = v6;
    v8 = [(PBItemRepresentation *)v7 initWithType:v5 preferredRepresentation:0 v3_loader:v9];
    [(PBItemRepresentation *)v8 setDerivedRepresentation:1];
    [*(a1 + 40) itemQueue_setItemRepresentation:v8];
    [*(a1 + 32) addObject:v5];
  }
}

id __64__PBItem_itemQueue_registerLocalAvailableDerivedRepresentations__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PBItem_itemQueue_registerLocalAvailableDerivedRepresentations__block_invoke_3;
  v10[3] = &unk_279A06BC8;
  v11 = v4;
  v6 = *(v5 + 16);
  v7 = v4;
  v8 = v6(v5, v10);

  return v8;
}

- (void)itemQueue_setItemRepresentation:(id)a3
{
  v14 = a3;
  v4 = [v14 typeIdentifier];
  [(NSMutableOrderedSet *)self->_itemQueue_typeOrder addObject:v4];
  [(NSMutableDictionary *)self->_itemQueue_representationByType setObject:v14 forKeyedSubscript:v4];
  v5 = [(NSMutableDictionary *)self->_itemQueue_preferredRepresentationByType objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    [v14 setPreferredRepresentation:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "preferredRepresentation")}];
    [(NSMutableDictionary *)self->_itemQueue_preferredRepresentationByType setObject:v7 forKeyedSubscript:v4];
  }

  v8 = [(NSMutableDictionary *)self->_itemQueue_visibilityByType objectForKeyedSubscript:v4];
  v9 = v8;
  if (v8)
  {
    [v14 setVisibility:{objc_msgSend(v8, "unsignedIntegerValue")}];
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "visibility")}];
    [(NSMutableDictionary *)self->_itemQueue_visibilityByType setObject:v10 forKeyedSubscript:v4];
  }

  v11 = [(NSMutableDictionary *)self->_itemQueue_dataAvailabilityByType objectForKeyedSubscript:v4];
  v12 = v11;
  if (v11)
  {
    [v14 setIsDataAvailableImmediately:{objc_msgSend(v11, "BOOLValue")}];
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "isDataAvailableImmediately")}];
    [(NSMutableDictionary *)self->_itemQueue_dataAvailabilityByType setObject:v13 forKeyedSubscript:v4];
  }
}

- (void)itemQueue_removeRepresentationOfType:(id)a3
{
  v4 = a3;
  if ([(NSMutableOrderedSet *)self->_itemQueue_typeOrder containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_itemQueue_typeOrder removeObject:v4];
    [(NSMutableDictionary *)self->_itemQueue_representationByType removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_itemQueue_preferredRepresentationByType removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_itemQueue_visibilityByType removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_itemQueue_dataAvailabilityByType removeObjectForKey:v4];
  }
}

- (void)_addRepresentationType:(id)a3 loaderBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PBItem__addRepresentationType_loaderBlock___block_invoke;
  block[3] = &unk_279A06BF0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __45__PBItem__addRepresentationType_loaderBlock___block_invoke(uint64_t a1)
{
  v2 = [PBItemRepresentation alloc];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PBItem__addRepresentationType_loaderBlock___block_invoke_2;
  v5[3] = &unk_279A06288;
  v6 = *(a1 + 48);
  v4 = [(PBItemRepresentation *)v2 initWithType:v3 preferredRepresentation:0 v3_loader:v5];
  [*(a1 + 40) itemQueue_setItemRepresentation:v4];
}

uint64_t __45__PBItem__addRepresentationType_loaderBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PBItem__addRepresentationType_loaderBlock___block_invoke_3;
  v9[3] = &unk_279A06AD8;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v4;
  v6(v5, v9);

  return 0;
}

- (void)addRepresentation:(id)a3
{
  v4 = a3;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__PBItem_addRepresentation___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeRepresentationOfType:(id)a3
{
  v4 = a3;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__PBItem_removeRepresentationOfType___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (BOOL)itemQueue_hasRepresentationOfType:(id)a3
{
  v4 = a3;
  v5 = [(PBItem *)self itemQueue_typeOrder];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (unint64_t)preferredRepresentationForType:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PBItem_preferredRepresentationForType___block_invoke;
  block[3] = &unk_279A06D80;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __41__PBItem_preferredRepresentationForType___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 unsignedIntegerValue];
}

- (BOOL)isDataAvailableImmediatelyForType:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PBItem_isDataAvailableImmediatelyForType___block_invoke;
  block[3] = &unk_279A06D80;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __44__PBItem_isDataAvailableImmediatelyForType___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 BOOLValue];
}

- (int64_t)visibilityForType:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PBItem_visibilityForType___block_invoke;
  block[3] = &unk_279A06D80;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __28__PBItem_visibilityForType___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 unsignedIntegerValue];
}

- (BOOL)hasRepresentationOfType:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PBItem_hasRepresentationOfType___block_invoke;
  block[3] = &unk_279A06D80;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __34__PBItem_hasRepresentationOfType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_hasRepresentationOfType:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)itemQueue_hasRepresentationConformingToType:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PBItem *)self itemQueue_typeOrder];
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

        if (UTTypeConformsTo(*(*(&v11 + 1) + 8 * i), v4))
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

- (BOOL)hasRepresentationConformingToType:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PBItem_hasRepresentationConformingToType___block_invoke;
  block[3] = &unk_279A06D80;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __44__PBItem_hasRepresentationConformingToType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_hasRepresentationConformingToType:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)itemQueue_canInstantiateObjectOfClass:(Class)a3 excludingCoercionsFromTypes:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PBItem *)self itemQueue_localObject];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = 1;
  }

  else
  {
    v10 = +[PBCoercionRegistry defaultRegistry];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [(PBItem *)self itemQueue_typeOrder];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ([v6 containsObject:v16] & 1) == 0 && (objc_msgSend(v10, "canCoerceFromRepresentationConformingToType:toObjectOfClass:", v16, a3))
          {
            v9 = 1;
            goto LABEL_14;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_14:
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_canInstantiateObjectOfClass:(Class)a3 excludingCoercionsFromTypes:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = PBItemQueue();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__PBItem__canInstantiateObjectOfClass_excludingCoercionsFromTypes___block_invoke;
  v10[3] = &unk_279A06DA8;
  v12 = &v14;
  v13 = a3;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_sync(v7, v10);

  LOBYTE(a3) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return a3;
}

uint64_t __67__PBItem__canInstantiateObjectOfClass_excludingCoercionsFromTypes___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_canInstantiateObjectOfClass:*(a1 + 56) excludingCoercionsFromTypes:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)itemQueue_availableTypes
{
  v2 = [(NSMutableOrderedSet *)self->_itemQueue_typeOrder copy];
  v3 = [v2 array];

  return v3;
}

- (id)itemQueue_representationForType:(id)a3
{
  v4 = a3;
  v5 = [(PBItem *)self itemQueue_representationByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)_representationForType:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PBItem__representationForType___block_invoke;
  block[3] = &unk_279A06D80;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __33__PBItem__representationForType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemQueue_representationForType:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)representationConformingToType:(id)a3
{
  v4 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__1;
  v20[4] = __Block_byref_object_dispose__1;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v5 = PBItemQueue();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__PBItem_representationConformingToType___block_invoke;
  v9[3] = &unk_279A063C8;
  v10 = v4;
  v11 = self;
  v12 = v20;
  v13 = &v14;
  v6 = v4;
  dispatch_sync(v5, v9);

  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(v20, 8);

  return v7;
}

void __41__PBItem_representationConformingToType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) itemQueue_typeOrder];
  v4 = [v3 array];
  v5 = _bestMatchType(v2, v4, &__block_literal_global_6);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [*(a1 + 40) itemQueue_representationForType:?];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    MEMORY[0x2821F96F8]();
  }
}

- (id)_loadObjectOfClass:(Class)a3 context:(id)a4 completionBlock:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(PBItem *)self localObject];
  if (objc_opt_isKindOfClass())
  {
    v11 = _PBLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromClass(a3);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_25E138000, v11, OS_LOG_TYPE_INFO, "Returning local object of class %@", &buf, 0xCu);
    }

    if (!v9)
    {
      v13 = 0;
      goto LABEL_16;
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __53__PBItem__loadObjectOfClass_context_completionBlock___block_invoke;
    v41[3] = &unk_279A06B28;
    v43 = v9;
    v42 = v10;
    PBDispatchAsyncCallback(v41);

    v13 = 0;
    v14 = v43;
  }

  else
  {
    v15 = +[PBCoercionRegistry defaultRegistry];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__1;
    v51 = __Block_byref_object_dispose__1;
    v52 = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__1;
    v39[4] = __Block_byref_object_dispose__1;
    v40 = 0;
    v16 = PBItemQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PBItem__loadObjectOfClass_context_completionBlock___block_invoke_2;
    block[3] = &unk_279A06DD0;
    v17 = v15;
    p_buf = &buf;
    v38 = a3;
    v34 = v17;
    v35 = self;
    v36 = v39;
    dispatch_sync(v16, block);

    v18 = *(*(&buf + 1) + 40);
    if (v18)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __53__PBItem__loadObjectOfClass_context_completionBlock___block_invoke_3;
      v28[3] = &unk_279A06E20;
      v29 = v17;
      v31 = v39;
      v32 = a3;
      v30 = v9;
      v19 = [v18 loadDataWithContext:v8 completion:v28];

      v20 = v29;
    }

    else
    {
      v20 = PBCannotInstantiateObjectOfClassError(a3, 0, 0);
      v21 = _PBLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromClass(a3);
        *v44 = 138412546;
        v45 = v24;
        v46 = 2112;
        v47 = v20;
        _os_log_error_impl(&dword_25E138000, v21, OS_LOG_TYPE_ERROR, "There are no representations available to instantiate a class of type %@: %@", v44, 0x16u);
      }

      if (v9)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __53__PBItem__loadObjectOfClass_context_completionBlock___block_invoke_53;
        v25[3] = &unk_279A06B28;
        v27 = v9;
        v20 = v20;
        v26 = v20;
        PBDispatchAsyncCallback(v25);
      }

      v19 = 0;
    }

    v14 = v19;
    _Block_object_dispose(v39, 8);

    _Block_object_dispose(&buf, 8);
    v13 = v14;
  }

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

void __53__PBItem__loadObjectOfClass_context_completionBlock___block_invoke_2(uint64_t a1)
{
  v9 = [*(a1 + 32) acceptableRepresentationTypesForCreatingObjectOfClass:*(a1 + 64)];
  v2 = [*(a1 + 40) itemQueue_availableTypes];
  v3 = _bestMatchTypes(v9, v2, &__block_literal_global_17_0);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 40) itemQueue_representationForType:?];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __53__PBItem__loadObjectOfClass_context_completionBlock___block_invoke_3(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = 0;
    v12 = v9;
    goto LABEL_9;
  }

  if (!v7)
  {
    v16 = 0;
    goto LABEL_7;
  }

  v13 = a1[4];
  v14 = a1[7];
  v15 = *(*(a1[6] + 8) + 40);
  v23 = 0;
  v11 = [v13 newObjectOfClass:v14 fromData:v7 ofType:v15 outError:&v23];
  v16 = v23;
  if (!v11)
  {
LABEL_7:
    v12 = PBCannotInstantiateObjectOfClassError(a1[7], *(*(a1[6] + 8) + 40), v16);
    v11 = 0;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

LABEL_9:
  v17 = a1[5];
  if (v17)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__PBItem__loadObjectOfClass_context_completionBlock___block_invoke_4;
    v18[3] = &unk_279A06DF8;
    v22 = v17;
    v19 = v11;
    v20 = v8;
    v21 = v12;
    PBDispatchAsyncCallback(v18);
  }
}

- (id)loadObjectOfClass:(Class)a3 completionBlock:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__PBItem_loadObjectOfClass_completionBlock___block_invoke;
  v10[3] = &unk_279A06E48;
  v11 = v6;
  v7 = v6;
  v8 = [(PBItem *)self _loadObjectOfClass:a3 context:0 completionBlock:v10];

  return v8;
}

- (id)uikit_loadObjectOfClass:(Class)a3 completionBlock:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__PBItem_uikit_loadObjectOfClass_completionBlock___block_invoke;
  v10[3] = &unk_279A06E48;
  v11 = v6;
  v7 = v6;
  v8 = [(PBItem *)self _loadObjectOfClass:a3 context:0 completionBlock:v10];

  return v8;
}

- (void)_loadRepresentationAsType:(id)a3 context:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PBItem *)self representationConformingToType:v8];
  if (v11)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__PBItem__loadRepresentationAsType_context_completionBlock___block_invoke;
    v17[3] = &unk_279A06530;
    v12 = &v18;
    v18 = v10;
    v13 = [v11 loadDataWithContext:v9 completion:v17];
LABEL_5:

    goto LABEL_6;
  }

  if (v10)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__PBItem__loadRepresentationAsType_context_completionBlock___block_invoke_3;
    v14[3] = &unk_279A06B28;
    v12 = &v16;
    v16 = v10;
    v15 = v8;
    PBDispatchAsyncCallback(v14);

    goto LABEL_5;
  }

LABEL_6:
}

void __60__PBItem__loadRepresentationAsType_context_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__PBItem__loadRepresentationAsType_context_completionBlock___block_invoke_2;
    v11[3] = &unk_279A06DF8;
    v15 = v10;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    PBDispatchAsyncCallback(v11);
  }
}

void __60__PBItem__loadRepresentationAsType_context_completionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = PBTypeNotFoundError(*(a1 + 32), 0);
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

- (void)loadRepresentationAsType:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PBItem_loadRepresentationAsType_completionBlock___block_invoke;
  v8[3] = &unk_279A06E70;
  v9 = v6;
  v7 = v6;
  [(PBItem *)self _loadRepresentationAsType:a3 context:0 completionBlock:v8];
}

- (void)uikit_loadRepresentationAsType:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__PBItem_uikit_loadRepresentationAsType_completionBlock___block_invoke;
  v8[3] = &unk_279A06E70;
  v9 = v6;
  v7 = v6;
  [(PBItem *)self uikit_loadRepresentationAsType:a3 context:0 completionBlock:v8];
}

- (PBItem)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = PBItem;
  v5 = [(PBItem *)&v48 init];
  v6 = v5;
  if (v5)
  {
    [(PBItem *)v5 _commonInitGenerateUUID:0];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v6->_UUID;
    v6->_UUID = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"typeOrder"];

    if (v12)
    {
      v13 = [MEMORY[0x277CBEB40] orderedSetWithArray:v12];
      itemQueue_typeOrder = v6->_itemQueue_typeOrder;
      v6->_itemQueue_typeOrder = v13;
    }

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"preferredRepresentation"];
    v20 = [v19 mutableCopy];
    itemQueue_preferredRepresentationByType = v6->_itemQueue_preferredRepresentationByType;
    v6->_itemQueue_preferredRepresentationByType = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"visibility"];
    v27 = [v26 mutableCopy];
    itemQueue_visibilityByType = v6->_itemQueue_visibilityByType;
    v6->_itemQueue_visibilityByType = v27;

    v29 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v29 setWithObjects:{v30, v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"dataAvailability"];
    v34 = [v33 mutableCopy];
    itemQueue_dataAvailabilityByType = v6->_itemQueue_dataAvailabilityByType;
    v6->_itemQueue_dataAvailabilityByType = v34;

    v36 = PBAllowedMetadataClasses();
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"metadata"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [MEMORY[0x277CBEB38] dictionary];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __24__PBItem_initWithCoder___block_invoke;
      v46[3] = &unk_279A06E98;
      v39 = v38;
      v47 = v39;
      [v37 enumerateKeysAndObjectsUsingBlock:v46];
      itemQueue_metadata = v6->_itemQueue_metadata;
      v6->_itemQueue_metadata = v39;
      v41 = v39;
    }

    v42 = PBAllowedMetadataClasses();
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"privateMetadata"];
    itemQueue_privateMetadata = v6->_itemQueue_privateMetadata;
    v6->_itemQueue_privateMetadata = v43;

    v6->_itemQueue_isStoredOnServer = [v4 decodeBoolForKey:@"isStoredOnServer"];
  }

  return v6;
}

void __24__PBItem_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isEqualToString:@"com.apple.Pasteboard.teamData"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 length] > 0x2000)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  if (![v6 isEqualToString:@"com.apple.Pasteboard.estimatedDisplayedSize"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (![v6 isEqualToString:@"com.apple.Pasteboard.suggestedName"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (![v6 isEqualToString:@"com.apple.Pasteboard.preferredPresentationStyle"])
      {
        goto LABEL_14;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  if ([v5 _matchType:"{CGSize=dd}" size:16 strict:1])
  {
LABEL_13:
    [*(a1 + 32) setObject:v5 forKey:v6];
  }

LABEL_14:
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__1;
  v52 = __Block_byref_object_dispose__1;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__1;
  v46 = __Block_byref_object_dispose__1;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__PBItem_encodeWithCoder___block_invoke;
  block[3] = &unk_279A06EC0;
  block[4] = self;
  block[5] = &v48;
  block[6] = &v42;
  block[7] = &v36;
  block[8] = &v30;
  block[9] = &v24;
  block[10] = &v18;
  block[11] = &v14;
  dispatch_sync(v5, block);

  UUID = self->_UUID;
  if (UUID)
  {
    [v4 encodeObject:UUID forKey:@"UUID"];
  }

  v7 = v49[5];
  if (v7)
  {
    [v4 encodeObject:v7 forKey:@"typeOrder"];
  }

  v8 = v43[5];
  if (v8)
  {
    [v4 encodeObject:v8 forKey:@"preferredRepresentation"];
  }

  v9 = v37[5];
  if (v9)
  {
    [v4 encodeObject:v9 forKey:@"visibility"];
  }

  v10 = v31[5];
  if (v10)
  {
    [v4 encodeObject:v10 forKey:@"dataAvailability"];
  }

  v11 = v25[5];
  if (v11)
  {
    [v4 encodeObject:v11 forKey:@"metadata"];
  }

  v12 = v19[5];
  if (v12)
  {
    [v4 encodeObject:v12 forKey:@"privateMetadata"];
  }

  [v4 encodeBool:*(v15 + 24) forKey:@"isStoredOnServer"];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
}

uint64_t __26__PBItem_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) array];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 64) copy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(*(a1 + 32) + 72) copy];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(*(a1 + 32) + 80) copy];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) itemQueue_metadata];
  v15 = [v14 copy];
  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = [*(a1 + 32) itemQueue_privateMetadata];
  v19 = [v18 copy];
  v20 = *(*(a1 + 80) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  result = [*(a1 + 32) itemQueue_isStoredOnServer];
  *(*(*(a1 + 88) + 8) + 24) = result;
  return result;
}

- (void)itemQueue_setDataTransferDelegate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSMutableDictionary *)self->_itemQueue_representationByType allValues];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * i) setDataTransferDelegate:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_storeWeak(&self->_itemQueue_dataTransferDelegate, v4);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setDataTransferDelegate:(id)a3
{
  v4 = a3;
  v5 = PBItemQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__PBItem_setDataTransferDelegate___block_invoke;
  v7[3] = &unk_279A064E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (PBItemDataTransferDelegate)dataTransferDelegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = PBItemQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__PBItem_dataTransferDelegate__block_invoke;
  v6[3] = &unk_279A06A60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __30__PBItem_dataTransferDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)itemRepresentation:(id)a3 beganDataTransferWithProgress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PBItem *)self dataTransferDelegate];
  [v8 item:self representation:v7 beganDataTransferWithProgress:v6];
}

- (void)itemRepresentationFinishedDataTransfer:(id)a3
{
  v4 = a3;
  v5 = [(PBItem *)self dataTransferDelegate];
  [v5 item:self representationFinishedDataTransfer:v4];
}

- (id)enumeratePatternDetectionsForPatterns:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_itemQueue_patternDetections;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = PBItemQueue();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__PBItem_enumeratePatternDetectionsForPatterns_usingBlock___block_invoke;
  v18[3] = &unk_279A06EE8;
  v19 = v6;
  v20 = v8;
  v22 = v7;
  v11 = v9;
  v21 = v11;
  v12 = v7;
  v13 = v8;
  v14 = v6;
  dispatch_sync(v10, v18);

  v15 = v21;
  v16 = v11;

  return v11;
}

void __59__PBItem_enumeratePatternDetectionsForPatterns_usingBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 40) objectForKeyedSubscript:{v7, v10}];
        if (v8)
        {
          (*(*(a1 + 56) + 16))();
        }

        else
        {
          [*(a1 + 48) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addPatternDetections:(id)a3
{
  v4 = a3;
  v5 = self->_itemQueue_patternDetections;
  v6 = PBItemQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PBItem_addPatternDetections___block_invoke;
  block[3] = &unk_279A06F10;
  v10 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

void __31__PBItem_addPatternDetections___block_invoke(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1[4] addEntriesFromDictionary:a1[5]];
  v2 = _PBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = [a1[5] count];
    v5 = [a1[6] UUID];
    v6 = 134218242;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_debug_impl(&dword_25E138000, v2, OS_LOG_TYPE_DEBUG, "Cached %lu detected patterns on item with UUID %@", &v6, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = PBItem;
  v3 = [(PBItem *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = [(PBItem *)self UUID];
  [v4 appendFormat:@"\nUUID    : %@\n", v5];

  v6 = [(PBItem *)self metadata];
  [v4 appendFormat:@"Metadata: %@\n", v6];

  v7 = [(PBItem *)self availableTypes];
  [v4 appendFormat:@"Types:\n%@\n", v7];

  return v4;
}

- (PBItem)initWithNSItemProvider:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v30 = [(PBItem *)self init];
    if (v30)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [v4 registeredTypeIdentifiers];
      v5 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v36;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v36 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = [v4 _representationConformingToType:*(*(&v35 + 1) + 8 * i)];
            if (v9)
            {
              v10 = [[PBItemRepresentation alloc] initWithNSItemRepresentation:v9];
              if (objc_opt_respondsToSelector())
              {
                v11 = [(PBItemRepresentation *)v10 typeIdentifier];
                v12 = [v4 isDataAvailableImmediatelyForTypeIdentifier:v11];

                [(PBItemRepresentation *)v10 setIsDataAvailableImmediately:v12];
              }

              [(PBItem *)v30 addRepresentation:v10];
            }
          }

          v6 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v6);
      }
    }

    v13 = [v4 _metadataValueForKey:@"com.apple.Pasteboard.PBItemMetadata"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 mutableCopy];
    }

    else
    {
      v15 = [MEMORY[0x277CBEB38] dictionary];
    }

    v17 = v15;
    v18 = [v4 suggestedName];
    v19 = [v18 copy];

    if (v19)
    {
      [v17 setObject:v19 forKeyedSubscript:@"com.apple.Pasteboard.suggestedName"];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = PBNSIPTopLevelMetadataKeys();
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v31 + 1) + 8 * j);
          v26 = [v4 _metadataValueForKey:v25];
          if (v26)
          {
            [v17 setObject:v26 forKeyedSubscript:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v22);
    }

    [(PBItem *)v30 setMetadata:v17];
    self = v30;

    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

- (PBItemDataTransferDelegate)itemQueue_dataTransferDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_itemQueue_dataTransferDelegate);

  return WeakRetained;
}

@end