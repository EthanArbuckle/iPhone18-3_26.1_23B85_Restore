@interface TSCHLegendModelCacheMap
- (TSCHLegendModelCacheMap)initWithChartModel:(id)model textEditingSelectionPair:(id)pair;
- (id)mainCache;
- (id)newLegendModelCacheForStyleProvidingSource:(id)source;
- (id)textCacheForStyleProvidingSource:(id)source;
@end

@implementation TSCHLegendModelCacheMap

- (TSCHLegendModelCacheMap)initWithChartModel:(id)model textEditingSelectionPair:(id)pair
{
  modelCopy = model;
  pairCopy = pair;
  v23.receiver = self;
  v23.super_class = TSCHLegendModelCacheMap;
  v8 = [(TSCHLegendModelCacheMap *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_model, modelCopy);
    v14 = objc_msgSend_copy(pairCopy, v10, v11, v12, v13);
    selectionPair = v9->_selectionPair;
    v9->_selectionPair = v14;

    v20 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v16, v17, v18, v19);
    map = v9->_map;
    v9->_map = v20;
  }

  return v9;
}

- (id)newLegendModelCacheForStyleProvidingSource:(id)source
{
  sourceCopy = source;
  v5 = [TSCHLegendModelCache alloc];
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v11 = objc_msgSend_initWithChartModel_textEditingSelectionPair_styleProvidingSource_(v5, v7, v8, v9, v10, WeakRetained, self->_selectionPair, sourceCopy);

  return v11;
}

- (id)mainCache
{
  mainCache = self->_mainCache;
  if (!mainCache)
  {
    v7 = objc_msgSend_newLegendModelCacheForStyleProvidingSource_(self, a2, v2, v3, v4, 0);
    v8 = self->_mainCache;
    self->_mainCache = v7;

    mainCache = self->_mainCache;
  }

  return mainCache;
}

- (id)textCacheForStyleProvidingSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    objc_opt_class();
    v13 = objc_msgSend_objectForKey_(self->_map, v9, v10, v11, v12, sourceCopy);
    v14 = TSUCheckedDynamicCast();

    if (!v14)
    {
      v14 = objc_msgSend_newLegendModelCacheForStyleProvidingSource_(self, v15, v16, v17, v18, sourceCopy);
      objc_msgSend_setObject_forKey_(self->_map, v19, v20, v21, v22, v14, sourceCopy);
      if (!v14)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCHLegendModelCacheMap textCacheForStyleProvidingSource:]");
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 83, 0, "invalid nil value for '%{public}s'", "legendModelCache");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = objc_msgSend_mainCache(self, v4, v6, v7, v8);
  }

  return v14;
}

@end