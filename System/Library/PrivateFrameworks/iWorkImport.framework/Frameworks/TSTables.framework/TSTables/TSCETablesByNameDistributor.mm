@interface TSCETablesByNameDistributor
- (void)didAddTableName:(id)name forTableUID:(TSKUIDStruct)d;
- (void)didChangeTableName:(id)name fromTableName:(id)tableName forTableUID:(TSKUIDStruct)d;
- (void)didRemoveTableName:(id)name forTableUID:(TSKUIDStruct)d;
@end

@implementation TSCETablesByNameDistributor

- (void)didAddTableName:(id)name forTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  nameCopy = name;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2210CE0B8;
    v15[3] = &unk_27845EA60;
    v16 = nameCopy;
    v17 = lower;
    v18 = upper;
    objc_msgSend_distributeBlock_(self, v12, v15, v13, v14);
  }
}

- (void)didRemoveTableName:(id)name forTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  nameCopy = name;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2210CE19C;
    v15[3] = &unk_27845EA60;
    v16 = nameCopy;
    v17 = lower;
    v18 = upper;
    objc_msgSend_distributeBlock_(self, v12, v15, v13, v14);
  }
}

- (void)didChangeTableName:(id)name fromTableName:(id)tableName forTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  nameCopy = name;
  tableNameCopy = tableName;
  if (objc_msgSend_hasReceivers(self, v11, v12, v13, v14))
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2210CE2B4;
    v18[3] = &unk_27845EA88;
    v19 = nameCopy;
    v20 = tableNameCopy;
    v21 = lower;
    v22 = upper;
    objc_msgSend_distributeBlock_(self, v15, v18, v16, v17);
  }
}

@end