@interface OFNSOperationQueue
- (OFNSOperationQueue)init;
- (id)_operationLookupObjectForKey:(unint64_t)key;
- (unint64_t)addOperation:(id)operation withPriority:(int64_t)priority;
- (void)_setOperationLookupObject:(id)object forKey:(unint64_t)key;
- (void)_setupOperationsLookupTable;
- (void)addOperation:(id)operation context:(id)context identifier:(id)identifier queuePriority:(int64_t)priority;
- (void)cancelAllOperationsWithContext:(id)context;
- (void)cancelAllOperationsWithContext:(id)context andIdentifier:(id)identifier;
- (void)cancelAllOperationsWithIdentifier:(id)identifier;
- (void)cancelSlideshowOperationWithID:(unint64_t)d;
- (void)dealloc;
@end

@implementation OFNSOperationQueue

- (OFNSOperationQueue)init
{
  v4.receiver = self;
  v4.super_class = OFNSOperationQueue;
  v2 = [(OFNSOperationQueue *)&v4 init];
  if (v2)
  {
    v2->_operationsLookupTableQueue = dispatch_queue_create("OFNSOperationQueue", MEMORY[0x277D85CD8]);
    v2->_operationsLookupTable = [MEMORY[0x277CCAC18] strongObjectsPointerArray];
    v2->_operationsLookupTableFreeIndices = objc_alloc_init(MEMORY[0x277CCAB58]);
    [(OFNSOperationQueue *)v2 _setupOperationsLookupTable];
  }

  return v2;
}

- (void)dealloc
{
  operationsLookupTableQueue = self->_operationsLookupTableQueue;
  if (operationsLookupTableQueue)
  {
    dispatch_release(operationsLookupTableQueue);
    self->_operationsLookupTableQueue = 0;
  }

  operationsLookupTable = self->_operationsLookupTable;
  if (operationsLookupTable)
  {

    self->_operationsLookupTable = 0;
  }

  operationsLookupTableFreeIndices = self->_operationsLookupTableFreeIndices;
  if (operationsLookupTableFreeIndices)
  {

    self->_operationsLookupTableFreeIndices = 0;
  }

  v6.receiver = self;
  v6.super_class = OFNSOperationQueue;
  [(OFNSOperationQueue *)&v6 dealloc];
}

- (void)addOperation:(id)operation context:(id)context identifier:(id)identifier queuePriority:(int64_t)priority
{
  [operation setContext:context];
  [operation setIdentifier:identifier];
  [operation setQueuePriority:priority];

  [(OFNSOperationQueue *)self addOperation:operation];
}

- (void)cancelAllOperationsWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  operations = [(OFNSOperationQueue *)self operations];
  v5 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(operations);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 context] == context)
        {
          [v9 cancel];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)cancelAllOperationsWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  operations = [(OFNSOperationQueue *)self operations];
  v5 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(operations);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([objc_msgSend(v9 "identifier")])
          {
            [v9 cancel];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [operations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)cancelAllOperationsWithContext:(id)context andIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  operations = [(OFNSOperationQueue *)self operations];
  v7 = [operations countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(operations);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 context] == context)
        {
          if ([objc_msgSend(v11 "identifier")])
          {
            [v11 cancel];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [operations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_setupOperationsLookupTable
{
  [(NSPointerArray *)self->_operationsLookupTable setCount:1023];
  operationsLookupTableFreeIndices = self->_operationsLookupTableFreeIndices;

  [(NSMutableIndexSet *)operationsLookupTableFreeIndices addIndexesInRange:1, 1024];
}

- (void)_setOperationLookupObject:(id)object forKey:(unint64_t)key
{
  if ([(NSPointerArray *)self->_operationsLookupTable count]<= key)
  {
    [(NSPointerArray *)self->_operationsLookupTable setCount:key + 1024];
    [(NSMutableIndexSet *)self->_operationsLookupTableFreeIndices addIndexesInRange:[(NSPointerArray *)self->_operationsLookupTable count], key + 1024];
  }

  [(NSPointerArray *)self->_operationsLookupTable replacePointerAtIndex:key withPointer:object];
  operationsLookupTableFreeIndices = self->_operationsLookupTableFreeIndices;
  if (object)
  {

    [(NSMutableIndexSet *)operationsLookupTableFreeIndices addIndex:key];
  }

  else
  {

    [(NSMutableIndexSet *)operationsLookupTableFreeIndices removeIndex:key];
  }
}

- (id)_operationLookupObjectForKey:(unint64_t)key
{
  if ([(NSPointerArray *)self->_operationsLookupTable count]<= key)
  {
    return 0;
  }

  operationsLookupTable = self->_operationsLookupTable;

  return [(NSPointerArray *)operationsLookupTable pointerAtIndex:key];
}

- (unint64_t)addOperation:(id)operation withPriority:(int64_t)priority
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  operationsLookupTableQueue = self->_operationsLookupTableQueue;
  v16 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__OFNSOperationQueue_addOperation_withPriority___block_invoke;
  block[3] = &unk_279C89E78;
  block[5] = operation;
  block[6] = &v13;
  block[4] = self;
  dispatch_barrier_sync(operationsLookupTableQueue, block);
  finishBlock = [operation finishBlock];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__OFNSOperationQueue_addOperation_withPriority___block_invoke_2;
  v11[3] = &unk_279C89EC8;
  v11[5] = finishBlock;
  v11[6] = &v13;
  v11[4] = self;
  [operation setFinishBlock:v11];
  [operation setQueuePriority:priority];
  [(OFNSOperationQueue *)self addOperation:operation];
  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

uint64_t __48__OFNSOperationQueue_addOperation_withPriority___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 528) firstIndex];
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(*(a1[6] + 8) + 24);

  return [v2 _setOperationLookupObject:v3 forKey:v4];
}

void __48__OFNSOperationQueue_addOperation_withPriority___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 512);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__OFNSOperationQueue_addOperation_withPriority___block_invoke_3;
  v8[3] = &unk_279C89EA0;
  v6 = *(a1 + 48);
  v8[4] = v4;
  v8[5] = v6;
  dispatch_barrier_async(v5, v8);
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }
}

- (void)cancelSlideshowOperationWithID:(unint64_t)d
{
  if (d)
  {
    operationsLookupTableQueue = self->_operationsLookupTableQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__OFNSOperationQueue_cancelSlideshowOperationWithID___block_invoke;
    v4[3] = &unk_279C89EF0;
    v4[4] = self;
    v4[5] = d;
    dispatch_barrier_async(operationsLookupTableQueue, v4);
  }
}

void *__53__OFNSOperationQueue_cancelSlideshowOperationWithID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _operationLookupObjectForKey:*(a1 + 40)];
  if (result)
  {

    return [result cancel];
  }

  return result;
}

@end