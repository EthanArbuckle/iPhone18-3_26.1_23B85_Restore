@interface STScreenTimeSettings
+ (id)fetchRequest;
+ (id)fetchScreenTimeSettingsInContext:(id)a3 error:(id *)a4;
- (BOOL)_validateCurrentOrganization:(id)a3;
- (BOOL)_validateNumberOfObjects:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
@end

@implementation STScreenTimeSettings

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STScreenTimeSettings;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchScreenTimeSettingsInContext:(id)a3 error:(id *)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 fetchRequest];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v38[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  [v5 setSortDescriptors:v7];

  v29 = 0;
  v8 = [v5 execute:&v29];
  v9 = v29;
  v10 = v9;
  if (v8)
  {
    if ([v8 count] < 2)
    {
      v19 = [v8 firstObject];
      v17 = v19;
      if (v19)
      {
        v20 = v19;
      }

      else if (a4)
      {
        v23 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A578];
        v32 = *MEMORY[0x1E696A578];
        v33 = @"screen time settings not found";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v26 = [v23 errorWithDomain:@"STErrorDomain" code:9 userInfo:v25];

        if (v26)
        {
          v27 = MEMORY[0x1E696ABC0];
          v30 = v24;
          v31 = @"screen time settings not found";
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          *a4 = [v27 errorWithDomain:@"STErrorDomain" code:9 userInfo:v28];
        }
      }
    }

    else
    {
      if (a4)
      {
        v11 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A578];
        v36 = *MEMORY[0x1E696A578];
        v37 = @"There must be one and only once ScreenTimeSettings object.";
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v14 = [v11 errorWithDomain:@"STErrorDomain" code:502 userInfo:v13];

        if (v14)
        {
          v15 = MEMORY[0x1E696ABC0];
          v34 = v12;
          v35 = @"There must be one and only once ScreenTimeSettings object.";
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          *a4 = [v15 errorWithDomain:@"STErrorDomain" code:502 userInfo:v16];
        }
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    if (a4 && v9)
    {
      v18 = v9;
      v17 = 0;
      *a4 = v10;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STScreenTimeSettings;
  if ([(STScreenTimeSettings *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STScreenTimeSettings validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STScreenTimeSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STScreenTimeSettings validateForUpdate:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STScreenTimeSettings;
  if ([(STScreenTimeSettings *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STScreenTimeSettings *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STScreenTimeSettings validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STScreenTimeSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STScreenTimeSettings validateForInsert:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STScreenTimeSettings;
  if ([(STScreenTimeSettings *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STScreenTimeSettings *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STScreenTimeSettings validateForDelete:];
      }
    }

    v9.receiver = self;
    v9.super_class = STScreenTimeSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STScreenTimeSettings validateForDelete:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateCurrentOrganization:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STScreenTimeSettings *)self currentOrganization];

  if (!v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"The ScreenTimeSettings object must always contain a currentOrganization.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:21 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = [(STScreenTimeSettings *)self currentOrganization];
  if (v9)
  {
    v10 = v9;
    v11 = [(STScreenTimeSettings *)self currentOrganization];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = [(STScreenTimeSettings *)self currentOrganization];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v14 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19 = @"The ScreenTimeSettings object references an unsupported organization class.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v11 = [v14 errorWithDomain:@"STErrorDomain" code:503 userInfo:v10];
      [v4 addObject:v11];
      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = [v4 count] == 0;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_validateNumberOfObjects:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STScreenTimeSettings fetchRequest];
  v16 = 0;
  v5 = [v4 execute:&v16];
  v6 = v16;
  if (v5)
  {
    if ([v5 count] >= 2)
    {
      v7 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"There must be one and only one ScreenTimeSettings object.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v9 = [v7 errorWithDomain:@"STErrorDomain" code:502 userInfo:v8];
      [v3 addObject:v9];
    }

    if (![v5 count])
    {
      v10 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"There must be one ScreenTimeSettings object.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [v10 errorWithDomain:@"STErrorDomain" code:9 userInfo:v11];
      [v3 addObject:v12];
    }

    v13 = [v3 count] == 0;
  }

  else
  {
    [v3 addObject:v6];
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v2, v3, "%{public}s Built-in CoreData Validation for update on ScreenTimeSettings failed with: %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for Update on ScreenTimeSettings failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v2, v3, "%{public}s Built-in CoreData Validation for insert on ScreenTimeSettings failed with: %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for Insert on ScreenTimeSettings failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v2, v3, "%{public}s Built-in CoreData Validation for delete on ScreenTimeSettings failed with: %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for Delete on ScreenTimeSettings failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end