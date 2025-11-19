@interface SARunTimeDataManager
+ (id)getRunTimeDataDict;
+ (id)runTimeDataObjectForKey:(id)a3;
+ (void)setRunTimeDataObject:(id)a3 forKey:(id)a4;
@end

@implementation SARunTimeDataManager

+ (id)getRunTimeDataDict
{
  v2 = [NSString stringWithFormat:@"%@/%@", @"/var/db/spaceattribution/", @"RunTimeData.db"];
  v29 = 0;
  v3 = [NSData dataWithContentsOfFile:v2 options:0 error:&v29];
  v4 = v29;
  if (v3)
  {
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v5, v6, v7, objc_opt_class(), 0];
    v28 = v4;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v3 error:&v28];
    v10 = v28;

    if (v9)
    {
      v11 = [v9 valueForKey:@"versionNumber"];
      v12 = [v11 longValue];

      if (v12 == 1)
      {
        v9 = v9;
        v13 = v9;
        goto LABEL_13;
      }

      v20 = SALog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100041A60(v20);
      }
    }

    else
    {
      v20 = SALog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100041AA4(v10, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    v13 = 0;
  }

  else
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100041B10(v4, v9, v14, v15, v16, v17, v18, v19);
    }

    v13 = 0;
    v10 = v4;
  }

LABEL_13:

  return v13;
}

+ (id)runTimeDataObjectForKey:(id)a3
{
  v3 = a3;
  v4 = +[SARunTimeDataManager getRunTimeDataDict];
  v5 = [v4 valueForKey:v3];

  return v5;
}

+ (void)setRunTimeDataObject:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v31 = 0;
  v8 = [v7 createDirectoryAtPath:@"/var/db/spaceattribution/" withIntermediateDirectories:1 attributes:0 error:&v31];
  v9 = v31;
  if (v8)
  {
    v10 = +[SARunTimeDataManager getRunTimeDataDict];
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    v11 = [NSNumber numberWithLong:1];
    [v10 setValue:v11 forKey:@"versionNumber"];

    [v10 setValue:v5 forKey:v6];
    v30 = v9;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v30];
    v13 = v30;

    if (v12)
    {
      v14 = [NSString stringWithFormat:@"%@/%@", @"/var/db/spaceattribution/", @"RunTimeData.db"];
      v29 = v13;
      [v12 writeToFile:v14 options:1 error:&v29];
      v9 = v29;

      if (v9)
      {
        v15 = SALog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100041BF4(v6, v9, v15);
        }
      }
    }

    else
    {
      v14 = SALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100041C8C(v13, v14, v23, v24, v25, v26, v27, v28);
      }

      v9 = v13;
    }
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100041B7C(v10, v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

@end