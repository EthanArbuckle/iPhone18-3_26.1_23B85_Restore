@interface RMExternalStatusArchiver
+ (BOOL)persistStatusWithStoreIdentifier:(id)identifier status:(id)status error:(id *)error;
+ (id)_getPublishedStatusFileURLWithStoreIdentifier:(id)identifier;
+ (id)statusWithStoreIdentifier:(id)identifier error:(id *)error;
@end

@implementation RMExternalStatusArchiver

+ (id)statusWithStoreIdentifier:(id)identifier error:(id *)error
{
  v5 = [RMExternalStatusArchiver _getPublishedStatusFileURLWithStoreIdentifier:identifier];
  v18 = 0;
  v6 = [RMJSONUtilities deserializeJSONDictionaryAtFileURL:v5 error:&v18];
  v7 = v18;
  if (v6)
  {
    if (![v6 count])
    {
      v10 = v6;
      goto LABEL_21;
    }

    v8 = [v6 objectForKeyedSubscript:@"ValidStatus"];
    v9 = [v6 objectForKeyedSubscript:@"ErrorStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [NSMutableDictionary dictionaryWithDictionary:v8];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100029E1C;
      v10 = v16[3] = &unk_1000D0F08;
      v17 = v10;
      [v9 enumerateKeysAndObjectsUsingBlock:v16];
      v11 = v17;
    }

    else
    {
      v14 = +[RMLog externalStatusArchiver];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10002A4CC(v14);
      }

      if (!error)
      {
        v10 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v11 = +[RMErrorUtilities createInternalError];
      if (v11)
      {
        v11 = v11;
        v10 = 0;
        *error = v11;
      }

      else
      {
        v10 = 0;
      }
    }

    goto LABEL_20;
  }

  v12 = +[RMLog externalStatusArchiver];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10002A510();
  }

  v10 = 0;
  if (error && v7)
  {
    v13 = v7;
    v10 = 0;
    *error = v7;
  }

LABEL_21:

  return v10;
}

+ (BOOL)persistStatusWithStoreIdentifier:(id)identifier status:(id)status error:(id *)error
{
  statusCopy = status;
  identifierCopy = identifier;
  v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [statusCopy count]);
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [statusCopy count]);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002A160;
  v10 = v21[3] = &unk_1000D1AA0;
  v22 = v10;
  v11 = v9;
  v23 = v11;
  [statusCopy enumerateKeysAndObjectsUsingBlock:v21];

  v12 = [RMExternalStatusArchiver _getPublishedStatusFileURLWithStoreIdentifier:identifierCopy];

  v24[0] = @"ValidStatus";
  v24[1] = @"ErrorStatus";
  v25[0] = v11;
  v25[1] = v10;
  v13 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v20 = 0;
  v14 = [RMJSONUtilities serializeJSONDictionary:v13 fileURL:v12 error:&v20];
  v15 = v20;
  v16 = +[RMLog externalStatusArchiver];
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10002A5F8();
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002A584();
    }

    if (error && v15)
    {
      v18 = v15;
      *error = v15;
    }
  }

  return v14;
}

+ (id)_getPublishedStatusFileURLWithStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [RMLocations statusDirectoryURLCreateIfNeeded:1];
  v5 = [v4 URLByAppendingPathComponent:identifierCopy isDirectory:1];

  v15 = 0;
  v6 = +[NSFileManager defaultManager];
  path = [v5 path];
  v8 = [v6 fileExistsAtPath:path isDirectory:&v15];

  if ((v8 & 1) == 0)
  {
    v14 = 0;
    v9 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      v11 = +[RMLog externalStatusArchiver];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10002A66C();
      }
    }
  }

  v12 = [v5 URLByAppendingPathComponent:@"PublishedStatus.json" isDirectory:0];

  return v12;
}

@end