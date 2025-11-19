@interface SQLiteQuery
- (BOOL)createTemporaryTableWithName:(id)a3 properties:(id)a4;
- (BOOL)deleteAllEntities;
- (BOOL)exists;
- (SQLiteQuery)initWithDatabase:(id)a3 descriptor:(id)a4;
- (SQLiteQueryDescriptor)queryDescriptor;
- (id)_newSelectSQLOnProperties:(id)a3;
- (id)_newSelectSQLWithProperties:(id)a3;
- (id)copyEntityIdentifiers;
- (id)copySelectSQLWithProperties:(id)a3;
- (int64_t)countOfEntities;
- (void)bindToSelectStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
- (void)enumeratePersistentIDsAndProperties:(id)a3 usingBlock:(id)a4;
- (void)enumeratePersistentIDsUsingBlock:(id)a3;
- (void)enumerateProperties:(id)a3 usingBlock:(id)a4;
@end

@implementation SQLiteQuery

- (BOOL)exists
{
  v2 = self;
  v3 = [(SQLiteQuery *)self _newSelectSQLWithProperties:0];
  v4 = [[NSString alloc] initWithFormat:@"SELECT EXISTS (%@)", v3];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  database = v2->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C874;
  v7[3] = &unk_1008405E8;
  v7[4] = v2;
  v7[5] = &v8;
  sub_1005D44A8(database, v4, v7);
  LOBYTE(v2) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v2;
}

- (BOOL)deleteAllEntities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  database = self->_database;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000EF6C;
  v5[3] = &unk_1008405C0;
  v5[4] = self;
  v5[5] = &v6;
  sub_1005D4424(database, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (SQLiteQuery)initWithDatabase:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SQLiteQuery;
  v9 = [(SQLiteQuery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    v11 = [v8 copy];
    descriptor = v10->_descriptor;
    v10->_descriptor = v11;
  }

  return v10;
}

- (void)bindToSelectStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v7 = [(SQLiteQueryDescriptor *)self->_descriptor predicate];
  [v7 bindToStatement:a3 bindingIndex:a4];

  v8 = [(SQLiteQueryDescriptor *)self->_descriptor limitCount];
  if (v8)
  {
    sqlite3_bind_int(a3, *a4, v8);
    ++*a4;
  }
}

- (id)copyEntityIdentifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009E254;
  v5[3] = &unk_10083EF38;
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v6 = v3;
  [(SQLiteQuery *)self enumeratePersistentIDsUsingBlock:v5];

  return v3;
}

- (id)copySelectSQLWithProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(SQLiteQueryDescriptor *)self->_descriptor entityClass];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(objc_class *)v6 disambiguatedSQLForProperty:*(*(&v15 + 1) + 8 * v11), v15];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [(SQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v7 columns:v5];
  return v13;
}

- (int64_t)countOfEntities
{
  v3 = [(SQLiteQuery *)self _newSelectSQLWithProperties:0];
  v4 = [[NSString alloc] initWithFormat:@"SELECT COUNT(*) FROM (%@)", v3];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  database = self->_database;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009E518;
  v8[3] = &unk_1008405E8;
  v8[4] = self;
  v8[5] = &v9;
  sub_1005D44A8(database, v4, v8);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (BOOL)createTemporaryTableWithName:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableString alloc] initWithString:@"CREATE TEMPORARY TABLE "];
  v22 = v6;
  [v8 appendString:v6];
  [v8 appendString:@" AS "];
  v9 = [(SQLiteQueryDescriptor *)self->_descriptor copy];
  [v9 setOrderingDirections:0];
  [v9 setOrderingProperties:0];
  v10 = objc_alloc_init(NSMutableArray);
  v11 = [(SQLiteQueryDescriptor *)self->_descriptor entityClass];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [(objc_class *)v11 disambiguatedSQLForProperty:*(*(&v30 + 1) + 8 * v15)];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  v17 = [v9 _newSelectSQLWithProperties:v12 columns:v10];
  [v8 appendString:v17];
  [v8 appendString:@";"];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  database = self->_database;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10009E83C;
  v23[3] = &unk_1008405E8;
  v19 = v9;
  v24 = v19;
  v25 = &v26;
  sub_1005D44A8(database, v8, v23);
  v20 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v20 & 1;
}

- (void)enumeratePersistentIDsUsingBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009E9D8;
  v5[3] = &unk_100841A88;
  v6 = a3;
  v4 = v6;
  [(SQLiteQuery *)self enumeratePersistentIDsAndProperties:0 usingBlock:v5];
}

- (void)enumeratePersistentIDsAndProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SQLiteQuery *)self _newSelectSQLWithProperties:v6];
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009EAD8;
  v12[3] = &unk_100841AB0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  sub_1005D44A8(database, v8, v12);
}

- (void)enumerateProperties:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SQLiteQuery *)self _newSelectSQLOnProperties:v6];
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009ED14;
  v12[3] = &unk_100841AB0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  sub_1005D44A8(database, v8, v12);
}

- (SQLiteQueryDescriptor)queryDescriptor
{
  v2 = [(SQLiteQueryDescriptor *)self->_descriptor copy];

  return v2;
}

- (id)_newSelectSQLWithProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(SQLiteQueryDescriptor *)self->_descriptor entityClass];
  v7 = [(objc_class *)v6 disambiguatedSQLForProperty:@"ROWID"];
  [v5 addObject:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(objc_class *)v6 disambiguatedSQLForProperty:*(*(&v16 + 1) + 8 * v12), v16];
        [v5 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [(SQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v8 columns:v5];
  return v14;
}

- (id)_newSelectSQLOnProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(SQLiteQueryDescriptor *)self->_descriptor entityClass];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(objc_class *)v6 disambiguatedSQLForProperty:*(*(&v15 + 1) + 8 * v11), v15];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [(SQLiteQueryDescriptor *)self->_descriptor _newSelectSQLWithProperties:v7 columns:v5];
  return v13;
}

@end