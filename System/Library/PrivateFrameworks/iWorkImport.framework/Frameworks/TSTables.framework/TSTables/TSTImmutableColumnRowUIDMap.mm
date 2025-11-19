@interface TSTImmutableColumnRowUIDMap
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)a3;
- (TSKUIDStruct)firstUidFromUIDSet:(id)a3 isRows:(BOOL)a4;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)a3;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)a3;
- (TSTImmutableColumnRowUIDMap)initWithColumnRowUIDMap:(id)a3;
- (TSUCellRect)cellRangeForUIDRange:(const void *)a3;
- (TSUCellRect)range;
- (_NSRange)columnRangeForUIDs:(const void *)a3;
- (_NSRange)rowRangeForUIDs:(const void *)a3;
- (id)UIDSetForIndexes:(id)a3 isRows:(BOOL)a4;
- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4;
- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4 notFoundUIDs:(id)a5;
@end

@implementation TSTImmutableColumnRowUIDMap

- (TSTImmutableColumnRowUIDMap)initWithColumnRowUIDMap:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = TSTImmutableColumnRowUIDMap;
  v9 = [(TSTImmutableColumnRowUIDMap *)&v40 init];
  if (v9)
  {
    v10 = objc_msgSend_context(v4, v5, v6, v7, v8);
    v14 = objc_msgSend_copyWithContext_(v4, v11, v10, v12, v13);
    originalMap = v9->_originalMap;
    v9->_originalMap = v14;

    v20 = objc_msgSend_versionCounter(v9->_originalMap, v16, v17, v18, v19);
    if (v20 != objc_msgSend_versionCounter(v4, v21, v22, v23, v24))
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTImmutableColumnRowUIDMap initWithColumnRowUIDMap:]", v26, v27);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v31, v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 1343, 0, "@e need to ensure versionCounter was preserved");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }
  }

  return v9;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)a3
{
  v5 = objc_msgSend_columnUIDForColumnIndex_(self->_originalMap, a2, a3, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)a3
{
  v5 = objc_msgSend_rowUIDForRowIndex_(self->_originalMap, a2, *&a3, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)a3
{
  v6 = a4;
  originalMap = self->_originalMap;
  v11 = v6;
  if (originalMap)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(originalMap, v6, v6, v7, v8);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)a3
{
  v6 = a4;
  originalMap = self->_originalMap;
  v11 = v6;
  if (originalMap)
  {
    objc_msgSend_rowUIDsForRowIndexes_(originalMap, v6, v6, v7, v8);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)a3
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_columnUIDsForColumnRange_(result, a3, a4.location, a4.length, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)a3
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_rowUIDsForRowRange_(result, a3, a4.location, a4.length, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (_NSRange)columnRangeForUIDs:(const void *)a3
{
  v5 = objc_msgSend_columnRangeForUIDs_(self->_originalMap, a2, a3, v3, v4);
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rowRangeForUIDs:(const void *)a3
{
  v5 = objc_msgSend_rowRangeForUIDs_(self->_originalMap, a2, a3, v3, v4);
  result.length = v6;
  result.location = v5;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)a3
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_orderedColumnUidsFromUids_(result, a3, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_orderedRowUidsFromUids_(result, a3, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSUCellRect)range
{
  v5 = objc_msgSend_range(self->_originalMap, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (id)UIDSetForIndexes:(id)a3 isRows:(BOOL)a4
{
  v5 = objc_msgSend_UIDSetForIndexes_isRows_(self->_originalMap, a2, a3, a4, v4);

  return v5;
}

- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4
{
  v5 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self->_originalMap, a2, a3, a4, v4);

  return v5;
}

- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4 notFoundUIDs:(id)a5
{
  v5 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self->_originalMap, a2, a3, a4, a5);

  return v5;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)a3 isRows:(BOOL)a4
{
  isRows = objc_msgSend_firstUidFromUIDSet_isRows_(self->_originalMap, a2, a3, a4, v4);
  result._upper = v6;
  result._lower = isRows;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)a3
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_prunedColumnUIDsFromColumnUIDs_(result, a3, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)a3
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_prunedRowUIDsFromRowUIDs_(result, a3, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSUCellRect)cellRangeForUIDRange:(const void *)a3
{
  v5 = objc_msgSend_cellRangeForUIDRange_(self->_originalMap, a2, a3, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)a3
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_cellUIDRangeForCellRange_(result, a3, *&a4.origin, *&a4.size, v4);
  }

  *&retstr->_colIdList.__cap_ = 0u;
  *&retstr->_rowIdList.__end_ = 0u;
  *&retstr->_colIdList.__begin_ = 0u;
  return result;
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v5 = objc_msgSend_tableRangeCoordinate(self->_originalMap, a2, v2, v3, v4);
  result._bottomRight = v6;
  result._topLeft = v5;
  return result;
}

@end