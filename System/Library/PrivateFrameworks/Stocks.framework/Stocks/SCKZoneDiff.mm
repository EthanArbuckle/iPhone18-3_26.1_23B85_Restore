@interface SCKZoneDiff
- (BOOL)hasSameBaseAsDiff:(id)diff;
- (BOOL)isEmpty;
- (SCKZoneDiff)initWithModifiedRecords:(id)records deletedRecordIDs:(id)ds;
- (id)applyToRecords:(id)records;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyToModifyRecordsOperation:(id)operation;
@end

@implementation SCKZoneDiff

- (SCKZoneDiff)initWithModifiedRecords:(id)records deletedRecordIDs:(id)ds
{
  recordsCopy = records;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = SCKZoneDiff;
  v8 = [(SCKZoneDiff *)&v14 init];
  if (v8)
  {
    v9 = [recordsCopy copy];
    modifiedRecords = v8->_modifiedRecords;
    v8->_modifiedRecords = v9;

    v11 = [dsCopy copy];
    deletedRecordIDs = v8->_deletedRecordIDs;
    v8->_deletedRecordIDs = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  modifiedRecords = [(SCKZoneDiff *)self modifiedRecords];
  deletedRecordIDs = [(SCKZoneDiff *)self deletedRecordIDs];
  v7 = [v4 initWithModifiedRecords:modifiedRecords deletedRecordIDs:deletedRecordIDs];

  return v7;
}

- (BOOL)isEmpty
{
  modifiedRecords = [(SCKZoneDiff *)self modifiedRecords];
  if ([modifiedRecords count])
  {
    v4 = 0;
  }

  else
  {
    deletedRecordIDs = [(SCKZoneDiff *)self deletedRecordIDs];
    v4 = [deletedRecordIDs count] == 0;
  }

  return v4;
}

- (id)applyToRecords:(id)records
{
  v42 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = recordsCopy;
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
        recordID = [v11 recordID];
        [dictionary setObject:v11 forKeyedSubscript:recordID];
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  modifiedRecords = [(SCKZoneDiff *)self modifiedRecords];
  v14 = [modifiedRecords countByEnumeratingWithState:&v31 objects:v40 count:16];
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
          objc_enumerationMutation(modifiedRecords);
        }

        v18 = *(*(&v31 + 1) + 8 * j);
        recordID2 = [v18 recordID];
        [dictionary setObject:v18 forKeyedSubscript:recordID2];
      }

      v15 = [modifiedRecords countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v15);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  deletedRecordIDs = [(SCKZoneDiff *)self deletedRecordIDs];
  v21 = [deletedRecordIDs countByEnumeratingWithState:&v27 objects:v39 count:16];
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
          objc_enumerationMutation(deletedRecordIDs);
        }

        [dictionary removeObjectForKey:*(*(&v27 + 1) + 8 * k)];
      }

      v22 = [deletedRecordIDs countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v22);
  }

  allValues = [dictionary allValues];

  return allValues;
}

- (void)applyToModifyRecordsOperation:(id)operation
{
  v4 = MEMORY[0x277CBEA60];
  operationCopy = operation;
  v6 = [v4 alloc];
  modifiedRecords = [(SCKZoneDiff *)self modifiedRecords];
  v8 = [v6 initWithArray:modifiedRecords copyItems:1];
  [operationCopy setRecordsToSave:v8];

  deletedRecordIDs = [(SCKZoneDiff *)self deletedRecordIDs];
  [operationCopy setRecordIDsToDelete:deletedRecordIDs];
}

- (BOOL)hasSameBaseAsDiff:(id)diff
{
  v59 = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  v5 = MEMORY[0x277CBEB98];
  deletedRecordIDs = [(SCKZoneDiff *)self deletedRecordIDs];
  v7 = [v5 setWithArray:deletedRecordIDs];

  v8 = MEMORY[0x277CBEB98];
  deletedRecordIDs2 = [diffCopy deletedRecordIDs];
  v10 = [v8 setWithArray:deletedRecordIDs2];

  if ([v7 isEqualToSet:v10])
  {
    v41 = v10;
    v42 = v7;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    modifiedRecords = [(SCKZoneDiff *)self modifiedRecords];
    v13 = [modifiedRecords countByEnumeratingWithState:&v52 objects:v58 count:16];
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
            objc_enumerationMutation(modifiedRecords);
          }

          v17 = *(*(&v52 + 1) + 8 * i);
          recordID = [v17 recordID];
          [dictionary setObject:v17 forKey:recordID];
        }

        v14 = [modifiedRecords countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v14);
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    modifiedRecords2 = [diffCopy modifiedRecords];
    v21 = [modifiedRecords2 countByEnumeratingWithState:&v48 objects:v57 count:16];
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
            objc_enumerationMutation(modifiedRecords2);
          }

          v25 = *(*(&v48 + 1) + 8 * j);
          recordID2 = [v25 recordID];
          [dictionary2 setObject:v25 forKey:recordID2];
        }

        v22 = [modifiedRecords2 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v22);
    }

    v27 = [dictionary count];
    if (v27 == [dictionary2 count])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v28 = dictionary;
      v29 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v29)
      {
        v30 = v29;
        v40 = diffCopy;
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
            v34 = [dictionary2 objectForKeyedSubscript:v32];
            v35 = MEMORY[0x277D82BB8];
            recordChangeTag = [v33 recordChangeTag];
            recordChangeTag2 = [v34 recordChangeTag];
            LODWORD(v35) = [v35 sck_object:recordChangeTag isEqualToObject:recordChangeTag2];

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
        diffCopy = v40;
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