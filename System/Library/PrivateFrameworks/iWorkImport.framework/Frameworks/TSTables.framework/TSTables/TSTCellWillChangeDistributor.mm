@interface TSTCellWillChangeDistributor
- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d;
- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d;
@end

@implementation TSTCellWillChangeDistributor

- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d
{
  cellCopy = cell;
  if (objc_msgSend_hasReceivers(self, v9, v10, v11, v12))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2211F0AA4;
    v16[3] = &unk_27845EA60;
    dCopy = d;
    coordCopy = coord;
    v17 = cellCopy;
    objc_msgSend_distributeBlock_(self, v13, v16, v14, v15);
  }
}

- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  mapCopy = map;
  if (objc_msgSend_hasReceivers(self, v7, v8, v9, v10))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211F0B80;
    v14[3] = &unk_278461360;
    v15 = mapCopy;
    dCopy = d;
    objc_msgSend_distributeBlock_(self, v11, v14, v12, v13);
  }
}

- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  mapCopy = map;
  if (objc_msgSend_hasReceivers(self, v7, v8, v9, v10))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211F0C58;
    v14[3] = &unk_278461360;
    v15 = mapCopy;
    dCopy = d;
    objc_msgSend_distributeBlock_(self, v11, v14, v12, v13);
  }
}

- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d
{
  if (objc_msgSend_hasReceivers(self, a2, rows, d, v4))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211F0CF8;
    v11[3] = &unk_278461380;
    v11[4] = rows;
    v11[5] = d;
    objc_msgSend_distributeBlock_(self, v8, v11, v9, v10);
  }
}

@end