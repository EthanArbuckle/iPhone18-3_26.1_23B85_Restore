@interface TSPComponent
+ (id)componentsDiscardingContentOnCurrentThread;
- (BOOL)beginContentAccess;
- (BOOL)canBeDropped;
- (BOOL)incompatibleVersion;
- (BOOL)isContentDiscarded;
- (BOOL)isDiscardingContent;
- (BOOL)isWasteful;
- (BOOL)modified;
- (BOOL)needsArchiving;
- (BOOL)needsArchivingImpl;
- (BOOL)persisted;
- (BOOL)shouldKeepStrongObjectImpl;
- (ComponentExternalReferenceInfo)externalReferenceInfoForObjectIdentifier:(int64_t)identifier;
- (NSIndexSet)ambiguousReferences;
- (NSString)locator;
- (TSPComponent)init;
- (TSPComponent)initWithDelegate:(id)delegate identifier:(int64_t)identifier preferredLocator:(id)locator packageIdentifier:(unsigned __int8)packageIdentifier;
- (TSPComponent)initWithDelegate:(id)delegate rootObject:(id)object;
- (TSPObject)rootObject;
- (id)additionalDescription;
- (id)description;
- (id)newExternalReferenceMapWithStrongReferences:(id)references weakReferences:(id)weakReferences delegate:(id)delegate;
- (id)newUpdatedExternalReferenceMapUsingDelegate:(id)delegate;
- (id)p_locator;
- (int64_t)compressionAlgorithm;
- (unint64_t)componentReadVersion;
- (unint64_t)componentRequiredVersion;
- (unint64_t)documentReadVersion;
- (unint64_t)documentWriteVersion;
- (unint64_t)saveToken;
- (unsigned)packageIdentifier;
- (unsigned)requiredPackageIdentifier;
- (void)continueDiscardingContentIfPossibleUsingBlock:(id)block;
- (void)didReadObjects:(id)objects;
- (void)discardContentIfPossible;
- (void)enumerateExternalReferences:(id)references;
- (void)markAsDiscarded;
- (void)p_setLocator:(id)locator;
- (void)performSynchronousDiscardContentIfPossibleUsingBlock:(id)block;
- (void)saveToMessage:(void *)message saveToken:(unint64_t)token writtenComponentInfo:(const WrittenComponentInfo *)info;
- (void)setArchivedObjectsImpl:(id)impl;
- (void)setComponentObjectUUIDMap:(id)map;
- (void)setDocumentReadVersion:(unint64_t)version documentWriteVersion:(unint64_t)writeVersion componentObjectUUIDMap:(id)map;
- (void)setEncodedLength:(unint64_t)length lastModificationDate:(id)date;
- (void)setModified:(BOOL)modified forObject:(id)object isDocumentUpgrade:(BOOL)upgrade;
- (void)setModifiedImpl:(BOOL)impl forObject:(id)object;
- (void)setPackageIdentifier:(unsigned __int8)identifier preferredLocator:(id)locator locator:(id)a5 isStoredOutsideObjectArchive:(BOOL)archive compressionAlgorithm:(int64_t)algorithm rootObjectOrNil:(id)nil archivedObjects:(id)objects externalReferenceMap:(id)self0 persistedComponentDataReferenceMap:(id)self1 ambiguousReferences:(id)self2 documentReadVersion:(unint64_t)self3 documentWriteVersion:(unint64_t)self4 componentReadVersion:(unint64_t)self5 componentRequiredVersion:(unint64_t)self6 canBeDropped:(BOOL)self7 isWasteful:(BOOL)self8 requiredPackageIdentifier:(unsigned __int8)self9 featureInfos:(id)infos componentObjectUUIDMap:(id)dMap objectReferenceMap:(id)objectReferenceMap saveToken:(unint64_t)token encodedLength:(unint64_t)length lastModificationDate:(id)date wasCopied:(BOOL)copied wasModifiedDuringWrite:(BOOL)write;
- (void)setRootObject:(id)object;
- (void)setUpgradedComponentDataReferenceMap:(id)map;
- (void)willDiscardComponent;
@end

@implementation TSPComponent

- (void)saveToMessage:(void *)message saveToken:(unint64_t)token writtenComponentInfo:(const WrittenComponentInfo *)info
{
  v9 = objc_msgSend_identifier(self, a2, message);
  *(message + 4) |= 4u;
  *(message + 35) = v9;
  v10 = info->var8;
  *(message + 4) |= 1u;
  v11 = *(message + 1);
  if (v11)
  {
    v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  v12 = google::protobuf::internal::ArenaStringPtr::Mutable(message + 33, v11);
  objc_msgSend_tsp_saveToProtobufString_(v10, v13, v12);
  v14 = info->var9;
  v82 = v14;
  if (v14)
  {
    v16 = v14;
    if ((objc_msgSend_isEqualToString_(v14, v15, v10) & 1) == 0)
    {
      *(message + 4) |= 2u;
      v17 = *(message + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::internal::ArenaStringPtr::Mutable(message + 34, v17);
      objc_msgSend_tsp_saveToProtobufString_(v16, v19, v18);
    }
  }

  var10 = info->var10;
  *(message + 4) |= 0x10u;
  *(message + 296) = var10;
  var15 = info->var15;
  if (var15)
  {
    UnsafePointer(var15, message + 168);
  }

  var16 = info->var16;
  if (var16)
  {
    UnsafePointer(var16, message + 192);
  }

  if (info->var17)
  {
    *(message + 4) |= 0x20u;
    *(message + 297) = 1;
  }

  var12 = info->var12;
  if (var12)
  {
    if (var12 >= 0x100000000)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPComponent(TSPPackageWriteCoordinatorAdditions) saveToMessage:saveToken:writtenComponentInfo:]");
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 3088, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
      LODWORD(var12) = -1;
    }

    else if (var12 < 0)
    {
      v74 = MEMORY[0x277D81150];
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPComponent(TSPPackageWriteCoordinatorAdditions) saveToMessage:saveToken:writtenComponentInfo:]");
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v78, v75, v77, 3088, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80);
      LODWORD(var12) = 0;
    }

    *(message + 4) |= 0x80u;
    *(message + 75) = var12;
  }

  objc_msgSend_saveToMessage_(info->var23, v15, message);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A991CC;
  aBlock[3] = &unk_27A6E63A8;
  aBlock[4] = message;
  v24 = _Block_copy(aBlock);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_276A9923C;
  v86[3] = &unk_27A6E63C8;
  v86[4] = message;
  v25 = _Block_copy(v86);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = sub_276A992A8;
  v85[3] = &unk_27A6E63E8;
  v85[4] = message;
  v28 = _Block_copy(v85);
  if (info->var7)
  {
    if (objc_msgSend_documentReadVersion(self, v26, v27))
    {
      Version = objc_msgSend_documentReadVersion(self, v29, v30);
      UnsafePointer(Version, message + 24);
    }

    if (objc_msgSend_documentWriteVersion(self, v29, v30))
    {
      v34 = objc_msgSend_documentWriteVersion(self, v32, v33);
      UnsafePointer(v34, message + 48);
    }

    if (objc_msgSend_isWasteful(self, v32, v33))
    {
      *(message + 4) |= 0x40u;
      *(message + 298) = 1;
    }

    v37 = objc_msgSend_ambiguousReferences(self, v35, v36);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_276A99558;
    v83[3] = &unk_27A6E6408;
    v83[4] = message;
    objc_msgSend_enumerateIndexesUsingBlock_(v37, v38, v83);

    if (objc_msgSend_requiredPackageIdentifier(self, v39, v40))
    {
      v43 = objc_msgSend_requiredPackageIdentifier(self, v41, v42);
      *(message + 4) |= 0x100u;
      *(message + 76) = v43;
    }

    v44 = objc_msgSend_persistedComponentDataReferenceMap(self, v41, v42);
    v25[2](v25, v44);

    v47 = objc_msgSend_componentObjectUUIDMap(self, v45, v46);
    v24[2](v24, v47);

    v50 = objc_msgSend_featureInfos(self, v48, v49);
    v28[2](v28, v50);

    v53 = objc_msgSend_saveToken(self, v51, v52);
    *(message + 4) |= 8u;
    *(message + 36) = v53;
  }

  else
  {
    var13 = info->var13;
    if (var13)
    {
      UnsafePointer(var13, message + 24);
    }

    var14 = info->var14;
    if (var14)
    {
      UnsafePointer(var14, message + 48);
    }

    if (info->var2)
    {
      *(message + 4) |= 0x40u;
      *(message + 298) = 1;
    }

    var24 = info->var24;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_276A994E4;
    v84[3] = &unk_27A6E6408;
    v84[4] = message;
    objc_msgSend_enumerateIndexesUsingBlock_(var24, v26, v84);
    v81 = v10;
    var11 = info->var11;
    if (info->var11)
    {
      *(message + 4) |= 0x100u;
      *(message + 76) = var11;
    }

    v59 = info->var1;
    if (!v59)
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSPComponent(TSPPackageWriteCoordinatorAdditions) saveToMessage:saveToken:writtenComponentInfo:]");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v61, v63, 3143, 0, "invalid nil value for '%{public}s'", "rootObject");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66);
    }

    v25[2](v25, info->var25);
    v24[2](v24, info->var21);
    v28[2](v28, info->var18);
    *(message + 4) |= 8u;
    *(message + 36) = token;

    v10 = v81;
  }
}

- (TSPComponent)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponent init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 91, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPComponent init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPComponent)initWithDelegate:(id)delegate identifier:(int64_t)identifier preferredLocator:(id)locator packageIdentifier:(unsigned __int8)packageIdentifier
{
  delegateCopy = delegate;
  locatorCopy = locator;
  v22.receiver = self;
  v22.super_class = TSPComponent;
  v12 = [(TSPComponent *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("TSPComponent.Access", v14);
    concurrentAccessQueue = v13->_concurrentAccessQueue;
    v13->_concurrentAccessQueue = v15;

    v13->_identifier = identifier;
    v19 = objc_msgSend_copy(locatorCopy, v17, v18);
    preferredLocator = v13->_preferredLocator;
    v13->_preferredLocator = v19;

    atomic_store(16 * (packageIdentifier & 3), v13->_anon_90);
  }

  return v13;
}

- (TSPComponent)initWithDelegate:(id)delegate rootObject:(id)object
{
  delegateCopy = delegate;
  objectCopy = object;
  v10 = objc_msgSend_tsp_identifier(objectCopy, v8, v9);
  v13 = objc_msgSend_packageLocator(objectCopy, v11, v12);
  v15 = objc_msgSend_initWithDelegate_identifier_preferredLocator_packageIdentifier_(self, v14, delegateCopy, v10, v13, 0);

  if (v15)
  {
    objc_msgSend_setRootObject_(v15, v16, objectCopy);
  }

  return v15;
}

- (BOOL)incompatibleVersion
{
  componentReadVersion = self->_componentReadVersion;
  if (componentReadVersion && sub_276AC087C(componentReadVersion))
  {
    return 1;
  }

  if (self->_componentRequiredVersion)
  {
    return UnsafePointer() != self->_componentRequiredVersion;
  }

  return 0;
}

- (BOOL)shouldKeepStrongObjectImpl
{
  dispatch_assert_queue_V2(self->_concurrentAccessQueue);
  if (objc_msgSend_shouldForceCaching(self, v3, v4))
  {
    return 1;
  }

  v7 = atomic_load(&self->_accessCount);
  if (v7 > 0)
  {
    return 1;
  }

  return objc_msgSend_needsArchivingImpl(self, v5, v6);
}

- (TSPObject)rootObject
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_276AA6B7C;
  v14 = sub_276AA6B8C;
  v15 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA6B94;
  block[3] = &unk_27A6E28C0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(concurrentAccessQueue, block);
  if (!v11[5])
  {
    v4 = atomic_load(self->_anon_90);
    if ((v4 & 0x40) == 0)
    {
      v5 = self->_concurrentAccessQueue;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_276AA6C14;
      v8[3] = &unk_27A6E28C0;
      v8[4] = self;
      v8[5] = &v10;
      dispatch_barrier_sync(v5, v8);
    }
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)setRootObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  v6 = atomic_load(self->_anon_90);
  if ((v6 & 0x40) == 0)
  {
    concurrentAccessQueue = self->_concurrentAccessQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_276AA6D98;
    v8[3] = &unk_27A6E2898;
    v8[4] = self;
    v9 = objectCopy;
    dispatch_barrier_async(concurrentAccessQueue, v8);
  }
}

+ (id)componentsDiscardingContentOnCurrentThread
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);

  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"TSPComponentsDiscardingContent");
  if (!v8)
  {
    v8 = objc_opt_new();
    objc_msgSend_setObject_forKeyedSubscript_(v6, v9, v8, @"TSPComponentsDiscardingContent");
  }

  return v8;
}

- (BOOL)isDiscardingContent
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_componentsDiscardingContentOnCurrentThread(v3, v4, v5);
  LOBYTE(self) = objc_msgSend_containsObject_(v6, v7, self);

  return self;
}

- (void)continueDiscardingContentIfPossibleUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v4 = objc_opt_class();
    v7 = objc_msgSend_componentsDiscardingContentOnCurrentThread(v4, v5, v6);
    v10 = objc_msgSend_containsObject_(v7, v8, self);
    if ((v10 & 1) == 0)
    {
      objc_msgSend_addObject_(v7, v9, self);
    }

    blockCopy[2]();
    if ((v10 & 1) == 0)
    {
      objc_msgSend_removeObject_(v7, v11, self);
    }
  }
}

- (void)performSynchronousDiscardContentIfPossibleUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if (objc_msgSend_isDiscardingContent(self, v4, v5))
    {
      blockCopy[2](blockCopy);
    }

    else
    {
      concurrentAccessQueue = self->_concurrentAccessQueue;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_276AA720C;
      v8[3] = &unk_27A6E4C58;
      v8[4] = self;
      v9 = blockCopy;
      dispatch_barrier_sync(concurrentAccessQueue, v8);
    }
  }
}

- (void)discardContentIfPossible
{
  v4 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v12 = objc_msgSend_threadDictionary(v4, v5, v6);

  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPComponentIsDiscardingContentWithNSCacheLock");
  objc_msgSend_setObject_forKeyedSubscript_(v12, v9, MEMORY[0x277CBEC38], @"TSPComponentIsDiscardingContentWithNSCacheLock");
  objc_msgSend_discardContentIfPossibleFromNSCache_(self, v10, 1);
  if (v8)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v11, v8, @"TSPComponentIsDiscardingContentWithNSCacheLock");
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v12, v11, @"TSPComponentIsDiscardingContentWithNSCacheLock");
  }
}

- (BOOL)beginContentAccess
{
  v3 = atomic_load(self->_anon_90);
  if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  v5 = objc_msgSend_rootObject(self, a2, v2);
  v6 = v5 != 0;
  if (v5)
  {
    atomic_fetch_add(&self->_accessCount, 1u);
  }

  return v6;
}

- (BOOL)isContentDiscarded
{
  v3 = atomic_load(self->_anon_90);
  if ((v3 & 0x40) != 0)
  {
    return 1;
  }

  v4 = objc_msgSend_rootObject(self, a2, v2);
  v5 = v4 == 0;

  return v5;
}

- (NSString)locator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AA6B7C;
  v10 = sub_276AA6B8C;
  v11 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA7830;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)p_locator
{
  v2 = 48;
  if (!self->_locator)
  {
    v2 = 40;
  }

  return *(&self->super.isa + v2);
}

- (void)p_setLocator:(id)locator
{
  locatorCopy = locator;
  if (objc_msgSend_isEqualToString_(locatorCopy, v4, self->_preferredLocator))
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_copy(locatorCopy, v5, v6);
  }

  locator = self->_locator;
  self->_locator = v7;
}

- (unsigned)packageIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA79C4;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)documentReadVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA7A8C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)documentWriteVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA7B4C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)componentReadVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA7C0C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)componentRequiredVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA7CCC;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canBeDropped
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA7D8C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isWasteful
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA7E94;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSIndexSet)ambiguousReferences
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AA6B7C;
  v10 = sub_276AA6B8C;
  v11 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA7FA0;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unsigned)requiredPackageIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA8060;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)compressionAlgorithm
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA8128;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)saveToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA81F0;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)modified
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA82B0;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setModified:(BOOL)modified forObject:(id)object isDocumentUpgrade:(BOOL)upgrade
{
  modifiedCopy = modified;
  objectCopy = object;
  if (!objectCopy && !upgrade && modifiedCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPComponent setModified:forObject:isDocumentUpgrade:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 585, 0, "Object cannot be nil if then component is getting modified.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  concurrentAccessQueue = self->_concurrentAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA8428;
  block[3] = &unk_27A6E6718;
  v21 = modifiedCopy;
  block[4] = self;
  v20 = objectCopy;
  v18 = objectCopy;
  dispatch_barrier_async(concurrentAccessQueue, block);
}

- (void)setModifiedImpl:(BOOL)impl forObject:(id)object
{
  objectCopy = object;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v48 = sub_276AA876C;
  v49 = &unk_27A6E6738;
  implCopy = impl;
  v8 = atomic_load(self->_anon_90);
  do
  {
    v51 = v8;
    v48(v47, &v51);
    v11 = v8;
    atomic_compare_exchange_strong(self->_anon_90, &v11, v51);
    v12 = v11 == v8;
    v8 = v11;
  }

  while (!v12);
  v13 = atomic_load(self->_anon_90);
  if ((v13 & 2) != 0)
  {
    if ((objc_msgSend_isTransientComponent(self, v9, v10) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (self->_strongRootObject)
      {
        goto LABEL_22;
      }

      v25 = objc_loadWeakRetained(&self->_weakRootObject);
      if (!v25)
      {
        v26 = objc_msgSend_tsp_identifier(objectCopy, v23, v24);
        identifier = self->_identifier;
        if (v26 == identifier)
        {
          v29 = objectCopy;
        }

        else
        {
          v29 = objc_msgSend_objectForIdentifier_(WeakRetained, v27, identifier);
        }

        v25 = v29;
        objc_storeWeak(&self->_weakRootObject, v29);
      }

      strongRootObject = self->_strongRootObject;
      self->_strongRootObject = v25;

      if (self->_strongRootObject)
      {
LABEL_22:
        objc_msgSend_cacheComponent_isDiscardingContent_(WeakRetained, v22, self, 0);
      }

      else if (objc_msgSend_isActive(WeakRetained, v22, v35))
      {
        if ((v13 & 4) == 0)
        {
          v37 = MEMORY[0x277D81150];
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSPComponent setModifiedImpl:forObject:]");
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm");
          v43 = objc_msgSend_p_locator(self, v41, v42);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v38, v40, 627, 0, "Component [%{public}@-%llu] root object should not be flushed when it isn't persisted.", v43, self->_identifier);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
        }

        objc_msgSend_didModifyFlushedComponent_forObject_(WeakRetained, v36, self, objectCopy);
      }

      goto LABEL_23;
    }
  }

  else if ((v13 & 4) != 0 && objc_msgSend_tsp_identifier(objectCopy, v9, v10) == self->_identifier)
  {
    objc_storeWeak(&self->_weakRootObject, objectCopy);
    if ((objc_msgSend_isCachingEnabled(self, v14, v15) & 1) == 0 && !objc_msgSend_shouldForceCaching(self, v16, v17))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ((objc_msgSend_shouldKeepAllCachedObjectsInMemory(WeakRetained, v30, v31) & 1) == 0)
      {
        v32 = self->_strongRootObject;
        self->_strongRootObject = 0;

        objc_msgSend_flushComponent_isDiscardingContent_(WeakRetained, v33, self, 0);
      }

      goto LABEL_23;
    }

    if (self->_strongRootObject != objectCopy)
    {
      objc_storeStrong(&self->_strongRootObject, object);
      if ((objc_msgSend_isTransientComponent(self, v18, v19) & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        objc_msgSend_cacheComponent_isDiscardingContent_(WeakRetained, v21, self, 0);
LABEL_23:
      }
    }
  }
}

- (void)setArchivedObjectsImpl:(id)impl
{
  v82 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  if (implCopy)
  {
    v5 = self->_writtenObjects;
    if (objc_msgSend_tsp_isWeakObjectMapTable(implCopy, v6, v7))
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v10 = self->_writtenObjects;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v75, v81, 16);
      if (v13)
      {
        v14 = *v76;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v76 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v75 + 1) + 8 * i);
            v17 = objc_msgSend_objectForKey_(implCopy, v12, v16);
            v18 = v17 == 0;

            if (v18)
            {
              v19 = objc_msgSend_objectForKey_(self->_writtenObjects, v12, v16);
              v23 = objc_msgSend_tsp_identifier(v19, v20, v21);
              if (v23 != v16)
              {
                v24 = objc_msgSend_tsp_objectForIdentifier_(implCopy, v22, v23);
                v25 = v24 == v19;

                if (v25)
                {

                  v19 = 0;
                }
              }

              v26 = objc_msgSend_tsp_component(v19, v22, v23);
              v27 = v26 == self;

              if (v27)
              {
                objc_msgSend_setTsp_component_(v19, v28, 0);
              }
            }
          }

          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v75, v81, 16);
        }

        while (v13);
      }

      v29 = implCopy;
    }

    else
    {
      v30 = MEMORY[0x277CCAB00];
      v31 = objc_msgSend_count(implCopy, v8, v9);
      v29 = objc_msgSend_newTspWeakObjectsMapTableWithCapacity_(v30, v32, v31);
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v33 = implCopy;
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v71, v80, 16);
      if (v36)
      {
        v37 = *v72;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v72 != v37)
            {
              objc_enumerationMutation(v33);
            }

            v39 = *(*(&v71 + 1) + 8 * j);
            objc_msgSend_removeObjectForKey_(self->_writtenObjects, v35, v39);
            v41 = objc_msgSend_objectForKey_(v33, v40, v39);
            objc_msgSend_setObject_forKey_(v29, v42, v41, v39);
          }

          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v71, v80, 16);
        }

        while (v36);
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v43 = self->_writtenObjects;
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v67, v79, 16);
      if (v46)
      {
        v47 = *v68;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v68 != v47)
            {
              objc_enumerationMutation(v43);
            }

            v49 = *(*(&v67 + 1) + 8 * k);
            v50 = objc_msgSend_objectForKey_(self->_writtenObjects, v45, v49);
            v54 = objc_msgSend_tsp_identifier(v50, v51, v52);
            if (v54 != v49)
            {
              v55 = objc_msgSend_tsp_objectForIdentifier_(v29, v53, v54);
              v56 = v55 == v50;

              if (v56)
              {

                v50 = 0;
              }
            }

            v57 = objc_msgSend_tsp_component(v50, v53, v54);
            v58 = v57 == self;

            if (v58)
            {
              objc_msgSend_setTsp_component_(v50, v59, 0);
            }
          }

          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v67, v79, 16);
        }

        while (v46);
      }
    }

    writtenObjects = self->_writtenObjects;
    self->_writtenObjects = v29;

    if (v5)
    {
      v63 = objc_msgSend_releaseQueue(TSPObjectContext, v61, v62);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = nullsub_10;
      block[3] = &unk_27A6E27F8;
      v66 = v5;
      dispatch_async(v63, block);
    }
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (void)didReadObjects:(id)objects
{
  objectsCopy = objects;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AA8CC4;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = objectsCopy;
  v6 = objectsCopy;
  dispatch_barrier_sync(concurrentAccessQueue, v7);
}

- (void)setPackageIdentifier:(unsigned __int8)identifier preferredLocator:(id)locator locator:(id)a5 isStoredOutsideObjectArchive:(BOOL)archive compressionAlgorithm:(int64_t)algorithm rootObjectOrNil:(id)nil archivedObjects:(id)objects externalReferenceMap:(id)self0 persistedComponentDataReferenceMap:(id)self1 ambiguousReferences:(id)self2 documentReadVersion:(unint64_t)self3 documentWriteVersion:(unint64_t)self4 componentReadVersion:(unint64_t)self5 componentRequiredVersion:(unint64_t)self6 canBeDropped:(BOOL)self7 isWasteful:(BOOL)self8 requiredPackageIdentifier:(unsigned __int8)self9 featureInfos:(id)infos componentObjectUUIDMap:(id)dMap objectReferenceMap:(id)objectReferenceMap saveToken:(unint64_t)token encodedLength:(unint64_t)length lastModificationDate:(id)date wasCopied:(BOOL)copied wasModifiedDuringWrite:(BOOL)write
{
  identifierCopy = identifier;
  locatorCopy = locator;
  v60 = a5;
  nilCopy = nil;
  objectsCopy = objects;
  mapCopy = map;
  referenceMapCopy = referenceMap;
  referencesCopy = references;
  infosCopy = infos;
  dMapCopy = dMap;
  objectReferenceMapCopy = objectReferenceMap;
  dateCopy = date;
  if (!identifierCopy)
  {
    TSUSetCrashReporterInfo();
    v44 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSPComponent setPackageIdentifier:preferredLocator:locator:isStoredOutsideObjectArchive:compressionAlgorithm:rootObjectOrNil:archivedObjects:externalReferenceMap:persistedComponentDataReferenceMap:ambiguousReferences:documentReadVersion:documentWriteVersion:componentReadVersion:componentRequiredVersion:canBeDropped:isWasteful:requiredPackageIdentifier:featureInfos:componentObjectUUIDMap:objectReferenceMap:saveToken:encodedLength:lastModificationDate:wasCopied:wasModifiedDuringWrite:]", "[TSPComponent setPackageIdentifier:preferredLocator:locator:isStoredOutsideObjectArchive:compressionAlgorithm:rootObjectOrNil:archivedObjects:externalReferenceMap:persistedComponentDataReferenceMap:ambiguousReferences:documentReadVersion:documentWriteVersion:componentReadVersion:componentRequiredVersion:canBeDropped:isWasteful:requiredPackageIdentifier:featureInfos:componentObjectUUIDMap:objectReferenceMap:saveToken:encodedLength:lastModificationDate:wasCopied:wasModifiedDuringWrite:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm", 764);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v55, v47, 764, 1, "Invalid package identifier for persisted component.");

    TSUCrashBreakpoint();
    abort();
  }

  queue = self->_concurrentAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA9064;
  block[3] = &unk_27A6E6788;
  v81 = identifierCopy;
  archiveCopy = archive;
  wastefulCopy = wasteful;
  packageIdentifierCopy = packageIdentifier;
  copiedCopy = copied;
  droppedCopy = dropped;
  block[4] = self;
  v63 = v60;
  v64 = locatorCopy;
  v65 = mapCopy;
  algorithmCopy = algorithm;
  versionCopy = version;
  writeVersionCopy = writeVersion;
  readVersionCopy = readVersion;
  v66 = nilCopy;
  v67 = infosCopy;
  requiredVersionCopy = requiredVersion;
  tokenCopy = token;
  lengthCopy = length;
  v68 = dateCopy;
  v69 = dMapCopy;
  v70 = referenceMapCopy;
  v71 = referencesCopy;
  v72 = objectReferenceMapCopy;
  v73 = objectsCopy;
  writeCopy = write;
  v57 = objectsCopy;
  v54 = objectReferenceMapCopy;
  v53 = referencesCopy;
  v36 = referenceMapCopy;
  v37 = dMapCopy;
  v38 = dateCopy;
  v39 = infosCopy;
  v40 = nilCopy;
  v41 = mapCopy;
  v42 = locatorCopy;
  v43 = v60;
  dispatch_barrier_sync(queue, block);
}

- (void)setEncodedLength:(unint64_t)length lastModificationDate:(id)date
{
  dateCopy = date;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA9674;
  block[3] = &unk_27A6E2C50;
  v10 = dateCopy;
  lengthCopy = length;
  block[4] = self;
  v8 = dateCopy;
  dispatch_barrier_sync(concurrentAccessQueue, block);
}

- (void)setDocumentReadVersion:(unint64_t)version documentWriteVersion:(unint64_t)writeVersion componentObjectUUIDMap:(id)map
{
  mapCopy = map;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276AA9828;
  v11[3] = &unk_27A6E6280;
  versionCopy = version;
  writeVersionCopy = writeVersion;
  v11[4] = self;
  v12 = mapCopy;
  v10 = mapCopy;
  dispatch_barrier_sync(concurrentAccessQueue, v11);
}

- (void)setComponentObjectUUIDMap:(id)map
{
  mapCopy = map;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AA991C;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = mapCopy;
  v6 = mapCopy;
  dispatch_barrier_sync(concurrentAccessQueue, v7);
}

- (void)setUpgradedComponentDataReferenceMap:(id)map
{
  mapCopy = map;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AA99F8;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = mapCopy;
  v6 = mapCopy;
  dispatch_barrier_sync(concurrentAccessQueue, v7);
}

- (void)willDiscardComponent
{
  objc_msgSend_markAsDiscarded(self, a2, v2);
  concurrentAccessQueue = self->_concurrentAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA9A84;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_barrier_sync(concurrentAccessQueue, block);
}

- (void)markAsDiscarded
{
  v2 = atomic_load(self->_anon_90);
  v3 = v2;
  do
  {
    atomic_compare_exchange_strong(self->_anon_90, &v3, v2 | 0x40);
    v4 = v3 == v2;
    v2 = v3;
  }

  while (!v4);
}

- (BOOL)persisted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA9C18;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)needsArchivingImpl
{
  dispatch_assert_queue_V2(self->_concurrentAccessQueue);
  v3 = atomic_load(self->_anon_90);
  return (v3 & 6) != 4;
}

- (BOOL)needsArchiving
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AA9D1C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(concurrentAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)enumerateExternalReferences:(id)references
{
  referencesCopy = references;
  v5 = referencesCopy;
  if (referencesCopy)
  {
    concurrentAccessQueue = self->_concurrentAccessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276AA9E0C;
    v7[3] = &unk_27A6E4C58;
    v7[4] = self;
    v8 = referencesCopy;
    dispatch_sync(concurrentAccessQueue, v7);
  }
}

- (ComponentExternalReferenceInfo)externalReferenceInfoForObjectIdentifier:(int64_t)identifier
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = sub_276AA9FA8;
  v13 = nullsub_12;
  v14 = &unk_276C58F2F;
  v15 = 0;
  v16 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA9FC0;
  block[3] = &unk_27A6E4D78;
  block[4] = self;
  block[5] = &v9;
  block[6] = identifier;
  dispatch_sync(concurrentAccessQueue, block);
  v4 = v10[6];
  v5 = v10[7];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.var1 = v7;
  result.var2 = BYTE1(v7);
  result.var0 = v6;
  return result;
}

- (id)newExternalReferenceMapWithStrongReferences:(id)references weakReferences:(id)weakReferences delegate:(id)delegate
{
  referencesCopy = references;
  weakReferencesCopy = weakReferences;
  delegateCopy = delegate;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_276AA6B7C;
  v35 = sub_276AA6B8C;
  v11 = [TSPComponentExternalReferenceMap alloc];
  v14 = objc_msgSend_count(weakReferencesCopy, v12, v13);
  v17 = objc_msgSend_count(referencesCopy, v15, v16);
  v36 = objc_msgSend_initWithMapSize_(v11, v18, v17 + v14);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_276AAA22C;
  v28[3] = &unk_27A6E67D8;
  v28[4] = self;
  v30 = &v31;
  v19 = delegateCopy;
  v29 = v19;
  objc_msgSend_enumerateItemsUsingBlock_(weakReferencesCopy, v20, v28);
  v21 = v32[5];
  if (v21)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_276AAA298;
    v25[3] = &unk_27A6E67D8;
    v25[4] = self;
    v27 = &v31;
    v26 = v19;
    objc_msgSend_enumerateItemsUsingBlock_(referencesCopy, v22, v25);

    v21 = v32[5];
  }

  v23 = v21;

  _Block_object_dispose(&v31, 8);
  return v23;
}

- (id)newUpdatedExternalReferenceMapUsingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_276AA6B7C;
  v20 = sub_276AA6B8C;
  v21 = 0;
  concurrentAccessQueue = self->_concurrentAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AAAAB8;
  block[3] = &unk_27A6E28C0;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(concurrentAccessQueue, block);
  v6 = v17[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276AAAB04;
  v11[3] = &unk_27A6E6800;
  v12 = delegateCopy;
  selfCopy = self;
  v14 = &v16;
  v7 = delegateCopy;
  objc_msgSend_enumerateExternalReferences_(v6, v8, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);
  return v9;
}

- (id)additionalDescription
{
  v3 = atomic_load(self->_anon_90);
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  p_locator = &self->_locator;
  locator = self->_locator;
  identifier = self->_identifier;
  if (!locator || objc_msgSend_isEqualToString_(locator, v4, self->_preferredLocator))
  {
    p_locator = &self->_preferredLocator;
  }

  v9 = *p_locator;
  if ((v3 & 2) != 0)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ((v3 & 4) != 0)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v31 = sub_276AC69B4((v3 >> 4) & 3, v4);
  NSStringFromTSPVersion(self->_componentReadVersion, v12);
  v27 = v11;
  v30 = v28 = v10;
  v29 = identifier;
  v16 = NSStringFromTSPVersion(self->_componentRequiredVersion, v13);
  if ((v3 & 0x400) != 0)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if ((v3 & 0x800) != 0)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = objc_msgSend_count(self->_ambiguousReferences, v14, v15);
  v21 = sub_276AC69B4((v3 >> 12) & 3, v20);
  v23 = v21;
  if (v19)
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v25 = objc_msgSend_initWithFormat_(v5, v22, @"identifier=%llu locator='%@' modified=%@ persisted=%@ package_identifier=%@ component_read_version=%@ component_required_version=%@ can_be_dropped=%@ is_wasteful=%@ has_ambiguous_ownership=%@ required_package_identifier=%@", v29, v9, v28, v27, v31, v30, v16, v17, v18, v24, v21);

  return v25;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_additionalDescription(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@: %p %@>", v5, self, v8);

  return v10;
}

@end