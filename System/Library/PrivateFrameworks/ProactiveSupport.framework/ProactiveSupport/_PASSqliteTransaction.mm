@interface _PASSqliteTransaction
+ (_PASDBTransactionCompletion_)readTransactionWithHandle:(id)handle failableBlock:(id)block;
+ (_PASDBTransactionCompletion_)writeTransactionWithHandle:(id)handle failableBlock:(id)block;
+ (void)readTransactionWithHandle:(id)handle block:(id)block;
+ (void)writeTransactionWithHandle:(id)handle block:(id)block;
@end

@implementation _PASSqliteTransaction

+ (_PASDBTransactionCompletion_)writeTransactionWithHandle:(id)handle failableBlock:(id)block
{
  handleCopy = handle;
  blockCopy = block;
  v9 = blockCopy;
  if (!handleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66___PASSqliteTransaction_writeTransactionWithHandle_failableBlock___block_invoke;
  v16[3] = &unk_1E77F2068;
  v17 = handleCopy;
  v18 = v9;
  v10 = handleCopy;
  v11 = v9;
  v12.var0 = [v10 writeTransactionWithFailableBlock:v16];

  return v12;
}

+ (_PASDBTransactionCompletion_)readTransactionWithHandle:(id)handle failableBlock:(id)block
{
  handleCopy = handle;
  blockCopy = block;
  v9 = blockCopy;
  if (!handleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___PASSqliteTransaction_readTransactionWithHandle_failableBlock___block_invoke;
  v16[3] = &unk_1E77F2068;
  v17 = handleCopy;
  v18 = v9;
  v10 = handleCopy;
  v11 = v9;
  v12.var0 = [v10 readTransactionWithFailableBlock:v16];

  return v12;
}

+ (void)writeTransactionWithHandle:(id)handle block:(id)block
{
  handleCopy = handle;
  blockCopy = block;
  v9 = blockCopy;
  if (!handleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58___PASSqliteTransaction_writeTransactionWithHandle_block___block_invoke;
  v14[3] = &unk_1E77F22E8;
  v15 = handleCopy;
  v16 = v9;
  v10 = handleCopy;
  v11 = v9;
  [v10 writeTransaction:v14];
}

+ (void)readTransactionWithHandle:(id)handle block:(id)block
{
  handleCopy = handle;
  blockCopy = block;
  v9 = blockCopy;
  if (!handleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASSqliteTransaction.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___PASSqliteTransaction_readTransactionWithHandle_block___block_invoke;
  v14[3] = &unk_1E77F22E8;
  v15 = handleCopy;
  v16 = v9;
  v10 = handleCopy;
  v11 = v9;
  [v10 readTransaction:v14];
}

@end