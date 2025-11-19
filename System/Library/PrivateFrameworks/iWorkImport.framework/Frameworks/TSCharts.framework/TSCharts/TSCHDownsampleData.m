@interface TSCHDownsampleData
+ (id)dataWithIndexSet:(id)a3;
+ (id)dataWithIndexSet:(id)a3 indexToPositionMap:(id)a4 positionToIndexMap:(id)a5;
+ (id)emptyData;
- (TSCHDownsampleData)initWithIndexSet:(id)a3;
- (TSCHDownsampleData)initWithIndexSet:(id)a3 indexToPositionMap:(id)a4 positionToIndexMap:(id)a5;
- (unint64_t)indexAtPosition:(unint64_t)a3;
- (unint64_t)positionOfIndex:(unint64_t)a3;
@end

@implementation TSCHDownsampleData

+ (id)dataWithIndexSet:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithIndexSet_(v5, v6, v7, v8, v9, v4);

  return v10;
}

+ (id)dataWithIndexSet:(id)a3 indexToPositionMap:(id)a4 positionToIndexMap:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v16 = objc_msgSend_initWithIndexSet_indexToPositionMap_positionToIndexMap_(v11, v12, v13, v14, v15, v10, v9, v8);

  return v16;
}

+ (id)emptyData
{
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], a2, v2, v3, v4);
  v11 = objc_msgSend_dataWithIndexSet_(a1, v7, v8, v9, v10, v6);

  return v11;
}

- (TSCHDownsampleData)initWithIndexSet:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_dictionaryWithCapacity_(v4, v11, v12, v13, v14, v10);
  v16 = MEMORY[0x277CBEB38];
  v21 = objc_msgSend_count(v5, v17, v18, v19, v20);
  v26 = objc_msgSend_dictionaryWithCapacity_(v16, v22, v23, v24, v25, v21);
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_276239550;
  v42 = &unk_27A6B6E00;
  v43 = v15;
  v44 = v26;
  v27 = v26;
  v28 = v15;
  objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(v5, v29, v30, v31, v32, &v39);
  v37 = objc_msgSend_initWithIndexSet_indexToPositionMap_positionToIndexMap_(self, v33, v34, v35, v36, v5, v28, v27, v39, v40, v41, v42);

  return v37;
}

- (TSCHDownsampleData)initWithIndexSet:(id)a3 indexToPositionMap:(id)a4 positionToIndexMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = TSCHDownsampleData;
  v12 = [(TSCHDownsampleData *)&v31 init];
  if (v12)
  {
    v16 = objc_msgSend_copy(v8, v11, v13, v14, v15);
    indexSet = v12->_indexSet;
    v12->_indexSet = v16;

    v22 = objc_msgSend_copy(v9, v18, v19, v20, v21);
    indexToPositionMap = v12->_indexToPositionMap;
    v12->_indexToPositionMap = v22;

    v28 = objc_msgSend_copy(v10, v24, v25, v26, v27);
    positionToIndexMap = v12->_positionToIndexMap;
    v12->_positionToIndexMap = v28;
  }

  return v12;
}

- (unint64_t)indexAtPosition:(unint64_t)a3
{
  v7 = objc_msgSend_positionToIndexMap(self, a2, v3, v4, v5);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v9, v10, v11, a3);
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

- (unint64_t)positionOfIndex:(unint64_t)a3
{
  v7 = objc_msgSend_indexToPositionMap(self, a2, v3, v4, v5);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v9, v10, v11, a3);
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