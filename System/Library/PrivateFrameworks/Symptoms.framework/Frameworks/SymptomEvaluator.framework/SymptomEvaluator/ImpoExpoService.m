@interface ImpoExpoService
+ (BOOL)_supportArchivingOfObject:(id)a3;
+ (id)_supportedClasses;
+ (id)impoExpoServiceInWorkspace:(id)a3 andQueue:(id)a4;
- (BOOL)archiveAndImportItemUnderName:(id)a3 item:(id)a4;
- (BOOL)importItemUnderName:(id)a3 item:(id)a4;
- (BOOL)importValueUnderName:(id)a3 value:(unint64_t)a4;
- (id)_initInWorkspace:(id)a3 andQueue:(id)a4;
- (id)_locateRecord:(id)a3 createMissing:(BOOL)a4;
- (id)exportAndUnarchiveItemUnderName:(id)a3 lastUpdated:(id *)a4 verificationBlock:(id)a5;
- (id)exportItemUnderName:(id)a3 lastUpdated:(id *)a4 verificationBlock:(id)a5;
- (id)listItemsNameWithPrefix:(id)a3 sortDescriptor:(id)a4;
- (int64_t)deleteItemsMatchingPredicate:(id)a3;
- (int64_t)deleteItemsWithNames:(id)a3;
- (int64_t)deleteItemsWithPrefix:(id)a3;
- (int64_t)deleteItemsWithPrefixes:(id)a3;
- (unint64_t)exportValueUnderName:(id)a3 lastUpdated:(id *)a4;
@end

@implementation ImpoExpoService

- (id)_initInWorkspace:(id)a3 andQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ImpoExpoService;
  v9 = [(ImpoExpoService *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->workspace, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (id)_locateRecord:(id)a3 createMissing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = MEMORY[0x277CCACA8];
    v9 = [(ImpoExpoService *)self _nameSubfix];
    v10 = [v8 stringWithFormat:@"%@%@", v6, v9];

    v11 = objc_alloc(MEMORY[0x277D6B540]);
    workspace = self->workspace;
    v13 = [MEMORY[0x277D6B5B0] entityName];
    v14 = [v11 initWithWorkspace:workspace entityName:v13 withCache:0];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", v10];
    v16 = [v14 fetchEntitiesFreeForm:v15 sortDesc:0];
    v17 = v16;
    if (v16 && [v16 count])
    {
      v18 = [v17 objectAtIndexedSubscript:0];
    }

    else if (v4)
    {
      v19 = [MEMORY[0x277D6B5B0] entityName];
      v18 = [v14 createEntityForEntityName:v19];

      if (v18)
      {
        [v18 setIdentifier:v10];
      }
    }

    else
    {
      v18 = 0;
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)impoExpoServiceInWorkspace:(id)a3 andQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ImpoExpoService alloc] _initInWorkspace:v6 andQueue:v5];

  return v7;
}

+ (id)_supportedClasses
{
  v17 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v17 setWithObjects:{v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (BOOL)_supportArchivingOfObject:(id)a3
{
  v3 = a3;
  v4 = +[ImpoExpoService _supportedClasses];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__ImpoExpoService__supportArchivingOfObject___block_invoke;
  v8[3] = &unk_27898E5B0;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __45__ImpoExpoService__supportArchivingOfObject___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)importItemUnderName:(id)a3 item:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (![ImpoExpoService _supportArchivingOfObject:v7])
  {
    v13 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Unable to import unsupported object %@", &v16, 0xCu);
    }

    goto LABEL_8;
  }

  v8 = [(ImpoExpoService *)self _locateRecord:v6 createMissing:1];
  v9 = v8 != 0;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v10 encodeObject:v7 forKey:@"opaque"];
    [v10 finishEncoding];
    v11 = [v10 encodedData];
    [v8 setMap:v11];

    v12 = [MEMORY[0x277CBEAA8] date];
    [v8 setTimeStamp:v12];

    [(AnalyticsWorkspace *)self->workspace save];
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)archiveAndImportItemUnderName:(id)a3 item:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([ImpoExpoService _supportArchivingOfObject:v7])
    {
      v20 = 0;
      v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v20];
      v9 = v20;
      v10 = v9;
      if (!v8 || v9)
      {
        v13 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v22 = v6;
          v23 = 2112;
          v24 = v10;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Failed to archive object named %@ : %@", buf, 0x16u);
        }
      }

      else
      {
        if ([(ImpoExpoService *)self importItemUnderName:v6 item:v8])
        {
          v10 = 0;
          v11 = 1;
LABEL_16:

          goto LABEL_17;
        }

        v14 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          v15 = v6;
          v16 = v14;
          v17 = [v6 UTF8String];
          *buf = 136315138;
          v22 = v17;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Object with name %s was successfully archived but save failed.", buf, 0xCu);
        }

        v10 = 0;
      }

      v11 = 0;
      goto LABEL_16;
    }

    v12 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Unable to archive and import unsupported object %@", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)importValueUnderName:(id)a3 value:(unint64_t)a4
{
  v6 = [(ImpoExpoService *)self _locateRecord:a3 createMissing:1];
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
    [v6 setTag:v7];

    v8 = [MEMORY[0x277CBEAA8] date];
    [v6 setTimeStamp:v8];

    [(AnalyticsWorkspace *)self->workspace save];
  }

  return v6 != 0;
}

- (id)exportItemUnderName:(id)a3 lastUpdated:(id *)a4 verificationBlock:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(ImpoExpoService *)self _locateRecord:v8 createMissing:0];
  v11 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v12 = [v10 map];

  v13 = 0;
  if (a4 && v12)
  {
    v14 = +[ImpoExpoService _supportedClasses];
    v15 = objc_alloc(MEMORY[0x277CCAAC8]);
    v16 = [v11 map];
    v29 = 0;
    v17 = [v15 initForReadingFromData:v16 error:&v29];
    v18 = v29;

    if (!v17 || v18)
    {
      v21 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = [v18 description];
        *buf = 138412546;
        v31 = v8;
        v32 = 2112;
        v33 = v23;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to unarchive object named %@, removing the item.  Error: %@", buf, 0x16u);
      }

      v24 = [MEMORY[0x277CBEB98] setWithObject:v8];
      [(ImpoExpoService *)self deleteItemsWithNames:v24];

      v19 = 0;
    }

    else
    {
      v19 = [v17 decodeObjectOfClasses:v14 forKey:@"opaque"];
      [v17 finishDecoding];
      *a4 = [v11 timeStamp];
      if (!v9 || !v19 || v9[2](v9, v19))
      {
        v19 = v19;
        v20 = v19;
LABEL_15:
        v13 = v20;

        goto LABEL_16;
      }

      v27 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v8;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Verification of the unarchived object named %@ failed, removing the item", buf, 0xCu);
      }

      v28 = [MEMORY[0x277CBEB98] setWithObject:v8];
      [(ImpoExpoService *)self deleteItemsWithNames:v28];
    }

    v20 = 0;
    goto LABEL_15;
  }

LABEL_16:

  v25 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)exportAndUnarchiveItemUnderName:(id)a3 lastUpdated:(id *)a4 verificationBlock:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(ImpoExpoService *)self exportItemUnderName:v8 lastUpdated:a4 verificationBlock:0];
  if (v10)
  {
    v11 = +[ImpoExpoService _supportedClasses];
    v28 = 0;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v10 error:&v28];
    v13 = v28;
    v14 = v13;
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      if (!v9 || v9[2](v9, v12))
      {
        v22 = v12;
LABEL_17:

        goto LABEL_18;
      }

      v23 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Verification of the unarchived object with name %@ failed, removing the item", buf, 0xCu);
      }
    }

    else
    {
      v16 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = [v14 description];
        *buf = 138412546;
        v30 = v8;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Failed to unarchive object with name %@, removing the item.  Error :%@", buf, 0x16u);
      }
    }

    v24 = [MEMORY[0x277CBEB98] setWithObject:v8];
    [(ImpoExpoService *)self deleteItemsWithNames:v24];

    v22 = 0;
    goto LABEL_17;
  }

  v19 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    v20 = v8;
    v21 = v19;
    *buf = 136315138;
    v30 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Unable to locate item with name %s.", buf, 0xCu);
  }

  v12 = 0;
  v22 = 0;
LABEL_18:
  v25 = v22;

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

- (unint64_t)exportValueUnderName:(id)a3 lastUpdated:(id *)a4
{
  v5 = [(ImpoExpoService *)self _locateRecord:a3 createMissing:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 tag];

    v8 = 0;
    if (a4 && v7)
    {
      v9 = [v6 tag];
      v8 = [v9 longLongValue];

      *a4 = [v6 timeStamp];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)listItemsNameWithPrefix:(id)a3 sortDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
LABEL_7:
    v20 = 0;
    goto LABEL_12;
  }

  v8 = [(AnalyticsWorkspace *)self->workspace copy];
  if (!v8)
  {
    v21 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Failed to allocate ephemeralSpace", buf, 2u);
    }

    goto LABEL_7;
  }

  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277D6B540]);
  v11 = [MEMORY[0x277D6B5B0] entityName];
  v12 = [v10 initWithWorkspace:v9 entityName:v11 withCache:0];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K BEGINSWITH %@", @"identifier", v6];
    v15 = [v12 fetchEntitiesFreeForm:v14 sortDesc:v7];
    v16 = [(ImpoExpoService *)self _nameSubfix];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__ImpoExpoService_listItemsNameWithPrefix_sortDescriptor___block_invoke;
    v24[3] = &unk_27898CEF8;
    v25 = v16;
    v17 = v13;
    v26 = v17;
    v18 = v16;
    [v15 enumerateObjectsUsingBlock:v24];
    [v9 reset];

    v19 = v26;
    v20 = v17;

    v9 = v14;
  }

  else
  {
    v22 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to allocate oaspace", buf, 2u);
    }

    v20 = 0;
  }

LABEL_12:

  return v20;
}

void __58__ImpoExpoService_listItemsNameWithPrefix_sortDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 hasSuffix:*(a1 + 32)])
  {
    v5 = [v3 identifier];
    v6 = [v5 length];
    v7 = [*(a1 + 32) length];

    if (v6 > v7)
    {
      v8 = *(a1 + 40);
      v9 = [v3 identifier];
      v10 = [v3 identifier];
      v11 = [v9 substringToIndex:{objc_msgSend(v10, "length") - objc_msgSend(*(a1 + 32), "length")}];
      [v8 addObject:v11];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    v14 = [v3 identifier];
    v16 = 136315138;
    v17 = [v14 UTF8String];
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "non-compliant identifier: %s", &v16, 0xCu);
  }

LABEL_7:

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)deleteItemsWithNames:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __40__ImpoExpoService_deleteItemsWithNames___block_invoke;
    v14 = &unk_27898BC08;
    v15 = v6;
    v16 = self;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:&v11];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", v7, v11, v12, v13, v14];
    v9 = [(ImpoExpoService *)self deleteItemsMatchingPredicate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __40__ImpoExpoService_deleteItemsWithNames___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 _nameSubfix];
  v6 = [v2 stringWithFormat:@"%@%@", v5, v7];

  [v3 addObject:v6];
}

- (int64_t)deleteItemsWithPrefix:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K BEGINSWITH %@", @"identifier", v5];
    v7 = [(ImpoExpoService *)self deleteItemsMatchingPredicate:v6];
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "prefix is nil or an empty string", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)deleteItemsWithPrefixes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = v6;
    if (v6)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __43__ImpoExpoService_deleteItemsWithPrefixes___block_invoke;
      v14[3] = &unk_27898E5D8;
      v8 = v6;
      v15 = v8;
      [v5 enumerateObjectsUsingBlock:v14];
      v9 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v8];
      v10 = [(ImpoExpoService *)self deleteItemsMatchingPredicate:v9];
    }

    else
    {
      v12 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "predicates is nil", buf, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "prefixes array is nil or an empty array", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

void __43__ImpoExpoService_deleteItemsWithPrefixes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K BEGINSWITH %@", @"identifier", a2];
  [v2 addObject:v3];
}

- (int64_t)deleteItemsMatchingPredicate:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x277D6B540];
  v5 = a3;
  v6 = [v4 alloc];
  workspace = self->workspace;
  v8 = [MEMORY[0x277D6B5B0] entityName];
  v9 = [v6 initWithWorkspace:workspace entityName:v8 withCache:0];

  v10 = [v9 removeEntitiesMatching:v5];
  return v10;
}

@end