@interface STBlueprintUsageLimit
+ (id)limitKeyPaths;
- (BOOL)_validateBlueprint:(id)blueprint;
- (BOOL)_validateIdentifiers:(id)identifiers;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (STBlueprintUsageLimitScheduleRepresentation)budgetLimitScheduleRepresentation;
- (id)dictionaryRepresentation;
- (void)_usageLimitDidChangeFromOldApplicationIdentifiers:(id)identifiers oldCategoryIdentifiers:(id)categoryIdentifiers oldCategoryIdentifiersVersion2:(id)version2 oldWebDomains:(id)domains oldItemIdentifiers:(id)itemIdentifiers oldItemType:(id)type toNewApplicationIdentifiers:(id)applicationIdentifiers newCategoryIdentifiers:(id)self0 newCategoryIdentifiersVersion2:(id)self1 newWebDomains:(id)self2 newItemIdentifiers:(id)self3 newItemType:(id)self4;
- (void)awakeFromFetch;
- (void)setApplicationIdentifiers:(id)identifiers;
- (void)setBudgetLimit:(double)limit;
- (void)setBudgetLimit:(double)limit forDay:(unint64_t)day;
- (void)setBudgetLimitScheduleRepresentation:(id)representation;
- (void)setCategoryIdentifiers:(id)identifiers;
- (void)setCategoryIdentifiersVersion2:(id)version2;
- (void)setItemIdentifiers:(id)identifiers;
- (void)setUsageItemType:(id)type;
- (void)setWebsiteIdentifiers:(id)identifiers;
@end

@implementation STBlueprintUsageLimit

- (void)awakeFromFetch
{
  v9.receiver = self;
  v9.super_class = STBlueprintUsageLimit;
  [(STBlueprintUsageLimit *)&v9 awakeFromFetch];
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  itemIdentifiers = [(STBlueprintUsageLimit *)self itemIdentifiers];
  usageItemType = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:0 oldCategoryIdentifiers:0 oldCategoryIdentifiersVersion2:0 oldWebDomains:0 oldItemIdentifiers:0 oldItemType:0 toNewApplicationIdentifiers:applicationIdentifiers newCategoryIdentifiers:categoryIdentifiers newCategoryIdentifiersVersion2:categoryIdentifiersVersion2 newWebDomains:websiteIdentifiers newItemIdentifiers:itemIdentifiers newItemType:usageItemType];
}

- (void)setApplicationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setApplicationIdentifiers:identifiersCopy];
  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  itemIdentifiers = [(STBlueprintUsageLimit *)self itemIdentifiers];
  usageItemType = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:applicationIdentifiers oldCategoryIdentifiers:categoryIdentifiers oldCategoryIdentifiersVersion2:categoryIdentifiersVersion2 oldWebDomains:websiteIdentifiers oldItemIdentifiers:itemIdentifiers oldItemType:usageItemType toNewApplicationIdentifiers:identifiersCopy newCategoryIdentifiers:categoryIdentifiers newCategoryIdentifiersVersion2:categoryIdentifiersVersion2 newWebDomains:websiteIdentifiers newItemIdentifiers:itemIdentifiers newItemType:usageItemType];
}

- (void)setCategoryIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setCategoryIdentifiers:identifiersCopy];
  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  itemIdentifiers = [(STBlueprintUsageLimit *)self itemIdentifiers];
  usageItemType = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:applicationIdentifiers oldCategoryIdentifiers:categoryIdentifiers oldCategoryIdentifiersVersion2:categoryIdentifiersVersion2 oldWebDomains:websiteIdentifiers oldItemIdentifiers:itemIdentifiers oldItemType:usageItemType toNewApplicationIdentifiers:applicationIdentifiers newCategoryIdentifiers:identifiersCopy newCategoryIdentifiersVersion2:categoryIdentifiersVersion2 newWebDomains:websiteIdentifiers newItemIdentifiers:itemIdentifiers newItemType:usageItemType];
}

- (void)setCategoryIdentifiersVersion2:(id)version2
{
  version2Copy = version2;
  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setCategoryIdentifiersVersion2:version2Copy];
  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  itemIdentifiers = [(STBlueprintUsageLimit *)self itemIdentifiers];
  usageItemType = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:applicationIdentifiers oldCategoryIdentifiers:categoryIdentifiers oldCategoryIdentifiersVersion2:categoryIdentifiersVersion2 oldWebDomains:websiteIdentifiers oldItemIdentifiers:itemIdentifiers oldItemType:usageItemType toNewApplicationIdentifiers:applicationIdentifiers newCategoryIdentifiers:categoryIdentifiers newCategoryIdentifiersVersion2:version2Copy newWebDomains:websiteIdentifiers newItemIdentifiers:itemIdentifiers newItemType:usageItemType];
}

- (void)setWebsiteIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setWebsiteIdentifiers:identifiersCopy];
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  itemIdentifiers = [(STBlueprintUsageLimit *)self itemIdentifiers];
  usageItemType = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:applicationIdentifiers oldCategoryIdentifiers:categoryIdentifiers oldCategoryIdentifiersVersion2:categoryIdentifiersVersion2 oldWebDomains:websiteIdentifiers oldItemIdentifiers:itemIdentifiers oldItemType:usageItemType toNewApplicationIdentifiers:applicationIdentifiers newCategoryIdentifiers:categoryIdentifiers newCategoryIdentifiersVersion2:categoryIdentifiersVersion2 newWebDomains:identifiersCopy newItemIdentifiers:itemIdentifiers newItemType:usageItemType];
}

- (void)setItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  itemIdentifiers = [(STBlueprintUsageLimit *)self itemIdentifiers];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setItemIdentifiers:identifiersCopy];
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  usageItemType = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:applicationIdentifiers oldCategoryIdentifiers:categoryIdentifiers oldCategoryIdentifiersVersion2:categoryIdentifiersVersion2 oldWebDomains:websiteIdentifiers oldItemIdentifiers:itemIdentifiers oldItemType:usageItemType toNewApplicationIdentifiers:applicationIdentifiers newCategoryIdentifiers:categoryIdentifiers newCategoryIdentifiersVersion2:categoryIdentifiersVersion2 newWebDomains:websiteIdentifiers newItemIdentifiers:identifiersCopy newItemType:usageItemType];
}

- (void)setUsageItemType:(id)type
{
  typeCopy = type;
  usageItemType = [(STBlueprintUsageLimit *)self usageItemType];
  [(STBlueprintUsageLimit *)self managedObjectOriginal_setUsageItemType:typeCopy];
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  itemIdentifiers = [(STBlueprintUsageLimit *)self itemIdentifiers];
  [(STBlueprintUsageLimit *)self _usageLimitDidChangeFromOldApplicationIdentifiers:applicationIdentifiers oldCategoryIdentifiers:categoryIdentifiers oldCategoryIdentifiersVersion2:categoryIdentifiersVersion2 oldWebDomains:websiteIdentifiers oldItemIdentifiers:itemIdentifiers oldItemType:usageItemType toNewApplicationIdentifiers:applicationIdentifiers newCategoryIdentifiers:categoryIdentifiers newCategoryIdentifiersVersion2:categoryIdentifiersVersion2 newWebDomains:websiteIdentifiers newItemIdentifiers:itemIdentifiers newItemType:typeCopy];
}

- (void)_usageLimitDidChangeFromOldApplicationIdentifiers:(id)identifiers oldCategoryIdentifiers:(id)categoryIdentifiers oldCategoryIdentifiersVersion2:(id)version2 oldWebDomains:(id)domains oldItemIdentifiers:(id)itemIdentifiers oldItemType:(id)type toNewApplicationIdentifiers:(id)applicationIdentifiers newCategoryIdentifiers:(id)self0 newCategoryIdentifiersVersion2:(id)self1 newWebDomains:(id)self2 newItemIdentifiers:(id)self3 newItemType:(id)self4
{
  v54[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  categoryIdentifiersCopy = categoryIdentifiers;
  version2Copy = version2;
  domainsCopy = domains;
  itemIdentifiersCopy = itemIdentifiers;
  typeCopy = type;
  applicationIdentifiersCopy = applicationIdentifiers;
  newCategoryIdentifiersCopy = newCategoryIdentifiers;
  identifiersVersion2Copy = identifiersVersion2;
  webDomainsCopy = webDomains;
  newItemIdentifiersCopy = newItemIdentifiers;
  itemTypeCopy = itemType;
  v52 = identifiersCopy;
  if ([identifiersCopy count] || objc_msgSend(categoryIdentifiersCopy, "count") || objc_msgSend(version2Copy, "count") || objc_msgSend(domainsCopy, "count") || (v29 = objc_msgSend(typeCopy, "isEqualToString:", @"app"), v30 = itemIdentifiersCopy, (v29 & 1) == 0))
  {
    v30 = identifiersCopy;
  }

  v45 = domainsCopy;
  v46 = itemIdentifiersCopy;
  v48 = version2Copy;
  v49 = categoryIdentifiersCopy;
  v31 = v30;
  if ([applicationIdentifiersCopy count] || objc_msgSend(newCategoryIdentifiersCopy, "count") || objc_msgSend(identifiersVersion2Copy, "count") || objc_msgSend(webDomainsCopy, "count") || (v32 = objc_msgSend(itemTypeCopy, "isEqualToString:", @"app"), v33 = newItemIdentifiersCopy, (v32 & 1) == 0))
  {
    v33 = applicationIdentifiersCopy;
  }

  v34 = applicationIdentifiersCopy;
  v35 = identifiersVersion2Copy;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [(STBlueprintUsageLimit *)self blueprint];
  v43 = v42 = newCategoryIdentifiersCopy;
  [defaultCenter postNotificationName:@"LimitedApplicationsDidChange" object:v43 userInfo:v40];

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

- (void)setBudgetLimit:(double)limit
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
        v11 = [MEMORY[0x1E696AD98] numberWithDouble:limit];
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

- (void)setBudgetLimit:(double)limit forDay:(unint64_t)day
{
  if (day - 8 <= 0xFFFFFFFFFFFFFFF8)
  {
    [STBlueprintUsageLimit setBudgetLimit:a2 forDay:self];
  }

  v9 = +[STBlueprintUsageLimit limitKeyPaths];
  v7 = [v9 objectAtIndexedSubscript:day - 1];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:limit];
  [(STBlueprintUsageLimit *)self setValue:v8 forKeyPath:v7];
}

- (void)setBudgetLimitScheduleRepresentation:(id)representation
{
  v20 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  simpleSchedule = [representationCopy simpleSchedule];
  v6 = simpleSchedule;
  if (simpleSchedule)
  {
    [simpleSchedule budgetLimit];
    [(STBlueprintUsageLimit *)self setBudgetLimit:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  customScheduleItems = [representationCopy customScheduleItems];
  v8 = [customScheduleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(customScheduleItems);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 budgetLimit];
        -[STBlueprintUsageLimit setBudgetLimit:forDay:](self, "setBudgetLimit:forDay:", [v12 day], v13);
      }

      v9 = [customScheduleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v26 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"applicationIdentifiers"];
  [(STBlueprintUsageLimit *)self setApplicationIdentifiers:v5];

  v6 = [representationCopy objectForKeyedSubscript:@"categoryIdentifiers"];
  [(STBlueprintUsageLimit *)self setCategoryIdentifiers:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"categoryIdentifiersVersion2"];
  [(STBlueprintUsageLimit *)self setCategoryIdentifiersVersion2:v7];

  v8 = [representationCopy objectForKeyedSubscript:@"websiteIdentifiers"];
  [(STBlueprintUsageLimit *)self setWebsiteIdentifiers:v8];

  v9 = [representationCopy objectForKeyedSubscript:@"itemIdentifiers"];
  [(STBlueprintUsageLimit *)self setItemIdentifiers:v9];

  v10 = [representationCopy objectForKeyedSubscript:@"usageItemType"];
  [(STBlueprintUsageLimit *)self setUsageItemType:v10];

  v11 = [representationCopy objectForKeyedSubscript:@"notificationTimeInterval"];
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
        v18 = [representationCopy objectForKeyedSubscript:v17];
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
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  [v3 setObject:applicationIdentifiers forKeyedSubscript:@"applicationIdentifiers"];

  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  [v3 setObject:categoryIdentifiers forKeyedSubscript:@"categoryIdentifiers"];

  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  [v3 setObject:categoryIdentifiersVersion2 forKeyedSubscript:@"categoryIdentifiersVersion2"];

  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];
  [v3 setObject:websiteIdentifiers forKeyedSubscript:@"websiteIdentifiers"];

  itemIdentifiers = [(STBlueprintUsageLimit *)self itemIdentifiers];
  [v3 setObject:itemIdentifiers forKeyedSubscript:@"itemIdentifiers"];

  usageItemType = [(STBlueprintUsageLimit *)self usageItemType];
  [v3 setObject:usageItemType forKeyedSubscript:@"usageItemType"];

  notificationTimeInterval = [(STBlueprintUsageLimit *)self notificationTimeInterval];
  [v3 setObject:notificationTimeInterval forKeyedSubscript:@"notificationTimeInterval"];

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

- (BOOL)validateForUpdate:(id *)update
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
        [STBlueprintUsageLimit validateForUpdate:update];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintUsageLimit;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintUsageLimit validateForUpdate:update];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
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
        [STBlueprintUsageLimit validateForInsert:insert];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintUsageLimit;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintUsageLimit validateForInsert:insert];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
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
        [STBlueprintUsageLimit validateForDelete:delete];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprintUsageLimit;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STBlueprintUsageLimit validateForDelete:delete];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateBlueprint:(id)blueprint
{
  v12[1] = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  blueprint = [(STBlueprintUsageLimit *)self blueprint];

  if (!blueprint)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"STBlueprintUsageLimit is missing a blueprint.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:547 userInfo:v7];
    [blueprintCopy addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return blueprint != 0;
}

- (BOOL)_validateIdentifiers:(id)identifiers
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  applicationIdentifiers = [(STBlueprintUsageLimit *)self applicationIdentifiers];
  if (!applicationIdentifiers)
  {
    goto LABEL_8;
  }

  v6 = applicationIdentifiers;
  categoryIdentifiers = [(STBlueprintUsageLimit *)self categoryIdentifiers];
  if (!categoryIdentifiers)
  {
    goto LABEL_7;
  }

  v8 = categoryIdentifiers;
  categoryIdentifiersVersion2 = [(STBlueprintUsageLimit *)self categoryIdentifiersVersion2];
  if (!categoryIdentifiersVersion2)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = categoryIdentifiersVersion2;
  websiteIdentifiers = [(STBlueprintUsageLimit *)self websiteIdentifiers];

  if (!websiteIdentifiers)
  {
LABEL_8:
    v13 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"STBlueprintUsageLimit is missing a valid identifier";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = [v13 errorWithDomain:@"STErrorDomain" code:548 userInfo:v14];
    [identifiersCopy addObject:v15];

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