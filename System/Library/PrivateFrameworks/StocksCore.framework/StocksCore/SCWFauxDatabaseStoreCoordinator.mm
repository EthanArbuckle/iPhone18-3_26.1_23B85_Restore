@interface SCWFauxDatabaseStoreCoordinator
- (SCWFauxDatabaseStoreCoordinator)initWithDatabaseStore:(id)store;
- (void)readWithAccessor:(id)accessor;
- (void)readZone:(id)zone withAccessor:(id)accessor;
- (void)reloadWithAccessor:(id)accessor;
- (void)writeWithAccessor:(id)accessor;
- (void)writeZone:(id)zone withAccessor:(id)accessor;
@end

@implementation SCWFauxDatabaseStoreCoordinator

- (SCWFauxDatabaseStoreCoordinator)initWithDatabaseStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = SCWFauxDatabaseStoreCoordinator;
  v6 = [(SCWFauxDatabaseStoreCoordinator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("SCWFauxDatabaseStoreCoordinator.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (void)readWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  queue = [(SCWFauxDatabaseStoreCoordinator *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SCWFauxDatabaseStoreCoordinator_readWithAccessor___block_invoke;
  v7[3] = &unk_1E85E35A0;
  v7[4] = self;
  v8 = accessorCopy;
  v6 = accessorCopy;
  dispatch_sync(queue, v7);
}

void __52__SCWFauxDatabaseStoreCoordinator_readWithAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) store];
  (*(v1 + 16))(v1, v2);
}

- (void)writeWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  queue = [(SCWFauxDatabaseStoreCoordinator *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SCWFauxDatabaseStoreCoordinator_writeWithAccessor___block_invoke;
  v7[3] = &unk_1E85E35A0;
  v7[4] = self;
  v8 = accessorCopy;
  v6 = accessorCopy;
  dispatch_sync(queue, v7);
}

void __53__SCWFauxDatabaseStoreCoordinator_writeWithAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) store];
  (*(v1 + 16))(v1, v2);
}

- (void)reloadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  queue = [(SCWFauxDatabaseStoreCoordinator *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SCWFauxDatabaseStoreCoordinator_reloadWithAccessor___block_invoke;
  v7[3] = &unk_1E85E35A0;
  v7[4] = self;
  v8 = accessorCopy;
  v6 = accessorCopy;
  dispatch_sync(queue, v7);
}

void __54__SCWFauxDatabaseStoreCoordinator_reloadWithAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) store];
  (*(v1 + 16))(v1, v2, 1);
}

- (void)readZone:(id)zone withAccessor:(id)accessor
{
  zoneCopy = zone;
  accessorCopy = accessor;
  queue = [(SCWFauxDatabaseStoreCoordinator *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SCWFauxDatabaseStoreCoordinator_readZone_withAccessor___block_invoke;
  block[3] = &unk_1E85E3EB8;
  v12 = zoneCopy;
  v13 = accessorCopy;
  block[4] = self;
  v9 = zoneCopy;
  v10 = accessorCopy;
  dispatch_sync(queue, block);
}

void __57__SCWFauxDatabaseStoreCoordinator_readZone_withAccessor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) store];
  v3 = [v4 zoneStoreForSchema:*(a1 + 40)];
  (*(v2 + 16))(v2, v3);
}

- (void)writeZone:(id)zone withAccessor:(id)accessor
{
  zoneCopy = zone;
  accessorCopy = accessor;
  queue = [(SCWFauxDatabaseStoreCoordinator *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SCWFauxDatabaseStoreCoordinator_writeZone_withAccessor___block_invoke;
  block[3] = &unk_1E85E3EB8;
  v12 = zoneCopy;
  v13 = accessorCopy;
  block[4] = self;
  v9 = zoneCopy;
  v10 = accessorCopy;
  dispatch_sync(queue, block);
}

void __58__SCWFauxDatabaseStoreCoordinator_writeZone_withAccessor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) store];
  v3 = [v4 zoneStoreForSchema:*(a1 + 40)];
  (*(v2 + 16))(v2, v3);
}

@end