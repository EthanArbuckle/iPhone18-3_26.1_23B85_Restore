@interface TSTGroupByChangeDistributor
- (void)didAddRowUID:(TSKUIDStruct)a3 toGroup:(id)a4;
- (void)didChangeGroupByStructure;
- (void)didCreateGroup:(id)a3;
- (void)didRemoveGroup:(id)a3;
- (void)didRemoveRowUID:(TSKUIDStruct)a3 fromGroup:(id)a4;
- (void)endOfGroupingChangesBatch;
- (void)startOfGroupingChangesBatch;
- (void)willRemoveGroup:(id)a3;
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

- (void)didCreateGroup:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7, v8))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213CD488;
    v12[3] = &unk_278464400;
    v13 = v4;
    objc_msgSend_distributeBlock_(self, v9, v12, v10, v11);
  }
}

- (void)willRemoveGroup:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7, v8))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213CD554;
    v12[3] = &unk_278464400;
    v13 = v4;
    objc_msgSend_distributeBlock_(self, v9, v12, v10, v11);
  }
}

- (void)didRemoveGroup:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasReceivers(self, v5, v6, v7, v8))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213CD620;
    v12[3] = &unk_278464400;
    v13 = v4;
    objc_msgSend_distributeBlock_(self, v9, v12, v10, v11);
  }
}

- (void)didAddRowUID:(TSKUIDStruct)a3 toGroup:(id)a4
{
  upper = a3._upper;
  lower = a3._lower;
  v7 = a4;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2213CD700;
    v15[3] = &unk_27845EA60;
    v17 = lower;
    v18 = upper;
    v16 = v7;
    objc_msgSend_distributeBlock_(self, v12, v15, v13, v14);
  }
}

- (void)didRemoveRowUID:(TSKUIDStruct)a3 fromGroup:(id)a4
{
  upper = a3._upper;
  lower = a3._lower;
  v7 = a4;
  if (objc_msgSend_hasReceivers(self, v8, v9, v10, v11))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2213CD7E4;
    v15[3] = &unk_27845EA60;
    v17 = lower;
    v18 = upper;
    v16 = v7;
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