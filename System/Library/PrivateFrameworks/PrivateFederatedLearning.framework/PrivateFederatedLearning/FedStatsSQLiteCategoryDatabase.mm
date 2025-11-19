@interface FedStatsSQLiteCategoryDatabase
+ (id)categoryDatabaseAt:(id)a3 withCategories:(id)a4 error:(id *)a5;
+ (id)databaseWithFileURL:(id)a3 error:(id *)a4;
- (FedStatsSQLiteCategoryDatabase)initWithSQLiteDatabase:(id)a3 dimensionality:(unint64_t)a4;
- (id)decode:(unint64_t)a3 error:(id *)a4;
- (id)encode:(id)a3 error:(id *)a4;
@end

@implementation FedStatsSQLiteCategoryDatabase

- (FedStatsSQLiteCategoryDatabase)initWithSQLiteDatabase:(id)a3 dimensionality:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FedStatsSQLiteCategoryDatabase;
  v8 = [(FedStatsSQLiteCategoryDatabase *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sqliteDB, a3);
    v9->_dimensionality = a4;
  }

  return v9;
}

+ (id)databaseWithFileURL:(id)a3 error:(id *)a4
{
  v77[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      [FedStatsError errorWithCode:302 description:@"SQLite categories database requires a path in URL"];
      *a4 = v33 = 0;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_67;
  }

  v69 = 0;
  v7 = [FedStatsSQLiteDatabase databaseWithURL:v6 mode:114 error:&v69];
  v8 = v69;
  v9 = v8;
  if (!v7)
  {
    if (a4)
    {
      [FedStatsError errorWithCode:302 underlyingError:v8 description:@"Cannot open database"];
      *a4 = v33 = 0;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_66;
  }

  v49 = a1;
  v50 = v6;
  v51 = a4;
  v52 = v8;
  v58 = v7;
  v76[0] = @"SELECT COUNT(*) AS count FROM sqlite_master WHERE type == 'table' AND name == 'categories'";
  v76[1] = &unk_282B4B988;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  v77[0] = v10;
  v75[0] = @"SELECT COUNT(*) AS count FROM PRAGMA_TABLE_XINFO('categories')";
  v75[1] = &unk_282B4B9A0;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  v77[1] = v11;
  v74[0] = @"SELECT COUNT(*) AS count FROM sqlite_master, PRAGMA_INDEX_LIST(sqlite_master.name) AS index_list, PRAGMA_INDEX_XINFO(index_list.name) AS index_info WHERE sqlite_master.type == 'table' AND index_list.origin == 'pk' AND index_info.cid < 0";
  v74[1] = &unk_282B4B9B8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  v77[2] = v12;
  v73[0] = @"SELECT COUNT(*) AS count FROM PRAGMA_INDEX_LIST('categories') AS indices, PRAGMA_TABLE_XINFO('categories') AS table_info, PRAGMA_INDEX_XINFO(indices.name) AS index_info WHERE indices.origin != 'pk' AND indices.[unique] == 1 AND index_info.key == 1 AND index_info.name == table_info.name AND index_info.name == 'idx' AND table_info.type == 'INTEGER'";
  v73[1] = &unk_282B4B988;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  v77[3] = v13;
  v72[0] = @"SELECT COUNT(*) AS count FROM PRAGMA_INDEX_LIST('categories') AS indices, PRAGMA_TABLE_XINFO('categories') AS table_info, PRAGMA_INDEX_XINFO(indices.name) AS index_info WHERE indices.origin != 'pk' AND indices.[unique] == 1 AND index_info.key == 1 AND index_info.name == table_info.name AND index_info.name == 'category' AND table_info.type == 'TEXT'";
  v72[1] = &unk_282B4B988;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v77[4] = v14;
  v71[0] = @"SELECT COUNT(*) AS count FROM PRAGMA_INDEX_LIST('categories') AS indices, PRAGMA_INDEX_XINFO(indices.name) AS index_info WHERE indices.origin == 'pk' AND index_info.key == 1;";
  v71[1] = &unk_282B4B9A0;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v77[5] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:6];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v17 = v16;
  v55 = [v17 countByEnumeratingWithState:&v65 objects:v70 count:16];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (!v55)
  {
    v61 = 0;
    goto LABEL_22;
  }

  v21 = 0;
  v22 = 0;
  v56 = *v66;
  obj = v17;
  while (2)
  {
    v23 = 0;
    v24 = v18;
    v59 = v20;
    v25 = v21;
    v26 = v52;
    do
    {
      if (*v66 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v65 + 1) + 8 * v23);
      v28 = [v27 objectAtIndex:0];

      v29 = [v27 objectAtIndex:1];

      v64 = v26;
      v61 = v28;
      v21 = [v58 runQuery:v28 error:&v64];
      v9 = v64;

      if (!v21)
      {
        v45 = v51;
        v44 = v59;
        if (!v51)
        {
LABEL_52:
          v18 = v29;

          v33 = 0;
          v20 = v44;
          v17 = obj;
          v6 = v50;
          goto LABEL_64;
        }

        v46 = [FedStatsError errorWithCode:302 underlyingError:v9 description:@"Cannot query database"];
LABEL_42:
        *v45 = v46;
        goto LABEL_52;
      }

      v20 = [v21 next];

      if (!v20)
      {
        v45 = v51;
        if (!v51)
        {
          v44 = 0;
          goto LABEL_52;
        }

        v46 = [FedStatsError errorWithCode:302 underlyingError:v9 description:@"Cannot check query result"];
        v44 = 0;
        goto LABEL_42;
      }

      v30 = [v20 objectForKey:@"count"];

      if (!v30 || (v31 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v30 isEqualToNumber:v29] & 1) == 0)
      {
        if (v51)
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot complete check statement for %@", v61];
          *v51 = [FedStatsError errorWithCode:302 description:v43];
        }

        v19 = v30;
        v44 = v20;
        goto LABEL_52;
      }

      ++v23;
      v32 = v9;
      v24 = v29;
      v19 = v30;
      v59 = v20;
      v25 = v21;
      v22 = v61;
      v26 = v32;
    }

    while (v55 != v23);
    v52 = v32;
    v17 = obj;
    v22 = v61;
    v18 = v31;
    v55 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    v19 = v30;
    if (v55)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v63 = v52;
  v7 = v58;
  v34 = [v58 runQuery:@"SELECT COUNT(*) AS count FROM categories" error:&v63];
  v35 = v63;

  v6 = v50;
  v60 = v34;
  if (v34)
  {
    v62 = v35;
    v36 = [v58 runQuery:@"SELECT MAX(idx) AS maxIndex FROM categories" error:&v62];
    v9 = v62;

    v37 = v36;
    v38 = v18;
    if (v36)
    {
      v39 = [v60 next];

      if (v39)
      {
        v57 = v36;
        v40 = [v36 next];
        obja = v17;
        if (v40)
        {
          v41 = [v39 objectForKey:@"count"];

          v42 = [v40 objectForKey:@"maxIndex"];
          if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v42 isEqualToNumber:v41] & 1) != 0)
          {
            v33 = [[v49 alloc] initWithSQLiteDatabase:v58 dimensionality:{objc_msgSend(v42, "unsignedLongValue")}];
          }

          else if (v51)
          {
            [FedStatsError errorWithCode:302 description:@"Cannot check if max index is equal to the number of entries"];
            *v51 = v33 = 0;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          if (v51)
          {
            [FedStatsError errorWithCode:302 description:@"No results for max index (how?)"];
            *v51 = v33 = 0;
          }

          else
          {
            v33 = 0;
          }

          v41 = v19;
        }

        v19 = v41;
        v17 = obja;
        v37 = v57;
      }

      else if (v51)
      {
        [FedStatsError errorWithCode:302 description:@"No results for row count (how?)"];
        v39 = 0;
        *v51 = v33 = 0;
      }

      else
      {
        v39 = 0;
        v33 = 0;
      }
    }

    else
    {
      if (v51)
      {
        [FedStatsError errorWithCode:302 underlyingError:v9 description:@"Cannot find max index"];
        *v51 = v33 = 0;
      }

      else
      {
        v33 = 0;
      }

      v39 = v20;
    }

    v20 = v39;
    v18 = v38;
LABEL_64:
    v7 = v58;
  }

  else
  {
    if (v51)
    {
      [FedStatsError errorWithCode:302 underlyingError:v35 description:@"Cannot count rows"];
      *v51 = v33 = 0;
    }

    else
    {
      v33 = 0;
    }

    v9 = v35;
  }

LABEL_66:
LABEL_67:

  v47 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)encode:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT idx FROM categories WHERE category == '%@'", v6];
    v8 = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
    v17 = 0;
    v9 = [v8 runQuery:v7 error:&v17];
    v10 = v17;

    if (v9)
    {
      v11 = [v9 next];
      v12 = v11;
      v13 = &unk_282B4B9B8;
      if (v11)
      {
        v14 = [v11 objectForKey:@"idx"];
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([v14 intValue] >= 0)
          {
            v15 = v14;
          }

          else
          {
            v15 = &unk_282B4B9B8;
          }

          v13 = v15;
        }

        else if (a4)
        {
          [FedStatsError errorWithCode:900 description:@"Database columns are malformed"];
          *a4 = v13 = 0;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else if (a4)
    {
      [FedStatsError errorWithCode:401 underlyingError:v10 description:@"Failed to lookup category in the database"];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:401 description:@"Input category should be a string"];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)decode:(unint64_t)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT category FROM categories WHERE idx == %lu", a4, a3];
  v6 = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
  v13 = 0;
  v7 = [v6 runQuery:v5 error:&v13];

  if (v7)
  {
    v8 = [v7 next];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKey:@"category"];
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

+ (id)categoryDatabaseAt:(id)a3 withCategories:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v36;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v36 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (a5)
                *a5 = {;
              }

              goto LABEL_35;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v34 = 0;
      v15 = [FedStatsSQLiteDatabase databaseWithURL:v7 mode:119 error:&v34];
      v16 = v34;
      v17 = v16;
      if (v15)
      {
        v33 = v16;
        v18 = [v15 execute:@"CREATE TABLE categories (idx INTEGER UNIQUE error:{category TEXT UNIQUE, PRIMARY KEY(idx, category)) WITHOUT ROWID, STRICT", &v33}];
        v19 = v33;

        if (v18)
        {
          v31 = v15;
          v20 = 0;
          v21 = 1;
          do
          {
            if (v21 - 1 >= [v9 count])
            {

              v27 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v7 error:a5];
              goto LABEL_36;
            }

            v22 = MEMORY[0x277CCACA8];
            v23 = [v9 objectAtIndex:v21 - 1];
            v24 = [v22 stringWithFormat:@"INSERT INTO categories VALUES (%lu, '%@')", v21, v23];

            v32 = v19;
            LOBYTE(v23) = [v31 execute:v24 error:&v32];
            v25 = v32;

            ++v21;
            v19 = v25;
            v20 = v24;
          }

          while ((v23 & 1) != 0);
          if (a5)
          {
            *a5 = [FedStatsError errorWithCode:302 underlyingError:v25 description:@"Cannot insert elements into the table"];
          }

          goto LABEL_35;
        }

        if (!a5)
        {
          goto LABEL_34;
        }
        v28 = ;
      }

      else
      {
        if (!a5)
        {
          v19 = v16;
          goto LABEL_34;
        }

        v28 = [FedStatsError errorWithCode:302 underlyingError:v16 description:@"Cannot create new database"];
        v19 = v17;
      }

      *a5 = v28;
LABEL_34:

      goto LABEL_35;
    }

    if (a5)
    {
      goto LABEL_23;
    }
  }

  else if (a5)
  {
LABEL_23:
    [FedStatsError errorWithCode:302 description:v26];
    *a5 = v27 = 0;
    goto LABEL_36;
  }

LABEL_35:
  v27 = 0;
LABEL_36:

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

@end