@interface TSPComponentManager
+ (id)componentManagersPerformingCacheOperationOnCurrentThread;
- (BOOL)isPerformingCacheOperation;
- (TSPComponent)documentComponent;
- (TSPComponent)supportComponent;
- (TSPComponent)viewStateComponent;
- (TSPComponentManager)init;
- (TSPComponentManager)initWithContext:(id)context;
- (TSPObjectContext)context;
- (id)componentForRootObjectIdentifier:(int64_t)identifier;
- (id)componentForRootObjectOfLazyReference:(id)reference;
- (id)componentForRootObjectOfLazyReferenceImpl:(id)impl;
- (id)objectForIdentifier:(int64_t)identifier;
- (unint64_t)componentCount;
- (void)cacheComponent:(id)component isDiscardingContent:(BOOL)content;
- (void)componentForRootObjectIdentifier:(int64_t)identifier queue:(id)queue completion:(id)completion;
- (void)componentForRootObjectOfLazyReference:(id)reference queue:(id)queue completion:(id)completion;
- (void)continueCacheOperationUsingBlock:(id)block;
- (void)dealloc;
- (void)didModifyFlushedComponent:(id)component forObject:(id)object;
- (void)dirtyAllComponentsForDocumentUpgradeInPackage:(unsigned __int8)package;
- (void)dirtyComponents:(id)components;
- (void)discardOrphanedComponents;
- (void)endIgnoringCachedObjectEviction;
- (void)enumerateComponents:(id)components;
- (void)evictAllCachedObjects;
- (void)flushComponent:(id)component isDiscardingContent:(BOOL)content;
- (void)loadComponent:(const void *)component package:(id)package;
- (void)loadFromPackage:(id)package metadata:(id)metadata;
- (void)performCacheOperationUsingBlock:(id)block;
- (void)retrieveOrCreateComponentForRootObject:(id)object queue:(id)queue completion:(id)completion;
- (void)setViewStateComponent:(id)component;
- (void)suspendLoadingModifiedFlushedComponentsAndWait;
- (void)traverseComponentTreeFromRoot:(id)root accessor:(id)accessor;
- (void)willModifyObject:(id)object options:(unint64_t)options;
@end

@implementation TSPComponentManager

- (TSPComponentManager)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentManager init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 59, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPComponentManager init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPComponentManager)initWithContext:(id)context
{
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = TSPComponentManager;
  v5 = [(TSPComponentManager *)&v29 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSPComponentManager.Components", v7);
    componentQueue = v6->_componentQueue;
    v6->_componentQueue = v8;

    v10 = objc_alloc(MEMORY[0x277CCAA50]);
    v12 = objc_msgSend_initWithOptions_capacity_(v10, v11, 512, 0);
    components = v6->_components;
    v6->_components = v12;

    v16 = objc_msgSend_newTspWeakObjectsMapTable(MEMORY[0x277CCAB00], v14, v15);
    componentDictionary = v6->_componentDictionary;
    v6->_componentDictionary = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEA78]);
    componentCache = v6->_componentCache;
    v6->_componentCache = v18;

    objc_msgSend_setEvictsObjectsWithDiscardedContent_(v6->_componentCache, v20, 0);
    v21 = [TSPComponent alloc];
    v23 = objc_msgSend_initWithDelegate_identifier_preferredLocator_packageIdentifier_(v21, v22, v6, 2, @"Metadata", 0);
    packageMetadataComponent = v6->_packageMetadataComponent;
    v6->_packageMetadataComponent = v23;

    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("TSPComponentManager.ReadFlushedComponent", v25);
    readFlushedComponentQueue = v6->_readFlushedComponentQueue;
    v6->_readFlushedComponentQueue = v26;
  }

  return v6;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_components;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_markAsDiscarded(*(*(&v13 + 1) + 8 * v9++), v5, v6);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v13, v17, 16);
    }

    while (v7);
  }

  componentCache = self->_componentCache;
  self->_componentCache = 0;

  v12.receiver = self;
  v12.super_class = TSPComponentManager;
  [(TSPComponentManager *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)loadComponent:(const void *)component package:(id)package
{
  packageCopy = package;
  v7 = *(component + 35);
  v65 = packageCopy;
  v11 = objc_msgSend_packageIdentifier(packageCopy, v8, v9);
  v12 = 0x277CCA000;
  if (v11 != 1)
  {
    v13 = objc_msgSend_tsp_objectForIdentifier_(self->_componentDictionary, v10, v7);
    v16 = v13;
    if (v13)
    {
      v17 = objc_msgSend_packageIdentifier(v13, v14, v15);
      v20 = objc_msgSend_rootObject(v16, v18, v19);

      if (v20)
      {
        v23 = MEMORY[0x277D81150];
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPComponentManager loadComponent:package:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm");
        v28 = objc_msgSend_locator(v16, v26, v27);
        v30 = sub_276AC69B4(v17, v29);
        v33 = objc_msgSend_lowercaseString(v30, v31, v32);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v64, v25, 106, 0, "TSPersistence: component [%{public}@-%llu] has already been loaded from %{public}@ package. Model has to be aware of this possible scenario and only use lazy references to refer to this component from the document package.", v28, v7, v33);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
      }

      objc_msgSend_willDiscardComponent(v16, v21, v22);
      objc_msgSend_removeObject_(self->_components, v37, v16);
      objc_msgSend_tsp_removeObjectForIdentifier_(self->_componentDictionary, v38, v7);
      objc_msgSend_tsp_flushComponent_(self->_componentCache, v39, v16);
    }

    v12 = 0x277CCA000uLL;
  }

  v40 = objc_alloc(*(v12 + 3240));
  if ((*(component + 4) & 2) != 0)
  {
    v42 = component + 272;
  }

  else
  {
    v42 = component + 264;
  }

  v43 = objc_msgSend_tsp_initWithProtobufString_(v40, v41, *v42 & 0xFFFFFFFFFFFFFFFELL);
  v45 = objc_msgSend_packageEntryInfoForComponentLocator_isStoredOutsideObjectArchive_(v65, v44, v43, *(component + 296));
  v46 = [TSPComponent alloc];
  v49 = objc_msgSend_encodedLength(v45, v47, v48);
  v52 = objc_msgSend_lastModificationDate(v45, v50, v51);
  ModificationDate = objc_msgSend_initWithDelegate_message_packageIdentifier_encodedLength_lastModificationDate_(v46, v53, self, component, v11, v49, v52);

  if (!ModificationDate)
  {
    TSUSetCrashReporterInfo();
    v58 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(*(v12 + 3240), v59, "[TSPComponentManager loadComponent:package:]", "[TSPComponentManager loadComponent:package:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm", 120);
    v62 = objc_msgSend_stringWithUTF8String_(*(v12 + 3240), v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v63, v60, v62, 120, 1, "Failed to initialize component from package metadata.");

    TSUCrashBreakpoint();
    abort();
  }

  objc_msgSend_addObject_(self->_components, v55, ModificationDate);
  objc_msgSend_tsp_setObject_forIdentifier_(self->_componentDictionary, v56, ModificationDate, v7);
  objc_msgSend_tsp_cacheComponent_(self->_componentCache, v57, ModificationDate);
}

- (void)loadFromPackage:(id)package metadata:(id)metadata
{
  packageCopy = package;
  metadataCopy = metadata;
  v10 = objc_msgSend_packageIdentifier(packageCopy, v8, v9);
  v12 = v10;
  if (!v10)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPComponentManager loadFromPackage:metadata:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 131, 0, "Invalid package identifier for persisted components.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_276AABCCC;
  v23[3] = &unk_27A6E6828;
  v20 = metadataCopy;
  v27 = v12;
  v24 = v20;
  selfCopy = self;
  v21 = packageCopy;
  v26 = v21;
  objc_msgSend_performCacheOperationUsingBlock_(self, v22, v23);
}

- (TSPComponent)documentComponent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AAC09C;
  v10 = sub_276AAC0AC;
  v11 = 0;
  componentQueue = self->_componentQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AAC0B4;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(componentQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (TSPComponent)supportComponent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AAC09C;
  v10 = sub_276AAC0AC;
  v11 = 0;
  componentQueue = self->_componentQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AAC210;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(componentQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (TSPComponent)viewStateComponent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AAC09C;
  v10 = sub_276AAC0AC;
  v11 = 0;
  componentQueue = self->_componentQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AAC36C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(componentQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setViewStateComponent:(id)component
{
  componentCopy = component;
  componentQueue = self->_componentQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AAC418;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = componentCopy;
  v6 = componentCopy;
  dispatch_barrier_async(componentQueue, v7);
}

- (unint64_t)componentCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  componentQueue = self->_componentQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AAC4D0;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(componentQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)enumerateComponents:(id)components
{
  componentsCopy = components;
  v5 = componentsCopy;
  if (componentsCopy)
  {
    componentQueue = self->_componentQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276AAC5B0;
    v7[3] = &unk_27A6E4C58;
    v7[4] = self;
    v8 = componentsCopy;
    dispatch_sync(componentQueue, v7);
  }
}

- (void)retrieveOrCreateComponentForRootObject:(id)object queue:(id)queue completion:(id)completion
{
  objectCopy = object;
  queueCopy = queue;
  completionCopy = completion;
  v11 = completionCopy;
  if (objectCopy)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276AAC888;
    v14[3] = &unk_27A6E39F8;
    v14[4] = self;
    v15 = objectCopy;
    v16 = queueCopy;
    v17 = v11;
    objc_msgSend_performCacheOperationUsingBlock_(self, v12, v14);

    v13 = v15;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AAC874;
    block[3] = &unk_27A6E3480;
    v19 = completionCopy;
    dispatch_async(queueCopy, block);
    v13 = v19;
  }
}

- (void)componentForRootObjectIdentifier:(int64_t)identifier queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  componentQueue = self->_componentQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276AACC28;
  v13[3] = &unk_27A6E6850;
  v13[4] = self;
  v14 = queueCopy;
  v15 = completionCopy;
  identifierCopy = identifier;
  v11 = completionCopy;
  v12 = queueCopy;
  dispatch_async(componentQueue, v13);
}

- (id)componentForRootObjectIdentifier:(int64_t)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_276AAC09C;
  v11 = sub_276AAC0AC;
  v12 = 0;
  componentQueue = self->_componentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AACDF0;
  block[3] = &unk_27A6E2C28;
  block[4] = self;
  block[5] = &v7;
  block[6] = identifier;
  dispatch_sync(componentQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)componentForRootObjectOfLazyReferenceImpl:(id)impl
{
  v46 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  v7 = objc_msgSend_tsp_identifier(implCopy, v5, v6);
  v10 = objc_msgSend_component(implCopy, v8, v9);
  v12 = v10;
  if (v10)
  {
    v15 = objc_msgSend_externalReferenceInfoForObjectIdentifier_(v10, v11, v7);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = self->_components;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v41, v45, 16);
    selfCopy = self;
    if (v18)
    {
      v19 = *v42;
LABEL_6:
      v20 = 0;
      while (1)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v41 + 1) + 8 * v20);
        v15 = objc_msgSend_externalReferenceInfoForObjectIdentifier_(v21, v17, v7, selfCopy);
        if (v15)
        {
          break;
        }

        v24 = objc_msgSend_persistedComponentDataReferenceMap(v21, v22, v23);
        v27 = objc_msgSend_objectToDataReferenceMap(v24, v25, v26);
        v29 = objc_msgSend_allReferencesFromIdentifier_(v27, v28, v7);
        v30 = v29 == 0;

        if (!v30 || (objc_msgSend_componentObjectUUIDMap(v21, v17, v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectUUIDForIdentifier_(v32, v33, v7), v34 = objc_claimAutoreleasedReturnValue(), v35 = v34 == 0, v34, v32, !v35))
        {
          v15 = objc_msgSend_identifier(v21, v17, v31);
          break;
        }

        if (v18 == ++v20)
        {
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v41, v45, 16);
          v15 = 0;
          if (v18)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    self = selfCopy;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  v36 = objc_msgSend_tsp_objectForIdentifier_(self->_componentDictionary, v13, v15, selfCopy);
  if (v36)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (objc_msgSend_ownershipMode(implCopy, v13, v14, selfCopy))
  {
LABEL_20:
    v36 = 0;
    goto LABEL_23;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD6174();
    goto LABEL_20;
  }

  v36 = 0;
LABEL_23:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)componentForRootObjectOfLazyReference:(id)reference
{
  referenceCopy = reference;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_276AAC09C;
  v16 = sub_276AAC0AC;
  v17 = 0;
  componentQueue = self->_componentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AAD258;
  block[3] = &unk_27A6E2C00;
  v10 = referenceCopy;
  v11 = &v12;
  block[4] = self;
  v6 = referenceCopy;
  dispatch_sync(componentQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)componentForRootObjectOfLazyReference:(id)reference queue:(id)queue completion:(id)completion
{
  referenceCopy = reference;
  queueCopy = queue;
  completionCopy = completion;
  componentQueue = self->_componentQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276AAD38C;
  v15[3] = &unk_27A6E39F8;
  v15[4] = self;
  v16 = referenceCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  v14 = referenceCopy;
  dispatch_barrier_async(componentQueue, v15);
}

- (void)willModifyObject:(id)object options:(unint64_t)options
{
  v6 = objc_msgSend_tsp_component(object, a2, object, options);
  if (v6)
  {
    objectCopy = object;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_276AAD554;
    v10[3] = &unk_27A6E2898;
    v11 = v6;
    v12 = objectCopy;
    v8 = objectCopy;
    objc_msgSend_performCacheOperationUsingBlock_(self, v9, v10);
  }
}

- (void)dirtyComponents:(id)components
{
  componentsCopy = components;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AAD610;
  v7[3] = &unk_27A6E27F8;
  v8 = componentsCopy;
  v5 = componentsCopy;
  objc_msgSend_performCacheOperationUsingBlock_(self, v6, v7);
}

- (void)dirtyAllComponentsForDocumentUpgradeInPackage:(unsigned __int8)package
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276AAD7C8;
  v3[3] = &unk_27A6E2960;
  v3[4] = self;
  packageCopy = package;
  objc_msgSend_performCacheOperationUsingBlock_(self, a2, v3);
}

- (void)suspendLoadingModifiedFlushedComponentsAndWait
{
  readFlushedComponentQueue = self->_readFlushedComponentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AAD99C;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_sync(readFlushedComponentQueue, block);
}

- (void)discardOrphanedComponents
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_276AADB34;
  v2[3] = &unk_27A6E27F8;
  v2[4] = self;
  objc_msgSend_performCacheOperationUsingBlock_(self, a2, v2);
}

- (void)traverseComponentTreeFromRoot:(id)root accessor:(id)accessor
{
  rootCopy = root;
  v26 = rootCopy;
  accessorCopy = accessor;
  if (accessorCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CCAA50]);
    v10 = objc_msgSend_initWithOptions_capacity_(v8, v9, 512, 0);
    objc_msgSend_addObject_(v10, v11, rootCopy);
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    sub_276AAF6B8(v24, &v26);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23[0] = 0;
    accessorCopy[2](accessorCopy, v26, v23);
    while ((v21[3] & 1) == 0)
    {
      if (!*(&v25 + 1))
      {
        break;
      }

      v12 = *(*(*(&v24[0] + 1) + ((v25 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v25 & 0x1FF));
      *&v25 = v25 + 1;
      --*(&v25 + 1);
      if (v25 >= 0x400)
      {
        operator delete(**(&v24[0] + 1));
        *(&v24[0] + 1) += 8;
        *&v25 = v25 - 512;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_276AAE358;
      v14[3] = &unk_27A6E68C8;
      v14[4] = self;
      v15 = v10;
      v16 = accessorCopy;
      v17 = &v20;
      v18 = v24;
      v19 = v12;
      objc_msgSend_enumerateExternalReferences_(v12, v13, v14);
    }

    _Block_object_dispose(&v20, 8);
    sub_276AAF60C(v24);
  }
}

- (void)endIgnoringCachedObjectEviction
{
  if (atomic_fetch_add(&self->_ignoreCachedObjectEvictionCount, 0xFFFFFFFF) <= 0)
  {
    v2 = MEMORY[0x277D81150];
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentManager endIgnoringCachedObjectEviction]");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 543, 0, "Unbalanced calls to -beginIgnoringCachedObjectEviction and -endIgnoringCachedObjectEviction");

    v9 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v9, v7, v8);
  }
}

+ (id)componentManagersPerformingCacheOperationOnCurrentThread
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);

  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"TSPComponentManagersPerformingCacheOperation");
  if (!v8)
  {
    v8 = objc_opt_new();
    objc_msgSend_setObject_forKeyedSubscript_(v6, v9, v8, @"TSPComponentManagersPerformingCacheOperation");
  }

  return v8;
}

- (BOOL)isPerformingCacheOperation
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_componentManagersPerformingCacheOperationOnCurrentThread(v3, v4, v5);
  LOBYTE(self) = objc_msgSend_containsObject_(v6, v7, self);

  return self;
}

- (void)continueCacheOperationUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v4 = objc_opt_class();
    v7 = objc_msgSend_componentManagersPerformingCacheOperationOnCurrentThread(v4, v5, v6);
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

- (void)performCacheOperationUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if (objc_msgSend_isPerformingCacheOperation(self, v4, v5))
    {
      blockCopy[2](blockCopy);
    }

    else
    {
      componentQueue = self->_componentQueue;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_276AAE8B4;
      v8[3] = &unk_27A6E4C58;
      v8[4] = self;
      v9 = blockCopy;
      dispatch_barrier_async(componentQueue, v8);
    }
  }
}

- (void)evictAllCachedObjects
{
  if ((objc_msgSend_shouldKeepAllCachedObjectsInMemory(self, a2, v2) & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_276AAE948;
    v5[3] = &unk_27A6E27F8;
    v5[4] = self;
    objc_msgSend_performCacheOperationUsingBlock_(self, v4, v5);
  }
}

- (id)objectForIdentifier:(int64_t)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v6 = objc_msgSend_objectForIdentifier_(WeakRetained, v5, identifier);

  return v6;
}

- (void)cacheComponent:(id)component isDiscardingContent:(BOOL)content
{
  contentCopy = content;
  componentCopy = component;
  if (!contentCopy)
  {
    goto LABEL_8;
  }

  v9 = objc_msgSend_tsp_currentOperation(self->_componentCache, v6, v7);
  v12 = objc_msgSend_tsp_currentComponent(self->_componentCache, v10, v11);
  v15 = v12;
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      v16 = objc_msgSend_identifier(v12, v13, v14);
      if (v16 == objc_msgSend_identifier(componentCopy, v17, v18))
      {
        goto LABEL_5;
      }
    }

    goto LABEL_7;
  }

  if (v12 != componentCopy)
  {
LABEL_7:

LABEL_8:
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276AAEBF4;
    v20[3] = &unk_27A6E2898;
    v20[4] = self;
    v21 = componentCopy;
    objc_msgSend_performCacheOperationUsingBlock_(self, v19, v20);

    goto LABEL_9;
  }

LABEL_5:

LABEL_9:
}

- (void)flushComponent:(id)component isDiscardingContent:(BOOL)content
{
  contentCopy = content;
  componentCopy = component;
  if (!contentCopy || (objc_msgSend_tsp_currentComponent(self->_componentCache, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_identifier(v9, v10, v11), v15 = objc_msgSend_identifier(componentCopy, v13, v14), v9, v12 != v15))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276AAED0C;
    v17[3] = &unk_27A6E2898;
    v17[4] = self;
    v18 = componentCopy;
    objc_msgSend_performCacheOperationUsingBlock_(self, v16, v17);
  }
}

- (void)didModifyFlushedComponent:(id)component forObject:(id)object
{
  componentCopy = component;
  objectCopy = object;
  objc_copyWeak(&to, &self->_context);
  readFlushedComponentQueue = self->_readFlushedComponentQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276AAEE04;
  v11[3] = &unk_27A6E68F0;
  objc_copyWeak(&v14, &to);
  v12 = componentCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = componentCopy;
  dispatch_async(readFlushedComponentQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&to);
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end