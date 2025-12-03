@interface FedStatsSQLiteCategoryDatabase
+ (id)categoryDatabaseAt:(id)at withCategories:(id)categories error:(id *)error;
+ (id)databaseWithFileURL:(id)l error:(id *)error;
- (FedStatsSQLiteCategoryDatabase)initWithSQLiteDatabase:(id)database dimensionality:(unint64_t)dimensionality;
- (id)decode:(unint64_t)decode error:(id *)error;
- (id)encode:(id)encode error:(id *)error;
@end

@implementation FedStatsSQLiteCategoryDatabase

- (FedStatsSQLiteCategoryDatabase)initWithSQLiteDatabase:(id)database dimensionality:(unint64_t)dimensionality
{
  databaseCopy = database;
  v11.receiver = self;
  v11.super_class = FedStatsSQLiteCategoryDatabase;
  v8 = [(FedStatsSQLiteCategoryDatabase *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sqliteDB, database);
    v9->_dimensionality = dimensionality;
  }

  return v9;
}

+ (id)databaseWithFileURL:(id)l error:(id *)error
{
  lCopy = l;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [FedStatsError errorWithCode:302 description:@"SQLite categories database requires a path in URL"];
      *error = v33 = 0;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_67;
  }

  v68 = 0;
  v7 = [FedStatsSQLiteDatabase databaseWithURL:lCopy mode:114 error:&v68];
  v8 = v68;
  v9 = v8;
  if (!v7)
  {
    if (error)
    {
      [FedStatsError errorWithCode:302 underlyingError:v8 description:@"Cannot open database"];
      *error = v33 = 0;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_66;
  }

  selfCopy = self;
  v49 = lCopy;
  errorCopy = error;
  v51 = v8;
  v57 = v7;
  v75[0] = @"SELECT COUNT(*) AS count FROM sqlite_master WHERE type == 'table' AND name == 'categories'";
  v75[1] = &off_100030430;
  v10 = [NSArray arrayWithObjects:v75 count:2];
  v76[0] = v10;
  v74[0] = @"SELECT COUNT(*) AS count FROM PRAGMA_TABLE_XINFO('categories')";
  v74[1] = &off_100030448;
  v11 = [NSArray arrayWithObjects:v74 count:2];
  v76[1] = v11;
  v73[0] = @"SELECT COUNT(*) AS count FROM sqlite_master, PRAGMA_INDEX_LIST(sqlite_master.name) AS index_list, PRAGMA_INDEX_XINFO(index_list.name) AS index_info WHERE sqlite_master.type == 'table' AND index_list.origin == 'pk' AND index_info.cid < 0";
  v73[1] = &off_100030460;
  v12 = [NSArray arrayWithObjects:v73 count:2];
  v76[2] = v12;
  v72[0] = @"SELECT COUNT(*) AS count FROM PRAGMA_INDEX_LIST('categories') AS indices, PRAGMA_TABLE_XINFO('categories') AS table_info, PRAGMA_INDEX_XINFO(indices.name) AS index_info WHERE indices.origin != 'pk' AND indices.[unique] == 1 AND index_info.key == 1 AND index_info.name == table_info.name AND index_info.name == 'idx' AND table_info.type == 'INTEGER'";
  v72[1] = &off_100030430;
  v13 = [NSArray arrayWithObjects:v72 count:2];
  v76[3] = v13;
  v71[0] = @"SELECT COUNT(*) AS count FROM PRAGMA_INDEX_LIST('categories') AS indices, PRAGMA_TABLE_XINFO('categories') AS table_info, PRAGMA_INDEX_XINFO(indices.name) AS index_info WHERE indices.origin != 'pk' AND indices.[unique] == 1 AND index_info.key == 1 AND index_info.name == table_info.name AND index_info.name == 'category' AND table_info.type == 'TEXT'";
  v71[1] = &off_100030430;
  v14 = [NSArray arrayWithObjects:v71 count:2];
  v76[4] = v14;
  v70[0] = @"SELECT COUNT(*) AS count FROM PRAGMA_INDEX_LIST('categories') AS indices, PRAGMA_INDEX_XINFO(indices.name) AS index_info WHERE indices.origin == 'pk' AND index_info.key == 1;";
  v70[1] = &off_100030448;
  v15 = [NSArray arrayWithObjects:v70 count:2];
  v76[5] = v15;
  v16 = [NSArray arrayWithObjects:v76 count:6];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v17 = v16;
  v54 = [v17 countByEnumeratingWithState:&v64 objects:v69 count:16];
  v18 = 0;
  v19 = 0;
  next = 0;
  if (!v54)
  {
    v60 = 0;
    goto LABEL_22;
  }

  v21 = 0;
  v22 = 0;
  v55 = *v65;
  obj = v17;
  while (2)
  {
    v23 = 0;
    v24 = v18;
    v58 = next;
    v25 = v21;
    v26 = v51;
    do
    {
      if (*v65 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v64 + 1) + 8 * v23);
      v28 = [v27 objectAtIndex:0];

      v29 = [v27 objectAtIndex:1];

      v63 = v26;
      v60 = v28;
      v21 = [v57 runQuery:v28 error:&v63];
      v9 = v63;

      if (!v21)
      {
        v45 = errorCopy;
        v44 = v58;
        if (!errorCopy)
        {
LABEL_52:
          v18 = v29;

          v33 = 0;
          next = v44;
          v17 = obj;
          lCopy = v49;
          goto LABEL_64;
        }

        v46 = [FedStatsError errorWithCode:302 underlyingError:v9 description:@"Cannot query database"];
LABEL_42:
        *v45 = v46;
        goto LABEL_52;
      }

      next = [v21 next];

      if (!next)
      {
        v45 = errorCopy;
        if (!errorCopy)
        {
          v44 = 0;
          goto LABEL_52;
        }

        v46 = [FedStatsError errorWithCode:302 underlyingError:v9 description:@"Cannot check query result"];
        v44 = 0;
        goto LABEL_42;
      }

      v30 = [next objectForKey:@"count"];

      if (!v30 || (v31 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v30 isEqualToNumber:v29] & 1) == 0)
      {
        if (errorCopy)
        {
          v43 = [NSString stringWithFormat:@"Cannot complete check statement for %@", v60];
          *errorCopy = [FedStatsError errorWithCode:302 description:v43];
        }

        v19 = v30;
        v44 = next;
        goto LABEL_52;
      }

      v23 = v23 + 1;
      v32 = v9;
      v24 = v29;
      v19 = v30;
      v58 = next;
      v25 = v21;
      v22 = v60;
      v26 = v32;
    }

    while (v54 != v23);
    v51 = v32;
    v17 = obj;
    v22 = v60;
    v18 = v31;
    v54 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    v19 = v30;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v62 = v51;
  v7 = v57;
  v34 = [v57 runQuery:@"SELECT COUNT(*) AS count FROM categories" error:&v62];
  v35 = v62;

  lCopy = v49;
  v59 = v34;
  if (v34)
  {
    v61 = v35;
    v36 = [v57 runQuery:@"SELECT MAX(idx) AS maxIndex FROM categories" error:&v61];
    v9 = v61;

    v37 = v36;
    v38 = v18;
    if (v36)
    {
      next2 = [v59 next];

      if (next2)
      {
        v56 = v36;
        next3 = [v36 next];
        obja = v17;
        if (next3)
        {
          v41 = [next2 objectForKey:@"count"];

          v42 = [next3 objectForKey:@"maxIndex"];
          if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v42 isEqualToNumber:v41] & 1) != 0)
          {
            v33 = [[selfCopy alloc] initWithSQLiteDatabase:v57 dimensionality:{objc_msgSend(v42, "unsignedLongValue")}];
          }

          else if (errorCopy)
          {
            [FedStatsError errorWithCode:302 description:@"Cannot check if max index is equal to the number of entries"];
            *errorCopy = v33 = 0;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          if (errorCopy)
          {
            [FedStatsError errorWithCode:302 description:@"No results for max index (how?)"];
            *errorCopy = v33 = 0;
          }

          else
          {
            v33 = 0;
          }

          v41 = v19;
        }

        v19 = v41;
        v17 = obja;
        v37 = v56;
      }

      else if (errorCopy)
      {
        [FedStatsError errorWithCode:302 description:@"No results for row count (how?)"];
        next2 = 0;
        *errorCopy = v33 = 0;
      }

      else
      {
        next2 = 0;
        v33 = 0;
      }
    }

    else
    {
      if (errorCopy)
      {
        [FedStatsError errorWithCode:302 underlyingError:v9 description:@"Cannot find max index"];
        *errorCopy = v33 = 0;
      }

      else
      {
        v33 = 0;
      }

      next2 = next;
    }

    next = next2;
    v18 = v38;
LABEL_64:
    v7 = v57;
  }

  else
  {
    if (errorCopy)
    {
      [FedStatsError errorWithCode:302 underlyingError:v35 description:@"Cannot count rows"];
      *errorCopy = v33 = 0;
    }

    else
    {
      v33 = 0;
    }

    v9 = v35;
  }

LABEL_66:
LABEL_67:

  return v33;
}

- (id)encode:(id)encode error:(id *)error
{
  encodeCopy = encode;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    encodeCopy = [NSString stringWithFormat:@"SELECT idx FROM categories WHERE category == '%@'", encodeCopy];
    sqliteDB = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
    v17 = 0;
    v9 = [sqliteDB runQuery:encodeCopy error:&v17];
    v10 = v17;

    if (v9)
    {
      next = [v9 next];
      v12 = next;
      v13 = &off_100030460;
      if (next)
      {
        v14 = [next objectForKey:@"idx"];
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([v14 intValue] >= 0)
          {
            v15 = v14;
          }

          else
          {
            v15 = &off_100030460;
          }

          v13 = v15;
        }

        else if (error)
        {
          [FedStatsError errorWithCode:900 description:@"Database columns are malformed"];
          *error = v13 = 0;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else if (error)
    {
      [FedStatsError errorWithCode:401 underlyingError:v10 description:@"Failed to lookup category in the database"];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 description:@"Input category should be a string"];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)decode:(unint64_t)decode error:(id *)error
{
  decode = [NSString stringWithFormat:@"SELECT category FROM categories WHERE idx == %lu", error, decode];
  sqliteDB = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
  v13 = 0;
  v7 = [sqliteDB runQuery:decode error:&v13];

  if (v7)
  {
    next = [v7 next];
    v9 = next;
    if (next)
    {
      v10 = [next objectForKey:@"category"];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = @"FedStatsCategoricalDataOutOfBounds";
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)categoryDatabaseAt:(id)at withCategories:(id)categories error:(id *)error
{
  atCopy = at;
  categoriesCopy = categories;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = categoriesCopy;
      v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v34;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v34 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v33 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
                *error = {;
              }

              goto LABEL_35;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v32 = 0;
      v15 = [FedStatsSQLiteDatabase databaseWithURL:atCopy mode:119 error:&v32];
      v16 = v32;
      v17 = v16;
      if (v15)
      {
        v31 = v16;
        v18 = [v15 execute:@"CREATE TABLE categories (idx INTEGER UNIQUE error:{category TEXT UNIQUE, PRIMARY KEY(idx, category)) WITHOUT ROWID, STRICT", &v31}];
        v19 = v31;

        if (v18)
        {
          v29 = v15;
          v20 = 0;
          v21 = 1;
          do
          {
            if (v21 - 1 >= [v9 count])
            {

              v26 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:atCopy error:error];
              goto LABEL_36;
            }

            v22 = [v9 objectAtIndex:v21 - 1];
            v23 = [NSString stringWithFormat:@"INSERT INTO categories VALUES (%lu, '%@')", v21, v22];

            v30 = v19;
            LOBYTE(v22) = [v29 execute:v23 error:&v30];
            v24 = v30;

            ++v21;
            v19 = v24;
            v20 = v23;
          }

          while ((v22 & 1) != 0);
          if (error)
          {
            *error = [FedStatsError errorWithCode:302 underlyingError:v24 description:@"Cannot insert elements into the table"];
          }

          goto LABEL_35;
        }

        if (!error)
        {
          goto LABEL_34;
        }
        v27 = ;
      }

      else
      {
        if (!error)
        {
          v19 = v16;
          goto LABEL_34;
        }

        v27 = [FedStatsError errorWithCode:302 underlyingError:v16 description:@"Cannot create new database"];
        v19 = v17;
      }

      *error = v27;
LABEL_34:

      goto LABEL_35;
    }

    if (error)
    {
      goto LABEL_23;
    }
  }

  else if (error)
  {
LABEL_23:
    [FedStatsError errorWithCode:302 description:v25];
    *error = v26 = 0;
    goto LABEL_36;
  }

LABEL_35:
  v26 = 0;
LABEL_36:

  return v26;
}

@end