@interface PurchaseActionsDatabaseSchema
+ (BOOL)createOrUpdateSchemaInDatabase:(id)database;
+ (id)databasePath;
@end

@implementation PurchaseActionsDatabaseSchema

+ (BOOL)createOrUpdateSchemaInDatabase:(id)database
{
  databaseCopy = database;
  userVersion = [databaseCopy userVersion];
  v20 = userVersion;
  if (userVersion > 11301)
  {
LABEL_15:
    v7 = 1;
    goto LABEL_27;
  }

  while (1)
  {
    if (userVersion > 11000)
    {
      switch(userVersion)
      {
        case 11001:
          v5 = sub_1001D3198;
          break;
        case 11300:
          v5 = sub_1001D320C;
          break;
        case 11301:
          v5 = sub_1001D32AC;
          break;
        default:
          goto LABEL_28;
      }

      goto LABEL_12;
    }

    v6 = sub_1001D3078;
    if (!userVersion)
    {
      goto LABEL_13;
    }

    if (userVersion != 11000)
    {
      break;
    }

    v5 = sub_1001D3124;
LABEL_12:
    v6 = v5;
LABEL_13:
    if ((v6(databaseCopy, &v20) & 1) == 0)
    {
      v8 = +[SSLogConfig sharedConfig];
      shouldLog = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = shouldLog | 2;
      }

      else
      {
        v10 = shouldLog;
      }

      oSLogObject = [v8 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v10 &= 2u;
      }

      if (!v10)
      {
        goto LABEL_25;
      }

      v12 = objc_opt_class();
      v21 = 138543618;
      v22 = v12;
      v23 = 2048;
      v24 = v20;
      v13 = v12;
      LODWORD(v19) = 22;
      goto LABEL_23;
    }

    userVersion = v20;
    if (v20 > 11301)
    {
      goto LABEL_15;
    }
  }

LABEL_28:
  v8 = +[SSLogConfig sharedConfig];
  shouldLog2 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v17 = shouldLog2 | 2;
  }

  else
  {
    v17 = shouldLog2;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = objc_opt_class();
  v21 = 138543874;
  v22 = v18;
  v23 = 2048;
  v24 = v20;
  v25 = 2048;
  v26 = 11302;
  v13 = v18;
  LODWORD(v19) = 32;
LABEL_23:
  v14 = _os_log_send_and_compose_impl();

  if (!v14)
  {
    goto LABEL_26;
  }

  oSLogObject = [NSString stringWithCString:v14 encoding:4, &v21, v19];
  free(v14);
  SSFileLog();
LABEL_25:

LABEL_26:
  v7 = 0;
LABEL_27:

  return v7;
}

+ (id)databasePath
{
  if (qword_1003840B8 != -1)
  {
    sub_100272588();
  }

  v3 = qword_1003840B0;

  return v3;
}

@end