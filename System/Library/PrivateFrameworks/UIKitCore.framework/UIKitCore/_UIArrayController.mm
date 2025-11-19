@interface _UIArrayController
- (NSArray)sortDescriptors;
- (NSPredicate)predicate;
- (_UIArrayController)initWithDelegate:(id)a3;
- (_UIArrayControllerDelegate)delegate;
- (id)_computeUpdatesFromOld:(id)a3 toNew:(id)a4 changedItems:(id)a5;
- (void)callUpdateHandler:(id)a3 changeDictionary:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)processUpdate:(id)a3 changedObjects:(id)a4;
- (void)setOperationQueue:(id)a3;
- (void)setPredicate:(id)a3;
- (void)setSortDescriptors:(id)a3;
@end

@implementation _UIArrayController

- (_UIArrayController)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIArrayController;
  v5 = [(_UIArrayController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(_UIArrayController *)v5 setDelegate:v4];
    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(_UIArrayController *)v6 setOperationQueue:v7];

    v8 = [(_UIArrayController *)v6 operationQueue];
    [v8 setMaxConcurrentOperationCount:1];

    v9 = [MEMORY[0x1E695DFB8] orderedSet];
    [(_UIArrayController *)v6 setLastSnapshot:v9];
  }

  return v6;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIArrayController.m" lineNumber:56 description:@"_UIArrayController deallocated without being invalidated first"];
  }

  v5.receiver = self;
  v5.super_class = _UIArrayController;
  [(_UIArrayController *)&v5 dealloc];
}

- (void)setSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(_UIArrayController *)self operationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41___UIArrayController_setSortDescriptors___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (NSArray)sortDescriptors
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__99;
  v12 = __Block_byref_object_dispose__99;
  v13 = 0;
  v3 = [(_UIArrayController *)self operationQueue];
  v4 = [v3 underlyingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___UIArrayController_sortDescriptors__block_invoke;
  v7[3] = &unk_1E70FCDA0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setPredicate:(id)a3
{
  v4 = a3;
  v5 = [(_UIArrayController *)self operationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35___UIArrayController_setPredicate___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (NSPredicate)predicate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__99;
  v12 = __Block_byref_object_dispose__99;
  v13 = 0;
  v3 = [(_UIArrayController *)self operationQueue];
  v4 = [v3 underlyingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31___UIArrayController_predicate__block_invoke;
  v7[3] = &unk_1E70FCDA0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)invalidate
{
  v3 = [(_UIArrayController *)self operationQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32___UIArrayController_invalidate__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [v3 addOperationWithBlock:v4];
}

- (void)setOperationQueue:(id)a3
{
  v6 = a3;
  if (self->_firstUpdateSent)
  {
    v11 = v6;
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIArrayController.m" lineNumber:108 description:@"Operation queue changed after first update sent"];

    v6 = v11;
  }

  operationQueue = self->_operationQueue;
  p_operationQueue = &self->_operationQueue;
  if (operationQueue != v6)
  {
    v10 = v6;
    objc_storeStrong(p_operationQueue, a3);
    v6 = v10;
  }
}

- (id)_computeUpdatesFromOld:(id)a3 toNew:(id)a4 changedItems:(id)a5
{
  v35[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v32 = a5;
  v9 = [MEMORY[0x1E695DF70] array];
  v29 = [MEMORY[0x1E695DF70] array];
  v31 = [MEMORY[0x1E695DF70] array];
  v33 = [MEMORY[0x1E695DF90] dictionary];
  v10 = 0;
  if ([v7 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v7 objectAtIndex:v11];
      v13 = [v8 indexOfObject:v12];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v11 != v13)
      {
        v14 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
        v15 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
        [v33 setObject:v14 forKey:v15];

LABEL_10:
        if (++v10 > 0x80)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      if (v32)
      {
        if (![v32 containsObject:v12])
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = [v8 objectAtIndex:v11];
        v17 = [(_UIArrayController *)self objectAttributeModified:v12 newObject:v16];

        if (!v17)
        {
          goto LABEL_11;
        }
      }

      v18 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
      [v31 addObject:v18];

      if (++v10 >= 0x81)
      {
LABEL_15:

        v19 = MEMORY[0x1E695E0F8];
        v20 = v29;
        goto LABEL_31;
      }

LABEL_11:

      if (++v11 >= [v7 count])
      {
        goto LABEL_16;
      }
    }

    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
    [v9 addObject:v14];
    goto LABEL_10;
  }

LABEL_16:
  v21 = [v8 count];
  v20 = v29;
  if ((v21 != [v7 count] || objc_msgSend(v9, "count")) && objc_msgSend(v8, "count"))
  {
    v22 = 0;
    while (1)
    {
      v23 = [v8 objectAtIndex:v22];
      if (([v7 containsObject:v23] & 1) == 0)
      {
        v24 = [MEMORY[0x1E696AC88] indexPathForItem:v22 inSection:0];
        [v29 addObject:v24];

        if (++v10 > 0x80)
        {
          break;
        }
      }

      if (++v22 >= [v8 count])
      {
        goto LABEL_23;
      }
    }

LABEL_30:
    v19 = MEMORY[0x1E695E0F8];
    goto LABEL_31;
  }

LABEL_23:
  if ([v29 count] || objc_msgSend(v9, "count") || objc_msgSend(v33, "count") || objc_msgSend(v31, "count"))
  {
    v25 = [v7 count];
    v26 = [v29 count] + v25;
    v27 = v26 - [v9 count];
    if (v27 == [v8 count])
    {
      v34[0] = @"ins";
      v34[1] = @"del";
      v35[0] = v29;
      v35[1] = v9;
      v34[2] = @"mov";
      v34[3] = @"mod";
      v35[2] = v33;
      v35[3] = v31;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v19 = 0;
LABEL_31:

  return v19;
}

- (void)processUpdate:(id)a3 changedObjects:(id)a4
{
  v7 = a4;
  v8 = [a3 copy];
  firstUpdateSent = self->_firstUpdateSent;
  self->_firstUpdateSent = 1;
  if (!(a3 | v7))
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIArrayController.m" lineNumber:198 description:@"Either updated set or changed set must be non-nil"];
  }

  v10 = [(_UIArrayController *)self operationQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51___UIArrayController_processUpdate_changedObjects___block_invoke;
  v14[3] = &unk_1E70F5B18;
  v14[4] = self;
  v15 = v8;
  v16 = v7;
  v17 = !firstUpdateSent;
  v11 = v7;
  v12 = v8;
  [v10 addOperationWithBlock:v14];
}

- (void)callUpdateHandler:(id)a3 changeDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_UIArrayController *)self setLastSnapshot:v7];
  v8 = [(_UIArrayController *)self delegate];
  [v8 arrayController:self modelChanged:v7 differences:v6];
}

- (_UIArrayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end