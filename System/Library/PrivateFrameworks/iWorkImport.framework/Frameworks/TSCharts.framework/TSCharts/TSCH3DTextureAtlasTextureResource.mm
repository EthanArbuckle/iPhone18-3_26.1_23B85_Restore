@interface TSCH3DTextureAtlasTextureResource
- (TSCH3DTextureAtlasTextureResource)initWithParent:(id)a3;
- (id)get;
@end

@implementation TSCH3DTextureAtlasTextureResource

- (TSCH3DTextureAtlasTextureResource)initWithParent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSCH3DTextureAtlasTextureResource;
  v5 = [(TSCH3DResource *)&v8 initWithCaching:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, v4);
  }

  return v6;
}

- (id)get
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DTextureAtlasTextureResource get]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureAtlas.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 248, 0, "invalid nil value for '%{public}s'", "_parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_loadWeakRetained(&self->_parent);
  v28 = objc_msgSend_getTextureDataBuffer(v23, v24, v25, v26, v27);

  return v28;
}

@end