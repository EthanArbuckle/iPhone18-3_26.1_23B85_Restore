@interface TSCETablesByNameDistributor
- (void)didAddTableName:(id)a3 forTableUID:(TSKUIDStruct)a4;
- (void)didChangeTableName:(id)a3 fromTableName:(id)a4 forTableUID:(TSKUIDStruct)a5;
- (void)didRemoveTableName:(id)a3 forTableUID:(TSKUIDStruct)a4;
@end

@implementation TSCETablesByNameDistributor

- (void)didAddTableName:(id)a3 forTableUID:(TSKUIDStruct)a4
{
  upper = a4._upper;
  lower = a4._lower;
  v7 = a3;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2210CE0B8;
    v15[3] = &unk_27845EA60;
    v16 = v7;
    v17 = lower;
    v18 = upper;
    objc_msgSend_distributeBlock_(self, v12, v15, v13, v14);
  }
}

- (void)didRemoveTableName:(id)a3 forTableUID:(TSKUIDStruct)a4
{
  upper = a4._upper;
  lower = a4._lower;
  v7 = a3;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2210CE19C;
    v15[3] = &unk_27845EA60;
    v16 = v7;
    v17 = lower;
    v18 = upper;
    objc_msgSend_distributeBlock_(self, v12, v15, v13, v14);
  }
}

- (void)didChangeTableName:(id)a3 fromTableName:(id)a4 forTableUID:(TSKUIDStruct)a5
{
  upper = a5._upper;
  lower = a5._lower;
  v9 = a3;
  v10 = a4;
  if (objc_msgSend_hasReceivers(self, v11, v12, v13, v14))
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2210CE2B4;
    v18[3] = &unk_27845EA88;
    v19 = v9;
    v20 = v10;
    v21 = lower;
    v22 = upper;
    objc_msgSend_distributeBlock_(self, v15, v18, v16, v17);
  }
}

@end