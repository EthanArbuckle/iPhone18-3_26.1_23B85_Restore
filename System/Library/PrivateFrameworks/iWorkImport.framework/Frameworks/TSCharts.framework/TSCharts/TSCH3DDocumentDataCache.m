@interface TSCH3DDocumentDataCache
+ (TSCH3DDocumentDataCache)dataCacheWithDocumentRoot:(id)a3;
+ (id)dataFromCache:(id)a3 forFile:(id)a4 group:(id)a5 generateBlock:(id)a6;
- (BOOL)debug_nukeDocumentCachePathForGroup:(id)a3;
- (TSCH3DDocumentDataCache)init;
- (TSCH3DDocumentDataCache)initWithDocumentRoot:(id)a3;
- (id)dataForFile:(id)a3 group:(id)a4 generateBlock:(id)a5;
@end

@implementation TSCH3DDocumentDataCache

+ (id)dataFromCache:(id)a3 forFile:(id)a4 group:(id)a5 generateBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = v12;
  if (v9)
  {
    objc_msgSend_dataForFile_group_generateBlock_(v9, v13, v14, v15, v16, v10, v11, v12);
  }

  else
  {
    (*(v12 + 2))(v12);
  }
  v18 = ;

  return v18;
}

+ (TSCH3DDocumentDataCache)dataCacheWithDocumentRoot:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithDocumentRoot_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DDocumentDataCache)initWithDocumentRoot:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TSCH3DDocumentDataCache;
  v6 = [(TSCH3DDocumentDataCache *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_documentRoot, a3), !v5))
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

- (BOOL)debug_nukeDocumentCachePathForGroup:(id)a3
{
  v4 = self;
  v5 = self->_documentRoot;
  v6 = a3;
  objc_sync_enter(v5);
  LOBYTE(v4) = objc_msgSend_writeData_atDocumentCachePath_(v4->_documentRoot, v7, v8, v9, v10, 0, v6);

  objc_sync_exit(v5);
  return v4;
}

- (id)dataForFile:(id)a3 group:(id)a4 generateBlock:(id)a5
{
  v8 = a5;
  v13 = objc_msgSend_stringByAppendingPathComponent_(a4, v9, v10, v11, v12, a3);
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
    v21 = v8[2](v8);
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