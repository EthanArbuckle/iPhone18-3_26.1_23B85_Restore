@interface RMConfigurationStatusArchiver
+ (BOOL)_removeStatusFileAndParentIfEmptyAtURL:(id)l madeChanges:(BOOL *)changes error:(id *)error;
+ (BOOL)_removeStatusFileDirectoryAtURL:(id)l madeChanges:(BOOL *)changes error:(id *)error;
+ (BOOL)removeAllStatusForStoreIdentifier:(id)identifier error:(id *)error;
+ (BOOL)removeStatusForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token error:(id *)error;
+ (BOOL)removeStatusForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token sourceIdentifier:(id)sourceIdentifier error:(id *)error;
+ (BOOL)validStatusForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier serverToken:(id)token;
+ (id)_getStatusFileURLForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token sourceIdentifier:(id)sourceIdentifier;
+ (id)fileSystemSafeCharacterSet;
+ (id)statusForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier serverToken:(id)token;
@end

@implementation RMConfigurationStatusArchiver

+ (id)statusForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier serverToken:(id)token
{
  declarationIdentifierCopy = declarationIdentifier;
  tokenCopy = token;
  v9 = [RMConfigurationStatusArchiver _getStatusDirectoryURLWithStoreIdentifier:identifier declarationIdentifier:declarationIdentifierCopy declarationServerToken:tokenCopy createIfNeeded:0];
  v10 = +[NSFileManager defaultManager];
  v11 = [v10 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:1 error:0];

  if ([v11 count])
  {
    v31 = tokenCopy;
    v32 = declarationIdentifierCopy;
    v33 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v11;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
    v30 = v9;
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v38;
      v17 = 1;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          v19 = v15;
          if (*v38 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          v36 = v15;
          v21 = [RMJSONUtilities deserializeJSONDictionaryAtFileURL:v20 error:&v36, v29];
          v15 = v36;

          if (v21)
          {
            v22 = [v21 objectForKeyedSubscript:@"valid"];
            bOOLValue = [v22 BOOLValue];

            v17 &= bOOLValue;
            v24 = [v21 objectForKeyedSubscript:@"reasons"];
            if (v24)
            {
              v34[0] = _NSConcreteStackBlock;
              v34[1] = 3221225472;
              v34[2] = sub_1000249E4;
              v34[3] = &unk_1000D1900;
              v35 = v33;
              [v24 enumerateObjectsUsingBlock:v34];
            }
          }

          else
          {
            v24 = +[RMLog configurationStatusArchiver];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v44 = v15;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not deserialize status: %{public}@", buf, 0xCu);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      v17 = 1;
    }

    v41[0] = @"identifier";
    v41[1] = @"server-token";
    tokenCopy = v31;
    declarationIdentifierCopy = v32;
    v42[0] = v32;
    v42[1] = v31;
    v41[2] = @"valid";
    v26 = [NSNumber numberWithBool:v17 & 1];
    v42[2] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    v25 = [v27 mutableCopy];

    if ([v33 count])
    {
      [v25 setObject:v33 forKeyedSubscript:@"reasons"];
    }

    v11 = v29;
    v9 = v30;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (BOOL)validStatusForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier serverToken:(id)token
{
  v5 = [RMConfigurationStatusArchiver statusForStoreIdentifier:identifier declarationIdentifier:declarationIdentifier serverToken:token];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"valid"];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)removeStatusForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token error:(id *)error
{
  v8 = [RMConfigurationStatusArchiver _getStatusDirectoryURLWithStoreIdentifier:identifier declarationIdentifier:declarationIdentifier declarationServerToken:token createIfNeeded:0];
  v14 = 0;
  v9 = [self _removeStatusFileDirectoryAtURL:v8 madeChanges:&v14 error:error];
  if (v9 && v14 == 1)
  {
    v10 = +[RMSubscribedStatusKeyPathUpdater sharedUpdater];
    [v10 notifyStatusDidChangeForDeclarations];

    v11 = +[RMStoreController sharedController];
    [v11 observerStoresDidChange];

    v12 = +[RMStoreController sharedController];
    [v12 declarationStatusDidChange];
  }

  return v9;
}

+ (BOOL)removeStatusForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token sourceIdentifier:(id)sourceIdentifier error:(id *)error
{
  v9 = [self _getStatusFileURLForStoreIdentifier:identifier declarationIdentifier:declarationIdentifier declarationServerToken:token sourceIdentifier:sourceIdentifier];
  v15 = 0;
  v10 = [self _removeStatusFileAndParentIfEmptyAtURL:v9 madeChanges:&v15 error:error];
  if (v10 && v15 == 1)
  {
    v11 = +[RMSubscribedStatusKeyPathUpdater sharedUpdater];
    [v11 notifyStatusDidChangeForDeclarations];

    v12 = +[RMStoreController sharedController];
    [v12 observerStoresDidChange];

    v13 = +[RMStoreController sharedController];
    [v13 declarationStatusDidChange];
  }

  return v10;
}

+ (BOOL)removeAllStatusForStoreIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = [RMLocations statusDirectoryURLCreateIfNeeded:0];
  v7 = [v6 URLByAppendingPathComponent:identifierCopy isDirectory:1];

  v20 = 0;
  v8 = +[NSFileManager defaultManager];
  path = [v7 path];
  v10 = [v8 fileExistsAtPath:path isDirectory:&v20];

  if (v10)
  {
    v19 = 0;
    v11 = [v8 removeItemAtURL:v7 error:&v19];
    v12 = v19;
    v13 = +[RMLog configurationStatusArchiver];
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100025B10();
      }

      v15 = +[RMStoreController sharedController];
      [v15 observerStoresDidChange];

      v16 = +[RMStoreController sharedController];
      [v16 declarationStatusDidChange];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100025AA8();
      }

      if (error && v12)
      {
        v18 = v12;
        *error = v12;
      }
    }
  }

  else
  {
    v12 = +[RMLog configurationStatusArchiver];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100025A40();
    }

    LOBYTE(v11) = 1;
  }

  return v11;
}

+ (id)fileSystemSafeCharacterSet
{
  if (qword_1000E67E0 != -1)
  {
    sub_100025B78();
  }

  v3 = qword_1000E67D8;

  return v3;
}

+ (id)_getStatusFileURLForStoreIdentifier:(id)identifier declarationIdentifier:(id)declarationIdentifier declarationServerToken:(id)token sourceIdentifier:(id)sourceIdentifier
{
  sourceIdentifierCopy = sourceIdentifier;
  v10 = [RMConfigurationStatusArchiver _getStatusDirectoryURLWithStoreIdentifier:identifier declarationIdentifier:declarationIdentifier declarationServerToken:token createIfNeeded:1];
  sourceIdentifierCopy = [NSString stringWithFormat:@"%@.json", sourceIdentifierCopy];

  v12 = [v10 URLByAppendingPathComponent:sourceIdentifierCopy isDirectory:0];

  return v12;
}

+ (BOOL)_removeStatusFileDirectoryAtURL:(id)l madeChanges:(BOOL *)changes error:(id *)error
{
  lCopy = l;
  v18 = 0;
  v8 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v10 = [v8 fileExistsAtPath:path isDirectory:&v18];

  if (v10)
  {
    v17 = 0;
    v11 = [v8 removeItemAtURL:lCopy error:&v17];
    v12 = v17;
    v13 = +[RMLog configurationStatusArchiver];
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100025CC4();
      }

      *changes = 1;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100025C5C();
      }

      if (error && v12)
      {
        v16 = v12;
        *error = v12;
      }
    }
  }

  else
  {
    v12 = +[RMLog configurationStatusArchiver];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100025BF4();
    }

    LOBYTE(v11) = 1;
  }

  return v11;
}

+ (BOOL)_removeStatusFileAndParentIfEmptyAtURL:(id)l madeChanges:(BOOL *)changes error:(id *)error
{
  lCopy = l;
  v27 = 0;
  v8 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v10 = [v8 fileExistsAtPath:path isDirectory:&v27];

  if (v10)
  {
    v26 = 0;
    v11 = [v8 removeItemAtURL:lCopy error:&v26];
    v12 = v26;
    v13 = +[RMLog configurationStatusArchiver];
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100025DFC();
      }

      path2 = [lCopy path];
      stringByDeletingLastPathComponent = [path2 stringByDeletingLastPathComponent];

      v17 = [v8 contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:0];
      v18 = v17;
      if (v17 && ![v17 count])
      {
        v25 = v12;
        v21 = [v8 removeItemAtPath:stringByDeletingLastPathComponent error:&v25];
        v19 = v25;

        v22 = +[RMLog configurationStatusArchiver];
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_100025ECC();
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100025E64();
        }
      }

      else
      {
        v19 = v12;
      }

      *changes = 1;

      v12 = v19;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100025D94();
      }

      if (error && v12)
      {
        v20 = v12;
        *error = v12;
      }
    }
  }

  else
  {
    v12 = +[RMLog configurationStatusArchiver];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100025D2C();
    }

    LOBYTE(v11) = 1;
  }

  return v11;
}

@end