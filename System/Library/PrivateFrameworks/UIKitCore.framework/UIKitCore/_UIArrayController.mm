@interface _UIArrayController
- (NSArray)sortDescriptors;
- (NSPredicate)predicate;
- (_UIArrayController)initWithDelegate:(id)delegate;
- (_UIArrayControllerDelegate)delegate;
- (id)_computeUpdatesFromOld:(id)old toNew:(id)new changedItems:(id)items;
- (void)callUpdateHandler:(id)handler changeDictionary:(id)dictionary;
- (void)dealloc;
- (void)invalidate;
- (void)processUpdate:(id)update changedObjects:(id)objects;
- (void)setOperationQueue:(id)queue;
- (void)setPredicate:(id)predicate;
- (void)setSortDescriptors:(id)descriptors;
@end

@implementation _UIArrayController

- (_UIArrayController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _UIArrayController;
  v5 = [(_UIArrayController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(_UIArrayController *)v5 setDelegate:delegateCopy];
    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(_UIArrayController *)v6 setOperationQueue:v7];

    operationQueue = [(_UIArrayController *)v6 operationQueue];
    [operationQueue setMaxConcurrentOperationCount:1];

    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    [(_UIArrayController *)v6 setLastSnapshot:orderedSet];
  }

  return v6;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIArrayController.m" lineNumber:56 description:@"_UIArrayController deallocated without being invalidated first"];
  }

  v5.receiver = self;
  v5.super_class = _UIArrayController;
  [(_UIArrayController *)&v5 dealloc];
}

- (void)setSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  operationQueue = [(_UIArrayController *)self operationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41___UIArrayController_setSortDescriptors___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = descriptorsCopy;
  v6 = descriptorsCopy;
  [operationQueue addOperationWithBlock:v7];
}

- (NSArray)sortDescriptors
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__99;
  v12 = __Block_byref_object_dispose__99;
  v13 = 0;
  operationQueue = [(_UIArrayController *)self operationQueue];
  underlyingQueue = [operationQueue underlyingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___UIArrayController_sortDescriptors__block_invoke;
  v7[3] = &unk_1E70FCDA0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(underlyingQueue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setPredicate:(id)predicate
{
  predicateCopy = predicate;
  operationQueue = [(_UIArrayController *)self operationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35___UIArrayController_setPredicate___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = predicateCopy;
  v6 = predicateCopy;
  [operationQueue addOperationWithBlock:v7];
}

- (NSPredicate)predicate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__99;
  v12 = __Block_byref_object_dispose__99;
  v13 = 0;
  operationQueue = [(_UIArrayController *)self operationQueue];
  underlyingQueue = [operationQueue underlyingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31___UIArrayController_predicate__block_invoke;
  v7[3] = &unk_1E70FCDA0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(underlyingQueue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)invalidate
{
  operationQueue = [(_UIArrayController *)self operationQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32___UIArrayController_invalidate__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [operationQueue addOperationWithBlock:v4];
}

- (void)setOperationQueue:(id)queue
{
  queueCopy = queue;
  if (self->_firstUpdateSent)
  {
    v11 = queueCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIArrayController.m" lineNumber:108 description:@"Operation queue changed after first update sent"];

    queueCopy = v11;
  }

  operationQueue = self->_operationQueue;
  p_operationQueue = &self->_operationQueue;
  if (operationQueue != queueCopy)
  {
    v10 = queueCopy;
    objc_storeStrong(p_operationQueue, queue);
    queueCopy = v10;
  }
}

- (id)_computeUpdatesFromOld:(id)old toNew:(id)new changedItems:(id)items
{
  v35[4] = *MEMORY[0x1E69E9840];
  oldCopy = old;
  newCopy = new;
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = 0;
  if ([oldCopy count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [oldCopy objectAtIndex:v11];
      v13 = [newCopy indexOfObject:v12];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v11 != v13)
      {
        v14 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
        v15 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
        [dictionary setObject:v14 forKey:v15];

LABEL_10:
        if (++v10 > 0x80)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      if (itemsCopy)
      {
        if (![itemsCopy containsObject:v12])
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = [newCopy objectAtIndex:v11];
        v17 = [(_UIArrayController *)self objectAttributeModified:v12 newObject:v16];

        if (!v17)
        {
          goto LABEL_11;
        }
      }

      v18 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
      [array3 addObject:v18];

      if (++v10 >= 0x81)
      {
LABEL_15:

        v19 = MEMORY[0x1E695E0F8];
        v20 = array2;
        goto LABEL_31;
      }

LABEL_11:

      if (++v11 >= [oldCopy count])
      {
        goto LABEL_16;
      }
    }

    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
    [array addObject:v14];
    goto LABEL_10;
  }

LABEL_16:
  v21 = [newCopy count];
  v20 = array2;
  if ((v21 != [oldCopy count] || objc_msgSend(array, "count")) && objc_msgSend(newCopy, "count"))
  {
    v22 = 0;
    while (1)
    {
      v23 = [newCopy objectAtIndex:v22];
      if (([oldCopy containsObject:v23] & 1) == 0)
      {
        v24 = [MEMORY[0x1E696AC88] indexPathForItem:v22 inSection:0];
        [array2 addObject:v24];

        if (++v10 > 0x80)
        {
          break;
        }
      }

      if (++v22 >= [newCopy count])
      {
        goto LABEL_23;
      }
    }

LABEL_30:
    v19 = MEMORY[0x1E695E0F8];
    goto LABEL_31;
  }

LABEL_23:
  if ([array2 count] || objc_msgSend(array, "count") || objc_msgSend(dictionary, "count") || objc_msgSend(array3, "count"))
  {
    v25 = [oldCopy count];
    v26 = [array2 count] + v25;
    v27 = v26 - [array count];
    if (v27 == [newCopy count])
    {
      v34[0] = @"ins";
      v34[1] = @"del";
      v35[0] = array2;
      v35[1] = array;
      v34[2] = @"mov";
      v34[3] = @"mod";
      v35[2] = dictionary;
      v35[3] = array3;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v19 = 0;
LABEL_31:

  return v19;
}

- (void)processUpdate:(id)update changedObjects:(id)objects
{
  objectsCopy = objects;
  v8 = [update copy];
  firstUpdateSent = self->_firstUpdateSent;
  self->_firstUpdateSent = 1;
  if (!(update | objectsCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIArrayController.m" lineNumber:198 description:@"Either updated set or changed set must be non-nil"];
  }

  operationQueue = [(_UIArrayController *)self operationQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51___UIArrayController_processUpdate_changedObjects___block_invoke;
  v14[3] = &unk_1E70F5B18;
  v14[4] = self;
  v15 = v8;
  v16 = objectsCopy;
  v17 = !firstUpdateSent;
  v11 = objectsCopy;
  v12 = v8;
  [operationQueue addOperationWithBlock:v14];
}

- (void)callUpdateHandler:(id)handler changeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  [(_UIArrayController *)self setLastSnapshot:handlerCopy];
  delegate = [(_UIArrayController *)self delegate];
  [delegate arrayController:self modelChanged:handlerCopy differences:dictionaryCopy];
}

- (_UIArrayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end