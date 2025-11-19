@interface RMMigrationMathSettings
- (BOOL)_removeOldRestrictions:(id *)a3;
- (BOOL)executeReturningError:(id *)a3;
@end

@implementation RMMigrationMathSettings

- (BOOL)executeReturningError:(id *)a3
{
  if (+[RMBundle managementScope]== 1)
  {

    return [(RMMigrationMathSettings *)self _removeOldRestrictions:a3];
  }

  else
  {
    v5 = +[RMLog migrationMathSettings];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100054580(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 1;
  }
}

- (BOOL)_removeOldRestrictions:(id *)a3
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 allClientUUIDsForClientType:@"com.apple.remotemanagementd"];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [RMStoreDeclarationKey newDeclarationKey:v10];
        v12 = [v11 subscriberIdentifier];
        v13 = [v12 isEqualToString:@"com.apple.RemoteManagement.MathSettingsExtension"];

        if (v13)
        {
          v23 = +[MCProfileConnection sharedConnection];
          v37 = 0;
          v22 = [v23 applyRestrictionDictionary:0 clientType:@"com.apple.remotemanagementd" clientUUID:v10 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v37];
          v24 = v37;

          v25 = +[RMLog migrationMathSettings];
          v26 = v25;
          if (v22)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              sub_100054630(v26, v27, v28, v29, v30, v31, v32, v33);
            }
          }

          else
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1000545B8(v24, v26);
            }

            if (a3 && v24)
            {
              v34 = v24;
              *a3 = v24;
            }
          }

          v14 = v5;
          goto LABEL_22;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = +[RMLog migrationMathSettings];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100054668(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = 1;
LABEL_22:

  return v22;
}

@end