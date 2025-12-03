@interface TSTColumnRowUIDMapper
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
- (TSTColumnRowUIDMapper)initWithColumnRowUIDMap:(id)map;
- (TSUCellRect)cellRangeForUIDRange:(const void *)range;
- (TSUCellRect)range;
- (_NSRange)columnRangeForUIDs:(const void *)ds;
- (_NSRange)rowRangeForUIDs:(const void *)ds;
- (const)columnUIDs;
- (const)rowUIDs;
- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows;
- (id)columnIndexesForUIDs:(const void *)ds;
- (id)columnUuids;
- (id)mutableColumnIndexesForUIDs:(const void *)ds;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds;
- (id)mutableRowIndexesForUIDs:(const void *)ds;
- (id)rowIndexesForUIDs:(const void *)ds;
- (id)rowUuids;
- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)d;
- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)bytes[16];
- (unsigned)numberOfColumns;
- (unsigned)numberOfRows;
- (unsigned)rowIndexForRowUID:(TSKUIDStruct)d;
- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)bytes[16];
- (void)disconnect;
- (void)getUUIDBytes:(unsigned __int8)bytes[16] forColumnIndex:(unsigned __int16)index;
- (void)getUUIDBytes:(unsigned __int8)bytes[16] forRowIndex:(unsigned int)index;
@end

@implementation TSTColumnRowUIDMapper

- (TSTColumnRowUIDMapper)initWithColumnRowUIDMap:(id)map
{
  mapCopy = map;
  v13.receiver = self;
  v13.super_class = TSTColumnRowUIDMapper;
  v6 = [(TSTColumnRowUIDMapper *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalUIDMap, map);
    v7->_originalVersionCounter = objc_msgSend_versionCounter(mapCopy, v8, v9, v10, v11);
  }

  return v7;
}

- (void)disconnect
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTColumnRowUIDMapper disconnect]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMapper.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 48, 0, "No longer have a mapper - disconnected multiple times?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    originalUIDMap = self->_originalUIDMap;
  }

  if (objc_msgSend_versionCounter(originalUIDMap, a2, v2, v3, v4) != self->_originalVersionCounter)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTColumnRowUIDMapper disconnect]", v19, v20);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMapper.mm", v24, v25);
    originalVersionCounter = self->_originalVersionCounter;
    v32 = objc_msgSend_versionCounter(self->_originalUIDMap, v28, v29, v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v33, v22, v26, 49, 0, "Mappers version counter was already off %lu vs %lu", originalVersionCounter, v32);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = [TSTImmutableColumnRowUIDMap alloc];
  v42 = objc_msgSend_initWithColumnRowUIDMap_(v38, v39, self->_originalUIDMap, v40, v41);
  copiedUIDMap = self->_copiedUIDMap;
  self->_copiedUIDMap = v42;

  if (objc_msgSend_versionCounter(self->_originalUIDMap, v44, v45, v46, v47) != self->_originalVersionCounter)
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSTColumnRowUIDMapper disconnect]", v49, v50);
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMapper.mm", v54, v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v57, v52, v56, 52, 0, "Should have preserved the versionCounter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  v62 = self->_originalUIDMap;
  self->_originalUIDMap = 0;
}

- (unsigned)numberOfColumns
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  return objc_msgSend_numberOfColumns(originalUIDMap, a2, v2, v3, v4);
}

- (unsigned)numberOfRows
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  return objc_msgSend_numberOfRows(originalUIDMap, a2, v2, v3, v4);
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index
{
  if (self->_originalUIDMap)
  {
    v5 = objc_msgSend_columnUIDForColumnIndex_(self->_originalUIDMap, a2, index, v3, v4);
  }

  else
  {
    v5 = objc_msgSend_columnUIDForColumnIndex_(self->_copiedUIDMap, a2, index, v3, v4);
  }

  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v7 = objc_msgSend_rowUIDForRowIndex_(originalUIDMap, a2, *&index, v3, v4);
  result._upper = v8;
  result._lower = v7;
  return result;
}

- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)d
{
  if (self->_originalUIDMap)
  {
    return objc_msgSend_columnIndexForColumnUID_(self->_originalUIDMap, a2, d._lower, d._upper, v3);
  }

  else
  {
    return objc_msgSend_columnIndexForColumnUID_(self->_copiedUIDMap, a2, d._lower, d._upper, v3);
  }
}

- (unsigned)rowIndexForRowUID:(TSKUIDStruct)d
{
  if (self->_originalUIDMap)
  {
    return objc_msgSend_rowIndexForRowUID_(self->_originalUIDMap, a2, d._lower, d._upper, v3);
  }

  else
  {
    return objc_msgSend_rowIndexForRowUID_(self->_copiedUIDMap, a2, d._lower, d._upper, v3);
  }
}

- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)bytes[16]
{
  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_columnIndexForColumnUID_(self, v4, v5, v4, v6);
}

- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)bytes[16]
{
  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_rowIndexForRowUID_(self, v4, v5, v4, v6);
}

- (id)columnUuids
{
  v5 = objc_msgSend_columnUIDs(self, a2, v2, v3, v4);

  return sub_2212830D4(v5, v6, v7, v8, v9);
}

- (id)rowUuids
{
  v5 = objc_msgSend_rowUIDs(self, a2, v2, v3, v4);

  return sub_2212830D4(v5, v6, v7, v8, v9);
}

- (void)getUUIDBytes:(unsigned __int8)bytes[16] forColumnIndex:(unsigned __int16)index
{
  if (bytes)
  {
    v7[0] = objc_msgSend_columnUIDForColumnIndex_(self, a2, index, index, v4);
    v7[1] = v6;
    uuid_copy(bytes, v7);
  }
}

- (void)getUUIDBytes:(unsigned __int8)bytes[16] forRowIndex:(unsigned int)index
{
  if (bytes)
  {
    v7[0] = objc_msgSend_rowUIDForRowIndex_(self, a2, *&index, *&index, v4);
    v7[1] = v6;
    uuid_copy(bytes, v7);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes
{
  v6 = a4;
  originalUIDMap = self->_originalUIDMap;
  v11 = v6;
  if (originalUIDMap || (originalUIDMap = self->_copiedUIDMap) != 0)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(originalUIDMap, v6, v6, v7, v8);
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
  originalUIDMap = self->_originalUIDMap;
  v11 = v6;
  if (originalUIDMap || (originalUIDMap = self->_copiedUIDMap) != 0)
  {
    objc_msgSend_rowUIDsForRowIndexes_(originalUIDMap, v6, v6, v7, v8);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)mutableColumnIndexesForUIDs:(const void *)ds
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v7 = objc_msgSend_mutableColumnIndexesForUIDs_(originalUIDMap, a2, ds, v3, v4);

  return v7;
}

- (id)mutableRowIndexesForUIDs:(const void *)ds
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v7 = objc_msgSend_mutableRowIndexesForUIDs_(originalUIDMap, a2, ds, v3, v4);

  return v7;
}

- (id)columnIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_mutableColumnIndexesForUIDs_(self, a2, ds, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_copy(v5, v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)rowIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_mutableRowIndexesForUIDs_(self, a2, ds, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_copy(v5, v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range
{
  v10 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], range, a4.location, a4.length, v4);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v6, v10, v7, v8);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range
{
  v10 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], range, a4.location, a4.length, v4);
  objc_msgSend_rowUIDsForRowIndexes_(self, v6, v10, v7, v8);

  return result;
}

- (_NSRange)columnRangeForUIDs:(const void *)ds
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v7 = objc_msgSend_columnRangeForUIDs_(originalUIDMap, a2, ds, v3, v4);
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)rowRangeForUIDs:(const void *)ds
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v7 = objc_msgSend_rowRangeForUIDs_(originalUIDMap, a2, ds, v3, v4);
  result.length = v8;
  result.location = v7;
  return result;
}

- (const)columnUIDs
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  return objc_msgSend_columnUIDs(originalUIDMap, a2, v2, v3, v4);
}

- (const)rowUIDs
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  return objc_msgSend_rowUIDs(originalUIDMap, a2, v2, v3, v4);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids
{
  v11 = objc_msgSend_mutableColumnIndexesForUIDs_(self, uids, a4, v4, v5);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v7, v11, v8, v9);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids
{
  v11 = objc_msgSend_mutableRowIndexesForUIDs_(self, uids, a4, v4, v5);
  objc_msgSend_rowUIDsForRowIndexes_(self, v7, v11, v8, v9);

  return result;
}

- (TSUCellRect)range
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v7 = objc_msgSend_range(originalUIDMap, a2, v2, v3, v4);
  result.size = v8;
  result.origin = v7;
  return result;
}

- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows
{
  rowsCopy = rows;
  indexesCopy = indexes;
  originalUIDMap = self->_originalUIDMap;
  if (originalUIDMap)
  {
    objc_msgSend_UIDSetForIndexes_isRows_(originalUIDMap, v6, indexesCopy, rowsCopy, v7);
  }

  else
  {
    objc_msgSend_UIDSetForIndexes_isRows_(self->_copiedUIDMap, v6, indexesCopy, rowsCopy, v7);
  }
  v10 = ;

  return v10;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows
{
  v4 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self, a2, set, rows, 0);

  return v4;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds
{
  rowsCopy = rows;
  setCopy = set;
  dsCopy = ds;
  originalUIDMap = self->_originalUIDMap;
  if (originalUIDMap)
  {
    objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(originalUIDMap, v9, setCopy, rowsCopy, dsCopy);
  }

  else
  {
    objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self->_copiedUIDMap, v9, setCopy, rowsCopy, dsCopy);
  }
  v12 = ;

  return v12;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows
{
  rowsCopy = rows;
  setCopy = set;
  originalUIDMap = self->_originalUIDMap;
  if (originalUIDMap)
  {
    isRows = objc_msgSend_firstUidFromUIDSet_isRows_(originalUIDMap, v6, setCopy, rowsCopy, v7);
  }

  else
  {
    isRows = objc_msgSend_firstUidFromUIDSet_isRows_(self->_copiedUIDMap, v6, setCopy, rowsCopy, v7);
  }

  v12 = isRows;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result._upper = v15;
  result._lower = v14;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds
{
  result = self->_originalUIDMap;
  if (result)
  {
    return objc_msgSend_prunedColumnUIDsFromColumnUIDs_(result, ds, a4, v4, v5);
  }

  result = self->_copiedUIDMap;
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
  result = self->_originalUIDMap;
  if (result)
  {
    return objc_msgSend_prunedRowUIDsFromRowUIDs_(result, ds, a4, v4, v5);
  }

  result = self->_copiedUIDMap;
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
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v7 = objc_msgSend_cellRangeForUIDRange_(originalUIDMap, a2, range, v3, v4);
  result.size = v8;
  result.origin = v7;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range
{
  if (self->_originalUIDMap)
  {
    result = self->_originalUIDMap;
    return objc_msgSend_cellUIDRangeForCellRange_(result, range, *&a4.origin, *&a4.size, v4);
  }

  result = self->_copiedUIDMap;
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
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v7 = objc_msgSend_tableRangeCoordinate(originalUIDMap, a2, v2, v3, v4);
  result._bottomRight = v8;
  result._topLeft = v7;
  return result;
}

@end