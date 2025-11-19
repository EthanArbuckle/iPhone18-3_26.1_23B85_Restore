@interface PPSDataIngesterCommonUtilities
+ (BOOL)isMetricStorageFilepath:(id)a3;
+ (id)allTableNamesForMetadataHistory:(id)a3 withEntryKey:(id)a4;
+ (id)columnNamesForFilepath:(id)a3 dataSource:(id)a4;
+ (id)dataSourceForMetricDefinition:(id)a3;
+ (int64_t)fileTypeForFilepath:(id)a3;
+ (unint64_t)directionalityForMetricDefinition:(id)a3;
@end

@implementation PPSDataIngesterCommonUtilities

+ (id)columnNamesForFilepath:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [[PPSSQLiteDatabase alloc] initWithDatabaseURL:v5];
  v11 = 0;
  [(PPSSQLiteDatabase *)v8 openForReadingWithError:&v11];
  v9 = [(PPSSQLiteDatabase *)v8 columnNamesForTable:v6];
  [(PPSSQLiteDatabase *)v8 close];

  objc_autoreleasePoolPop(v7);

  return v9;
}

+ (unint64_t)directionalityForMetricDefinition:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = [v3 directionality] - 3, v5 <= 3))
  {
    v6 = qword_25E371F48[v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)dataSourceForMetricDefinition:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = a3;
    v5 = [v4 subsystem];
    v6 = [v4 category];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "timeToLive")}];
    v8 = MEMORY[0x277CCABB0];
    v9 = [v4 storage];

    v10 = [v8 numberWithInt:v9];
    v11 = [v3 stringWithFormat:@"%@_%@_%@_%@", v5, v6, v7, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)allTableNamesForMetadataHistory:(id)a3 withEntryKey:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v12 = 0x277CCA000uLL;
    v25 = v7;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [v8 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v13)];
        v15 = [v14 lastObject];
        if ([v15 auxiliaryType] == 2)
        {
          v16 = [*(v12 + 3240) stringWithFormat:@"%@_Dynamic", v6];
LABEL_8:
          [v7 addObject:v16];

          goto LABEL_11;
        }

        if ([v15 auxiliaryType] == 3 && !objc_msgSend(v15, "fixedArraySize"))
        {
          v17 = *(v12 + 3240);
          [v15 name];
          v19 = v18 = v12;
          v16 = [v17 stringWithFormat:@"%@_Array_%@", v6, v19];

          v12 = v18;
          v7 = v25;
          goto LABEL_8;
        }

LABEL_11:

        ++v13;
      }

      while (v10 != v13);
      v20 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v10 = v20;
    }

    while (v20);
  }

  v21 = [v7 allObjects];
  v22 = [v21 copy];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (int64_t)fileTypeForFilepath:(id)a3
{
  v3 = [a3 pathExtension];
  if ([v3 isEqualToString:@"EPSQL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CESQL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"XCSQL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"BGSQL"])
  {
    v4 = 5;
  }

  else
  {
    v4 = ([v3 isEqualToString:@"PLSQL"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"powerlog");
  }

  return v4;
}

+ (BOOL)isMetricStorageFilepath:(id)a3
{
  v3 = [a3 pathExtension];
  if ([v3 isEqualToString:@"PLSQL"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EPSQL") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"CESQL") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"XCSQL") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"BGSQL"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"powerlog"];
  }

  return v4;
}

@end