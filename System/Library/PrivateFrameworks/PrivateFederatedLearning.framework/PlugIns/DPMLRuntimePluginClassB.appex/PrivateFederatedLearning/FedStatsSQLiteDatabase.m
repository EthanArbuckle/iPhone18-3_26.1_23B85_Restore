@interface FedStatsSQLiteDatabase
+ (FedStatsSQLiteDatabase)databaseWithURL:(id)a3 mode:(char)a4 error:(id *)a5;
- (BOOL)execute:(id)a3 error:(id *)a4;
- (FedStatsSQLiteDatabase)initWithDatabase:(sqlite3 *)a3;
- (id)runQuery:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation FedStatsSQLiteDatabase

- (FedStatsSQLiteDatabase)initWithDatabase:(sqlite3 *)a3
{
  v5.receiver = self;
  v5.super_class = FedStatsSQLiteDatabase;
  result = [(FedStatsSQLiteDatabase *)&v5 init];
  if (result)
  {
    result->_database = a3;
  }

  return result;
}

- (void)dealloc
{
  sqlite3_close_v2([(FedStatsSQLiteDatabase *)self database]);
  v3.receiver = self;
  v3.super_class = FedStatsSQLiteDatabase;
  [(FedStatsSQLiteDatabase *)&v3 dealloc];
}

+ (FedStatsSQLiteDatabase)databaseWithURL:(id)a3 mode:(char)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [NSURLComponents componentsWithURL:v8 resolvingAgainstBaseURL:1];
    v37 = 0;
    if (v6 == 97)
    {
      v26 = [v8 path];
      v27 = [v9 fileExistsAtPath:v26 isDirectory:&v37];

      if ((v27 & 1) == 0)
      {
        if (a5)
        {
          goto LABEL_30;
        }

        goto LABEL_40;
      }

      if (v37 != 1)
      {
        v17 = 33554498;
LABEL_35:
        ppDb = 0;
        v30 = [v10 URL];
        v31 = [v30 absoluteString];
        v32 = sqlite3_open_v2([v31 UTF8String], &ppDb, v17, 0);

        if (!v32)
        {
          v34 = [a1 alloc];
          v18 = [v34 initWithDatabase:ppDb];
          goto LABEL_41;
        }

        if (!a5)
        {
          goto LABEL_40;
        }

        v15 = [NSString stringWithFormat:@"Cannot load database: %s", sqlite3_errmsg(ppDb)];
        v25 = v15;
        goto LABEL_38;
      }

      goto LABEL_20;
    }

    if (v6 != 119)
    {
      if (v6 != 114)
      {
        if (a5)
        {
          v28 = @"Mode can be one of 'r', 'w', 'a'";
          goto LABEL_30;
        }

        goto LABEL_40;
      }

      v11 = [v8 path];
      v12 = [v9 fileExistsAtPath:v11 isDirectory:&v37];

      if ((v12 & 1) == 0)
      {
        if (a5)
        {
          goto LABEL_30;
        }

        goto LABEL_40;
      }

      if (v37 != 1)
      {
        v13 = [v8 path];
        v14 = [v9 isReadableFileAtPath:v13];

        if (v14)
        {
          v15 = [NSURLQueryItem queryItemWithName:@"nolock" value:@"1"];
          v38 = v15;
          v16 = [NSArray arrayWithObjects:&v38 count:1];
          [v10 setQueryItems:v16];
          v17 = 33554497;
LABEL_33:

          goto LABEL_34;
        }

        if (!a5)
        {
          goto LABEL_40;
        }

LABEL_30:
        [FedStatsError errorWithCode:302 description:v28];
        *a5 = v18 = 0;
LABEL_41:

        goto LABEL_42;
      }

LABEL_20:
      if (a5)
      {
        goto LABEL_30;
      }

LABEL_40:
      v18 = 0;
      goto LABEL_41;
    }

    v19 = [v8 URLByResolvingSymlinksInPath];
    v15 = [v19 URLByDeletingLastPathComponent];

    v20 = [(__CFString *)v15 path];
    v21 = [v9 fileExistsAtPath:v20 isDirectory:&v37];
    v22 = v37;

    if (v21 && v22)
    {
      v17 = 33554502;
      v23 = [v8 path];
      v24 = [v9 fileExistsAtPath:v23 isDirectory:&v37];

      if (!v24)
      {
LABEL_34:

        goto LABEL_35;
      }

      if (v37 != 1)
      {
        v36 = 0;
        v29 = [v9 removeItemAtURL:v8 error:&v36];
        v16 = v36;
        if ((v29 & 1) == 0)
        {
          if (a5)
            *a5 = {;
          }

          goto LABEL_39;
        }

        goto LABEL_33;
      }

      if (a5)
      {
LABEL_38:
        *a5 = [FedStatsError errorWithCode:302 description:v25];
      }
    }

    else if (a5)
    {
      v25 = @"The directory for the URL does not exist";
      goto LABEL_38;
    }

LABEL_39:

    goto LABEL_40;
  }

  if (a5)
  {
    *a5 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_42:

  return v18;
}

- (id)runQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  ppStmt = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      *a4 = v9 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = sqlite3_prepare_v2(-[FedStatsSQLiteDatabase database](self, "database"), [v6 UTF8String], -1, &ppStmt, 0);
  if (v7)
  {
    if (a4)
    {
      v8 = [NSString stringWithFormat:@"Cannot prepare query: %s", sqlite3_errstr(v7)];
      *a4 = [FedStatsError errorWithCode:302 description:v8];
    }

LABEL_7:
    v9 = 0;
    goto LABEL_9;
  }

  v10 = [FedStatSQLiteDatabaseQueryResult alloc];
  v9 = [(FedStatSQLiteDatabaseQueryResult *)v10 initWithQueryStatement:ppStmt];
LABEL_9:

  return v9;
}

- (BOOL)execute:(id)a3 error:(id *)a4
{
  errmsg = 0;
  v6 = a3;
  v7 = [(FedStatsSQLiteDatabase *)self database];
  v8 = [v6 UTF8String];

  v9 = sqlite3_exec(v7, v8, 0, 0, &errmsg);
  v10 = v9;
  if (a4 && v9)
  {
    v11 = [NSString stringWithFormat:@"Database execute error: %s", errmsg];
    *a4 = [FedStatsError errorWithCode:302 description:v11];
  }

  return v10 == 0;
}

@end