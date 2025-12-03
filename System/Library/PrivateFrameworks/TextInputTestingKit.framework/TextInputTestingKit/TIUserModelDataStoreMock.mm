@interface TIUserModelDataStoreMock
- (BOOL)addValue:(id)value andSecondaryValue:(id)secondaryValue andRealValue:(id)realValue andProperties:(id)properties forKey:(id)key forInputMode:(id)mode forDate:(id)date;
- (BOOL)purgeDataForKey:(id)key forInputMode:(id)mode beforeDate:(id)date;
- (BOOL)purgeDataForKeyPrefix:(id)prefix forInputMode:(id)mode beforeDate:(id)date;
- (BOOL)setDurableValue:(id)value forKey:(id)key forDate:(id)date;
- (BOOL)updateDurableValue:(id)value forKey:(id)key forDate:(id)date;
- (TIUserModelDataStoreMock)init;
- (id)getAllKnownInputModesSinceDate:(id)date;
- (id)getAllValuesForKey:(id)key forInputMode:(id)mode fromDate:(id)date toDate:(id)toDate;
- (id)getAllValuesForKey:(id)key forInputMode:(id)mode sinceDate:(id)date;
- (id)getAllValuesForKeyPrefix:(id)prefix forInputMode:(id)mode sinceDate:(id)date;
- (id)getDailyAndWeeklyValuesForKeyPrefix:(id)prefix forInputMode:(id)mode weeklyKeySuffixes:(id)suffixes endDate:(id)date;
- (id)getDurableValueForKey:(id)key;
- (id)getInputModesForKey:(id)key;
- (void)clear;
@end

@implementation TIUserModelDataStoreMock

- (void)clear
{
  array = [MEMORY[0x277CBEB18] array];
  database = self->_database;
  self->_database = array;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  durableDatabase = self->_durableDatabase;
  self->_durableDatabase = dictionary;

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  propertiesLastMigrationDate = self->_propertiesLastMigrationDate;
  self->_propertiesLastMigrationDate = distantPast;

  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  durableLastMigrationDate = self->_durableLastMigrationDate;
  self->_durableLastMigrationDate = distantPast2;

  self->_transientLastMigrationDate = [MEMORY[0x277CBEAA8] distantPast];

  MEMORY[0x2821F96F8]();
}

- (id)getAllValuesForKey:(id)key forInputMode:(id)mode fromDate:(id)date toDate:(id)toDate
{
  v43 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  modeCopy = mode;
  dateCopy = date;
  toDateCopy = toDate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v31 = selfCopy;
  array = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = selfCopy->_database;
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
        creationDate = [v13 creationDate];
        v15 = [creationDate compare:dateCopy];

        creationDate2 = [v13 creationDate];
        v17 = [creationDate2 compare:toDateCopy];

        v18 = [v13 key];
        v19 = [v18 isEqualToString:keyCopy];
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
          lastUpdateDate = [v13 lastUpdateDate];
          v23 = [v13 key];
          inputMode = [v13 inputMode];
          value = [v13 value];
          secondaryValue = [v13 secondaryValue];
          realValue = [v13 realValue];
          properties = [v13 properties];
          v18 = [v21 initWithTimestamp:lastUpdateDate withKey:v23 withInputMode:inputMode withValue:value withSecondaryValue:secondaryValue withRealValue:realValue withProperties:properties];

          [array addObject:v18];
        }
      }

      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v31);

  return array;
}

- (id)getAllValuesForKeyPrefix:(id)prefix forInputMode:(id)mode sinceDate:(id)date
{
  v36 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  modeCopy = mode;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = selfCopy;
  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = selfCopy->_database;
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
        if ([v12 hasPrefix:prefixCopy])
        {
          creationDate = [v11 creationDate];
          v14 = [creationDate compare:dateCopy] == 1;

          if (!v14)
          {
            continue;
          }

          v15 = objc_alloc(MEMORY[0x277D6F558]);
          lastUpdateDate = [v11 lastUpdateDate];
          v17 = [v11 key];
          inputMode = [v11 inputMode];
          value = [v11 value];
          secondaryValue = [v11 secondaryValue];
          realValue = [v11 realValue];
          properties = [v11 properties];
          v12 = [v15 initWithTimestamp:lastUpdateDate withKey:v17 withInputMode:inputMode withValue:value withSecondaryValue:secondaryValue withRealValue:realValue withProperties:{properties, modeCopy}];

          [array addObject:v12];
        }
      }

      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v25);

  return array;
}

- (BOOL)updateDurableValue:(id)value forKey:(id)key forDate:(id)date
{
  valueCopy = value;
  keyCopy = key;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(NSMutableDictionary *)selfCopy->_durableDatabase objectForKey:keyCopy];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CCABB0];
    value = [(TIMockUserModelDatabaseRow *)v12 value];
    v16 = [v14 numberWithInt:{objc_msgSend(valueCopy, "intValue") + objc_msgSend(value, "intValue")}];
    [(TIMockUserModelDatabaseRow *)v13 setValue:v16];

    [(TIMockUserModelDatabaseRow *)v13 setLastUpdateDate:dateCopy];
  }

  else
  {
    v17 = [TIMockUserModelDatabaseRow alloc];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v13 = [(TIMockUserModelDatabaseRow *)v17 initWithKey:keyCopy inputMode:@"foo" value:valueCopy secondaryValue:v18 realValue:v19 properties:0 creationDate:dateCopy lastUpdateDate:dateCopy];
  }

  [(NSMutableDictionary *)selfCopy->_durableDatabase setObject:v13 forKey:keyCopy];

  objc_sync_exit(selfCopy);
  return 1;
}

- (BOOL)setDurableValue:(id)value forKey:(id)key forDate:(id)date
{
  valueCopy = value;
  keyCopy = key;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(NSMutableDictionary *)selfCopy->_durableDatabase objectForKey:keyCopy];
  v13 = v12;
  if (v12)
  {
    [(TIMockUserModelDatabaseRow *)v12 setValue:valueCopy];
    [(TIMockUserModelDatabaseRow *)v13 setLastUpdateDate:dateCopy];
  }

  else
  {
    v14 = [TIMockUserModelDatabaseRow alloc];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v13 = [(TIMockUserModelDatabaseRow *)v14 initWithKey:keyCopy inputMode:@"foo" value:valueCopy secondaryValue:v15 realValue:v16 properties:0 creationDate:dateCopy lastUpdateDate:dateCopy];
  }

  [(NSMutableDictionary *)selfCopy->_durableDatabase setObject:v13 forKey:keyCopy];

  objc_sync_exit(selfCopy);
  return 1;
}

- (id)getDurableValueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_durableDatabase objectForKey:keyCopy];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D6F550]);
    creationDate = [v6 creationDate];
    lastUpdateDate = [v6 lastUpdateDate];
    value = [v6 value];
    v11 = [v7 initWithCreationDate:creationDate withLastUpdateDate:lastUpdateDate withKey:keyCopy withValue:value];
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)getAllKnownInputModesSinceDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = selfCopy->_database;
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
        if ([v11 isMatchSinceDate:{dateCopy, v15}])
        {
          inputMode = [v11 inputMode];
          [v6 addObject:inputMode];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    allObjects = [v6 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  objc_sync_exit(selfCopy);

  return allObjects;
}

- (id)getInputModesForKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = selfCopy->_database;
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
        if ([v11 isMatchForKey:keyCopy forInputMode:0 sinceDate:{0, v15}])
        {
          inputMode = [v11 inputMode];
          [v6 addObject:inputMode];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    allObjects = [v6 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  objc_sync_exit(selfCopy);

  return allObjects;
}

- (id)getDailyAndWeeklyValuesForKeyPrefix:(id)prefix forInputMode:(id)mode weeklyKeySuffixes:(id)suffixes endDate:(id)date
{
  v38 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  modeCopy = mode;
  suffixesCopy = suffixes;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = selfCopy->_database;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  v26 = array;
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
        if ([v13 isMatchForKeyPrefix:prefixCopy forInputMode:modeCopy weeklyKeySuffixes:suffixesCopy endDate:dateCopy])
        {
          v14 = objc_alloc(MEMORY[0x277D6F558]);
          lastUpdateDate = [v13 lastUpdateDate];
          v16 = [v13 key];
          inputMode = [v13 inputMode];
          value = [v13 value];
          secondaryValue = [v13 secondaryValue];
          realValue = [v13 realValue];
          properties = [v13 properties];
          v22 = [v14 initWithTimestamp:lastUpdateDate withKey:v16 withInputMode:inputMode withValue:value withSecondaryValue:secondaryValue withRealValue:realValue withProperties:properties];

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

  objc_sync_exit(selfCopy);

  return v23;
}

- (id)getAllValuesForKey:(id)key forInputMode:(id)mode sinceDate:(id)date
{
  v37 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  modeCopy = mode;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = selfCopy->_database;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  v26 = array;
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
        if ([v12 isMatchForKey:keyCopy forInputMode:modeCopy sinceDate:dateCopy])
        {
          v13 = objc_alloc(MEMORY[0x277D6F558]);
          lastUpdateDate = [v12 lastUpdateDate];
          v15 = [v12 key];
          inputMode = [v12 inputMode];
          value = [v12 value];
          secondaryValue = [v12 secondaryValue];
          realValue = [v12 realValue];
          properties = [v12 properties];
          v21 = [v13 initWithTimestamp:lastUpdateDate withKey:v15 withInputMode:inputMode withValue:value withSecondaryValue:secondaryValue withRealValue:realValue withProperties:properties];

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

  objc_sync_exit(selfCopy);

  return v22;
}

- (BOOL)purgeDataForKeyPrefix:(id)prefix forInputMode:(id)mode beforeDate:(id)date
{
  v29 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  modeCopy = mode;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = selfCopy;
  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = selfCopy->_database;
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
        v17 = [v16 isMatchForKeyPrefix:prefixCopy forInputMode:modeCopy sinceDate:0] ^ 1;
        if (!dateCopy)
        {
          LOBYTE(v17) = 1;
        }

        if ((v17 & 1) == 0)
        {
          lastUpdateDate = [v16 lastUpdateDate];
          v19 = [lastUpdateDate compare:dateCopy] == 1;

          if (!v19)
          {
            continue;
          }
        }

        [(NSMutableArray *)array addObject:v16];
      }

      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  database = v22->_database;
  v22->_database = array;

  objc_sync_exit(v22);
  return 1;
}

- (BOOL)purgeDataForKey:(id)key forInputMode:(id)mode beforeDate:(id)date
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  modeCopy = mode;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = selfCopy;
  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = selfCopy->_database;
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
        v17 = [v16 isMatchForKey:keyCopy forInputMode:modeCopy sinceDate:0] ^ 1;
        if (!dateCopy)
        {
          LOBYTE(v17) = 1;
        }

        if ((v17 & 1) == 0)
        {
          lastUpdateDate = [v16 lastUpdateDate];
          v19 = [lastUpdateDate compare:dateCopy] == 1;

          if (!v19)
          {
            continue;
          }
        }

        [(NSMutableArray *)array addObject:v16];
      }

      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  database = v22->_database;
  v22->_database = array;

  objc_sync_exit(v22);
  return 1;
}

- (BOOL)addValue:(id)value andSecondaryValue:(id)secondaryValue andRealValue:(id)realValue andProperties:(id)properties forKey:(id)key forInputMode:(id)mode forDate:(id)date
{
  valueCopy = value;
  secondaryValueCopy = secondaryValue;
  realValueCopy = realValue;
  propertiesCopy = properties;
  keyCopy = key;
  modeCopy = mode;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  database = selfCopy->_database;
  v24 = [[TIMockUserModelDatabaseRow alloc] initWithKey:keyCopy inputMode:modeCopy value:valueCopy secondaryValue:secondaryValueCopy realValue:realValueCopy properties:propertiesCopy creationDate:dateCopy lastUpdateDate:dateCopy];
  [(NSMutableArray *)database addObject:v24];

  objc_sync_exit(selfCopy);
  return 1;
}

- (TIUserModelDataStoreMock)init
{
  v14.receiver = self;
  v14.super_class = TIUserModelDataStoreMock;
  v2 = [(TIUserModelDataStoreMock *)&v14 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    database = v2->_database;
    v2->_database = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    durableDatabase = v2->_durableDatabase;
    v2->_durableDatabase = dictionary;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    propertiesLastMigrationDate = v2->_propertiesLastMigrationDate;
    v2->_propertiesLastMigrationDate = distantPast;

    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    durableLastMigrationDate = v2->_durableLastMigrationDate;
    v2->_durableLastMigrationDate = distantPast2;

    distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
    transientLastMigrationDate = v2->_transientLastMigrationDate;
    v2->_transientLastMigrationDate = distantPast3;
  }

  return v2;
}

@end