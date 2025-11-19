@interface STiCloudOrganization
+ (id)fetchOrCreateiCloudOrganizationWithContext:(id)a3 error:(id *)a4;
+ (id)fetchRequest;
+ (id)fetchWithContext:(id)a3 error:(id *)a4;
- (BOOL)_validateNumberOfObjects:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
@end

@implementation STiCloudOrganization

+ (id)fetchWithContext:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 fetchRequest];
  v8 = [v6 executeFetchRequest:v7 error:a4];

  if (!v8)
  {
    goto LABEL_6;
  }

  if ([v8 count] < 2)
  {
    v16 = [v8 firstObject];
    v14 = v16;
    if (v16)
    {
      v14 = v16;
      v15 = v14;
    }

    else
    {
      if (a4)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A578];
        v27 = *MEMORY[0x1E696A578];
        v28 = @"There must be one Cloud Organization.";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v20 = [v17 errorWithDomain:@"STErrorDomain" code:505 userInfo:v19];

        if (v20)
        {
          v21 = MEMORY[0x1E696ABC0];
          v25 = v18;
          v26 = @"There must be one Cloud Organization.";
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v21 errorWithDomain:@"STErrorDomain" code:505 userInfo:v22];
        }
      }

      v15 = 0;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v31 = *MEMORY[0x1E696A578];
  v32[0] = @"There must be one and only one Cloud Organization object.";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v12 = [v9 errorWithDomain:@"STErrorDomain" code:504 userInfo:v11];

  if (!v12)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_14;
  }

  v13 = MEMORY[0x1E696ABC0];
  v29 = v10;
  v30 = @"There must be one and only one Cloud Organization object.";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v13 errorWithDomain:@"STErrorDomain" code:504 userInfo:v14];
  *a4 = v15 = 0;
LABEL_13:

LABEL_14:
  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)fetchOrCreateiCloudOrganizationWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 fetchRequest];
  v8 = [v6 executeFetchRequest:v7 error:a4];
  v9 = v8;
  if (v8)
  {
    if ([v8 count] >= 2)
    {
      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        +[STiCloudOrganization fetchOrCreateiCloudOrganizationWithContext:error:];
      }
    }

    v11 = [v9 firstObject];
    if (!v11)
    {
      v11 = [[STiCloudOrganization alloc] initWithContext:v6];
    }

    v12 = [(STiCloudOrganization *)v11 settings];
    if (!v12)
    {
      v12 = [[STiCloudOrganizationSettings alloc] initWithContext:v6];
      [(STiCloudOrganizationSettings *)v12 setOrganization:v11];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STiCloudOrganization;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v7.receiver = self;
  v7.super_class = STiCloudOrganization;
  v4 = [(STiCloudOrganization *)&v7 validateForUpdate:?];
  if (v4)
  {
    _os_feature_enabled_impl();
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STiCloudOrganization validateForUpdate:a3];
    }
  }

  return v4;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STiCloudOrganization;
  if ([(STiCloudOrganization *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STiCloudOrganization *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STiCloudOrganization validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STiCloudOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STiCloudOrganization validateForInsert:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STiCloudOrganization;
  if ([(STiCloudOrganization *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STiCloudOrganization *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STiCloudOrganization validateForDelete:];
      }
    }

    v9.receiver = self;
    v9.super_class = STiCloudOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STiCloudOrganization validateForDelete:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateNumberOfObjects:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STiCloudOrganization fetchRequest];
  v13 = 0;
  v5 = [v4 execute:&v13];
  v6 = v13;
  if (v5)
  {
    if ([v5 count] < 2)
    {
      v10 = 1;
      goto LABEL_7;
    }

    v7 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = @"There must be one and only one Cloud Organization object.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v7 errorWithDomain:@"STErrorDomain" code:504 userInfo:v8];
    [v3 addObject:v9];
  }

  else
  {
    [v3 addObject:v6];
  }

  v10 = 0;
LABEL_7:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (void)fetchOrCreateiCloudOrganizationWithContext:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for insert on iCloudOrganization failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for delete on iCloudOrganization failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end