@interface TSPDocumentResourceRequest
- (NSProgress)progress;
- (NSString)description;
- (TSPDocumentResourceRequest)init;
- (TSPDocumentResourceRequest)initWithDocumentResourceInfos:(id)infos documentResourceCache:(id)cache;
- (TSPDocumentResourceRequest)initWithDocumentResourceInfos:(id)infos tags:(id)tags documentResourceCache:(id)cache;
- (id)fileURLForResourceInfo:(id)info;
- (id)remoteURLForDocumentResourceInfo:(id)info;
- (unint64_t)estimatedDownloadSize;
- (void)conditionallyBeginAccessingResourcesWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)performResourceAccessAsynchronouslyUsingQueue:(id)queue block:(id)block;
- (void)performResourceAccessUsingQueue:(id)queue block:(id)block;
@end

@implementation TSPDocumentResourceRequest

- (TSPDocumentResourceRequest)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentResourceRequest init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRequest.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 31, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPDocumentResourceRequest init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPDocumentResourceRequest)initWithDocumentResourceInfos:(id)infos documentResourceCache:(id)cache
{
  v6 = MEMORY[0x277CBEB98];
  cacheCopy = cache;
  infosCopy = infos;
  v11 = objc_msgSend_set(v6, v9, v10);
  v13 = objc_msgSend_initWithDocumentResourceInfos_tags_documentResourceCache_(self, v12, infosCopy, v11, cacheCopy);

  return v13;
}

- (TSPDocumentResourceRequest)initWithDocumentResourceInfos:(id)infos tags:(id)tags documentResourceCache:(id)cache
{
  v53 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  tagsCopy = tags;
  cacheCopy = cache;
  if (objc_msgSend_count(infosCopy, v11, v12))
  {
    v51.receiver = self;
    v51.super_class = TSPDocumentResourceRequest;
    v13 = [(TSPDocumentResourceRequest *)&v51 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_documentResourceCache, cache);
      v17 = objc_msgSend_copy(infosCopy, v15, v16);
      documentResourceInfos = v14->_documentResourceInfos;
      v14->_documentResourceInfos = v17;

      v21 = objc_msgSend_mutableCopy(tagsCopy, v19, v20);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v22 = infosCopy;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v47, v52, 16);
      if (v24)
      {
        v27 = v24;
        v28 = *v48;
        do
        {
          v29 = 0;
          do
          {
            if (*v48 != v28)
            {
              objc_enumerationMutation(v22);
            }

            v30 = objc_msgSend_digestString(*(*(&v47 + 1) + 8 * v29), v25, v26, v47);
            objc_msgSend_addObject_(v21, v31, v30);

            ++v29;
          }

          while (v27 != v29);
          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v47, v52, 16);
        }

        while (v27);
      }

      v34 = objc_msgSend_copy(v21, v32, v33);
      tags = v14->_tags;
      v14->_tags = v34;

      v36 = objc_opt_new();
      observerNotifier = v14->_observerNotifier;
      v14->_observerNotifier = v36;

      v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v39 = dispatch_queue_create("TSPDocumentResourceRequest.Access", v38);
      accessQueue = v14->_accessQueue;
      v14->_accessQueue = v39;

      v42 = objc_msgSend_newBackingResourceRequestForDocumentResourceInfos_documentResourceCache_(v14, v41, v22, cacheCopy);
      accessQueue_backingResourceRequest = v14->_accessQueue_backingResourceRequest;
      v14->_accessQueue_backingResourceRequest = v42;
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPDocumentResourceRequest;
  v4 = [(TSPDocumentResourceRequest *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ - documentResourceCache: (%@), documentResourceInfos: (%@)", v4, self->_documentResourceCache, self->_documentResourceInfos);

  return v6;
}

- (id)remoteURLForDocumentResourceInfo:(id)info
{
  infoCopy = info;
  v6 = objc_msgSend_digestString(infoCopy, v4, v5);
  v9 = objc_msgSend_fileExtension(infoCopy, v7, v8);

  v10 = v6;
  v12 = objc_msgSend_substringToIndex_(v10, v11, 2);
  v14 = objc_msgSend_substringFromIndex_(v10, v13, 2);

  v16 = objc_msgSend_stringByAppendingPathComponent_(v12, v15, v14);
  v18 = objc_msgSend_stringByAppendingPathExtension_(v16, v17, v9);

  v21 = objc_msgSend_sharedDefaults(MEMORY[0x277D81300], v19, v20);
  v23 = objc_msgSend_URLForKey_(v21, v22, @"DownloadableContentURL");

  v25 = objc_msgSend_URLByAppendingPathComponent_(v23, v24, @"document-resources");
  v27 = objc_msgSend_URLByAppendingPathComponent_(v25, v26, v18);

  return v27;
}

- (NSProgress)progress
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_276A865AC;
  v13 = sub_276A865BC;
  v14 = 0;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A865C4;
  v8[3] = &unk_27A6E3288;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(accessQueue, v8);
  v4 = v10[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_msgSend_discreteProgressWithTotalUnitCount_(MEMORY[0x277CCAC48], v3, -1);
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)fileURLForResourceInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && objc_msgSend_containsObject_(self->_documentResourceInfos, v6, v5))
  {
    v8 = objc_msgSend_fileURLForResourceInfo_(self->_documentResourceCache, v7, v5);
    if (objc_msgSend_checkResourceIsReachableAndReturnError_(v8, v9, 0))
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)conditionallyBeginAccessingResourcesWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_documentResourceInfos;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_fileURLForResourceInfo_(self->_documentResourceCache, v11, *(*(&v23 + 1) + 8 * v14));
        v17 = objc_msgSend_checkResourceIsReachableAndReturnError_(v15, v16, 0);

        if (!v17)
        {
          v18 = 0;
          goto LABEL_11;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v27, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  if (handlerCopy)
  {
    if (queueCopy)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_276A86890;
      v20[3] = &unk_27A6E5C68;
      v21 = handlerCopy;
      v22 = v18;
      dispatch_async(queueCopy, v20);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, v18);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)performResourceAccessUsingQueue:(id)queue block:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A8694C;
  v9[3] = &unk_27A6E5C90;
  v10 = blockCopy;
  v7 = blockCopy;
  objc_msgSend_performResourceAccessAsynchronouslyUsingQueue_block_(self, v8, queue, v9);
}

- (void)performResourceAccessAsynchronouslyUsingQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (UnsafePointer != -1)
  {
    sub_276BD5CC4();
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = dispatch_get_global_queue(0, 0);
    goto LABEL_6;
  }

  if (!queueCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = queueCopy;
LABEL_6:
  v9 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A86BA0;
  block[3] = &unk_27A6E32B0;
  block[4] = self;
  dispatch_async(v8, block);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A86C20;
  aBlock[3] = &unk_27A6E5CB8;
  aBlock[4] = self;
  v15 = blockCopy;
  v10 = blockCopy;
  v11 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276A86CF0;
  v13[3] = &unk_27A6E5CE0;
  v13[4] = v9;
  v13[5] = v11;
  objc_msgSend_conditionallyBeginAccessingResourcesWithCompletionQueue_completionHandler_(self, v12, 0, v13);
}

- (unint64_t)estimatedDownloadSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A86E98;
  v5[3] = &unk_27A6E3288;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end