@interface TSCHDownsampleData
+ (id)dataWithIndexSet:(id)set;
+ (id)dataWithIndexSet:(id)set indexToPositionMap:(id)map positionToIndexMap:(id)indexMap;
+ (id)emptyData;
- (TSCHDownsampleData)initWithIndexSet:(id)set;
- (TSCHDownsampleData)initWithIndexSet:(id)set indexToPositionMap:(id)map positionToIndexMap:(id)indexMap;
- (unint64_t)indexAtPosition:(unint64_t)position;
- (unint64_t)positionOfIndex:(unint64_t)index;
@end

@implementation TSCHDownsampleData

+ (id)dataWithIndexSet:(id)set
{
  setCopy = set;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithIndexSet_(v5, v6, v7, v8, v9, setCopy);

  return v10;
}

+ (id)dataWithIndexSet:(id)set indexToPositionMap:(id)map positionToIndexMap:(id)indexMap
{
  indexMapCopy = indexMap;
  mapCopy = map;
  setCopy = set;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithIndexSet_indexToPositionMap_positionToIndexMap_(v11, v12, v13, v14, v15, setCopy, mapCopy, indexMapCopy);

  return v16;
}

+ (id)emptyData
{
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], a2, v2, v3, v4);
  v11 = objc_msgSend_dataWithIndexSet_(self, v7, v8, v9, v10, v6);

  return v11;
}

- (TSCHDownsampleData)initWithIndexSet:(id)set
{
  v4 = MEMORY[0x277CBEB38];
  setCopy = set;
  v10 = objc_msgSend_count(setCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_dictionaryWithCapacity_(v4, v11, v12, v13, v14, v10);
  v16 = MEMORY[0x277CBEB38];
  v21 = objc_msgSend_count(setCopy, v17, v18, v19, v20);
  v26 = objc_msgSend_dictionaryWithCapacity_(v16, v22, v23, v24, v25, v21);
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_276239550;
  v42 = &unk_27A6B6E00;
  v43 = v15;
  v44 = v26;
  v27 = v26;
  v28 = v15;
  objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(setCopy, v29, v30, v31, v32, &v39);
  v37 = objc_msgSend_initWithIndexSet_indexToPositionMap_positionToIndexMap_(self, v33, v34, v35, v36, setCopy, v28, v27, v39, v40, v41, v42);

  return v37;
}

- (TSCHDownsampleData)initWithIndexSet:(id)set indexToPositionMap:(id)map positionToIndexMap:(id)indexMap
{
  setCopy = set;
  mapCopy = map;
  indexMapCopy = indexMap;
  v31.receiver = self;
  v31.super_class = TSCHDownsampleData;
  v12 = [(TSCHDownsampleData *)&v31 init];
  if (v12)
  {
    v16 = objc_msgSend_copy(setCopy, v11, v13, v14, v15);
    indexSet = v12->_indexSet;
    v12->_indexSet = v16;

    v22 = objc_msgSend_copy(mapCopy, v18, v19, v20, v21);
    indexToPositionMap = v12->_indexToPositionMap;
    v12->_indexToPositionMap = v22;

    v28 = objc_msgSend_copy(indexMapCopy, v24, v25, v26, v27);
    positionToIndexMap = v12->_positionToIndexMap;
    v12->_positionToIndexMap = v28;
  }

  return v12;
}

- (unint64_t)indexAtPosition:(unint64_t)position
{
  v7 = objc_msgSend_positionToIndexMap(self, a2, v3, v4, v5);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v9, v10, v11, position);
  v17 = objc_msgSend_objectForKeyedSubscript_(v7, v13, v14, v15, v16, v12);

  if (v17)
  {
    v22 = objc_msgSend_unsignedIntegerValue(v17, v18, v19, v20, v21);
  }

  else
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHDownsampleData indexAtPosition:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampleData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 56, 0, "invalid nil value for 'number'");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v34, v35, v36, v37);
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v22;
}

- (unint64_t)positionOfIndex:(unint64_t)index
{
  v7 = objc_msgSend_indexToPositionMap(self, a2, v3, v4, v5);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v9, v10, v11, index);
  v17 = objc_msgSend_objectForKeyedSubscript_(v7, v13, v14, v15, v16, v12);

  if (v17)
  {
    v22 = objc_msgSend_unsignedIntegerValue(v17, v18, v19, v20, v21);
  }

  else
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHDownsampleData positionOfIndex:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampleData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 62, 0, "invalid nil value for 'number'");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v34, v35, v36, v37);
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v22;
}

@end