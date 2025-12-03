@interface TSCHTextCacheMap
- (TSCHTextCacheMap)init;
- (id)textCacheForStyleProvidingSource:(id)source;
- (void)clear;
@end

@implementation TSCHTextCacheMap

- (TSCHTextCacheMap)init
{
  v12.receiver = self;
  v12.super_class = TSCHTextCacheMap;
  v2 = [(TSCHTextCacheMap *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSCHTextCache);
    mainCache = v2->_mainCache;
    v2->_mainCache = v3;

    v9 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v5, v6, v7, v8);
    map = v2->_map;
    v2->_map = v9;
  }

  return v2;
}

- (id)textCacheForStyleProvidingSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    objc_opt_class();
    v9 = objc_msgSend_objectForKey_(self->_map, v5, v6, v7, v8, sourceCopy);
    v10 = TSUCheckedDynamicCast();

    if (!v10)
    {
      v10 = objc_alloc_init(TSCHTextCache);
      objc_msgSend_setObject_forKey_(self->_map, v11, v12, v13, v14, v10, sourceCopy);
      if (!v10)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHTextCacheMap textCacheForStyleProvidingSource:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 339, 0, "invalid nil value for '%{public}s'", "textCache");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = self->_mainCache;
  }

  return v10;
}

- (void)clear
{
  objc_msgSend_clear(self->_mainCache, a2, v2, v3, v4);
  map = self->_map;

  objc_msgSend_removeAllObjects(map, v6, v7, v8, v9);
}

@end