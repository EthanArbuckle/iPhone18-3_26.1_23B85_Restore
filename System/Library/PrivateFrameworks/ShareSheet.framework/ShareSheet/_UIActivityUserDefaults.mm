@interface _UIActivityUserDefaults
+ (id)builtinActivityOrder;
+ (id)updatedActivityIdentifiersUserOrderWithPreviousOrder:(id)order someSortedActivityIdentifiers:(id)identifiers;
+ (void)_migrateUserActivityOrderforKey:(id)key userDefaults:(id)defaults defaultOrder:(id)order;
+ (void)migrateUserActivityOrderIfNecessary;
- (BOOL)activityIsHidden:(id)hidden;
- (BOOL)canHideActivity:(id)activity;
- (BOOL)hasUserEditedActivityOrder;
- (_UIActivityUserDefaults)initWithUnderlyingUserDefaults:(id)defaults activityDefaultsKey:(id)key;
- (id)activitiesBySortingActivities:(id)activities byIdentifierWithDefaultActivityIdentifierOrdering:(id)ordering;
- (id)activitiesOrderedByUserActivityOrderForActivities:(id)activities;
- (id)activityIdentifiersInUserOrder;
- (id)applicationExtensionForActivity:(id)activity;
- (id)migrateSortOrderIfNeededForBuiltInActivityType:(id)type activityIdentifierOrdering:(id)ordering;
- (id)mutableActivityIdentifiersArrayForActivitiesArray:(id)array;
- (void)_userEditedActivityDefaults;
- (void)activityIdentifiersInUserOrder;
- (void)postActivityUserDefaultsDidChangeNotification;
- (void)removeActivityTypeFromDefaults:(id)defaults;
- (void)setActivity:(id)activity asHidden:(BOOL)hidden;
- (void)setActivityIdentifiersInUserOrder:(id)order;
- (void)updateUserActivityOrderWithOrderedPartialActivities:(id)activities;
@end

@implementation _UIActivityUserDefaults

+ (id)builtinActivityOrder
{
  if (builtinActivityOrder_once != -1)
  {
    +[_UIActivityUserDefaults builtinActivityOrder];
  }

  v3 = builtinActivityOrder_builtinActivityOrder;

  return v3;
}

- (_UIActivityUserDefaults)initWithUnderlyingUserDefaults:(id)defaults activityDefaultsKey:(id)key
{
  v20[2] = *MEMORY[0x1E69E9840];
  defaultsCopy = defaults;
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = _UIActivityUserDefaults;
  v8 = [(_UIActivityUserDefaults *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(_UIActivityUserDefaults *)v8 setActivityDefaultsKey:keyCopy];
    [(_UIActivityUserDefaults *)v9 setUnderlyingUserDefaults:defaultsCopy];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v19[0] = @"UIActivityCategoryShare";
    v18[0] = @"com.apple.UIKit.activity.AirDrop";
    v18[1] = @"com.apple.UIKit.activity.Message";
    v18[2] = @"com.apple.UIKit.activity.Mail";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v19[1] = @"UIActivityCategoryAction";
    v20[0] = v11;
    v17[0] = @"com.apple.UIKit.activity.CopyToPasteboard";
    v17[1] = @"com.apple.UIKit.activity.Share";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v20[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [standardUserDefaults registerDefaults:v13];

    v14 = v9;
  }

  return v9;
}

- (BOOL)canHideActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(_UIActivityUserDefaults *)self applicationExtensionForActivity:activityCopy];

  if (v5)
  {
    activityType = [activityCopy activityType];
    if ([activityType isEqualToString:@"com.apple.AssetViewer.Picasso"])
    {
      v7 = 0;
    }

    else
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass() ^ 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)activityIsHidden:(id)hidden
{
  hiddenCopy = hidden;
  v5 = [(_UIActivityUserDefaults *)self applicationExtensionForActivity:hiddenCopy];
  v6 = v5;
  if (v5)
  {
    optedIn = [v5 optedIn];
    objc_opt_class();
    v8 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0 && (optedIn & 1) == 0)
    {
      v8 = (objc_opt_isKindOfClass() & 1) == 0 || ([hiddenCopy activityType], v9 = objc_opt_class();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setActivity:(id)activity asHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  activityCopy = activity;
  v7 = [(_UIActivityUserDefaults *)self applicationExtensionForActivity:activityCopy];
  if (![v7 optedIn])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([activityCopy activityType], v11 = objc_claimAutoreleasedReturnValue(), v12 = _UIShouldExcludeExtensionWithActivityType(v11), v11, !v12))
    {
      if (_UIExtensionElectionStateIsIgnore(activityCopy) == hiddenCopy)
      {
        goto LABEL_14;
      }

      if (hiddenCopy)
      {
LABEL_3:
        v14 = 0;
        v8 = [v7 attemptOptOut:&v14];
        v9 = v14;
        if ((v8 & 1) == 0)
        {
          v10 = share_sheet_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [_UIActivityUserDefaults setActivity:v7 asHidden:?];
          }

LABEL_12:

          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else if (hiddenCopy)
    {
      goto LABEL_14;
    }

    v15 = 0;
    v13 = [v7 attemptOptIn:&v15];
    v9 = v15;
    if ((v13 & 1) == 0)
    {
      v10 = share_sheet_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_UIActivityUserDefaults setActivity:v7 asHidden:?];
      }

      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (hiddenCopy)
  {
    goto LABEL_3;
  }

LABEL_14:
  [(_UIActivityUserDefaults *)self postActivityUserDefaultsDidChangeNotification];
}

- (id)activitiesBySortingActivities:(id)activities byIdentifierWithDefaultActivityIdentifierOrdering:(id)ordering
{
  v40 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  orderingCopy = ordering;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = activitiesCopy;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [(_UIActivityUserDefaults *)self identifierForActivity:v14];
        v16 = [orderingCopy indexOfObject:v15];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 addObject:v14];
        }

        else
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
          v18 = v17 = orderingCopy;
          [v8 setObject:v14 forKeyedSubscript:v18];

          orderingCopy = v17;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  allKeys = [v8 allKeys];
  v20 = [allKeys sortedArrayUsingComparator:&__block_literal_global_50];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [v8 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * j)];
        [v9 insertObject:v26 atIndex:0];
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v23);
  }

  v27 = [v9 copy];

  return v27;
}

- (id)migrateSortOrderIfNeededForBuiltInActivityType:(id)type activityIdentifierOrdering:(id)ordering
{
  typeCopy = type;
  orderingCopy = ordering;
  if (![orderingCopy count] || objc_msgSend(orderingCopy, "containsObject:", typeCopy) || (objc_msgSend(objc_opt_class(), "builtinActivityOrder"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "indexOfObject:", typeCopy), v7, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = orderingCopy;
  }

  else
  {
    v9 = [orderingCopy mutableCopy];
    v11 = [v9 count];
    if (v8 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    [v9 insertObject:typeCopy atIndex:v12];
  }

  return v9;
}

- (id)activitiesOrderedByUserActivityOrderForActivities:(id)activities
{
  activitiesCopy = activities;
  activityIdentifiersInUserOrder = [(_UIActivityUserDefaults *)self activityIdentifiersInUserOrder];
  v6 = [(_UIActivityUserDefaults *)self activitiesBySortingActivities:activitiesCopy byIdentifierWithDefaultActivityIdentifierOrdering:activityIdentifiersInUserOrder];

  return v6;
}

- (void)updateUserActivityOrderWithOrderedPartialActivities:(id)activities
{
  v6 = [(_UIActivityUserDefaults *)self mutableActivityIdentifiersArrayForActivitiesArray:activities];
  [v6 removeObject:@"com.apple.UIKit.activity.UserDefaults"];
  activityIdentifiersInUserOrder = [(_UIActivityUserDefaults *)self activityIdentifiersInUserOrder];
  v5 = [_UIActivityUserDefaults updatedActivityIdentifiersUserOrderWithPreviousOrder:activityIdentifiersInUserOrder someSortedActivityIdentifiers:v6];

  [(_UIActivityUserDefaults *)self setActivityIdentifiersInUserOrder:v5];
}

- (void)removeActivityTypeFromDefaults:(id)defaults
{
  defaultsCopy = defaults;
  activityIdentifiersInUserOrder = [(_UIActivityUserDefaults *)self activityIdentifiersInUserOrder];
  v6 = [activityIdentifiersInUserOrder mutableCopy];

  [v6 removeObject:defaultsCopy];
  [(_UIActivityUserDefaults *)self setActivityIdentifiersInUserOrder:v6];
}

- (id)activityIdentifiersInUserOrder
{
  v23 = *MEMORY[0x1E69E9840];
  underlyingUserDefaults = [(_UIActivityUserDefaults *)self underlyingUserDefaults];
  activityDefaultsKey = [(_UIActivityUserDefaults *)self activityDefaultsKey];
  v5 = [underlyingUserDefaults arrayForKey:activityDefaultsKey];

  v6 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = share_sheet_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            [(_UIActivityUserDefaults *)v8 activityIdentifiersInUserOrder];
          }

          underlyingUserDefaults2 = [(_UIActivityUserDefaults *)self underlyingUserDefaults];
          activityDefaultsKey2 = [(_UIActivityUserDefaults *)self activityDefaultsKey];
          [underlyingUserDefaults2 setObject:0 forKey:activityDefaultsKey2];

          v13 = MEMORY[0x1E695E0F0];
          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = v8;
LABEL_15:

  return v13;
}

- (void)setActivityIdentifiersInUserOrder:(id)order
{
  orderCopy = order;
  underlyingUserDefaults = [(_UIActivityUserDefaults *)self underlyingUserDefaults];
  activityDefaultsKey = [(_UIActivityUserDefaults *)self activityDefaultsKey];
  [underlyingUserDefaults setObject:orderCopy forKey:activityDefaultsKey];

  [(_UIActivityUserDefaults *)self _userEditedActivityDefaults];

  [(_UIActivityUserDefaults *)self postActivityUserDefaultsDidChangeNotification];
}

- (BOOL)hasUserEditedActivityOrder
{
  activityDefaultsKey = [(_UIActivityUserDefaults *)self activityDefaultsKey];
  v4 = [activityDefaultsKey stringByAppendingString:@"EditedKey"];

  underlyingUserDefaults = [(_UIActivityUserDefaults *)self underlyingUserDefaults];
  LOBYTE(activityDefaultsKey) = [underlyingUserDefaults BOOLForKey:v4];

  return activityDefaultsKey;
}

- (void)_userEditedActivityDefaults
{
  activityDefaultsKey = [(_UIActivityUserDefaults *)self activityDefaultsKey];
  v5 = [activityDefaultsKey stringByAppendingString:@"EditedKey"];

  underlyingUserDefaults = [(_UIActivityUserDefaults *)self underlyingUserDefaults];
  [underlyingUserDefaults setBool:1 forKey:v5];
}

+ (id)updatedActivityIdentifiersUserOrderWithPreviousOrder:(id)order someSortedActivityIdentifiers:(id)identifiers
{
  orderCopy = order;
  identifiersCopy = identifiers;
  v7 = orderCopy;
  v8 = [identifiersCopy count];
  v9 = v7;
  if (v8)
  {
    v10 = v8;
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:identifiersCopy];
    v13 = [v7 mutableCopy];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __110___UIActivityUserDefaults_updatedActivityIdentifiersUserOrderWithPreviousOrder_someSortedActivityIdentifiers___block_invoke;
    v37[3] = &unk_1E71FB6A8;
    v14 = v12;
    v38 = v14;
    v15 = v11;
    v39 = v15;
    [v7 enumerateObjectsUsingBlock:v37];
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = [v7 count];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __110___UIActivityUserDefaults_updatedActivityIdentifiersUserOrderWithPreviousOrder_someSortedActivityIdentifiers___block_invoke_2;
    v24 = &unk_1E71FB6D0;
    v16 = v13;
    v25 = v16;
    v17 = identifiersCopy;
    v26 = v17;
    v27 = &v29;
    v28 = &v33;
    [v15 enumerateIndexesUsingBlock:&v21];
    while (1)
    {
      v18 = v30[3];
      if (v18 >= v10)
      {
        break;
      }

      v30[3] = v18 + 1;
      v19 = [v17 objectAtIndexedSubscript:{v21, v22, v23, v24, v25}];
      ++v34[3];
      [v16 insertObject:v19 atIndex:?];
    }

    v9 = [v16 copy];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }

  return v9;
}

- (id)mutableActivityIdentifiersArrayForActivitiesArray:(id)array
{
  v18 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(_UIActivityUserDefaults *)self identifierForActivity:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)postActivityUserDefaultsDidChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIActivityUserDefaultsDidChangeNotification" object:self userInfo:0];
}

- (id)applicationExtensionForActivity:(id)activity
{
  activityCopy = activity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    applicationExtension = [activityCopy applicationExtension];
  }

  else if (NSClassFromString(&cfstr_Pueditpluginac.isa) && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [activityCopy valueForKey:@"plugin"];
    applicationExtension = [v5 valueForKey:@"extension"];
  }

  else
  {
    applicationExtension = 0;
  }

  return applicationExtension;
}

+ (void)migrateUserActivityOrderIfNecessary
{
  v7[3] = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults integerForKey:@"_UIActivityUserDefaultsMigrationVersionKey"] <= 0)
  {
    v7[0] = @"com.apple.UIKit.activity.AirDrop";
    v7[1] = @"com.apple.UIKit.activity.Message";
    v7[2] = @"com.apple.UIKit.activity.Mail";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
    [self _migrateUserActivityOrderforKey:@"UIActivityCategoryShare" userDefaults:standardUserDefaults defaultOrder:v4];

    v6[0] = @"com.apple.UIKit.activity.CopyToPasteboard";
    v6[1] = @"com.apple.UIKit.activity.Share";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    [self _migrateUserActivityOrderforKey:@"UIActivityCategoryAction" userDefaults:standardUserDefaults defaultOrder:v5];

    [standardUserDefaults setInteger:1 forKey:@"_UIActivityUserDefaultsMigrationVersionKey"];
  }
}

+ (void)_migrateUserActivityOrderforKey:(id)key userDefaults:(id)defaults defaultOrder:(id)order
{
  keyCopy = key;
  defaultsCopy = defaults;
  orderCopy = order;
  v10 = [defaultsCopy dictionaryForKey:keyCopy];
  v11 = [v10 objectForKey:@"order"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [_UIActivityUserDefaults _migrateUserActivityOrderforKey:v11 userDefaults:v13 defaultOrder:?];
    }

    goto LABEL_7;
  }

  if ([v11 isEqualToArray:orderCopy])
  {
LABEL_7:
    [defaultsCopy setObject:0 forKey:keyCopy];
    goto LABEL_8;
  }

  v12 = [keyCopy stringByAppendingString:@"EditedKey"];
  [defaultsCopy setBool:1 forKey:v12];
  [defaultsCopy setObject:v11 forKey:keyCopy];

LABEL_8:
}

- (void)setActivity:(void *)a1 asHidden:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_5(&dword_18B359000, v2, v3, "Error opting in extension with identifier %{public}@ (%{public}@)", v4, v5, v6, v7, v8);
}

- (void)setActivity:(void *)a1 asHidden:.cold.2(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_5(&dword_18B359000, v2, v3, "Error opting out extension with identifier %{public}@ (%{public}@)", v4, v5, v6, v7, v8);
}

- (void)activityIdentifiersInUserOrder
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_18B359000, a2, OS_LOG_TYPE_FAULT, "Found a non string value in our user defaults array! %@", &v2, 0xCu);
}

+ (void)_migrateUserActivityOrderforKey:(uint64_t)a1 userDefaults:(NSObject *)a2 defaultOrder:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_18B359000, a2, OS_LOG_TYPE_FAULT, "Found a non array value when migrating user defaults! %@", &v2, 0xCu);
}

@end