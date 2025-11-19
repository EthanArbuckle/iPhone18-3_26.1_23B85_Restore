@interface PTParameterRecords
- (PTParameterRecords)initWithDictionary:(id)a3;
- (void)addRecordWithKeyPath:(id)a3 domainID:(id)a4 recordClassName:(id)a5 value:(id)a6;
- (void)removeRecordWithKeyPath:(id)a3 domainID:(id)a4;
@end

@implementation PTParameterRecords

- (PTParameterRecords)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PTParameterRecords;
  v5 = [(PTParameterRecords *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PTParameterRecords *)v5 setRecordDictionary:v4];
    if (!_parameterRecordsQueue)
    {
      v7 = dispatch_queue_create("com.apple.PrototypeTools.PTParameterRecords", 0);
      v8 = _parameterRecordsQueue;
      _parameterRecordsQueue = v7;
    }
  }

  return v6;
}

- (void)addRecordWithKeyPath:(id)a3 domainID:(id)a4 recordClassName:(id)a5 value:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _parameterRecordsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PTParameterRecords_addRecordWithKeyPath_domainID_recordClassName_value___block_invoke;
  block[3] = &unk_27835EF40;
  block[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  dispatch_async(v14, block);
}

void __74__PTParameterRecords_addRecordWithKeyPath_domainID_recordClassName_value___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recordDictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (!v3)
  {
    v4 = [*(a1 + 32) recordDictionary];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v4 setValue:v5 forKey:*(a1 + 40)];
  }

  if ([*(a1 + 48) isEqual:&stru_282FA6D50])
  {
    v6 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "keyPath is an empty string.", buf, 2u);
    }
  }

  else
  {
    v18 = [*(a1 + 48) componentsSeparatedByString:@"."];
    v7 = [*(a1 + 32) recordDictionary];
    v8 = [v7 objectForKey:*(a1 + 40)];

    if ([v18 count] == 1)
    {
      v9 = v8;
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = [v18 objectAtIndexedSubscript:v10];
        v12 = [v8 objectForKey:v11];

        if (!v12)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v14 = [v18 objectAtIndexedSubscript:v10];
          [v8 setValue:v13 forKey:v14];
        }

        v15 = [v18 objectAtIndexedSubscript:v10];
        v9 = [v8 objectForKey:v15];

        ++v10;
        v8 = v9;
      }

      while ([v18 count] - 1 > v10);
    }

    v16 = [[PTParameterRecordLeaf alloc] initWithRecordClassName:*(a1 + 56) value:*(a1 + 64)];
    v17 = [v18 lastObject];
    [v9 setValue:v16 forKey:v17];
  }
}

- (void)removeRecordWithKeyPath:(id)a3 domainID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _parameterRecordsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PTParameterRecords_removeRecordWithKeyPath_domainID___block_invoke;
  block[3] = &unk_27835ED60;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __55__PTParameterRecords_removeRecordWithKeyPath_domainID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recordDictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v21 = [*(a1 + 48) componentsSeparatedByString:@"."];
    v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [*(a1 + 32) recordDictionary];
    v7 = [v6 objectForKey:*(a1 + 40)];

    [v5 addObject:*(a1 + 40)];
    if ([v21 count])
    {
      v8 = 0;
      v9 = v21;
      while (1)
      {
        v10 = [v9 objectAtIndexedSubscript:v8];
        v11 = [v7 objectForKey:v10];

        if (!v11)
        {
          break;
        }

        v12 = [v7 allKeys];
        v13 = [v12 count];

        if (v13 >= 2)
        {
          v14 = [v5 copy];

          v4 = v14;
        }

        v15 = [v21 objectAtIndexedSubscript:v8];
        [v5 addObject:v15];

        ++v8;
        v7 = v11;
        v16 = [v21 count] > v8;
        v9 = v21;
        if (!v16)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v11 = v7;
LABEL_11:
      v17 = [*(a1 + 32) recordDictionary];

      if ([v4 count])
      {
        v18 = 0;
        do
        {
          v19 = [v4 objectAtIndexedSubscript:v18];
          v7 = [v17 objectForKey:v19];

          ++v18;
          v17 = v7;
        }

        while ([v4 count] > v18);
      }

      else
      {
        v7 = v17;
      }

      v20 = [v5 objectAtIndex:{objc_msgSend(v4, "count")}];
      [v7 removeObjectForKey:v20];
    }
  }
}

@end