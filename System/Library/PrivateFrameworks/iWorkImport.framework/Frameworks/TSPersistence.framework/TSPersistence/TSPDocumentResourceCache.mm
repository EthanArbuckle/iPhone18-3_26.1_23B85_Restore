@interface TSPDocumentResourceCache
+ (id)sharedCache;
- (TSPDocumentResourceCache)initWithURL:(id)l;
- (TSPDocumentResourceCache)initWithURL:(id)l documentResourceRegistry:(id)registry;
- (id)fileURLForResourceInfo:(id)info;
- (id)fileURLInCacheForResourceInfo:(id)info;
- (void)purgeLegacyCaches;
@end

@implementation TSPDocumentResourceCache

+ (id)sharedCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276B00744;
  block[3] = &unk_27A6E4768;
  block[4] = self;
  if (qword_280A52B20 != -1)
  {
    dispatch_once(&qword_280A52B20, block);
  }

  v2 = qword_280A52B18;

  return v2;
}

- (TSPDocumentResourceCache)initWithURL:(id)l
{
  lCopy = l;
  v7 = objc_msgSend_sharedRegistry(TSPDocumentResourceRegistry, v5, v6);
  v9 = objc_msgSend_initWithURL_documentResourceRegistry_(self, v8, lCopy, v7);

  return v9;
}

- (TSPDocumentResourceCache)initWithURL:(id)l documentResourceRegistry:(id)registry
{
  registryCopy = registry;
  v11.receiver = self;
  v11.super_class = TSPDocumentResourceCache;
  v8 = [(TSPFileResourceCache *)&v11 initWithURL:l];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_documentResourceRegistry, registry);
  }

  return v9;
}

- (id)fileURLInCacheForResourceInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v8 = objc_msgSend_cacheURL(self, v6, v7);
    v11 = objc_msgSend_digestString(v5, v9, v10);
    v14 = objc_msgSend_fileExtension(v5, v12, v13);
    v16 = objc_msgSend_stringByAppendingPathExtension_(v11, v15, v14);
    v18 = objc_msgSend_URLByAppendingPathComponent_(v8, v17, v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)purgeLegacyCaches
{
  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  v4 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v13, v3, 13, 1, 0, 0, 0);
  v6 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v4, v5, @"com.apple.iWork.DocumentResources", 1);

  objc_msgSend_removeItemAtURL_error_(v13, v7, v6, 0);
  v9 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v13, v8, 14, 1, 0, 0, 0);
  v11 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v9, v10, @"Document Resources", 1);

  objc_msgSend_removeItemAtURL_error_(v13, v12, v11, 0);
}

- (id)fileURLForResourceInfo:(id)info
{
  v63[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v24 = 0;
    goto LABEL_13;
  }

  v8 = objc_msgSend_metadataDictionary(self->_documentResourceRegistry, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"ApplicationResources");
  v13 = objc_msgSend_digestString(v5, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);

  if (v15)
  {
    v18 = objc_msgSend_bundle(TSPResourceLocationProvider, v16, v17);
    v21 = objc_msgSend_resourceURL(v18, v19, v20);
    v23 = objc_msgSend_URLByAppendingPathComponent_(v21, v22, v15);
  }

  else
  {
    v23 = 0;
  }

  if (objc_msgSend_checkResourceIsReachableAndReturnError_(v23, v16, 0))
  {
    v27 = v23;
  }

  else
  {
    v28 = objc_msgSend_documentResourceAlternateFileURLProvider(TSPResourceLocationProvider, v25, v26);
    v24 = objc_msgSend_fileURLForResourceInfo_(v28, v29, v5);

    if (objc_msgSend_checkResourceIsReachableAndReturnError_(v24, v30, 0))
    {
      goto LABEL_12;
    }

    v62 = v24;
    v61 = objc_msgSend_bundle(TSPResourceLocationProvider, v31, v32);
    v33 = v5;
    v36 = objc_msgSend_digestString(v33, v34, v35);
    v39 = objc_msgSend_fileExtension(v33, v37, v38);
    v60 = v33;

    v40 = v36;
    v42 = objc_msgSend_substringToIndex_(v40, v41, 2);
    v44 = objc_msgSend_substringFromIndex_(v40, v43, 2);

    v46 = objc_msgSend_stringByAppendingPathComponent_(v42, v45, v44);
    v48 = objc_msgSend_stringByAppendingPathExtension_(v46, v47, v39);

    v49 = MEMORY[0x277CBEBC0];
    v52 = objc_msgSend_sharedSupportPath(v61, v50, v51);
    v63[0] = v52;
    v63[1] = @"DocumentResources";
    v63[2] = v48;
    v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v53, v63, 3);
    v24 = objc_msgSend_fileURLWithPathComponents_(v49, v55, v54);

    if (objc_msgSend_checkResourceIsReachableAndReturnError_(v24, v56, 0))
    {

      goto LABEL_12;
    }

    v27 = objc_msgSend_fileURLInCacheForResourceInfo_(self, v59, v60);
  }

  v24 = v27;
LABEL_12:

LABEL_13:
  v57 = *MEMORY[0x277D85DE8];

  return v24;
}

@end