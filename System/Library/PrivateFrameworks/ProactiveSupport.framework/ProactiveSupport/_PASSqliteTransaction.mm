@interface _PASSqliteTransaction
+ (_PASDBTransactionCompletion_)readTransactionWithHandle:(id)a3 failableBlock:(id)a4;
+ (_PASDBTransactionCompletion_)writeTransactionWithHandle:(id)a3 failableBlock:(id)a4;
+ (void)readTransactionWithHandle:(id)a3 block:(id)a4;
+ (void)writeTransactionWithHandle:(id)a3 block:(id)a4;
@end

@implementation _PASSqliteTransaction

+ (_PASDBTransactionCompletion_)writeTransactionWithHandle:(id)a3 failableBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"_PASSqliteTransaction.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"_PASSqliteTransaction.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66___PASSqliteTransaction_writeTransactionWithHandle_failableBlock___block_invoke;
  v16[3] = &unk_1E77F2068;
  v17 = v7;
  v18 = v9;
  v10 = v7;
  v11 = v9;
  v12.var0 = [v10 writeTransactionWithFailableBlock:v16];

  return v12;
}

+ (_PASDBTransactionCompletion_)readTransactionWithHandle:(id)a3 failableBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"_PASSqliteTransaction.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"_PASSqliteTransaction.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___PASSqliteTransaction_readTransactionWithHandle_failableBlock___block_invoke;
  v16[3] = &unk_1E77F2068;
  v17 = v7;
  v18 = v9;
  v10 = v7;
  v11 = v9;
  v12.var0 = [v10 readTransactionWithFailableBlock:v16];

  return v12;
}

+ (void)writeTransactionWithHandle:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"_PASSqliteTransaction.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"_PASSqliteTransaction.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58___PASSqliteTransaction_writeTransactionWithHandle_block___block_invoke;
  v14[3] = &unk_1E77F22E8;
  v15 = v7;
  v16 = v9;
  v10 = v7;
  v11 = v9;
  [v10 writeTransaction:v14];
}

+ (void)readTransactionWithHandle:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"_PASSqliteTransaction.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"_PASSqliteTransaction.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___PASSqliteTransaction_readTransactionWithHandle_block___block_invoke;
  v14[3] = &unk_1E77F22E8;
  v15 = v7;
  v16 = v9;
  v10 = v7;
  v11 = v9;
  [v10 readTransaction:v14];
}

@end