@interface STBlueprintUsageLimit
+ (id)limitKeyPaths;
- (BOOL)_validateBlueprint:(id)a3;
- (BOOL)_validateIdentifiers:(id)a3;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (STBlueprintUsageLimitScheduleRepresentation)budgetLimitScheduleRepresentation;
- (id)dictionaryRepresentation;
- (void)_usageLimitDidChangeFromOldApplicationIdentifiers:(id)a3 oldCategoryIdentifiers:(id)a4 oldCategoryIdentifiersVersion2:(id)a5 oldWebDomains:(id)a6 oldItemIdentifiers:(id)a7 oldItemType:(id)a8 toNewApplicationIdentifiers:(id)a9 newCategoryIdentifiers:(id)a10 newCategoryIdentifiersVersion2:(id)a11 newWebDomains:(id)a12 newItemIdentifiers:(id)a13 newItemType:(id)a14;
- (void)awakeFromFetch;
- (void)setApplicationIdentifiers:(id)a3;
- (void)setBudgetLimit:(double)a3;
- (void)setBudgetLimit:(double)a3 forDay:(unint64_t)a4;
- (void)setBudgetLimitScheduleRepresentation:(id)a3;
- (void)setCategoryIdentifiers:(id)a3;
- (void)setCategoryIdentifiersVersion2:(id)a3;
- (void)setItemIdentifiers:(id)a3;
- (void)setUsageItemType:(id)a3;
- (void)setWebsiteIdentifiers:(id)a3;
@end

@implementation STBlueprintUsageLimit

- (void)awakeFromFetch
{
  v9.receiver = self;
  v9.super_class = STBlueprintUsageLimit;
  [(STBlueprintUsageLimit *)&v9 awakeFromFetch];
  v3 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  v4 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  v5 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  v6 = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  v7 = [(STBlueprintUsageLimit *)self itemIdentifiers];
  v8 = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:0 oldCategoryIdentifiers:0 oldCategoryIdentifiersVersion2:0 oldWebDomains:0 oldItemIdentifiers:0 oldItemType:0 toNewApplicationIdentifiers:v3 newCategoryIdentifiers:v4 newCategoryIdentifiersVersion2:v5 newWebDomains:v6 newItemIdentifiers:v7 newItemType:v8];
}

- (void)setApplicationIdentifiers:(id)a3
{
  v4 = a3;
  v10 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setApplicationIdentifiers:v4];
  v5 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  v6 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  v7 = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  v8 = [(STBlueprintUsageLimit *)self itemIdentifiers];
  v9 = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:v10 oldCategoryIdentifiers:v5 oldCategoryIdentifiersVersion2:v6 oldWebDomains:v7 oldItemIdentifiers:v8 oldItemType:v9 toNewApplicationIdentifiers:v4 newCategoryIdentifiers:v5 newCategoryIdentifiersVersion2:v6 newWebDomains:v7 newItemIdentifiers:v8 newItemType:v9];
}

- (void)setCategoryIdentifiers:(id)a3
{
  v4 = a3;
  v10 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setCategoryIdentifiers:v4];
  v5 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  v6 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  v7 = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  v8 = [(STBlueprintUsageLimit *)self itemIdentifiers];
  v9 = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:v6 oldCategoryIdentifiers:v10 oldCategoryIdentifiersVersion2:v5 oldWebDomains:v7 oldItemIdentifiers:v8 oldItemType:v9 toNewApplicationIdentifiers:v6 newCategoryIdentifiers:v4 newCategoryIdentifiersVersion2:v5 newWebDomains:v7 newItemIdentifiers:v8 newItemType:v9];
}

- (void)setCategoryIdentifiersVersion2:(id)a3
{
  v4 = a3;
  v10 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setCategoryIdentifiersVersion2:v4];
  v5 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  v6 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  v7 = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  v8 = [(STBlueprintUsageLimit *)self itemIdentifiers];
  v9 = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:v6 oldCategoryIdentifiers:v5 oldCategoryIdentifiersVersion2:v10 oldWebDomains:v7 oldItemIdentifiers:v8 oldItemType:v9 toNewApplicationIdentifiers:v6 newCategoryIdentifiers:v5 newCategoryIdentifiersVersion2:v4 newWebDomains:v7 newItemIdentifiers:v8 newItemType:v9];
}

- (void)setWebsiteIdentifiers:(id)a3
{
  v4 = a3;
  v10 = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setWebsiteIdentifiers:v4];
  v5 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  v6 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  v7 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  v8 = [(STBlueprintUsageLimit *)self itemIdentifiers];
  v9 = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:v5 oldCategoryIdentifiers:v6 oldCategoryIdentifiersVersion2:v7 oldWebDomains:v10 oldItemIdentifiers:v8 oldItemType:v9 toNewApplicationIdentifiers:v5 newCategoryIdentifiers:v6 newCategoryIdentifiersVersion2:v7 newWebDomains:v4 newItemIdentifiers:v8 newItemType:v9];
}

- (void)setItemIdentifiers:(id)a3
{
  v4 = a3;
  v10 = [(STBlueprintUsageLimit *)self itemIdentifiers];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setItemIdentifiers:v4];
  v5 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  v6 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  v7 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  v8 = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  v9 = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:v5 oldCategoryIdentifiers:v6 oldCategoryIdentifiersVersion2:v7 oldWebDomains:v8 oldItemIdentifiers:v10 oldItemType:v9 toNewApplicationIdentifiers:v5 newCategoryIdentifiers:v6 newCategoryIdentifiersVersion2:v7 newWebDomains:v8 newItemIdentifiers:v4 newItemType:v9];
}

- (void)setUsageItemType:(id)a3
{
  v4 = a3;
  v10 = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setUsageItemType:v4];
  v5 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  v6 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  v7 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  v8 = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  v9 = [(STBlueprintUsageLimit *)self itemIdentifiers];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:v5 oldCategoryIdentifiers:v6 oldCategoryIdentifiersVersion2:v7 oldWebDomains:v8 oldItemIdentifiers:v9 oldItemType:v10 toNewApplicationIdentifiers:v5 newCategoryIdentifiers:v6 newCategoryIdentifiersVersion2:v7 newWebDomains:v8 newItemIdentifiers:v9 newItemType:v4];
}

- (void)_usageLimitDidChangeFromOldApplicationIdentifiers:(id)a3 oldCategoryIdentifiers:(id)a4 oldCategoryIdentifiersVersion2:(id)a5 oldWebDomains:(id)a6 oldItemIdentifiers:(id)a7 oldItemType:(id)a8 toNewApplicationIdentifiers:(id)a9 newCategoryIdentifiers:(id)a10 newCategoryIdentifiersVersion2:(id)a11 newWebDomains:(id)a12 newItemIdentifiers:(id)a13 newItemType:(id)a14
{
  v54[2] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v51 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v50 = a14;
  v52 = v19;
  if ([v19 count] || objc_msgSend(v20, "count") || objc_msgSend(v21, "count") || objc_msgSend(v22, "count") || (v29 = objc_msgSend(v51, "isEqualToString:", @"app"), v30 = v23, (v29 & 1) == 0))
  {
    v30 = v19;
  }

  v45 = v22;
  v46 = v23;
  v48 = v21;
  v49 = v20;
  v31 = v30;
  if ([v24 count] || objc_msgSend(v25, "count") || objc_msgSend(v26, "count") || objc_msgSend(v27, "count") || (v32 = objc_msgSend(v50, "isEqualToString:", @"app"), v33 = v28, (v32 & 1) == 0))
  {
    v33 = v24;
  }

  v34 = v24;
  v35 = v26;
  v36 = MEMORY[0x1E695E0F0];
  if (v31)
  {
    v37 = v31;
  }

  else
  {
    v37 = MEMORY[0x1E695E0F0];
  }

  v38 = v33;
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v36;
  }

  v53[0] = @"OldBundleIdentifiers";
  v53[1] = @"NewBundleIdentifiers";
  v54[0] = v37;
  v54[1] = v39;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v41 = [MEMORY[0x1E696AD88] defaultCenter];
  [(STBlueprintUsageLimit *)self blueprint];
  v43 = v42 = v25;
  [v41 postNotificationName:@"LimitedApplicationsDidChange" object:v43 userInfo:v40];

  v44 = *MEMORY[0x1E69E9840];
}

+ (id)limitKeyPaths
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = @"day0Limit";
  v5[1] = @"day1Limit";
  v5[2] = @"day2Limit";
  v5[3] = @"day3Limit";
  v5[4] = @"day4Limit";
  v5[5] = @"day5Limit";
  v5[6] = @"day6Limit";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (STBlueprintUsageLimitScheduleRepresentation)budgetLimitScheduleRepresentation
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = +[STBlueprintUsageLimit limitKeyPaths];
  if (![v5 count])
  {
    [v3 setCustomScheduleItems:v4];
    v12 = 0;
LABEL_9:
    v13 = objc_opt_new();
    [v12 doubleValue];
    [v13 setBudgetLimit:?];
    [v3 setSimpleSchedule:v13];

    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = objc_opt_new();
    v10 = v7 + 1;
    [v9 setDay:v7 + 1];
    v11 = [v5 objectAtIndexedSubscript:v7];
    v12 = [(STBlueprintUsageLimit *)self valueForKey:v11];

    [v12 doubleValue];
    [v9 setBudgetLimit:?];
    if (v6)
    {
      v8 &= [v6 isEqual:v12];
    }

    [v4 addObject:v9];
    v6 = v12;
    v7 = v10;
  }

  while (v10 < [v5 count]);
  [v3 setCustomScheduleItems:v4];
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v3;
}

- (void)setBudgetLimit:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[STBlueprintUsageLimit limitKeyPaths];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
        [(STBlueprintUsageLimit *)self setValue:v11 forKeyPath:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setBudgetLimit:(double)a3 forDay:(unint64_t)a4
{
  if (a4 - 8 <= 0xFFFFFFFFFFFFFFF8)
  {
    [STBlueprintUsageLimit setBudgetLimit:a2 forDay:self];
  }

  v9 = +[STBlueprintUsageLimit limitKeyPaths];
  v7 = [v9 objectAtIndexedSubscript:a4 - 1];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(STBlueprintUsageLimit *)self setValue:v8 forKeyPath:v7];
}

- (void)setBudgetLimitScheduleRepresentation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 simpleSchedule];
  v6 = v5;
  if (v5)
  {
    [v5 budgetLimit];
    [(STBlueprintUsageLimit *)self setBudgetLimit:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v4 customScheduleItems];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 budgetLimit];
        -[STBlueprintUsageLimit setBudgetLimit:forDay:](self, "setBudgetLimit:forDay:", [v12 day], v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"applicationIdentifiers"];
  [(STBlueprintUsageLimit *)self setApplicationIdentifiers:v5];

  v6 = [v4 objectForKeyedSubscript:@"categoryIdentifiers"];
  [(STBlueprintUsageLimit *)self setCategoryIdentifiers:v6];

  v7 = [v4 objectForKeyedSubscript:@"categoryIdentifiersVersion2"];
  [(STBlueprintUsageLimit *)self setCategoryIdentifiersVersion2:v7];

  v8 = [v4 objectForKeyedSubscript:@"websiteIdentifiers"];
  [(STBlueprintUsageLimit *)self setWebsiteIdentifiers:v8];

  v9 = [v4 objectForKeyedSubscript:@"itemIdentifiers"];
  [(STBlueprintUsageLimit *)self setItemIdentifiers:v9];

  v10 = [v4 objectForKeyedSubscript:@"usageItemType"];
  [(STBlueprintUsageLimit *)self setUsageItemType:v10];

  v11 = [v4 objectForKeyedSubscript:@"notificationTimeInterval"];
  [(STBlueprintUsageLimit *)self setNotificationTimeInterval:v11];

  v12 = +[STBlueprintUsageLimit limitKeyPaths];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v4 objectForKeyedSubscript:v17];
        [(STBlueprintUsageLimit *)self setValue:v18 forKeyPath:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  [v3 setObject:v4 forKeyedSubscript:@"applicationIdentifiers"];

  v5 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  [v3 setObject:v5 forKeyedSubscript:@"categoryIdentifiers"];

  v6 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  [v3 setObject:v6 forKeyedSubscript:@"categoryIdentifiersVersion2"];

  v7 = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  [v3 setObject:v7 forKeyedSubscript:@"websiteIdentifiers"];

  v8 = [(STBlueprintUsageLimit *)self itemIdentifiers];
  [v3 setObject:v8 forKeyedSubscript:@"itemIdentifiers"];

  v9 = [(STBlueprintUsageLimit *)self usageItemType];
  [v3 setObject:v9 forKeyedSubscript:@"usageItemType"];

  v10 = [(STBlueprintUsageLimit *)self notificationTimeInterval];
  [v3 setObject:v10 forKeyedSubscript:@"notificationTimeInterval"];

  v11 = +[STBlueprintUsageLimit limitKeyPaths];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [(STBlueprintUsageLimit *)self valueForKeyPath:v16];
        [v3 setObject:v17 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v18 = [v3 copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprintUsageLimit;
  if ([(STBlueprintUsageLimit *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STBlueprintUsageLimit *)self _validateBlueprint:v5];
    [(STBlueprintUsageLimit *)self _validateIdentifiers:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STBlueprintUsageLimit validateForUpdate:a3];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintUsageLimit;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintUsageLimit validateForUpdate:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprintUsageLimit;
  if ([(STBlueprintUsageLimit *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STBlueprintUsageLimit *)self _validateBlueprint:v5];
    [(STBlueprintUsageLimit *)self _validateIdentifiers:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STBlueprintUsageLimit validateForInsert:a3];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintUsageLimit;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintUsageLimit validateForInsert:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprintUsageLimit;
  if ([(STBlueprintUsageLimit *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STBlueprintUsageLimit validateForDelete:a3];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintUsageLimit;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintUsageLimit validateForDelete:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateBlueprint:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STBlueprintUsageLimit *)self blueprint];

  if (!v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"STBlueprintUsageLimit is missing a blueprint.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:547 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (BOOL)_validateIdentifiers:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  if (!v9)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [(STBlueprintUsageLimit *)self websiteIdentifiers];

  if (!v11)
  {
LABEL_8:
    v13 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"STBlueprintUsageLimit is missing a valid identifier";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = [v13 errorWithDomain:@"STErrorDomain" code:548 userInfo:v14];
    [v4 addObject:v15];

    v12 = 0;
    goto LABEL_9;
  }

  v12 = 1;
LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setBudgetLimit:(uint64_t)a1 forDay:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STBlueprintUsageLimit.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"day >= 1 && day <= 7"}];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for update on BlueprintSchedule failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for insert on BlueprintUsageLimit failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for delete on BlueprintUsageLimit failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

@end