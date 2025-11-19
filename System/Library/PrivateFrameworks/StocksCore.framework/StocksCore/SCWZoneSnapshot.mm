@interface SCWZoneSnapshot
- (BOOL)isEqualToSnapshot:(id)a3;
- (SCWZoneSnapshot)initWithZoneSchema:(id)a3 records:(id)a4;
- (id)descriptionOfContents;
- (id)recordOfType:(id)a3 passingTest:(id)a4;
- (id)recordWithName:(id)a3;
- (id)recordsOfType:(id)a3;
@end

@implementation SCWZoneSnapshot

- (id)descriptionOfContents
{
  v44 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF70] array];
  v30 = v29 = self;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(SCWZoneSnapshot *)self records];
  v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v31)
  {
    v28 = *v39;
    do
    {
      v3 = 0;
      do
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v3;
        v4 = *(*(&v38 + 1) + 8 * v3);
        v5 = [MEMORY[0x1E695DF90] dictionary];
        v6 = [v4 recordID];
        v7 = [v6 recordName];
        [v5 setObject:v7 forKeyedSubscript:@"recordName"];

        v8 = [v4 recordChangeTag];
        [v5 setObject:v8 forKeyedSubscript:@"changeTag"];

        v9 = [v4 creationDate];
        [v5 setObject:v9 forKeyedSubscript:@"creationDate"];

        v10 = [v4 modificationDate];
        [v5 setObject:v10 forKeyedSubscript:@"modificationDate"];

        v11 = [(SCWZoneSnapshot *)v29 zoneSchema];
        v12 = [v4 recordType];
        v13 = [v11 schemaForRecordType:v12];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = v13;
        v14 = [v13 fieldSchemas];
        v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v34 + 1) + 8 * i);
              if ([v19 isEncrypted])
              {
                [v4 encryptedValues];
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

            v16 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v16);
        }

        [v30 addObject:v5];
        v3 = v33 + 1;
      }

      while (v33 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v31);
  }

  v24 = [v30 description];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (SCWZoneSnapshot)initWithZoneSchema:(id)a3 records:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SCWZoneSnapshot;
  v9 = [(SCWZoneSnapshot *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneSchema, a3);
    if (v8)
    {
      v11 = [v8 copy];
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    records = v10->_records;
    v10->_records = v11;
  }

  return v10;
}

- (BOOL)isEqualToSnapshot:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SCWZoneSnapshot *)self records];
  v6 = [v5 scw_dictionaryWithKeyBlock:&__block_literal_global_3];

  v7 = [v4 records];
  v8 = [v7 scw_dictionaryWithKeyBlock:&__block_literal_global_2];

  v9 = [v6 count];
  if (v9 == [v8 count])
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = [v6 allKeys];
    v12 = [v10 setWithArray:v11];

    v13 = MEMORY[0x1E695DFD8];
    v14 = [v8 allKeys];
    v15 = [v13 setWithArray:v14];

    if ([v12 isEqualToSet:v15])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = v6;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v37 = v4;
        v38 = *v40;
        v35 = v15;
        v36 = v12;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v40 != v38)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v39 + 1) + 8 * i);
            v21 = [v16 objectForKeyedSubscript:{v20, v35, v36, v37}];
            v22 = [v8 objectForKeyedSubscript:v20];
            v23 = MEMORY[0x1E69E58C0];
            v24 = [v21 recordChangeTag];
            v25 = [v22 recordChangeTag];
            LODWORD(v23) = [v23 scw_object:v24 isEqualToObject:v25];

            if (!v23)
            {
              goto LABEL_16;
            }

            v26 = [v21 valuesByKey];
            v27 = [v22 valuesByKey];
            v28 = __37__SCWZoneSnapshot_isEqualToSnapshot___block_invoke_6(v27, v26, v27);

            if (!v28 || ([v21 encryptedValues], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "encryptedValues"), v30 = objc_claimAutoreleasedReturnValue(), v31 = __37__SCWZoneSnapshot_isEqualToSnapshot___block_invoke_6(v30, v29, v30), v30, v29, !v31))
            {
LABEL_16:

              v32 = 0;
              v12 = v36;
              v4 = v37;
              v15 = v35;
              goto LABEL_18;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
          v32 = 1;
          v12 = v36;
          v4 = v37;
          v15 = v35;
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

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t __37__SCWZoneSnapshot_isEqualToSnapshot___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E695DFD8];
  v7 = [v4 changedKeys];
  v8 = [v6 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v10 = [v5 changedKeys];
  v11 = [v9 setWithArray:v10];

  if ([v8 isEqualToSet:v11])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v24 = v11;
      v25 = v8;
      v15 = *v27;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = [v4 objectForKey:{v17, v24, v25, v26}];
          v19 = [v5 objectForKey:v17];
          v20 = [MEMORY[0x1E69E58C0] scw_object:v18 isEqualToObject:v19];

          if (!v20)
          {
            v21 = 0;
            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_13:
      v11 = v24;
      v8 = v25;
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

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)recordsOfType:(id)a3
{
  v4 = a3;
  v5 = [(SCWZoneSnapshot *)self records];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__SCWZoneSnapshot_recordsOfType___block_invoke;
  v11[3] = &unk_1E85E3DE8;
  v12 = v4;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:v11];

  v8 = [(SCWZoneSnapshot *)self records];
  v9 = [v8 objectsAtIndexes:v7];

  return v9;
}

uint64_t __33__SCWZoneSnapshot_recordsOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)recordOfType:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWZoneSnapshot *)self records];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __44__SCWZoneSnapshot_recordOfType_passingTest___block_invoke;
  v18 = &unk_1E85E4210;
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
    v13 = [(SCWZoneSnapshot *)self records:v15];
    v12 = [v13 objectAtIndex:v11];
  }

  return v12;
}

uint64_t __44__SCWZoneSnapshot_recordOfType_passingTest___block_invoke(uint64_t a1, void *a2)
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
  v4 = MEMORY[0x1E695BA70];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(SCWZoneSnapshot *)self zoneSchema];
  v8 = [v7 zoneID];
  v9 = [v6 initWithRecordName:v5 zoneID:v8];

  v10 = [(SCWZoneSnapshot *)self records];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34__SCWZoneSnapshot_recordWithName___block_invoke;
  v16[3] = &unk_1E85E3DE8;
  v11 = v9;
  v17 = v11;
  v12 = [v10 indexOfObjectPassingTest:v16];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(SCWZoneSnapshot *)self records];
    v13 = [v14 objectAtIndex:v12];
  }

  return v13;
}

uint64_t __34__SCWZoneSnapshot_recordWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end