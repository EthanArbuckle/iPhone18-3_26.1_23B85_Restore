@interface _DPMLRuntimeSQL
- (_DPMLRuntimeSQL)initWithSQLAccessTable:(id)table forRecipeIdentifier:(id)identifier withError:(id *)error;
- (id)runQuery:(id)query withError:(id *)error;
@end

@implementation _DPMLRuntimeSQL

- (_DPMLRuntimeSQL)initWithSQLAccessTable:(id)table forRecipeIdentifier:(id)identifier withError:(id *)error
{
  tableCopy = table;
  identifierCopy = identifier;
  v61.receiver = self;
  v61.super_class = _DPMLRuntimeSQL;
  v10 = [(_DPMLRuntimeSQL *)&v61 init];
  v11 = v10;
  if (!v10)
  {
LABEL_23:
    v38 = v11;
    goto LABEL_39;
  }

  if (![(_DPMLRuntimeSQL *)v10 checkSQLAccess:tableCopy allowedTableNamesForRecipeIdentifier:identifierCopy withError:error])
  {
    goto LABEL_38;
  }

  v12 = [&__NSArray0__struct mutableCopy];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = tableCopy;
  v14 = [v13 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = *v58;
  v16 = &INSupportedMediaCategories_ptr;
  v47 = tableCopy;
  v48 = v12;
  v46 = identifierCopy;
  errorCopy = error;
  v50 = v13;
  v44 = *v58;
  while (2)
  {
    v17 = 0;
    v45 = v14;
    do
    {
      if (*v58 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v57 + 1) + 8 * v17);
      v19 = v16;
      v20 = objc_alloc(v16[109]);
      v21 = [v13 objectForKeyedSubscript:v18];
      v22 = [v20 initWithTable:v18 columns:v21];
      v23 = v13;
      v24 = v22;

      if (!v24)
      {
        identifierCopy = v46;
        tableCopy = v47;
        if (!errorCopy)
        {
LABEL_28:

          goto LABEL_37;
        }

        v25 = [v50 objectForKeyedSubscript:v18];
        v39 = [v25 componentsJoinedByString:@" "];
        v43 = [NSString stringWithFormat:@"Could not create BMSQLColumnAccessSet for table name, %@ with columns, %@", v18, v39];
        *errorCopy = [_DPMLRuntimeError errorWithCode:400 description:v43];

LABEL_26:
LABEL_27:

        identifierCopy = v46;
        tableCopy = v47;
        v12 = v48;
        goto LABEL_28;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = [v23 objectForKeyedSubscript:v18];
      v26 = [v25 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v54;
LABEL_11:
        v29 = 0;
        while (1)
        {
          if (*v54 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v53 + 1) + 8 * v29);
          if (([v24 checkTable:v18 column:v30] & 1) == 0)
          {
            break;
          }

          if (v27 == ++v29)
          {
            v27 = [v25 countByEnumeratingWithState:&v53 objects:v62 count:16];
            if (v27)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }

        if (!errorCopy)
        {
          goto LABEL_27;
        }

        v39 = [NSString stringWithFormat:@"The %@ cannot be accessed for table name %@", v30, v18];
        *errorCopy = [_DPMLRuntimeError errorWithCode:400 description:v39];
        goto LABEL_26;
      }

LABEL_17:

      v12 = v48;
      [v48 addObject:v24];

      v17 = v17 + 1;
      v15 = v44;
      error = errorCopy;
      v13 = v50;
      v16 = v19;
    }

    while (v17 != v45);
    v14 = [v50 countByEnumeratingWithState:&v57 objects:v63 count:16];
    identifierCopy = v46;
    tableCopy = v47;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_19:

  objc_storeStrong(&v11->_privileges, v12);
  v31 = [[BMSQLDatabase alloc] initWithPrivileges:v12 isColumnAccessLoggingEnabled:1];
  if ([v31 registerFunctionWithName:@"sha1" numArgs:1 function:&stru_10002C5B0 error:error])
  {
    v32 = [NSCharacterSet characterSetWithCharactersInString:@"01"];
    invertedSet = [v32 invertedSet];

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10000367C;
    v51[3] = &unk_10002C5D8;
    v34 = invertedSet;
    v52 = v34;
    if ([v31 registerFunctionWithName:@"bit_string_to_int" numArgs:1 function:v51 error:error])
    {
      if (v31)
      {
        [v31 resetColumnAccessLog];
        database = v11->_database;
        v11->_database = v31;
        v36 = v31;

        accessedDataTypes = v11->_accessedDataTypes;
        v11->_accessedDataTypes = 0;

        goto LABEL_23;
      }

      if (error)
      {
        v41 = [NSString stringWithFormat:@"Could not create the BIOME database"];
        *error = [_DPMLRuntimeError errorWithCode:400 description:v41];
        goto LABEL_34;
      }
    }

    else
    {
      v41 = +[_PFLLog extension];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10001C310(v41);
      }

LABEL_34:
    }
  }

  else
  {
    v40 = +[_PFLLog extension];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_10001C2CC(v40);
    }
  }

LABEL_37:
LABEL_38:
  v38 = 0;
LABEL_39:

  return v38;
}

- (id)runQuery:(id)query withError:(id *)error
{
  queryCopy = query;
  database = [(_DPMLRuntimeSQL *)self database];
  [database resetColumnAccessLog];

  v43 = queryCopy;
  v8 = v7 = [queryCopy copy];
  v10 = v9 = objc_claimAutoreleasedReturnValue();

  selfCopy = self;
  database2 = [(_DPMLRuntimeSQL *)self database];
  v42 = v10;
  v12 = [database2 executeQuery:{@"%@", v10}];

  v44 = [FedStatsDataSampler samplerWithCount:20];
  if ([v12 next])
  {
    do
    {
      columns = [v12 columns];
      v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [columns count]);

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      columns2 = [v12 columns];
      v16 = [columns2 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v51;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v51 != v18)
            {
              objc_enumerationMutation(columns2);
            }

            v20 = *(*(&v50 + 1) + 8 * i);
            v21 = +[NSNull null];
            [v14 setObject:v21 forKey:v20];
          }

          v17 = [columns2 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v17);
      }

      v22 = [v12 row];
      [v14 addEntriesFromDictionary:v22];

      [v44 addItem:v14];
    }

    while (([v12 next] & 1) != 0);
  }

  error = [v12 error];

  if (error)
  {
    if (error)
    {
      error2 = [v12 error];
      *error = [_DPMLRuntimeError errorWithCode:400 underlyingError:error2 description:@"Query execution failed"];
    }

    getResults = +[_PFLLog extension];
    v27 = v10;
    v26 = v43;
    if (os_log_type_enabled(getResults, OS_LOG_TYPE_ERROR))
    {
      sub_10001C354(v12, getResults);
    }

    v28 = 0;
  }

  else
  {
    getResults = [v44 getResults];
    if (![getResults count])
    {
      v29 = +[_PFLLog extension];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "The returned SQL query result from BIOME is empty", buf, 2u);
      }
    }

    v30 = objc_alloc_init(NSMutableSet);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    database3 = [(_DPMLRuntimeSQL *)selfCopy database];
    accessedColumns = [database3 accessedColumns];

    v33 = [accessedColumns countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v46;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(accessedColumns);
          }

          columns3 = [*(*(&v45 + 1) + 8 * j) columns];
          [v30 unionSet:columns3];
        }

        v34 = [accessedColumns countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v34);
    }

    if (![v30 count])
    {
      v38 = +[_PFLLog extension];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "The returned SQL accessed columns from BIOME is empty", buf, 2u);
      }
    }

    if ([(_DPMLRuntimeSQL *)selfCopy convertSQLDataTypes:v30 toGlobalDataTypesWithError:error])
    {
      v28 = getResults;
    }

    else
    {
      v28 = 0;
    }

    v27 = v42;
    v26 = v43;
  }

  return v28;
}

@end