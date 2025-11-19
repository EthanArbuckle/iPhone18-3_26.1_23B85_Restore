@interface TSPResourceContext
- (NSSet)resourceRequests;
- (TSPResourceContext)init;
- (TSPResourceContext)initWithDocumentResourceCache:(id)a3 documentResourceRegistry:(id)a4 sageDocumentResourceLegacyRegistry:(id)a5 tangierDocumentResourceLegacyRegistry:(id)a6;
- (id)newDataStorageForDocumentResourceInfo:(id)a3 createResourceRequestIfNeeded:(BOOL)a4 error:(id *)a5;
- (id)performResourceAccessUsingQueue:(id)a3 block:(id)a4;
- (void)accessQueue_addResourceRequest:(id)a3;
- (void)addResourceRequests:(id)a3;
- (void)conditionallyBeginAccessingResourcesWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)removeResourceRequests:(id)a3;
@end

@implementation TSPResourceContext

- (TSPResourceContext)init
{
  v4 = objc_msgSend_sharedCache(TSPDocumentResourceCache, a2, v2);
  v7 = objc_msgSend_sharedRegistry(TSPDocumentResourceRegistry, v5, v6);
  v10 = objc_msgSend_sharedSageRegistry(TSPDocumentResourceLegacyRegistry, v8, v9);
  v13 = objc_msgSend_sharedTangierRegistry(TSPDocumentResourceLegacyRegistry, v11, v12);
  v15 = objc_msgSend_initWithDocumentResourceCache_documentResourceRegistry_sageDocumentResourceLegacyRegistry_tangierDocumentResourceLegacyRegistry_(self, v14, v4, v7, v10, v13);

  return v15;
}

- (TSPResourceContext)initWithDocumentResourceCache:(id)a3 documentResourceRegistry:(id)a4 sageDocumentResourceLegacyRegistry:(id)a5 tangierDocumentResourceLegacyRegistry:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = TSPResourceContext;
  v15 = [(TSPResourceContext *)&v23 init];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("TSPResourceContext.Access", v16);
    accessQueue = v15->_accessQueue;
    v15->_accessQueue = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("TSPResourceContext.ProgressAggregation", v19);
    progressAggregationQueue = v15->_progressAggregationQueue;
    v15->_progressAggregationQueue = v20;

    objc_storeStrong(&v15->_documentResourceCache, a3);
    objc_storeStrong(&v15->_documentResourceRegistry, a4);
    objc_storeStrong(&v15->_sageDocumentResourceLegacyRegistry, a5);
    objc_storeStrong(&v15->_tangierDocumentResourceLegacyRegistry, a6);
  }

  return v15;
}

- (NSSet)resourceRequests
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_276AED57C;
  v12 = sub_276AED58C;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AED594;
  v7[3] = &unk_27A6E28C0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue, v7);
  v5 = objc_msgSend_copy(v9[5], v3, v4);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)addResourceRequests:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_count(v4, v5, v6);
  if (v7)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AED6A4;
    block[3] = &unk_27A6E2C50;
    block[4] = self;
    v11 = v7;
    v10 = v4;
    dispatch_async(accessQueue, block);
  }
}

- (void)accessQueue_addResourceRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_tags(v4, v5, v6);
  if (!objc_msgSend_count(v7, v8, v9))
  {
    goto LABEL_12;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v7;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
  if (!v15)
  {

    goto LABEL_14;
  }

  v16 = 0;
  v17 = *v25;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = objc_msgSend_hash(*(*(&v24 + 1) + 8 * i), v13, v14, v24);
      v21 = objc_msgSend_objectForKey_(self->_accessQueue_resourceRequestTable, v20, v19);
      v22 = v21 == 0;

      if (v22)
      {
        objc_msgSend_setObject_forKey_(self->_accessQueue_resourceRequestTable, v13, v4, v19);
        v16 = 1;
      }
    }

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v24, v28, 16);
  }

  while (v15);

  if (v16)
  {
LABEL_12:
    objc_msgSend_addObject_(self->_accessQueue_resourceRequests, v10, v4);
  }

LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeResourceRequests:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    accessQueue = self->_accessQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_276AEDAA4;
    v8[3] = &unk_27A6E2898;
    v9 = v4;
    v10 = self;
    dispatch_async(accessQueue, v8);
  }
}

- (void)conditionallyBeginAccessingResourcesWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AEDCC0;
  block[3] = &unk_27A6E55B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

- (id)performResourceAccessUsingQueue:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_discreteProgressWithTotalUnitCount_(MEMORY[0x277CCAC48], v8, -1);
  objc_msgSend_setKind_(v9, v10, *MEMORY[0x277CCA648]);
  objc_msgSend_setFileOperationKind_(v9, v11, *MEMORY[0x277CCA620]);
  accessQueue = self->_accessQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_276AEE170;
  v18[3] = &unk_27A6E39F8;
  v19 = v6;
  v20 = self;
  v21 = v9;
  v22 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(accessQueue, v18);
  v15 = v22;
  v16 = v9;

  return v9;
}

- (id)newDataStorageForDocumentResourceInfo:(id)a3 createResourceRequestIfNeeded:(BOOL)a4 error:(id *)a5
{
  v49[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_276AED57C;
  v44 = sub_276AED58C;
  v45 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AEF2EC;
  block[3] = &unk_27A6E4158;
  v10 = v8;
  v37 = self;
  v38 = &v40;
  v36 = v10;
  v39 = a4;
  dispatch_sync(accessQueue, block);
  v12 = v41[5];
  if (v12)
  {
    if (objc_msgSend_conformsToProtocol_(v12, v11, &unk_288603918) && (objc_msgSend_localStrategyForDocumentResourceInfo_(v41[5], v13, v10) & 3) != 1 && (objc_msgSend_conformsToProtocol_(v41[5], v13, &unk_28860ABD8) & 1) != 0)
    {
      v14 = off_27A6E20F0;
LABEL_8:
      v15 = objc_alloc(*v14);
      v17 = objc_msgSend_initWithResourceRequest_documentResourceInfo_(v15, v16, v41[5], v10);
      v18 = 0;
      goto LABEL_16;
    }

    if (objc_msgSend_conformsToProtocol_(v41[5], v13, &unk_2885FA5B8))
    {
      v14 = off_27A6E20F8;
      goto LABEL_8;
    }

    v24 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA470];
    v25 = MEMORY[0x277CCACA8];
    v26 = v41[5];
    v27 = objc_opt_class();
    v20 = NSStringFromClass(v27);
    v22 = objc_msgSend_localizedStringWithFormat_(v25, v28, @"Unsupported resource request for %@: %@", v10, v20);
    v49[0] = v22;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v49, &v48, 1);
    v18 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(v24, v31, v30);
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA470];
    v20 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v11, @"Resource request not found for %@", v10);
    v47 = v20;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v47, &v46, 1);
    v18 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(v19, v23, v22);
  }

  v17 = 0;
  if (a5 && v18)
  {
    if (*a5)
    {
      v17 = 0;
    }

    else
    {
      v32 = v18;
      v17 = 0;
      *a5 = v18;
    }
  }

LABEL_16:

  _Block_object_dispose(&v40, 8);
  v33 = *MEMORY[0x277D85DE8];
  return v17;
}

@end