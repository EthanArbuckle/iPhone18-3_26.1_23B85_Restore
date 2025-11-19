@interface TSTCellWillChangeDistributor
- (void)willApplyBaseCellMap:(id)a3 tableUID:(const TSKUIDStruct *)a4;
- (void)willApplyCell:(id)a3 baseCellCoord:(TSUModelCellCoord)a4 tableUID:(const TSKUIDStruct *)a5;
- (void)willApplyConcurrentCellMap:(id)a3 tableUID:(const TSKUIDStruct *)a4;
- (void)willRemoveRows:(const void *)a3 tableUID:(const TSKUIDStruct *)a4;
@end

@implementation TSTCellWillChangeDistributor

- (void)willApplyCell:(id)a3 baseCellCoord:(TSUModelCellCoord)a4 tableUID:(const TSKUIDStruct *)a5
{
  v8 = a3;
  if (objc_msgSend_hasReceivers(self, v9, v10, v11, v12))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2211F0AA4;
    v16[3] = &unk_27845EA60;
    v18 = a5;
    v19 = a4;
    v17 = v8;
    objc_msgSend_distributeBlock_(self, v13, v16, v14, v15);
  }
}

- (void)willApplyBaseCellMap:(id)a3 tableUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  if (objc_msgSend_hasReceivers(self, v7, v8, v9, v10))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211F0B80;
    v14[3] = &unk_278461360;
    v15 = v6;
    v16 = a4;
    objc_msgSend_distributeBlock_(self, v11, v14, v12, v13);
  }
}

- (void)willApplyConcurrentCellMap:(id)a3 tableUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  if (objc_msgSend_hasReceivers(self, v7, v8, v9, v10))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211F0C58;
    v14[3] = &unk_278461360;
    v15 = v6;
    v16 = a4;
    objc_msgSend_distributeBlock_(self, v11, v14, v12, v13);
  }
}

- (void)willRemoveRows:(const void *)a3 tableUID:(const TSKUIDStruct *)a4
{
  if (objc_msgSend_hasReceivers(self, a2, a3, a4, v4))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211F0CF8;
    v11[3] = &unk_278461380;
    v11[4] = a3;
    v11[5] = a4;
    objc_msgSend_distributeBlock_(self, v8, v11, v9, v10);
  }
}

@end