@interface STStatusDomainDataChangeLog
- (BSIntegerSet)domainsWithData;
- (STStatusDomainDataChangeLog)initWithRecordKeys:(id)a3;
- (id)currentDataForDomain:(unint64_t)a3;
- (id)recordForKey:(id)a3;
@end

@implementation STStatusDomainDataChangeLog

- (STStatusDomainDataChangeLog)initWithRecordKeys:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = STStatusDomainDataChangeLog;
  v5 = [(STStatusDomainDataChangeLog *)&v24 init];
  if (v5)
  {
    v6 = [v4 copy];
    sortedRecordKeys = v5->_sortedRecordKeys;
    v5->_sortedRecordKeys = v6;

    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = objc_alloc_init(STStatusDomainDataChangeRecord);
          [v8 setObject:v15 forKey:{v14, v20}];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = [v8 copy];
    recordsByKey = v5->_recordsByKey;
    v5->_recordsByKey = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BSIntegerSet)domainsWithData
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6E8]);
  if (self)
  {
    self = self->_recordsByKey;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__STStatusDomainDataChangeLog_domainsWithData__block_invoke;
  v6[3] = &unk_1E85DF230;
  v4 = v3;
  v7 = v4;
  [(STStatusDomainDataChangeLog *)self enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __46__STStatusDomainDataChangeLog_domainsWithData__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 domainsWithData];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__STStatusDomainDataChangeLog_domainsWithData__block_invoke_2;
  v5[3] = &unk_1E85DF208;
  v6 = *(a1 + 32);
  [v4 enumerateWithBlock:v5];
}

- (id)currentDataForDomain:(unint64_t)a3
{
  if (self)
  {
    recordsByKey = self->_recordsByKey;
  }

  else
  {
    recordsByKey = 0;
  }

  v6 = recordsByKey;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  if (self)
  {
    sortedRecordKeys = self->_sortedRecordKeys;
  }

  else
  {
    sortedRecordKeys = 0;
  }

  v8 = sortedRecordKeys;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__STStatusDomainDataChangeLog_currentDataForDomain___block_invoke;
  v12[3] = &unk_1E85DF258;
  v9 = v6;
  v13 = v9;
  v14 = &v16;
  v15 = a3;
  [(NSOrderedSet *)v8 enumerateObjectsWithOptions:2 usingBlock:v12];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __52__STStatusDomainDataChangeLog_currentDataForDomain___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = [*(a1 + 32) objectForKey:a2];
  v6 = [v9 currentDataForDomain:*(a1 + 48)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)recordForKey:(id)a3
{
  if (self)
  {
    self = self->_recordsByKey;
  }

  return [(STStatusDomainDataChangeLog *)self objectForKey:a3];
}

@end