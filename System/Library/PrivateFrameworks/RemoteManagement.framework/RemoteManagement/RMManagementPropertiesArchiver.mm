@interface RMManagementPropertiesArchiver
+ (BOOL)persistPropertiesWithStoreIdentifier:(id)identifier properties:(id)properties error:(id *)error;
+ (id)_getManagementPropertiesFileURLWithStoreIdentifier:(id)identifier;
+ (id)propertiesWithStoreIdentifier:(id)identifier error:(id *)error;
@end

@implementation RMManagementPropertiesArchiver

+ (id)propertiesWithStoreIdentifier:(id)identifier error:(id *)error
{
  v5 = [RMManagementPropertiesArchiver _getManagementPropertiesFileURLWithStoreIdentifier:identifier];
  v12 = 0;
  v6 = [RMJSONUtilities deserializeJSONDictionaryAtFileURL:v5 error:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[RMLog managementPropertiesArchiver];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100049F68();
    }

    if (error && v7)
    {
      v10 = v7;
      *error = v7;
    }
  }

  return v6;
}

+ (BOOL)persistPropertiesWithStoreIdentifier:(id)identifier properties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v8 = [RMManagementPropertiesArchiver _getManagementPropertiesFileURLWithStoreIdentifier:identifier];
  v21 = 0;
  v9 = [RMJSONUtilities serializeJSONDictionary:propertiesCopy fileURL:v8 error:&v21];
  v10 = v21;
  v11 = v10;
  if (v9)
  {
    v12 = +[RMLog managementPropertiesArchiver];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10004A0C4();
    }

    v13 = 1;
LABEL_17:
    v15 = v11;
    goto LABEL_18;
  }

  if ([v10 code] != 513 || !+[RMLocations fixFilePermissionsForURL:](RMLocations, "fixFilePermissionsForURL:", v8))
  {
LABEL_12:
    v17 = +[RMLog managementPropertiesArchiver];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100049FDC();
    }

    v13 = 0;
    if (error && v11)
    {
      v18 = v11;
      v13 = 0;
      *error = v11;
    }

    goto LABEL_17;
  }

  v20 = v11;
  v14 = [RMJSONUtilities serializeJSONDictionary:propertiesCopy fileURL:v8 error:&v20];
  v15 = v20;

  if (!v14)
  {
    v11 = v15;
    goto LABEL_12;
  }

  v16 = +[RMLog managementPropertiesArchiver];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10004A050();
  }

  v13 = 1;
LABEL_18:

  return v13;
}

+ (id)_getManagementPropertiesFileURLWithStoreIdentifier:(id)identifier
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
      v11 = +[RMLog managementPropertiesArchiver];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10004A138();
      }
    }
  }

  v12 = [v5 URLByAppendingPathComponent:@"ManagementProperties.json" isDirectory:0];

  return v12;
}

@end