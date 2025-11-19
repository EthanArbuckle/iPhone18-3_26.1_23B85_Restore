@interface SQLiteEntity
+ (BOOL)existsInDatabase:(id)a3 predicate:(id)a4;
+ (id)_aggregateValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 database:(id)a6;
+ (id)anyInDatabase:(id)a3 predicate:(id)a4;
+ (id)copyDatabaseDictionaryToSetClientDictionary:(id)a3;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)queryWithDatabase:(id)a3 predicate:(id)a4 orderingProperties:(id)a5 orderingDirections:(id)a6 limit:(int64_t)a7 groupingProperties:(id)a8 returnsDistinctEntities:(BOOL)a9;
+ (int64_t)countDistinctInDatabase:(id)a3 predicate:(id)a4;
+ (int64_t)countInDatabase:(id)a3 predicate:(id)a4;
+ (void)applyPropertySetters:(id)a3 toObject:(id)a4 withProperties:(id)a5 values:(const void *)a6;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValuesWithDictionary:(id)a3;
- (SQLiteEntity)initWithPersistentID:(int64_t)a3 inDatabase:(id)a4;
- (SQLiteEntity)initWithPropertyValues:(id)a3 inDatabase:(id)a4;
- (void)getValuesForProperties:(id)a3 withApplier:(id)a4;
@end

@implementation SQLiteEntity

- (SQLiteEntity)initWithPersistentID:(int64_t)a3 inDatabase:(id)a4
{
  v7.receiver = self;
  v7.super_class = SQLiteEntity;
  result = [(SQLiteEntity *)&v7 init];
  if (result)
  {
    result->_database = a4;
    result->_persistentID = a3;
  }

  return result;
}

- (SQLiteEntity)initWithPropertyValues:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"ROWID"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 longLongValue];
  }

  else
  {
    v11 = CFUUIDCreate(0);
    v10 = *&CFUUIDGetUUIDBytes(v11);
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
  v12 = sub_1005B864C(self, v6);
  v20 = v12;
  v23 = v10;
  v13 = v7;
  v21 = v13;
  v22 = &v24;
  sub_1005D4424(v13, &v16);
  if (v25[3])
  {
    self = [(SQLiteEntity *)self initWithPersistentID:v10 inDatabase:v13, v16, v17, v18, v19, v20];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);
  return v14;
}

+ (id)copyDatabaseDictionaryToSetClientDictionary:(id)a3
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000743C0;
  v7[3] = &unk_100840598;
  v9 = a1;
  v5 = objc_alloc_init(NSMutableDictionary);
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  [a1 addJoinClausesForProperty:v4 toJoins:v5];
  if ([v5 count])
  {
    v6 = v4;
  }

  else
  {
    v7 = [NSString alloc];
    v8 = [a1 databaseTable];
    v6 = [v7 initWithFormat:@"%@.%@", v8, v4];
  }

  return v6;
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
  v4 = [objc_opt_class() databaseTable];
  v5 = [v3 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", v4, @"ROWID"];

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

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSDictionary alloc];
  v9 = v8;
  if (v6)
  {
    v10 = [v8 initWithObjectsAndKeys:{v6, v7, 0}];
  }

  else
  {
    v11 = +[NSNull null];
    v10 = [v9 initWithObjectsAndKeys:{v11, v7, 0}];
  }

  v12 = [(SQLiteEntity *)self setValuesWithDictionary:v10];

  return v12;
}

- (BOOL)setValuesWithDictionary:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = objc_opt_class();
  v6 = [v5 databaseTable];
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005B8C8C;
  v11[3] = &unk_1008406E8;
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  v15 = v5;
  v9 = v6;
  v13 = v9;
  v14 = &v16;
  sub_1005D4424(database, v11);
  LOBYTE(v5) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v5;
}

- (void)getValuesForProperties:(id)a3 withApplier:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 count];
  if (v7)
  {
    sub_1005B8E1C(self, v8, v7, v6);
  }
}

+ (void)applyPropertySetters:(id)a3 toObject:(id)a4 withProperties:(id)a5 values:(const void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v11);
        }

        v17 = [v9 objectForKey:*(*(&v18 + 1) + 8 * v16)];
        if (v17)
        {
          v17[2](v17, v10, a6[v14]);
        }

        ++v14;
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

+ (id)anyInDatabase:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100005A40;
  v20 = sub_10000B12C;
  v21 = 0;
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009F884;
  v12[3] = &unk_100841AD8;
  v14 = &v16;
  v15 = a1;
  v9 = v6;
  v13 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (BOOL)existsInDatabase:(id)a3 predicate:(id)a4
{
  v4 = [a1 queryWithDatabase:a3 predicate:a4];
  v5 = [v4 exists];

  return v5;
}

+ (int64_t)countInDatabase:(id)a3 predicate:(id)a4
{
  v4 = [a1 queryWithDatabase:a3 predicate:a4];
  v5 = [v4 countOfEntities];

  return v5;
}

+ (int64_t)countDistinctInDatabase:(id)a3 predicate:(id)a4
{
  LOBYTE(v7) = 1;
  v4 = [a1 queryWithDatabase:a3 predicate:a4 orderingProperties:0 orderingDirections:0 limit:0 groupingProperties:0 returnsDistinctEntities:v7];
  v5 = [v4 countOfEntities];

  return v5;
}

+ (id)_aggregateValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 database:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100005A40;
  v31 = sub_10000B12C;
  v32 = 0;
  v14 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v14 setEntityClass:a1];
  [(SQLiteQueryDescriptor *)v14 setPredicate:v12];
  v15 = [NSString alloc];
  v16 = [a1 disambiguatedSQLForProperty:v10];
  v17 = [v15 initWithFormat:@"%@(%@)", v11, v16];

  v18 = [NSArray arrayWithObject:v10];
  v19 = [NSArray arrayWithObject:v17];
  v20 = [(SQLiteQueryDescriptor *)v14 _newSelectSQLWithProperties:v18 columns:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009FBE8;
  v24[3] = &unk_1008405E8;
  v21 = v14;
  v25 = v21;
  v26 = &v27;
  sub_1005D44A8(v13, v20, v24);
  v22 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v22;
}

+ (id)queryWithDatabase:(id)a3 predicate:(id)a4 orderingProperties:(id)a5 orderingDirections:(id)a6 limit:(int64_t)a7 groupingProperties:(id)a8 returnsDistinctEntities:(BOOL)a9
{
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(SQLiteQueryDescriptor);
  [(SQLiteQueryDescriptor *)v20 setEntityClass:a1];
  [(SQLiteQueryDescriptor *)v20 setOrderingProperties:v17];

  [(SQLiteQueryDescriptor *)v20 setOrderingDirections:v16];
  [(SQLiteQueryDescriptor *)v20 setPredicate:v18];

  [(SQLiteQueryDescriptor *)v20 setLimitCount:a7];
  [(SQLiteQueryDescriptor *)v20 setGroupingProperties:v15];

  [(SQLiteQueryDescriptor *)v20 setReturnsDistinctEntities:a9];
  v21 = [[SQLiteQuery alloc] initWithDatabase:v19 descriptor:v20];

  return v21;
}

@end