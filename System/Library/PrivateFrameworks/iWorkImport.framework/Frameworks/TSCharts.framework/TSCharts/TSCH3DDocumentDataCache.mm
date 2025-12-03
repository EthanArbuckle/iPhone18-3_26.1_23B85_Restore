@interface TSCH3DDocumentDataCache
+ (TSCH3DDocumentDataCache)dataCacheWithDocumentRoot:(id)root;
+ (id)dataFromCache:(id)cache forFile:(id)file group:(id)group generateBlock:(id)block;
- (BOOL)debug_nukeDocumentCachePathForGroup:(id)group;
- (TSCH3DDocumentDataCache)init;
- (TSCH3DDocumentDataCache)initWithDocumentRoot:(id)root;
- (id)dataForFile:(id)file group:(id)group generateBlock:(id)block;
@end

@implementation TSCH3DDocumentDataCache

+ (id)dataFromCache:(id)cache forFile:(id)file group:(id)group generateBlock:(id)block
{
  cacheCopy = cache;
  fileCopy = file;
  groupCopy = group;
  blockCopy = block;
  v17 = blockCopy;
  if (cacheCopy)
  {
    objc_msgSend_dataForFile_group_generateBlock_(cacheCopy, v13, v14, v15, v16, fileCopy, groupCopy, blockCopy);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy);
  }
  v18 = ;

  return v18;
}

+ (TSCH3DDocumentDataCache)dataCacheWithDocumentRoot:(id)root
{
  rootCopy = root;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithDocumentRoot_(v5, v6, v7, v8, v9, rootCopy);

  return v10;
}

- (TSCH3DDocumentDataCache)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  v10.receiver = self;
  v10.super_class = TSCH3DDocumentDataCache;
  v6 = [(TSCH3DDocumentDataCache *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_documentRoot, root), !rootCopy))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (TSCH3DDocumentDataCache)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (BOOL)debug_nukeDocumentCachePathForGroup:(id)group
{
  selfCopy = self;
  v5 = self->_documentRoot;
  groupCopy = group;
  objc_sync_enter(v5);
  LOBYTE(selfCopy) = objc_msgSend_writeData_atDocumentCachePath_(selfCopy->_documentRoot, v7, v8, v9, v10, 0, groupCopy);

  objc_sync_exit(v5);
  return selfCopy;
}

- (id)dataForFile:(id)file group:(id)group generateBlock:(id)block
{
  blockCopy = block;
  v13 = objc_msgSend_stringByAppendingPathComponent_(group, v9, v10, v11, v12, file);
  v14 = self->_documentRoot;
  objc_sync_enter(v14);
  v19 = objc_msgSend_dataFromDocumentCachePath_(self->_documentRoot, v15, v16, v17, v18, v13);
  objc_sync_exit(v14);

  if (byte_280A46430 == 1)
  {
    NSLog(&cfstr_ExistingDocume.isa, self->_documentRoot, v13, v19);
  }

  if (!v19)
  {
    v21 = blockCopy[2](blockCopy);
    if (v21)
    {
      v22 = self->_documentRoot;
      objc_sync_enter(v22);
      objc_msgSend_writeData_atDocumentCachePath_(self->_documentRoot, v23, v24, v25, v26, v21, v13);
      objc_sync_exit(v22);

      v19 = v21;
      if (byte_280A46430 == 1)
      {
        NSLog(&cfstr_CreateCacheDoc.isa, self->_documentRoot, v13, v21);
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

@end