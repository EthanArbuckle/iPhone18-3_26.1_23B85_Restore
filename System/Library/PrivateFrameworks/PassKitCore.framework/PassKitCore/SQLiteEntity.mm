@interface SQLiteEntity
+ (BOOL)existsInDatabase:(id)database predicate:(id)predicate;
+ (id)_aggregateValueForProperty:(id)property function:(id)function predicate:(id)predicate database:(id)database;
+ (id)anyInDatabase:(id)database predicate:(id)predicate;
+ (id)copyDatabaseDictionaryToSetClientDictionary:(id)dictionary;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)queryWithDatabase:(id)database predicate:(id)predicate orderingProperties:(id)properties orderingDirections:(id)directions limit:(int64_t)limit groupingProperties:(id)groupingProperties returnsDistinctEntities:(BOOL)entities;
+ (int64_t)countDistinctInDatabase:(id)database predicate:(id)predicate;
+ (int64_t)countInDatabase:(id)database predicate:(id)predicate;
+ (void)applyPropertySetters:(id)setters toObject:(id)object withProperties:(id)properties values:(const void *)values;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (BOOL)setValuesWithDictionary:(id)dictionary;
- (SQLiteEntity)initWithPersistentID:(int64_t)d inDatabase:(id)database;
- (SQLiteEntity)initWithPropertyValues:(id)values inDatabase:(id)database;
- (void)getValuesForProperties:(id)properties withApplier:(id)applier;
@end

@implementation SQLiteEntity

- (SQLiteEntity)initWithPersistentID:(int64_t)d inDatabase:(id)database
{
  v7.receiver = self;
  v7.super_class = SQLiteEntity;
  result = [(SQLiteEntity *)&v7 init];
  if (result)
  {
    result->_database = database;
    result->_persistentID = d;
  }

  return result;
}

- (SQLiteEntity)initWithPropertyValues:(id)values inDatabase:(id)database
{
  valuesCopy = values;
  databaseCopy = database;
  v8 = [valuesCopy objectForKey:@"ROWID"];
  v9 = v8;
  if (v8)
  {
    longLongValue = [v8 longLongValue];
  }

  else
  {
    v11 = CFUUIDCreate(0);
    longLongValue = *&CFUUIDGetUUIDBytes(v11);
    CFRelease(v11);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100073D68;
  v19 = &unk_100840570;
  v12 = sub_1005B864C(self, valuesCopy);
  v20 = v12;
  v23 = longLongValue;
  v13 = databaseCopy;
  v21 = v13;
  v22 = &v24;
  sub_1005D4424(v13, &v16);
  if (v25[3])
  {
    self = [(SQLiteEntity *)self initWithPersistentID:longLongValue inDatabase:v13, v16, v17, v18, v19, v20];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  _Block_object_dispose(&v24, 8);
  return selfCopy;
}

+ (id)copyDatabaseDictionaryToSetClientDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000743C0;
  v7[3] = &unk_100840598;
  selfCopy = self;
  v5 = objc_alloc_init(NSMutableDictionary);
  v8 = v5;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  v5 = objc_alloc_init(NSMutableSet);
  [self addJoinClausesForProperty:propertyCopy toJoins:v5];
  if ([v5 count])
  {
    propertyCopy = propertyCopy;
  }

  else
  {
    v7 = [NSString alloc];
    databaseTable = [self databaseTable];
    propertyCopy = [v7 initWithFormat:@"%@.%@", databaseTable, propertyCopy];
  }

  return propertyCopy;
}

- (BOOL)deleteFromDatabase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database = self->_database;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007471C;
  v5[3] = &unk_1008405C0;
  v5[4] = self;
  v5[5] = &v6;
  sub_1005D4424(database, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)existsInDatabase
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [NSString alloc];
  databaseTable = [objc_opt_class() databaseTable];
  v5 = [v3 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", databaseTable, @"ROWID"];

  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074B28;
  v8[3] = &unk_1008405E8;
  v8[4] = self;
  v8[5] = &v9;
  sub_1005D44BC(database, v5, 1, v8);
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v8 = [NSDictionary alloc];
  v9 = v8;
  if (valueCopy)
  {
    v10 = [v8 initWithObjectsAndKeys:{valueCopy, propertyCopy, 0}];
  }

  else
  {
    v11 = +[NSNull null];
    v10 = [v9 initWithObjectsAndKeys:{v11, propertyCopy, 0}];
  }

  v12 = [(SQLiteEntity *)self setValuesWithDictionary:v10];

  return v12;
}

- (BOOL)setValuesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = objc_opt_class();
  databaseTable = [v5 databaseTable];
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005B8C8C;
  v11[3] = &unk_1008406E8;
  v11[4] = self;
  v8 = dictionaryCopy;
  v12 = v8;
  v15 = v5;
  v9 = databaseTable;
  v13 = v9;
  v14 = &v16;
  sub_1005D4424(database, v11);
  LOBYTE(v5) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v5;
}

- (void)getValuesForProperties:(id)properties withApplier:(id)applier
{
  propertiesCopy = properties;
  applierCopy = applier;
  v7 = [propertiesCopy count];
  if (v7)
  {
    sub_1005B8E1C(self, propertiesCopy, v7, applierCopy);
  }
}

+ (void)applyPropertySetters:(id)setters toObject:(id)object withProperties:(id)properties values:(const void *)values
{
  settersCopy = setters;
  objectCopy = object;
  propertiesCopy = properties;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [propertiesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(propertiesCopy);
        }

        v17 = [settersCopy objectForKey:*(*(&v18 + 1) + 8 * v16)];
        if (v17)
        {
          v17[2](v17, objectCopy, values[v14]);
        }

        ++v14;
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [propertiesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

+ (id)anyInDatabase:(id)database predicate:(id)predicate
{
  databaseCopy = database;
  predicateCopy = predicate;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100005A40;
  v20 = sub_10000B12C;
  v21 = 0;
  v8 = [self queryWithDatabase:databaseCopy predicate:predicateCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009F884;
  v12[3] = &unk_100841AD8;
  v14 = &v16;
  selfCopy = self;
  v9 = databaseCopy;
  v13 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (BOOL)existsInDatabase:(id)database predicate:(id)predicate
{
  v4 = [self queryWithDatabase:database predicate:predicate];
  exists = [v4 exists];

  return exists;
}

+ (int64_t)countInDatabase:(id)database predicate:(id)predicate
{
  v4 = [self queryWithDatabase:database predicate:predicate];
  countOfEntities = [v4 countOfEntities];

  return countOfEntities;
}

+ (int64_t)countDistinctInDatabase:(id)database predicate:(id)predicate
{
  LOBYTE(v7) = 1;
  v4 = [self queryWithDatabase:database predicate:predicate orderingProperties:0 orderingDirections:0 limit:0 groupingProperties:0 returnsDistinctEntities:v7];
  countOfEntities = [v4 countOfEntities];

  return countOfEntities;
}

+ (id)_aggregateValueForProperty:(id)property function:(id)function predicate:(id)predicate database:(id)database
{
  propertyCopy = property;
  functionCopy = function;
  predicateCopy = predicate;
  databaseCopy = database;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100005A40;
  v31 = sub_10000B12C;
  v32 = 0;
  v14 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v14 setEntityClass:self];
  [(SQLiteQueryDescriptor *)v14 setPredicate:predicateCopy];
  v15 = [NSString alloc];
  v16 = [self disambiguatedSQLForProperty:propertyCopy];
  v17 = [v15 initWithFormat:@"%@(%@)", functionCopy, v16];

  v18 = [NSArray arrayWithObject:propertyCopy];
  v19 = [NSArray arrayWithObject:v17];
  v20 = [(SQLiteQueryDescriptor *)v14 _newSelectSQLWithProperties:v18 columns:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009FBE8;
  v24[3] = &unk_1008405E8;
  v21 = v14;
  v25 = v21;
  v26 = &v27;
  sub_1005D44A8(databaseCopy, v20, v24);
  v22 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v22;
}

+ (id)queryWithDatabase:(id)database predicate:(id)predicate orderingProperties:(id)properties orderingDirections:(id)directions limit:(int64_t)limit groupingProperties:(id)groupingProperties returnsDistinctEntities:(BOOL)entities
{
  groupingPropertiesCopy = groupingProperties;
  directionsCopy = directions;
  propertiesCopy = properties;
  predicateCopy = predicate;
  databaseCopy = database;
  v20 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v20 setEntityClass:self];
  [(SQLiteQueryDescriptor *)v20 setOrderingProperties:propertiesCopy];

  [(SQLiteQueryDescriptor *)v20 setOrderingDirections:directionsCopy];
  [(SQLiteQueryDescriptor *)v20 setPredicate:predicateCopy];

  [(SQLiteQueryDescriptor *)v20 setLimitCount:limit];
  [(SQLiteQueryDescriptor *)v20 setGroupingProperties:groupingPropertiesCopy];

  [(SQLiteQueryDescriptor *)v20 setReturnsDistinctEntities:entities];
  v21 = [[SQLiteQuery alloc] initWithDatabase:databaseCopy descriptor:v20];

  return v21;
}

@end