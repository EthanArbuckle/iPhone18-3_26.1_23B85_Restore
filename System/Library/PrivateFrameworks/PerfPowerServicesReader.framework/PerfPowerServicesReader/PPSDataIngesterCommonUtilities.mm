@interface PPSDataIngesterCommonUtilities
+ (BOOL)isMetricStorageFilepath:(id)filepath;
+ (id)allTableNamesForMetadataHistory:(id)history withEntryKey:(id)key;
+ (id)columnNamesForFilepath:(id)filepath dataSource:(id)source;
+ (id)dataSourceForMetricDefinition:(id)definition;
+ (int64_t)fileTypeForFilepath:(id)filepath;
+ (unint64_t)directionalityForMetricDefinition:(id)definition;
@end

@implementation PPSDataIngesterCommonUtilities

+ (id)columnNamesForFilepath:(id)filepath dataSource:(id)source
{
  filepathCopy = filepath;
  sourceCopy = source;
  v7 = objc_autoreleasePoolPush();
  v8 = [[PPSSQLiteDatabase alloc] initWithDatabaseURL:filepathCopy];
  v11 = 0;
  [(PPSSQLiteDatabase *)v8 openForReadingWithError:&v11];
  v9 = [(PPSSQLiteDatabase *)v8 columnNamesForTable:sourceCopy];
  [(PPSSQLiteDatabase *)v8 close];

  objc_autoreleasePoolPop(v7);

  return v9;
}

+ (unint64_t)directionalityForMetricDefinition:(id)definition
{
  definitionCopy = definition;
  v4 = definitionCopy;
  if (definitionCopy && (v5 = [definitionCopy directionality] - 3, v5 <= 3))
  {
    v6 = qword_25E371F48[v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)dataSourceForMetricDefinition:(id)definition
{
  if (definition)
  {
    v3 = MEMORY[0x277CCACA8];
    definitionCopy = definition;
    subsystem = [definitionCopy subsystem];
    category = [definitionCopy category];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(definitionCopy, "timeToLive")}];
    v8 = MEMORY[0x277CCABB0];
    storage = [definitionCopy storage];

    v10 = [v8 numberWithInt:storage];
    v11 = [v3 stringWithFormat:@"%@_%@_%@_%@", subsystem, category, v7, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)allTableNamesForMetadataHistory:(id)history withEntryKey:(id)key
{
  v31 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  keyCopy = key;
  v7 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = historyCopy;
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
        lastObject = [v14 lastObject];
        if ([lastObject auxiliaryType] == 2)
        {
          keyCopy = [*(v12 + 3240) stringWithFormat:@"%@_Dynamic", keyCopy];
LABEL_8:
          [v7 addObject:keyCopy];

          goto LABEL_11;
        }

        if ([lastObject auxiliaryType] == 3 && !objc_msgSend(lastObject, "fixedArraySize"))
        {
          v17 = *(v12 + 3240);
          [lastObject name];
          v19 = v18 = v12;
          keyCopy = [v17 stringWithFormat:@"%@_Array_%@", keyCopy, v19];

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

  allObjects = [v7 allObjects];
  v22 = [allObjects copy];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (int64_t)fileTypeForFilepath:(id)filepath
{
  pathExtension = [filepath pathExtension];
  if ([pathExtension isEqualToString:@"EPSQL"])
  {
    v4 = 2;
  }

  else if ([pathExtension isEqualToString:@"CESQL"])
  {
    v4 = 3;
  }

  else if ([pathExtension isEqualToString:@"XCSQL"])
  {
    v4 = 4;
  }

  else if ([pathExtension isEqualToString:@"BGSQL"])
  {
    v4 = 5;
  }

  else
  {
    v4 = ([pathExtension isEqualToString:@"PLSQL"] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:", @"powerlog");
  }

  return v4;
}

+ (BOOL)isMetricStorageFilepath:(id)filepath
{
  pathExtension = [filepath pathExtension];
  if ([pathExtension isEqualToString:@"PLSQL"] & 1) != 0 || (objc_msgSend(pathExtension, "isEqualToString:", @"EPSQL") & 1) != 0 || (objc_msgSend(pathExtension, "isEqualToString:", @"CESQL") & 1) != 0 || (objc_msgSend(pathExtension, "isEqualToString:", @"XCSQL") & 1) != 0 || (objc_msgSend(pathExtension, "isEqualToString:", @"BGSQL"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathExtension isEqualToString:@"powerlog"];
  }

  return v4;
}

@end