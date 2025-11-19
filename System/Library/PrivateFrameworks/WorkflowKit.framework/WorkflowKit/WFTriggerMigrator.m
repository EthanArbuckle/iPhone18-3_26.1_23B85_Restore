@interface WFTriggerMigrator
+ (id)migrateTriggerUponUnarchival:(id)a3;
+ (id)migrateUserFocusActivityTriggerFromUniqueIdentifierToSemanticIdentifier:(id)a3;
+ (id)migratedUserFocusActivityTriggerFromLegacyDNDTrigger:(id)a3;
- (id)unarchiver:(id)a3 didDecodeObject:(id)a4;
@end

@implementation WFTriggerMigrator

+ (id)migrateUserFocusActivityTriggerFromUniqueIdentifierToSemanticIdentifier:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "+[WFTriggerMigrator migrateUserFocusActivityTriggerFromUniqueIdentifierToSemanticIdentifier:]";
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s [Migration] Migrating from unique identifier to semantic identifier on WFUserFocusActivityTrigger (%@)", buf, 0x16u);
  }

  v5 = [v3 activitySemanticIdentifier];

  if (v5)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "+[WFTriggerMigrator migrateUserFocusActivityTriggerFromUniqueIdentifierToSemanticIdentifier:]";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s [Migration] Trigger already has a semantic identifier, moving on", buf, 0xCu);
    }

    v7 = v3;
  }

  else
  {
    v8 = [v3 activityUniqueIdentifier];
    +[WFFocusModesManager availableModes];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 activityUniqueIdentifier];
          v16 = [v15 UUIDString];
          v17 = [v16 isEqualToString:v8];

          if (v17)
          {
            v20 = [v14 activityIdentifier];
            [v3 setActivitySemanticIdentifier:v20];

            v21 = v3;
            goto LABEL_19;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v18 = getWFTriggersLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "+[WFTriggerMigrator migrateUserFocusActivityTriggerFromUniqueIdentifierToSemanticIdentifier:]";
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s [Migration] Unable to find a focus that matches the trigger. Returning the original trigger without a semantic identifier.", buf, 0xCu);
    }

    v19 = v3;
LABEL_19:
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)migratedUserFocusActivityTriggerFromLegacyDNDTrigger:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "+[WFTriggerMigrator migratedUserFocusActivityTriggerFromLegacyDNDTrigger:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s [Migration] Migrating from pre-Sky WFDNDTrigger to WFUserFocusActivityTrigger", buf, 0xCu);
  }

  +[WFFocusModesManager availableModes];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 activityIdentifier];
        v12 = [v11 isEqualToString:@"com.apple.donotdisturb.mode.default"];

        if (v12)
        {
          v14 = [[WFUserFocusActivityTrigger alloc] initWithActivity:v10];
          -[WFUserFocusActivityTrigger setOnEnable:](v14, "setOnEnable:", [v3 onEnable]);
          -[WFUserFocusActivityTrigger setOnDisable:](v14, "setOnDisable:", [v3 onDisable]);

          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = getWFTriggersLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v23 = "+[WFTriggerMigrator migratedUserFocusActivityTriggerFromLegacyDNDTrigger:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s [Migration] Unable to find Do Not Disturb focus so unable to migrate to a WFUserFocusActivityTrigger. Returning the original WFDNDTrigger.", buf, 0xCu);
  }

  v14 = v3;
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)migrateTriggerUponUnarchival:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 migratedUserFocusActivityTriggerFromLegacyDNDTrigger:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 migrateUserFocusActivityTriggerFromUniqueIdentifierToSemanticIdentifier:v4];
    }

    else
    {
      v5 = v4;
    }
  }

  v6 = v5;

  return v6;
}

- (id)unarchiver:(id)a3 didDecodeObject:(id)a4
{
  v5 = [objc_opt_class() migrateTriggerUponUnarchival:a4];

  return v5;
}

@end