@interface TSCEFormulaRewrite_RegionInfo
- (TSCEFormulaRewrite_RegionInfo)initWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids;
- (TSCERangeCoordinate)mergingRange;
- (TSKUIDStruct)condStyleOwnerUID;
- (TSKUIDStruct)tableUID;
- (TSUCellCoord)bottomRightCellCoord;
- (TSUCellCoord)topLeftCellCoord;
- (id)initFromMessage:(const void *)message;
- (void)loadIndexesForTable:(id)table uidResolver:(id)resolver;
- (void)saveToMessage:(void *)message;
- (void)unloadIndexes;
@end

@implementation TSCEFormulaRewrite_RegionInfo

- (TSCEFormulaRewrite_RegionInfo)initWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids
{
  v23.receiver = self;
  v23.super_class = TSCEFormulaRewrite_RegionInfo;
  v8 = [(TSCEFormulaRewrite_RegionInfo *)&v23 init];
  v9 = v8;
  if (v8)
  {
    v8->_tableUID = *d;
    v8->_condStyleOwnerUID._lower = 0;
    v8->_condStyleOwnerUID._upper = 0;
    v10 = [TSCEFormulaRewrite_Uids alloc];
    v14 = objc_msgSend_initWithUids_(v10, v11, uids, v12, v13);
    columnUids = v9->_columnUids;
    v9->_columnUids = v14;

    v16 = [TSCEFormulaRewrite_Uids alloc];
    v20 = objc_msgSend_initWithUids_(v16, v17, rowUids, v18, v19);
    rowUids = v9->_rowUids;
    v9->_rowUids = v20;
  }

  return v9;
}

- (void)loadIndexesForTable:(id)table uidResolver:(id)resolver
{
  tableCopy = table;
  resolverCopy = resolver;
  self->_condStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v7, v8, v9, v10);
  self->_condStyleOwnerUID._upper = v11;
  objc_msgSend_loadIndexesForTable_isRows_shuffleMap_(self->_columnUids, v11, resolverCopy, 0, 0);
  objc_msgSend_loadIndexesForTable_isRows_shuffleMap_(self->_rowUids, v12, resolverCopy, 1, 0);
}

- (void)unloadIndexes
{
  objc_msgSend_unloadIndexes(self->_columnUids, a2, v2, v3, v4);
  rowUids = self->_rowUids;

  objc_msgSend_unloadIndexes(rowUids, v6, v7, v8, v9);
}

- (TSUCellCoord)topLeftCellCoord
{
  selfCopy = self;
  v6 = objc_msgSend_indexes(self->_columnUids, a2, v2, v3, v4);
  Index = objc_msgSend_firstIndex(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_indexes(selfCopy->_rowUids, v12, v13, v14, v15);
  LODWORD(selfCopy) = objc_msgSend_firstIndex(v16, v17, v18, v19, v20);

  return (selfCopy | (Index << 32));
}

- (TSUCellCoord)bottomRightCellCoord
{
  selfCopy = self;
  v6 = objc_msgSend_indexes(self->_columnUids, a2, v2, v3, v4);
  Index = objc_msgSend_lastIndex(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_indexes(selfCopy->_rowUids, v12, v13, v14, v15);
  LODWORD(selfCopy) = objc_msgSend_lastIndex(v16, v17, v18, v19, v20);

  return (selfCopy | (Index << 32));
}

- (TSCERangeCoordinate)mergingRange
{
  v6 = objc_msgSend_topLeftCellCoord(self, a2, v2, v3, v4);
  v11 = objc_msgSend_bottomRightCellCoord(self, v7, v8, v9, v10);
  v12 = v6;
  result._bottomRight = v11;
  result._topLeft = v12;
  return result;
}

- (id)initFromMessage:(const void *)message
{
  v21.receiver = self;
  v21.super_class = TSCEFormulaRewrite_RegionInfo;
  v5 = [(TSCEFormulaRewrite_RegionInfo *)&v21 init];
  if (v5)
  {
    if (*(message + 3))
    {
      v6 = *(message + 3);
    }

    else
    {
      v6 = MEMORY[0x277D809E0];
    }

    v5->_tableUID._lower = TSKUIDStruct::loadFromMessage(v6, v4);
    v5->_tableUID._upper = v7;
    v8 = [TSCEFormulaRewrite_Uids alloc];
    if (*(message + 4))
    {
      v12 = objc_msgSend_initFromMessage_(v8, v9, *(message + 4), v10, v11);
    }

    else
    {
      v12 = objc_msgSend_initFromMessage_(v8, v9, &TSCE::_IndexedUidsArchive_default_instance_, v10, v11);
    }

    columnUids = v5->_columnUids;
    v5->_columnUids = v12;

    v14 = [TSCEFormulaRewrite_Uids alloc];
    if (*(message + 5))
    {
      v18 = objc_msgSend_initFromMessage_(v14, v15, *(message + 5), v16, v17);
    }

    else
    {
      v18 = objc_msgSend_initFromMessage_(v14, v15, &TSCE::_IndexedUidsArchive_default_instance_, v16, v17);
    }

    rowUids = v5->_rowUids;
    v5->_rowUids = v18;
  }

  return v5;
}

- (void)saveToMessage:(void *)message
{
  *(message + 4) |= 1u;
  v5 = *(message + 3);
  if (!v5)
  {
    v6 = *(message + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(message + 3) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_tableUID, v5);
  columnUids = self->_columnUids;
  *(message + 4) |= 2u;
  v11 = *(message + 4);
  if (!v11)
  {
    v12 = *(message + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v12);
    *(message + 4) = v11;
  }

  objc_msgSend_saveToMessage_(columnUids, v7, v11, v8, v9);
  rowUids = self->_rowUids;
  *(message + 4) |= 4u;
  v17 = *(message + 5);
  if (!v17)
  {
    v18 = *(message + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v18);
    *(message + 5) = v17;
  }

  objc_msgSend_saveToMessage_(rowUids, v13, v17, v14, v15);
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)condStyleOwnerUID
{
  upper = self->_condStyleOwnerUID._upper;
  lower = self->_condStyleOwnerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end