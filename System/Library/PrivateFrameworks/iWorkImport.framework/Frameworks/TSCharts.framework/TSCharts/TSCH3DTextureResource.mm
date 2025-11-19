@interface TSCH3DTextureResource
- (BOOL)canLoadCachedFullMipmapBufferForDataCache:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSCH3DTextureResource)initWithParent:(id)a3;
- (id)databufferForDataCache:(id)a3;
- (id)get;
- (id)optimizedMipmapBuffer;
- (id)p_parent;
- (id)representativeColorBuffer;
- (unint64_t)hash;
@end

@implementation TSCH3DTextureResource

- (TSCH3DTextureResource)initWithParent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DTextureResource;
  v5 = [(TSCH3DResource *)&v9 initWithCaching:0];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D812A0]);
    cachedHashOnce = v5->_cachedHashOnce;
    v5->_cachedHashOnce = v6;

    objc_storeWeak(&v5->_parent, v4);
  }

  return v5;
}

- (id)p_parent
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_parent);
  objc_sync_exit(v2);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    if (v6)
    {
      v10 = objc_msgSend_p_parent(self, v5, v7, v8, v9);
      v15 = objc_msgSend_p_parent(v6, v11, v12, v13, v14);
      isEqual = objc_msgSend_isEqual_(v10, v16, v17, v18, v19, v15);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  cachedHashOnce = self->_cachedHashOnce;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2761D5948;
  v11[3] = &unk_27A6B6888;
  v11[4] = self;
  objc_msgSend_performBlockOnce_(cachedHashOnce, a2, COERCE_DOUBLE(3221225472), v2, v3, v11);
  return objc_msgSend_unsignedIntegerValue(self->_cachedHash, v6, v7, v8, v9);
}

- (id)get
{
  v7 = objc_msgSend_p_parent(self, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DTextureResource get]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 114, 0, "invalid nil value for '%{public}s'", "parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = MEMORY[0x277D81150];
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DTextureResource get]");
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 115, 0, "using uncached databuffer generation path");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  v45 = objc_msgSend_databufferForDataCache_(self, v41, v42, v43, v44, 0);

  return v45;
}

- (BOOL)canLoadCachedFullMipmapBufferForDataCache:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_p_parent(self, v5, v6, v7, v8);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DTextureResource canLoadCachedFullMipmapBufferForDataCache:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 121, 0, "invalid nil value for '%{public}s'", "parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  canLoadCachedFullMipmapBufferForDataCache = objc_msgSend_canLoadCachedFullMipmapBufferForDataCache_(v10, v9, v11, v12, v13, v4);

  return canLoadCachedFullMipmapBufferForDataCache;
}

- (id)representativeColorBuffer
{
  v6 = objc_msgSend_p_parent(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DTextureResource representativeColorBuffer]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 127, 0, "invalid nil value for '%{public}s'", "parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_representativeColorBuffer(v6, v5, v7, v8, v9);

  return v25;
}

- (id)optimizedMipmapBuffer
{
  v6 = objc_msgSend_p_parent(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DTextureResource optimizedMipmapBuffer]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 133, 0, "invalid nil value for '%{public}s'", "parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_optimizedMipmapBuffer(v6, v5, v7, v8, v9);

  return v25;
}

- (id)databufferForDataCache:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_p_parent(self, v5, v6, v7, v8);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DTextureResource databufferForDataCache:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexture.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 139, 0, "invalid nil value for '%{public}s'", "parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_databufferForDataCache_(v10, v9, v11, v12, v13, v4);

  return v29;
}

@end