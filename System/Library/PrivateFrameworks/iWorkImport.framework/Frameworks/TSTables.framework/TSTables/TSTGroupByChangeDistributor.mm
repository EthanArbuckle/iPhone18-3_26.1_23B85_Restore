@interface TSTGroupByChangeDistributor
- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group;
- (void)didChangeGroupByStructure;
- (void)didCreateGroup:(id)group;
- (void)didRemoveGroup:(id)group;
- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group;
- (void)endOfGroupingChangesBatch;
- (void)startOfGroupingChangesBatch;
- (void)willRemoveGroup:(id)group;
@end

@implementation TSTGroupByChangeDistributor

- (void)startOfGroupingChangesBatch
{
  if (objc_msgSend_hasReceivers(self, a2, v2, v3, v4))
  {

    objc_msgSend_distributeBlock_(self, v6, &unk_2834A71A0, v7, v8);
  }
}

- (void)endOfGroupingChangesBatch
{
  if (objc_msgSend_hasReceivers(self, a2, v2, v3, v4))
  {

    objc_msgSend_distributeBlock_(self, v6, &unk_2834A71C0, v7, v8);
  }
}

- (void)didCreateGroup:(id)group
{
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7, v8))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213CD488;
    v12[3] = &unk_278464400;
    v13 = groupCopy;
    objc_msgSend_distributeBlock_(self, v9, v12, v10, v11);
  }
}

- (void)willRemoveGroup:(id)group
{
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7, v8))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213CD554;
    v12[3] = &unk_278464400;
    v13 = groupCopy;
    objc_msgSend_distributeBlock_(self, v9, v12, v10, v11);
  }
}

- (void)didRemoveGroup:(id)group
{
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7, v8))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213CD620;
    v12[3] = &unk_278464400;
    v13 = groupCopy;
    objc_msgSend_distributeBlock_(self, v9, v12, v10, v11);
  }
}

- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group
{
  upper = d._upper;
  lower = d._lower;
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2213CD700;
    v15[3] = &unk_27845EA60;
    v17 = lower;
    v18 = upper;
    v16 = groupCopy;
    objc_msgSend_distributeBlock_(self, v12, v15, v13, v14);
  }
}

- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group
{
  upper = d._upper;
  lower = d._lower;
  groupCopy = group;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2213CD7E4;
    v15[3] = &unk_27845EA60;
    v17 = lower;
    v18 = upper;
    v16 = groupCopy;
    objc_msgSend_distributeBlock_(self, v12, v15, v13, v14);
  }
}

- (void)didChangeGroupByStructure
{
  if (objc_msgSend_hasReceivers(self, a2, v2, v3, v4))
  {

    objc_msgSend_distributeBlock_(self, v6, &unk_2834A71E0, v7, v8);
  }
}

@end