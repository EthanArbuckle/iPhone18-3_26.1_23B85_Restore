@interface SCKZoneSnapshot
- (BOOL)isEqualToSnapshot:(id)a3;
- (SCKZoneSnapshot)initWithZoneSchema:(id)a3 records:(id)a4;
- (id)descriptionOfContents;
- (id)recordOfType:(id)a3 passingTest:(id)a4;
- (id)recordWithName:(id)a3;
- (id)recordsOfType:(id)a3;
@end

@implementation SCKZoneSnapshot

- (SCKZoneSnapshot)initWithZoneSchema:(id)a3 records:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [SCKZoneSnapshot initWithZoneSchema:a2 records:self];
  }

  v15.receiver = self;
  v15.super_class = SCKZoneSnapshot;
  v10 = [(SCKZoneSnapshot *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_zoneSchema, a3);
    if (v9)
    {
      v12 = [v9 copy];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }

    records = v11->_records;
    v11->_records = v12;
  }

  return v11;
}

- (BOOL)isEqualToSnapshot:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCKZoneSnapshot *)self records];
  v6 = [v5 sck_dictionaryWithKeyBlock:&__block_literal_global_9];

  v7 = [v4 records];
  v8 = [v7 sck_dictionaryWithKeyBlock:&__block_literal_global_6];

  v9 = [v6 count];
  if (v9 == [v8 count])
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = [v6 allKeys];
    v12 = [v10 setWithArray:v11];

    v13 = MEMORY[0x277CBEB98];
    v14 = [v8 allKeys];
    v15 = [v13 setWithArray:v14];

    if ([v12 isEqualToSet:v15])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = v6;
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v36 = v4;
        v37 = *v39;
        v34 = v15;
        v35 = v12;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v39 != v37)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            v21 = [v16 objectForKeyedSubscript:{v20, v34, v35, v36}];
            v22 = [v8 objectForKeyedSubscript:v20];
            v23 = MEMORY[0x277D82BB8];
            v24 = [v21 recordChangeTag];
            v25 = [v22 recordChangeTag];
            LODWORD(v23) = [v23 sck_object:v24 isEqualToObject:v25];

            if (!v23 || ([v21 valuesByKey], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "valuesByKey"), v27 = objc_claimAutoreleasedReturnValue(), v28 = __37__SCKZoneSnapshot_isEqualToSnapshot___block_invoke_6(v27, v26, v27), v27, v26, !v28) || (objc_msgSend(v21, "encryptedValuesByKey"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "encryptedValuesByKey"), v30 = objc_claimAutoreleasedReturnValue(), v31 = __37__SCKZoneSnapshot_isEqualToSnapshot___block_invoke_6(v30, v29, v30), v30, v29, !v31))
            {

              v32 = 0;
              v12 = v35;
              v4 = v36;
              v15 = v34;
              goto LABEL_18;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
          v32 = 1;
          v12 = v35;
          v4 = v36;
          v15 = v34;
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v32 = 1;
      }

LABEL_18:
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

uint64_t __37__SCKZoneSnapshot_isEqualToSnapshot___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  v7 = [v4 changedKeys];
  v8 = [v6 setWithArray:v7];

  v9 = MEMORY[0x277CBEB98];
  v10 = [v5 changedKeys];
  v11 = [v9 setWithArray:v10];

  if ([v8 isEqualToSet:v11])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v23 = v11;
      v24 = v8;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [v4 objectForKey:{v17, v23, v24, v25}];
          v19 = [v5 objectForKey:v17];
          v20 = [MEMORY[0x277D82BB8] sck_object:v18 isEqualToObject:v19];

          if (!v20)
          {
            v21 = 0;
            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_13:
      v11 = v23;
      v8 = v24;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)recordsOfType:(id)a3
{
  v4 = a3;
  v5 = [(SCKZoneSnapshot *)self records];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__SCKZoneSnapshot_recordsOfType___block_invoke;
  v11[3] = &unk_279D15C78;
  v12 = v4;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:v11];

  v8 = [(SCKZoneSnapshot *)self records];
  v9 = [v8 objectsAtIndexes:v7];

  return v9;
}

uint64_t __33__SCKZoneSnapshot_recordsOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)recordOfType:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCKZoneSnapshot *)self records];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __44__SCKZoneSnapshot_recordOfType_passingTest___block_invoke;
  v18 = &unk_279D16738;
  v19 = v6;
  v20 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 indexOfObjectPassingTest:&v15];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(SCKZoneSnapshot *)self records:v15];
    v12 = [v13 objectAtIndex:v11];
  }

  return v12;
}

uint64_t __44__SCKZoneSnapshot_recordOfType_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)recordWithName:(id)a3
{
  v4 = MEMORY[0x277CBC5D0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(SCKZoneSnapshot *)self zoneSchema];
  v8 = [v7 zoneID];
  v9 = [v6 initWithRecordName:v5 zoneID:v8];

  v10 = [(SCKZoneSnapshot *)self records];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__SCKZoneSnapshot_recordWithName___block_invoke;
  v16[3] = &unk_279D15C78;
  v11 = v9;
  v17 = v11;
  v12 = [v10 indexOfObjectPassingTest:v16];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(SCKZoneSnapshot *)self records];
    v13 = [v14 objectAtIndex:v12];
  }

  return v13;
}

uint64_t __34__SCKZoneSnapshot_recordWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)descriptionOfContents
{
  v43 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB18] array];
  v29 = v28 = self;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(SCKZoneSnapshot *)self records];
  v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v30)
  {
    v27 = *v38;
    do
    {
      v3 = 0;
      do
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v3;
        v4 = *(*(&v37 + 1) + 8 * v3);
        v5 = [MEMORY[0x277CBEB38] dictionary];
        v6 = [v4 recordID];
        v7 = [v6 recordName];
        [v5 setObject:v7 forKeyedSubscript:@"recordName"];

        v8 = [v4 recordChangeTag];
        [v5 setObject:v8 forKeyedSubscript:@"changeTag"];

        v9 = [v4 creationDate];
        [v5 setObject:v9 forKeyedSubscript:@"creationDate"];

        v10 = [v4 modificationDate];
        [v5 setObject:v10 forKeyedSubscript:@"modificationDate"];

        v11 = [(SCKZoneSnapshot *)v28 zoneSchema];
        v12 = [v4 recordType];
        v13 = [v11 schemaForRecordType:v12];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = v13;
        v14 = [v13 fieldSchemas];
        v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v34;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v33 + 1) + 8 * i);
              if ([v19 isEncrypted])
              {
                [v4 encryptedValuesByKey];
              }

              else
              {
                [v4 valuesByKey];
              }
              v20 = ;
              v21 = [v19 name];
              v22 = [v20 objectForKeyedSubscript:v21];

              if (v22)
              {
                v23 = [v19 name];
                [v5 setObject:v22 forKeyedSubscript:v23];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v16);
        }

        [v29 addObject:v5];
        v3 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);
  }

  v24 = [v29 description];

  return v24;
}

- (void)initWithZoneSchema:(uint64_t)a1 records:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SCKZoneSnapshot.m" lineNumber:36 description:@"zone read context requires non-nil zone schema"];
}

@end