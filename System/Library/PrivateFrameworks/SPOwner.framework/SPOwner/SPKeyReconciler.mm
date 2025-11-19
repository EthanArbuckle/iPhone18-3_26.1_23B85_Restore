@interface SPKeyReconciler
- (SPKeyReconciler)initWithDictionary:(id)a3;
- (id)description;
- (id)reconcileKey:(id)a3 matchedIndex:(unsigned int *)a4 sequence:(unsigned __int8 *)a5 error:(unsigned __int8 *)a6;
@end

@implementation SPKeyReconciler

- (SPKeyReconciler)initWithDictionary:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SPKeyReconciler;
  v6 = [(SPKeyReconciler *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingDictionary, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyIndices = v7->_keyIndices;
    v7->_keyIndices = v8;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__SPKeyReconciler_initWithDictionary___block_invoke;
    v11[3] = &unk_279B59EA0;
    v12 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
  }

  return v7;
}

void __38__SPKeyReconciler_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SPKeyReconciler_initWithDictionary___block_invoke_2;
  v7[3] = &unk_279B59E78;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __38__SPKeyReconciler_initWithDictionary___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  handle_from_file_descriptor = sp_key_index_map_create_handle_from_file_descriptor([v5 fileDescriptor]);
  v7 = [SPKeyIndexMap alloc];
  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(SPKeyIndexMap *)v7 initWithBeaconIdentifier:*(a1 + 32) keySequence:v8 mapHandle:handle_from_file_descriptor];
  [v5 closeFile];

  [*(*(a1 + 40) + 16) addObject:v9];
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"Backed by %lu keymaps\n", -[NSMutableArray count](self->_keyIndices, "count")];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_keyIndices;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 beaconIdentifier];
        if ([v8 sequence] == 1)
        {
          v10 = "primary";
        }

        else
        {
          v10 = "secondary";
        }

        [v3 appendFormat:@"\tIndex for beacon %@ sequence %s\n", v9, v10];

        v11 = [v8 headerString];
        [v3 appendFormat:@"\t%@\n", v11];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)reconcileKey:(id)a3 matchedIndex:(unsigned int *)a4 sequence:(unsigned __int8 *)a5 error:(unsigned __int8 *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if ([v10 length] >= 6 && objc_msgSend(v10, "length") < 0x1D)
  {
    v21 = a5;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_keyIndices;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v22 = 0;
          if (sp_key_index_map_contains_key_prefix([v18 mapHandle], objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"), &v22))
          {
            if (a4)
            {
              *a4 = v22;
            }

            if (v21)
            {
              *v21 = [v18 sequence];
            }

            if (a6)
            {
              *a6 = 0;
            }

            v11 = [v18 beaconIdentifier];

            goto LABEL_24;
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (a6)
    {
      v11 = 0;
      v12 = 2;
      goto LABEL_5;
    }
  }

  else if (a6)
  {
    v11 = 0;
    v12 = 1;
LABEL_5:
    *a6 = v12;
    goto LABEL_24;
  }

  v11 = 0;
LABEL_24:

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

@end