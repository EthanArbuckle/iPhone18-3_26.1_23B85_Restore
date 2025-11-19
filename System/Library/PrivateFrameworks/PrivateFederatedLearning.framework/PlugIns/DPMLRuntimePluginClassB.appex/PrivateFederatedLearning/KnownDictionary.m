@interface KnownDictionary
+ (id)processTokens:(id)a3 knownTokensFile:(id)a4 unknownTokens:(id)a5 error:(id *)a6;
+ (void)recordData:(id)a3 baseKey:(id)a4 metadata:(id)a5;
@end

@implementation KnownDictionary

+ (id)processTokens:(id)a3 knownTokensFile:(id)a4 unknownTokens:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v34 = a5;
  v11 = [[SqliteClient alloc] initWithFile:v10 error:a6];
  if (v11)
  {
    v31 = v10;
    v33 = +[NSMutableArray array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      v16 = 0xFFFFFFFFLL;
      v17 = &INSupportedMediaCategories_ptr;
      do
      {
        v18 = 0;
        do
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v35 + 1) + 8 * v18);
          v20 = v17[138];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 length])
          {
            v21 = [(SqliteClient *)v11 findWord:v19 error:a6];
            if (v16 == v21)
            {
              if (v34)
              {
                [v34 addObject:v19];
              }
            }

            else
            {
              v22 = v21;
              v23 = v12;
              v24 = v16;
              v25 = v11;
              v26 = a6;
              v27 = +[_PFLLog extension];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v40 = v19;
                v41 = 1024;
                v42 = v22;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Index of %@ is %i", buf, 0x12u);
              }

              v28 = [NSNumber numberWithInt:v22];
              [v33 addObject:v28];

              a6 = v26;
              v11 = v25;
              v16 = v24;
              v12 = v23;
              v17 = &INSupportedMediaCategories_ptr;
            }
          }

          v18 = v18 + 1;
        }

        while (v14 != v18);
        v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v14);
    }

    v10 = v31;
    v9 = v32;
  }

  else
  {
    v29 = +[_PFLLog extension];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10001C788(v29);
    }

    if (a6)
    {
      [_DPMLRuntimeError errorWithCode:300 description:@"Failed to load sqlite DB."];
      *a6 = v33 = 0;
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

+ (void)recordData:(id)a3 baseKey:(id)a4 metadata:(id)a5
{
  v7 = a4;
  LODWORD(a3) = [FedStatsDataEncoder record:a3 metadata:a5 baseKey:v7];
  v8 = +[_PFLLog extension];
  v9 = v8;
  if (a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Record %@ data succeed.", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10001C7CC(v9);
  }
}

@end