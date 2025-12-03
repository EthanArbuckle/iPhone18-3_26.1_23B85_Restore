@interface TSPFileResourceCache
+ (id)cacheDirectoryURLWithSignature:(id)signature sharedGroupContainer:(BOOL)container;
- (BOOL)cachedResourceExistsForInfo:(id)info;
- (NSString)description;
- (TSPFileResourceCache)initWithURL:(id)l;
- (id)fileURLInCacheForResourceInfo:(id)info;
- (void)cacheResourceAtURL:(id)l forInfo:(id)info copy:(BOOL)copy completionQueue:(id)queue completionHandler:(id)handler;
- (void)purge;
@end

@implementation TSPFileResourceCache

+ (id)cacheDirectoryURLWithSignature:(id)signature sharedGroupContainer:(BOOL)container
{
  containerCopy = container;
  signatureCopy = signature;
  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
  v11 = v8;
  if (containerCopy)
  {
    v12 = objc_msgSend_tsu_containerURLForDefaultSecurityApplicationGroupIdentifier(v8, v9, v10);
    v14 = objc_msgSend_URLByAppendingPathComponent_(v12, v13, @"Library");
    v16 = objc_msgSend_URLByAppendingPathComponent_(v14, v15, @"Caches");

    if (v16)
    {
      goto LABEL_12;
    }

    if (qword_280A530B0 != -1)
    {
      sub_276BD6A74();
    }

    v18 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v11, v17, 13, 1, 0, 1, 0);
    v19 = v18;
    if (!v18)
    {
      v31 = MEMORY[0x277CBEBC0];
      v32 = NSTemporaryDirectory();
      v16 = objc_msgSend_tsu_fileURLWithPath_(v31, v33, v32);

      goto LABEL_11;
    }

    v20 = v18;
  }

  else
  {
    v21 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v8, v9, 13, 1, 0, 1, 0);
    v12 = v21;
    if (v21)
    {
      v12 = v21;
      v16 = v12;
      goto LABEL_12;
    }

    v22 = MEMORY[0x277CBEBC0];
    v19 = NSTemporaryDirectory();
    v20 = objc_msgSend_tsu_fileURLWithPath_(v22, v23, v19);
  }

  v16 = v20;
LABEL_11:

LABEL_12:
  if (!v16)
  {
    if (qword_280A530B0 != -1)
    {
      sub_276BD6A88();
    }

    v25 = MEMORY[0x277CBEBC0];
    v26 = NSTemporaryDirectory();
    v16 = objc_msgSend_tsu_fileURLWithPath_(v25, v27, v26);
  }

  v28 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v16, v24, signatureCopy, 1);
  v34 = 0;
  if ((objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v11, v29, v28, 1, 0, &v34) & 1) == 0 && qword_280A530B0 != -1)
  {
    sub_276BD6A9C();
  }

  return v28;
}

- (TSPFileResourceCache)initWithURL:(id)l
{
  lCopy = l;
  if ((objc_msgSend_isFileURL(lCopy, v6, v7) & 1) == 0)
  {
    sub_276BD6AC4();
  }

  v20.receiver = self;
  v20.super_class = TSPFileResourceCache;
  v8 = [(TSPFileResourceCache *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cacheURL, l);
    v10 = objc_opt_new();
    ioOperationQueue = v9->_ioOperationQueue;
    v9->_ioOperationQueue = v10;

    objc_msgSend_setMaxConcurrentOperationCount_(v9->_ioOperationQueue, v12, 1);
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v17 = objc_msgSend_stringWithFormat_(v13, v16, @"%@.IO", v15);
    objc_msgSend_setName_(v9->_ioOperationQueue, v18, v17);
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSPFileResourceCache;
  v4 = [(TSPFileResourceCache *)&v11 description];
  v7 = objc_msgSend_cacheURL(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ - cacheURL: (%@)", v4, v7);

  return v9;
}

- (id)fileURLInCacheForResourceInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_cacheURL(self, v5, v6);
  v10 = objc_msgSend_resourceIdentifier(infoCopy, v8, v9);

  v12 = objc_msgSend_URLByAppendingPathComponent_(v7, v11, v10);

  return v12;
}

- (BOOL)cachedResourceExistsForInfo:(id)info
{
  v3 = objc_msgSend_fileURLForResourceInfo_(self, a2, info);
  v5 = objc_msgSend_checkResourceIsReachableAndReturnError_(v3, v4, 0);

  return v5;
}

- (void)cacheResourceAtURL:(id)l forInfo:(id)info copy:(BOOL)copy completionQueue:(id)queue completionHandler:(id)handler
{
  v40[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  infoCopy = info;
  queueCopy = queue;
  handlerCopy = handler;
  v18 = objc_msgSend_fileURLInCacheForResourceInfo_(self, v16, infoCopy);
  if (v18)
  {
    copyCopy = copy;
    v19 = objc_msgSend_readingIntentWithURL_options_(MEMORY[0x277CCA9E0], v17, lCopy, 1);
    v21 = objc_msgSend_writingIntentWithURL_options_(MEMORY[0x277CCA9E0], v20, v18, 8);
    v32 = lCopy;
    if (qword_280A530B0 != -1)
    {
      sub_276BD6BA0();
    }

    v22 = objc_alloc(MEMORY[0x277CCA9E8]);
    v24 = objc_msgSend_initWithFilePresenter_(v22, v23, 0);
    v40[0] = v19;
    v40[1] = v21;
    v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v40, 2);
    ioOperationQueue = self->_ioOperationQueue;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_276AE8930;
    v35[3] = &unk_27A6E70D8;
    v35[4] = self;
    v35[5] = v19;
    v35[6] = v21;
    v36 = infoCopy;
    v39 = copyCopy;
    v38 = handlerCopy;
    v37 = queueCopy;
    objc_msgSend_tsp_coordinateAccessWithIntents_queue_byAccessor_(v24, v28, v26, ioOperationQueue, v35);

    lCopy = v32;
  }

  else
  {
    if (qword_280A530B0 == -1)
    {
      if (!handlerCopy)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_276BD6BB4();
      if (!handlerCopy)
      {
        goto LABEL_5;
      }
    }

    if (queueCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276AE8BA0;
      block[3] = &unk_27A6E4E90;
      v34 = handlerCopy;
      dispatch_async(queueCopy, block);
    }

    else
    {
      v30 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, *MEMORY[0x277CCA738], -1002, 0);
      (*(handlerCopy + 2))(handlerCopy, 0, v30);
    }
  }

LABEL_5:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)purge
{
  v33 = *MEMORY[0x277D85DE8];
  if (qword_280A530B0 != -1)
  {
    sub_276BD6BDC();
  }

  v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  v7 = objc_msgSend_cacheURL(self, v5, v6);
  v9 = objc_msgSend_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_(v4, v8, v7, 0, 1, 0);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v9;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v27, v32, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = objc_msgSend_writingIntentWithURL_options_(MEMORY[0x277CCA9E0], v12, *(*(&v27 + 1) + 8 * i), 1);
        v17 = objc_alloc(MEMORY[0x277CCA9E8]);
        v19 = objc_msgSend_initWithFilePresenter_(v17, v18, 0);
        v31 = v16;
        v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, &v31, 1);
        ioOperationQueue = self->_ioOperationQueue;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = sub_276AE8E88;
        v26[3] = &unk_27A6E7100;
        v26[4] = v16;
        v26[5] = v4;
        v26[6] = self;
        objc_msgSend_tsp_coordinateAccessWithIntents_queue_byAccessor_(v19, v23, v21, ioOperationQueue, v26);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v27, v32, 16);
    }

    while (v13);
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end