@interface TSTImmutableColumnRowUIDMap
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index;
- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range;
- (TSTImmutableColumnRowUIDMap)initWithColumnRowUIDMap:(id)map;
- (TSUCellRect)cellRangeForUIDRange:(const void *)range;
- (TSUCellRect)range;
- (_NSRange)columnRangeForUIDs:(const void *)ds;
- (_NSRange)rowRangeForUIDs:(const void *)ds;
- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds;
@end

@implementation TSTImmutableColumnRowUIDMap

- (TSTImmutableColumnRowUIDMap)initWithColumnRowUIDMap:(id)map
{
  mapCopy = map;
  v40.receiver = self;
  v40.super_class = TSTImmutableColumnRowUIDMap;
  v9 = [(TSTImmutableColumnRowUIDMap *)&v40 init];
  if (v9)
  {
    v10 = objc_msgSend_context(mapCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copyWithContext_(mapCopy, v11, v10, v12, v13);
    originalMap = v9->_originalMap;
    v9->_originalMap = v14;

    v20 = objc_msgSend_versionCounter(v9->_originalMap, v16, v17, v18, v19);
    if (v20 != objc_msgSend_versionCounter(mapCopy, v21, v22, v23, v24))
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

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_columnUIDForColumnIndex_(self->_originalMap, a2, index, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index
{
  v5 = objc_msgSend_rowUIDForRowIndex_(self->_originalMap, a2, *&index, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes
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

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes
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

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_columnUIDsForColumnRange_(result, range, a4.location, a4.length, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_rowUIDsForRowRange_(result, range, a4.location, a4.length, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (_NSRange)columnRangeForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRangeForUIDs_(self->_originalMap, a2, ds, v3, v4);
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rowRangeForUIDs:(const void *)ds
{
  v5 = objc_msgSend_rowRangeForUIDs_(self->_originalMap, a2, ds, v3, v4);
  result.length = v6;
  result.location = v5;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_orderedColumnUidsFromUids_(result, uids, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_orderedRowUidsFromUids_(result, uids, a4, v4, v5);
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

- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows
{
  v5 = objc_msgSend_UIDSetForIndexes_isRows_(self->_originalMap, a2, indexes, rows, v4);

  return v5;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows
{
  v5 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self->_originalMap, a2, set, rows, v4);

  return v5;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds
{
  v5 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self->_originalMap, a2, set, rows, ds);

  return v5;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows
{
  isRows = objc_msgSend_firstUidFromUIDSet_isRows_(self->_originalMap, a2, set, rows, v4);
  result._upper = v6;
  result._lower = isRows;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_prunedColumnUIDsFromColumnUIDs_(result, ds, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_prunedRowUIDsFromRowUIDs_(result, ds, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSUCellRect)cellRangeForUIDRange:(const void *)range
{
  v5 = objc_msgSend_cellRangeForUIDRange_(self->_originalMap, a2, range, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range
{
  result = self->_originalMap;
  if (result)
  {
    return objc_msgSend_cellUIDRangeForCellRange_(result, range, *&a4.origin, *&a4.size, v4);
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