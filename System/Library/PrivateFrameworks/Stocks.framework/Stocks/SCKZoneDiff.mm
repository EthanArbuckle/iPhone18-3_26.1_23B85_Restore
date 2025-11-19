@interface SCKZoneDiff
- (BOOL)hasSameBaseAsDiff:(id)a3;
- (BOOL)isEmpty;
- (SCKZoneDiff)initWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4;
- (id)applyToRecords:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyToModifyRecordsOperation:(id)a3;
@end

@implementation SCKZoneDiff

- (SCKZoneDiff)initWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SCKZoneDiff;
  v8 = [(SCKZoneDiff *)&v14 init];
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
  v5 = [(SCKZoneDiff *)self modifiedRecords];
  v6 = [(SCKZoneDiff *)self deletedRecordIDs];
  v7 = [v4 initWithModifiedRecords:v5 deletedRecordIDs:v6];

  return v7;
}

- (BOOL)isEmpty
{
  v3 = [(SCKZoneDiff *)self modifiedRecords];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SCKZoneDiff *)self deletedRecordIDs];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (id)applyToRecords:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 recordID];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = [(SCKZoneDiff *)self modifiedRecords];
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v31 + 1) + 8 * j);
        v19 = [v18 recordID];
        [v5 setObject:v18 forKeyedSubscript:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v15);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = [(SCKZoneDiff *)self deletedRecordIDs];
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [v5 removeObjectForKey:*(*(&v27 + 1) + 8 * k)];
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v22);
  }

  v25 = [v5 allValues];

  return v25;
}

- (void)applyToModifyRecordsOperation:(id)a3
{
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(SCKZoneDiff *)self modifiedRecords];
  v8 = [v6 initWithArray:v7 copyItems:1];
  [v5 setRecordsToSave:v8];

  v9 = [(SCKZoneDiff *)self deletedRecordIDs];
  [v5 setRecordIDsToDelete:v9];
}

- (BOOL)hasSameBaseAsDiff:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [(SCKZoneDiff *)self deletedRecordIDs];
  v7 = [v5 setWithArray:v6];

  v8 = MEMORY[0x277CBEB98];
  v9 = [v4 deletedRecordIDs];
  v10 = [v8 setWithArray:v9];

  if ([v7 isEqualToSet:v10])
  {
    v41 = v10;
    v42 = v7;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = [(SCKZoneDiff *)self modifiedRecords];
    v13 = [v12 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v52 + 1) + 8 * i);
          v18 = [v17 recordID];
          [v11 setObject:v17 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v14);
    }

    v19 = [MEMORY[0x277CBEB38] dictionary];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v20 = [v4 modifiedRecords];
    v21 = [v20 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v49;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v48 + 1) + 8 * j);
          v26 = [v25 recordID];
          [v19 setObject:v25 forKey:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v22);
    }

    v27 = [v11 count];
    if (v27 == [v19 count])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v28 = v11;
      v29 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v29)
      {
        v30 = v29;
        v40 = v4;
        v43 = *v45;
        while (2)
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v45 != v43)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v44 + 1) + 8 * k);
            v33 = [v28 objectForKeyedSubscript:{v32, v40}];
            v34 = [v19 objectForKeyedSubscript:v32];
            v35 = MEMORY[0x277D82BB8];
            v36 = [v33 recordChangeTag];
            v37 = [v34 recordChangeTag];
            LODWORD(v35) = [v35 sck_object:v36 isEqualToObject:v37];

            if (!v35)
            {
              v38 = 0;
              goto LABEL_29;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

        v38 = 1;
LABEL_29:
        v4 = v40;
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

    v10 = v41;

    v7 = v42;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

@end