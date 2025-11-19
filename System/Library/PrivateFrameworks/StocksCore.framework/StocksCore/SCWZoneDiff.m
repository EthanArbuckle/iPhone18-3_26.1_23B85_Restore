@interface SCWZoneDiff
- (BOOL)hasSameBaseAsDiff:(id)a3;
- (BOOL)isEmpty;
- (SCWZoneDiff)initWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4;
- (id)applyToRecords:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyToModifyRecordsOperation:(id)a3;
@end

@implementation SCWZoneDiff

- (SCWZoneDiff)initWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SCWZoneDiff;
  v8 = [(SCWZoneDiff *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    modifiedRecords = v8->_modifiedRecords;
    v8->_modifiedRecords = v9;

    v11 = [v7 copy];
    deletedRecordIDs = v8->_deletedRecordIDs;
    v8->_deletedRecordIDs = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SCWZoneDiff *)self modifiedRecords];
  v6 = [(SCWZoneDiff *)self deletedRecordIDs];
  v7 = [v4 initWithModifiedRecords:v5 deletedRecordIDs:v6];

  return v7;
}

- (BOOL)isEmpty
{
  v3 = [(SCWZoneDiff *)self modifiedRecords];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SCWZoneDiff *)self deletedRecordIDs];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (id)applyToRecords:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v11 recordID];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [(SCWZoneDiff *)self modifiedRecords];
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * j);
        v19 = [v18 recordID];
        [v5 setObject:v18 forKeyedSubscript:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v15);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [(SCWZoneDiff *)self deletedRecordIDs];
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [v5 removeObjectForKey:*(*(&v28 + 1) + 8 * k)];
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v22);
  }

  v25 = [v5 allValues];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)applyToModifyRecordsOperation:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(SCWZoneDiff *)self modifiedRecords];
  v8 = [v6 initWithArray:v7 copyItems:1];
  [v5 setRecordsToSave:v8];

  v9 = [(SCWZoneDiff *)self deletedRecordIDs];
  [v5 setRecordIDsToDelete:v9];
}

- (BOOL)hasSameBaseAsDiff:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(SCWZoneDiff *)self deletedRecordIDs];
  v7 = [v5 setWithArray:v6];

  v8 = MEMORY[0x1E695DFD8];
  v9 = [v4 deletedRecordIDs];
  v10 = [v8 setWithArray:v9];

  if ([v7 isEqualToSet:v10])
  {
    v42 = v10;
    v43 = v7;
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = [(SCWZoneDiff *)self modifiedRecords];
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v54;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v53 + 1) + 8 * i);
          v18 = [v17 recordID];
          [v11 setObject:v17 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v14);
    }

    v19 = [MEMORY[0x1E695DF90] dictionary];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v20 = [v4 modifiedRecords];
    v21 = [v20 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v49 + 1) + 8 * j);
          v26 = [v25 recordID];
          [v19 setObject:v25 forKey:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v22);
    }

    v27 = [v11 count];
    if (v27 == [v19 count])
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v28 = v11;
      v29 = [v28 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v29)
      {
        v30 = v29;
        v41 = v4;
        v44 = *v46;
        while (2)
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v46 != v44)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v45 + 1) + 8 * k);
            v33 = [v28 objectForKeyedSubscript:{v32, v41}];
            v34 = [v19 objectForKeyedSubscript:v32];
            v35 = MEMORY[0x1E69E58C0];
            v36 = [v33 recordChangeTag];
            v37 = [v34 recordChangeTag];
            LODWORD(v35) = [v35 scw_object:v36 isEqualToObject:v37];

            if (!v35)
            {
              v38 = 0;
              goto LABEL_29;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v45 objects:v57 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

        v38 = 1;
LABEL_29:
        v4 = v41;
      }

      else
      {
        v38 = 1;
      }
    }

    else
    {
      v38 = 0;
    }

    v10 = v42;

    v7 = v43;
  }

  else
  {
    v38 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

@end