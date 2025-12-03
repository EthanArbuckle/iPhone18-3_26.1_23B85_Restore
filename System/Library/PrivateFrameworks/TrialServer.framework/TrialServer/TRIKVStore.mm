@interface TRIKVStore
- (TRIKVStore)initWithDatabase:(id)database;
- (id)blobForKey:(id)key usingTransaction:(id)transaction;
- (void)removeBlobForKey:(id)key usingTransaction:(id)transaction;
- (void)setBlob:(id)blob forKey:(id)key usingTransaction:(id)transaction;
@end

@implementation TRIKVStore

- (TRIKVStore)initWithDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIKVStore.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v11.receiver = self;
  v11.super_class = TRIKVStore;
  v7 = [(TRIKVStore *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, database);
  }

  return v8;
}

- (void)setBlob:(id)blob forKey:(id)key usingTransaction:(id)transaction
{
  blobCopy = blob;
  keyCopy = key;
  transactionCopy = transaction;
  if (blobCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIKVStore.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"blob"}];

    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIKVStore.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__TRIKVStore_setBlob_forKey_usingTransaction___block_invoke;
  v18[3] = &unk_279DE1A98;
  v19 = keyCopy;
  v20 = blobCopy;
  v12 = blobCopy;
  v13 = keyCopy;
  v14 = MEMORY[0x2743948D0](v18);
  v15 = v14;
  if (transactionCopy)
  {
    (*(v14 + 16))(v14, transactionCopy);
  }

  else
  {
    [(TRIKVStore *)self writeTransactionWithFailableBlock:v14];
  }
}

uint64_t __46__TRIKVStore_setBlob_forKey_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TRIKVStore_setBlob_forKey_usingTransaction___block_invoke_2;
  v6[3] = &unk_279DDFB20;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v3 prepAndRunQuery:@" INSERT OR REPLACE INTO kvstore(    key onPrep:bytes) VALUES(    :key onRow::bytes);" onError:{v6, 0, 0}];

  v4 = MEMORY[0x277D42670];
  return *v4;
}

void __46__TRIKVStore_setBlob_forKey_usingTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":key" toNSString:v3];
  [v4 bindNamedParam:":bytes" toNSData:*(a1 + 40)];
}

- (id)blobForKey:(id)key usingTransaction:(id)transaction
{
  keyCopy = key;
  transactionCopy = transaction;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIKVStore.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__21;
  v24 = __Block_byref_object_dispose__21;
  v25 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__TRIKVStore_blobForKey_usingTransaction___block_invoke;
  v15[3] = &unk_279DE1AE8;
  v9 = keyCopy;
  v18 = &v20;
  v19 = a2;
  v16 = v9;
  selfCopy = self;
  v10 = MEMORY[0x2743948D0](v15);
  v11 = v10;
  if (transactionCopy)
  {
    (*(v10 + 16))(v10, transactionCopy);
  }

  else
  {
    [(TRIKVStore *)self readTransactionWithFailableBlock:v10];
  }

  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
}

uint64_t __42__TRIKVStore_blobForKey_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__TRIKVStore_blobForKey_usingTransaction___block_invoke_2;
  v9[3] = &unk_279DDF860;
  v10 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TRIKVStore_blobForKey_usingTransaction___block_invoke_3;
  v6[3] = &unk_279DE1AC0;
  v8 = *(a1 + 56);
  v7 = *(a1 + 40);
  [v3 prepAndRunQuery:@" SELECT bytes FROM     kvstore WHERE     key = :key;" onPrep:v9 onRow:v6 onError:0];

  v4 = MEMORY[0x277D42670];
  return *v4;
}

uint64_t __42__TRIKVStore_blobForKey_usingTransaction___block_invoke_3(void *a1, void *a2)
{
  v3 = [a2 getNSDataForColumnName:"bytes" table:0];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIKVStore.m" lineNumber:87 description:@"NULL bytes read for NOT NULL column"];
  }

  return *MEMORY[0x277D42698];
}

- (void)removeBlobForKey:(id)key usingTransaction:(id)transaction
{
  keyCopy = key;
  transactionCopy = transaction;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIKVStore.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__TRIKVStore_removeBlobForKey_usingTransaction___block_invoke;
  v13[3] = &unk_279DE1B10;
  v14 = keyCopy;
  v9 = keyCopy;
  v10 = MEMORY[0x2743948D0](v13);
  v11 = v10;
  if (transactionCopy)
  {
    (*(v10 + 16))(v10, transactionCopy);
  }

  else
  {
    [(TRIKVStore *)self writeTransactionWithFailableBlock:v10];
  }
}

uint64_t __48__TRIKVStore_removeBlobForKey_usingTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__TRIKVStore_removeBlobForKey_usingTransaction___block_invoke_2;
  v6[3] = &unk_279DDF860;
  v7 = *(a1 + 32);
  [v3 prepAndRunQuery:@" DELETE FROM     kvstore WHERE     key = :key;" onPrep:v6 onRow:0 onError:0];

  v4 = MEMORY[0x277D42670];
  return *v4;
}

@end