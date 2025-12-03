@interface RKRankingDataManager
- (RKRankingDataManager)initWithDatabaseFilename:(id)filename;
- (RKRankingDataManager)initWithLanguageID:(id)d;
- (id)fetchRankingInfoForCategory:(id)category;
- (id)fetchRankingInfoFromDB;
- (unint64_t)getNumberOfEntriesInDB;
- (void)fetchRankingInfoFromDB;
- (void)flushRankingData;
- (void)insertRankingInfoFromDictionary:(id)dictionary;
- (void)insertRankingInfoFromDictionary:(id)dictionary withDate:(id)date;
- (void)pruneUserDatabase;
- (void)resetRankingData;
@end

@implementation RKRankingDataManager

- (RKRankingDataManager)initWithLanguageID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = RKRankingDataManager;
  v5 = [(RKRankingDataManager *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/ResponseKit/"];
    v7 = [dCopy stringByAppendingString:@"-learned.db"];
    v8 = [v6 URLByAppendingPathComponent:v7];
    v5 = [(RKRankingDataManager *)v5 initWithDatabaseFilename:v8];
  }

  return v5;
}

- (RKRankingDataManager)initWithDatabaseFilename:(id)filename
{
  v25[1] = *MEMORY[0x277D85DE8];
  filenameCopy = filename;
  v23.receiver = self;
  v23.super_class = RKRankingDataManager;
  v5 = [(RKRankingDataManager *)&v23 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:2];
  managedObjectContext = v5->_managedObjectContext;
  v5->_managedObjectContext = v6;

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:@"RankingModel" withExtension:@"momd"];

  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RKRankingDataManager initWithDatabaseFilename:];
    }

    goto LABEL_14;
  }

  v10 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v9];
  if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RKRankingDataManager initWithDatabaseFilename:v9];
  }

  v11 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v10];
  persistentStoreCoordinator = v5->_persistentStoreCoordinator;
  v5->_persistentStoreCoordinator = v11;

  [(NSManagedObjectContext *)v5->_managedObjectContext setPersistentStoreCoordinator:v5->_persistentStoreCoordinator];
  v13 = v5->_persistentStoreCoordinator;
  v14 = *MEMORY[0x277CBE2E8];
  v24 = *MEMORY[0x277CBE2B0];
  v25[0] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v22 = 0;
  v16 = [(NSPersistentStoreCoordinator *)v13 addPersistentStoreWithType:v14 configuration:0 URL:filenameCopy options:v15 error:&v22];
  v17 = v22;
  persistentStore = v5->_persistentStore;
  v5->_persistentStore = v16;

  if (!v5->_persistentStore)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RKRankingDataManager initWithDatabaseFilename:v17];
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v19 = v5;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)insertRankingInfoFromDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CBEAA8];
  dictionaryCopy = dictionary;
  date = [v4 date];
  [(RKRankingDataManager *)self insertRankingInfoFromDictionary:dictionaryCopy withDate:date];
}

- (void)insertRankingInfoFromDictionary:(id)dictionary withDate:(id)date
{
  v6 = MEMORY[0x277CBE408];
  dateCopy = date;
  dictionaryCopy = dictionary;
  managedObjectContext = [(RKRankingDataManager *)self managedObjectContext];
  v17 = [v6 insertNewObjectForEntityForName:@"RankingInfo" inManagedObjectContext:managedObjectContext];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"message"];
  [v17 setMessage:v10];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"response"];
  [v17 setResponse:v11];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"source"];
  [v17 setSource:{objc_msgSend(v12, "integerValue")}];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"recipient"];
  [v17 setRecipientId:v13];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"inputmethod"];
  [v17 setInputMethod:{objc_msgSend(v14, "integerValue")}];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"rankedlist"];
  [v17 setRankedList:v15];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"category"];

  [v17 setCategory:v16];
  [v17 setTimestamp:dateCopy];

  [(RKRankingDataManager *)self flushRankingData];
}

- (id)fetchRankingInfoFromDB
{
  v3 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RankingInfo"];
  managedObjectContext = [(RKRankingDataManager *)self managedObjectContext];
  v9 = 0;
  v5 = [managedObjectContext executeFetchRequest:v3 error:&v9];
  v6 = v9;

  if (v5)
  {
    v7 = v5;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(RKRankingDataManager *)v6 fetchRankingInfoFromDB];
  }

  return v5;
}

- (id)fetchRankingInfoForCategory:(id)category
{
  v12[4] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"Unknown"])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [RKRankingDataManager fetchRankingInfoForCategory:];
    }

    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RankingInfo"];
    categoryCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == %@", categoryCopy];
    [v6 setPredicate:categoryCopy];

    managedObjectContext = [(RKRankingDataManager *)self managedObjectContext];
    v12[0] = 0;
    v5 = [managedObjectContext executeFetchRequest:v6 error:v12];
    v9 = v12[0];

    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RKRankingDataManager fetchRankingInfoForCategory:v9];
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)getNumberOfEntriesInDB
{
  v3 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RankingInfo"];
  managedObjectContext = [(RKRankingDataManager *)self managedObjectContext];
  v8 = 0;
  v5 = [managedObjectContext countForFetchRequest:v3 error:&v8];
  v6 = v8;

  if (v5 == 0x7FFFFFFFFFFFFFFFLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(RKRankingDataManager *)v6 fetchRankingInfoFromDB];
  }

  return v5;
}

- (void)pruneUserDatabase
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-7776000.0];

  v5 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RankingInfo"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timestamp < %@", v4];
  [v5 setPredicate:v6];

  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  managedObjectContext = [(RKRankingDataManager *)self managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  managedObjectContext2 = [(RKRankingDataManager *)self managedObjectContext];
  v13 = 0;
  v11 = [persistentStoreCoordinator executeRequest:v7 withContext:managedObjectContext2 error:&v13];
  v12 = v13;

  if (v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(RKRankingDataManager *)v12 fetchRankingInfoFromDB];
  }
}

- (void)resetRankingData
{
  v3 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RankingInfo"];
  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v3];
  managedObjectContext = [(RKRankingDataManager *)self managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  managedObjectContext2 = [(RKRankingDataManager *)self managedObjectContext];
  v10 = 0;
  v8 = [persistentStoreCoordinator executeRequest:v4 withContext:managedObjectContext2 error:&v10];
  v9 = v10;

  if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(RKRankingDataManager *)v9 fetchRankingInfoFromDB];
  }
}

- (void)flushRankingData
{
  managedObjectContext = [(RKRankingDataManager *)self managedObjectContext];
  v3 = 0;
  [managedObjectContext save:&v3];
}

- (void)initWithDatabaseFilename:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to initialize mom from URL: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithDatabaseFilename:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_2() userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2620A2000, MEMORY[0x277D86220], v3, "Failed to initalize persistent store: %@\n%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDatabaseFilename:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to locate momd bundle in application : %@", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)fetchRankingInfoFromDB
{
  v10 = *MEMORY[0x277D85DE8];
  [self localizedDescription];
  objc_claimAutoreleasedReturnValue();
  userInfo = [OUTLINED_FUNCTION_2() userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2620A2000, MEMORY[0x277D86220], v3, "Error fetching RankingInfo objects: %@\n%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchRankingInfoForCategory:(void *)a1 .cold.1(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Exception on fetching RankingInfo objects: %@\n", buf, 0xCu);
}

- (void)fetchRankingInfoForCategory:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 localizedDescription];
  v9 = [a1 userInfo];
  OUTLINED_FUNCTION_1(&dword_2620A2000, MEMORY[0x277D86220], v3, "Error fetching RankingInfo objects: %@\n%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end