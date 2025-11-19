@interface TIUserModelDataStoreMock
- (BOOL)addValue:(id)a3 andSecondaryValue:(id)a4 andRealValue:(id)a5 andProperties:(id)a6 forKey:(id)a7 forInputMode:(id)a8 forDate:(id)a9;
- (BOOL)purgeDataForKey:(id)a3 forInputMode:(id)a4 beforeDate:(id)a5;
- (BOOL)purgeDataForKeyPrefix:(id)a3 forInputMode:(id)a4 beforeDate:(id)a5;
- (BOOL)setDurableValue:(id)a3 forKey:(id)a4 forDate:(id)a5;
- (BOOL)updateDurableValue:(id)a3 forKey:(id)a4 forDate:(id)a5;
- (TIUserModelDataStoreMock)init;
- (id)getAllKnownInputModesSinceDate:(id)a3;
- (id)getAllValuesForKey:(id)a3 forInputMode:(id)a4 fromDate:(id)a5 toDate:(id)a6;
- (id)getAllValuesForKey:(id)a3 forInputMode:(id)a4 sinceDate:(id)a5;
- (id)getAllValuesForKeyPrefix:(id)a3 forInputMode:(id)a4 sinceDate:(id)a5;
- (id)getDailyAndWeeklyValuesForKeyPrefix:(id)a3 forInputMode:(id)a4 weeklyKeySuffixes:(id)a5 endDate:(id)a6;
- (id)getDurableValueForKey:(id)a3;
- (id)getInputModesForKey:(id)a3;
- (void)clear;
@end

@implementation TIUserModelDataStoreMock

- (void)clear
{
  v3 = [MEMORY[0x277CBEB18] array];
  database = self->_database;
  self->_database = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  durableDatabase = self->_durableDatabase;
  self->_durableDatabase = v5;

  v7 = [MEMORY[0x277CBEAA8] distantPast];
  propertiesLastMigrationDate = self->_propertiesLastMigrationDate;
  self->_propertiesLastMigrationDate = v7;

  v9 = [MEMORY[0x277CBEAA8] distantPast];
  durableLastMigrationDate = self->_durableLastMigrationDate;
  self->_durableLastMigrationDate = v9;

  self->_transientLastMigrationDate = [MEMORY[0x277CBEAA8] distantPast];

  MEMORY[0x2821F96F8]();
}

- (id)getAllValuesForKey:(id)a3 forInputMode:(id)a4 fromDate:(id)a5 toDate:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v30 = a4;
  v37 = a5;
  v36 = a6;
  v10 = self;
  objc_sync_enter(v10);
  v31 = v10;
  v32 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v10->_database;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v34 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 creationDate];
        v15 = [v14 compare:v37];

        v16 = [v13 creationDate];
        v17 = [v16 compare:v36];

        v18 = [v13 key];
        v19 = [v18 isEqualToString:v35];
        if (v15 == 1)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (v20 == 1)
        {

          if ((v17 + 1) >= 2)
          {
            continue;
          }

          v21 = objc_alloc(MEMORY[0x277D6F558]);
          v22 = [v13 lastUpdateDate];
          v23 = [v13 key];
          v24 = [v13 inputMode];
          v25 = [v13 value];
          v26 = [v13 secondaryValue];
          v27 = [v13 realValue];
          v28 = [v13 properties];
          v18 = [v21 initWithTimestamp:v22 withKey:v23 withInputMode:v24 withValue:v25 withSecondaryValue:v26 withRealValue:v27 withProperties:v28];

          [v32 addObject:v18];
        }
      }

      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v31);

  return v32;
}

- (id)getAllValuesForKeyPrefix:(id)a3 forInputMode:(id)a4 sinceDate:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v24 = a4;
  v27 = a5;
  v8 = self;
  objc_sync_enter(v8);
  v25 = v8;
  v26 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8->_database;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v29 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 key];
        if ([v12 hasPrefix:v30])
        {
          v13 = [v11 creationDate];
          v14 = [v13 compare:v27] == 1;

          if (!v14)
          {
            continue;
          }

          v15 = objc_alloc(MEMORY[0x277D6F558]);
          v16 = [v11 lastUpdateDate];
          v17 = [v11 key];
          v18 = [v11 inputMode];
          v19 = [v11 value];
          v20 = [v11 secondaryValue];
          v21 = [v11 realValue];
          v22 = [v11 properties];
          v12 = [v15 initWithTimestamp:v16 withKey:v17 withInputMode:v18 withValue:v19 withSecondaryValue:v20 withRealValue:v21 withProperties:{v22, v24}];

          [v26 addObject:v12];
        }
      }

      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v25);

  return v26;
}

- (BOOL)updateDurableValue:(id)a3 forKey:(id)a4 forDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(NSMutableDictionary *)v11->_durableDatabase objectForKey:v9];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [(TIMockUserModelDatabaseRow *)v12 value];
    v16 = [v14 numberWithInt:{objc_msgSend(v8, "intValue") + objc_msgSend(v15, "intValue")}];
    [(TIMockUserModelDatabaseRow *)v13 setValue:v16];

    [(TIMockUserModelDatabaseRow *)v13 setLastUpdateDate:v10];
  }

  else
  {
    v17 = [TIMockUserModelDatabaseRow alloc];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v13 = [(TIMockUserModelDatabaseRow *)v17 initWithKey:v9 inputMode:@"foo" value:v8 secondaryValue:v18 realValue:v19 properties:0 creationDate:v10 lastUpdateDate:v10];
  }

  [(NSMutableDictionary *)v11->_durableDatabase setObject:v13 forKey:v9];

  objc_sync_exit(v11);
  return 1;
}

- (BOOL)setDurableValue:(id)a3 forKey:(id)a4 forDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(NSMutableDictionary *)v11->_durableDatabase objectForKey:v9];
  v13 = v12;
  if (v12)
  {
    [(TIMockUserModelDatabaseRow *)v12 setValue:v8];
    [(TIMockUserModelDatabaseRow *)v13 setLastUpdateDate:v10];
  }

  else
  {
    v14 = [TIMockUserModelDatabaseRow alloc];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v13 = [(TIMockUserModelDatabaseRow *)v14 initWithKey:v9 inputMode:@"foo" value:v8 secondaryValue:v15 realValue:v16 properties:0 creationDate:v10 lastUpdateDate:v10];
  }

  [(NSMutableDictionary *)v11->_durableDatabase setObject:v13 forKey:v9];

  objc_sync_exit(v11);
  return 1;
}

- (id)getDurableValueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_durableDatabase objectForKey:v4];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D6F550]);
    v8 = [v6 creationDate];
    v9 = [v6 lastUpdateDate];
    v10 = [v6 value];
    v11 = [v7 initWithCreationDate:v8 withLastUpdateDate:v9 withKey:v4 withValue:v10];
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(v5);

  return v11;
}

- (id)getAllKnownInputModesSinceDate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5->_database;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isMatchSinceDate:{v4, v15}])
        {
          v12 = [v11 inputMode];
          [v6 addObject:v12];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v13 = [v6 allObjects];
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v5);

  return v13;
}

- (id)getInputModesForKey:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5->_database;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isMatchForKey:v4 forInputMode:0 sinceDate:{0, v15}])
        {
          v12 = [v11 inputMode];
          [v6 addObject:v12];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v13 = [v6 allObjects];
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v5);

  return v13;
}

- (id)getDailyAndWeeklyValuesForKeyPrefix:(id)a3 forInputMode:(id)a4 weeklyKeySuffixes:(id)a5 endDate:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v25 = self;
  objc_sync_enter(v25);
  v10 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v25->_database;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  v26 = v10;
  if (v11)
  {
    v28 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        if ([v13 isMatchForKeyPrefix:v32 forInputMode:v31 weeklyKeySuffixes:v30 endDate:v29])
        {
          v14 = objc_alloc(MEMORY[0x277D6F558]);
          v15 = [v13 lastUpdateDate];
          v16 = [v13 key];
          v17 = [v13 inputMode];
          v18 = [v13 value];
          v19 = [v13 secondaryValue];
          v20 = [v13 realValue];
          v21 = [v13 properties];
          v22 = [v14 initWithTimestamp:v15 withKey:v16 withInputMode:v17 withValue:v18 withSecondaryValue:v19 withRealValue:v20 withProperties:v21];

          [v26 addObject:v22];
        }
      }

      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  if ([v26 count])
  {
    v23 = v26;
  }

  else
  {
    v23 = 0;
  }

  objc_sync_exit(v25);

  return v23;
}

- (id)getAllValuesForKey:(id)a3 forInputMode:(id)a4 sinceDate:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v24 = self;
  objc_sync_enter(v24);
  v8 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v24->_database;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  v26 = v8;
  if (v9)
  {
    v10 = *v33;
    v25 = *v33;
    do
    {
      v11 = 0;
      v27 = v9;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        if ([v12 isMatchForKey:v31 forInputMode:v30 sinceDate:v29])
        {
          v13 = objc_alloc(MEMORY[0x277D6F558]);
          v14 = [v12 lastUpdateDate];
          v15 = [v12 key];
          v16 = [v12 inputMode];
          v17 = [v12 value];
          v18 = [v12 secondaryValue];
          v19 = [v12 realValue];
          v20 = [v12 properties];
          v21 = [v13 initWithTimestamp:v14 withKey:v15 withInputMode:v16 withValue:v17 withSecondaryValue:v18 withRealValue:v19 withProperties:v20];

          [v26 addObject:v21];
          v9 = v27;
          v10 = v25;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  if ([v26 count])
  {
    v22 = v26;
  }

  else
  {
    v22 = 0;
  }

  objc_sync_exit(v24);

  return v22;
}

- (BOOL)purgeDataForKeyPrefix:(id)a3 forInputMode:(id)a4 beforeDate:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v22 = v11;
  v12 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v11->_database;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 isMatchForKeyPrefix:v8 forInputMode:v9 sinceDate:0] ^ 1;
        if (!v10)
        {
          LOBYTE(v17) = 1;
        }

        if ((v17 & 1) == 0)
        {
          v18 = [v16 lastUpdateDate];
          v19 = [v18 compare:v10] == 1;

          if (!v19)
          {
            continue;
          }
        }

        [(NSMutableArray *)v12 addObject:v16];
      }

      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  database = v22->_database;
  v22->_database = v12;

  objc_sync_exit(v22);
  return 1;
}

- (BOOL)purgeDataForKey:(id)a3 forInputMode:(id)a4 beforeDate:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v22 = v11;
  v12 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v11->_database;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 isMatchForKey:v8 forInputMode:v9 sinceDate:0] ^ 1;
        if (!v10)
        {
          LOBYTE(v17) = 1;
        }

        if ((v17 & 1) == 0)
        {
          v18 = [v16 lastUpdateDate];
          v19 = [v18 compare:v10] == 1;

          if (!v19)
          {
            continue;
          }
        }

        [(NSMutableArray *)v12 addObject:v16];
      }

      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  database = v22->_database;
  v22->_database = v12;

  objc_sync_exit(v22);
  return 1;
}

- (BOOL)addValue:(id)a3 andSecondaryValue:(id)a4 andRealValue:(id)a5 andProperties:(id)a6 forKey:(id)a7 forInputMode:(id)a8 forDate:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = self;
  objc_sync_enter(v22);
  database = v22->_database;
  v24 = [[TIMockUserModelDatabaseRow alloc] initWithKey:v19 inputMode:v20 value:v15 secondaryValue:v16 realValue:v17 properties:v18 creationDate:v21 lastUpdateDate:v21];
  [(NSMutableArray *)database addObject:v24];

  objc_sync_exit(v22);
  return 1;
}

- (TIUserModelDataStoreMock)init
{
  v14.receiver = self;
  v14.super_class = TIUserModelDataStoreMock;
  v2 = [(TIUserModelDataStoreMock *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    database = v2->_database;
    v2->_database = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    durableDatabase = v2->_durableDatabase;
    v2->_durableDatabase = v5;

    v7 = [MEMORY[0x277CBEAA8] distantPast];
    propertiesLastMigrationDate = v2->_propertiesLastMigrationDate;
    v2->_propertiesLastMigrationDate = v7;

    v9 = [MEMORY[0x277CBEAA8] distantPast];
    durableLastMigrationDate = v2->_durableLastMigrationDate;
    v2->_durableLastMigrationDate = v9;

    v11 = [MEMORY[0x277CBEAA8] distantPast];
    transientLastMigrationDate = v2->_transientLastMigrationDate;
    v2->_transientLastMigrationDate = v11;
  }

  return v2;
}

@end