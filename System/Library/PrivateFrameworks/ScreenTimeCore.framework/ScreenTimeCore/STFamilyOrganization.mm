@interface STFamilyOrganization
+ (id)fetchOrCreateFamilyOrganizationWithContext:(id)a3 error:(id *)a4;
+ (id)fetchRequest;
+ (id)fetchWithContext:(id)a3 error:(id *)a4;
- (BOOL)_validateNumberOfObjects:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
@end

@implementation STFamilyOrganization

+ (id)fetchWithContext:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 fetchRequest];
  v8 = [v7 execute:a4];
  v9 = v8;
  if (!v8)
  {
    v29 = 0;
    goto LABEL_39;
  }

  if ([v8 count] >= 2)
  {
    v10 = +[STLog persistence];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      +[STFamilyOrganization fetchWithContext:error:];
    }

    v54 = 0;
    v11 = [STCoreUser fetchLocalUserInContext:v6 error:&v54];
    v12 = v54;
    if (!v11)
    {
      v13 = +[STLog persistence];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[STFamilyOrganization fetchWithContext:error:];
      }
    }

    v14 = [v11 familySettings];
    v15 = [v14 organization];

    v16 = +[STLog persistence];
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Preserving family organization associated with the local user's family settings.", buf, 2u);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v18 = v9;
      v19 = [v18 countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (!v19)
      {
        goto LABEL_37;
      }

      v20 = v19;
      v42 = v12;
      v43 = v11;
      v44 = v9;
      v45 = v7;
      v21 = *v51;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          if (v23 != v15)
          {
            v24 = v23;
            v25 = v6;
            v26 = +[STLog persistence];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v62 = 138543362;
              v63 = v24;
              _os_log_error_impl(&dword_1B831F000, v26, OS_LOG_TYPE_ERROR, "Deleting extraneous family organization: %{public}@", v62, 0xCu);
            }

            v27 = [v24 settings];
            *buf = MEMORY[0x1E69E9820];
            v56 = 3221225472;
            v57 = __deleteExtraneousFamilyOrganizationAndChildObjects_block_invoke;
            v58 = &unk_1E7CE7480;
            v59 = v25;
            v28 = v25;
            [v27 enumerateObjectsUsingBlock:buf];

            [v28 deleteObject:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v20);
    }

    else
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Preserving first family organization returned from fetch request.", buf, 2u);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v30 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, objc_msgSend(v9, "count") - 1}];
      v18 = [v9 objectsAtIndexes:v30];

      v31 = [v18 countByEnumeratingWithState:&v46 objects:v60 count:16];
      if (!v31)
      {
        goto LABEL_37;
      }

      v32 = v31;
      v42 = v12;
      v43 = v11;
      v44 = v9;
      v45 = v7;
      v33 = *v47;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(v18);
          }

          v35 = *(*(&v46 + 1) + 8 * j);
          v36 = v6;
          v37 = +[STLog persistence];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *v62 = 138543362;
            v63 = v35;
            _os_log_error_impl(&dword_1B831F000, v37, OS_LOG_TYPE_ERROR, "Deleting extraneous family organization: %{public}@", v62, 0xCu);
          }

          v38 = [v35 settings];
          *buf = MEMORY[0x1E69E9820];
          v56 = 3221225472;
          v57 = __deleteExtraneousFamilyOrganizationAndChildObjects_block_invoke;
          v58 = &unk_1E7CE7480;
          v59 = v36;
          v39 = v36;
          [v38 enumerateObjectsUsingBlock:buf];

          [v39 deleteObject:v35];
        }

        v32 = [v18 countByEnumeratingWithState:&v46 objects:v60 count:16];
      }

      while (v32);
    }

    v9 = v44;
    v7 = v45;
    v12 = v42;
    v11 = v43;
LABEL_37:
  }

  v29 = [v9 firstObject];
LABEL_39:

  v40 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (id)fetchOrCreateFamilyOrganizationWithContext:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v6 = [a1 fetchRequest];
  v7 = [v6 execute:a4];
  v8 = v7;
  if (!v7)
  {
    v28 = 0;
    goto LABEL_42;
  }

  if ([v7 count] >= 2)
  {
    v9 = +[STLog persistence];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      +[STFamilyOrganization fetchWithContext:error:];
    }

    v55 = 0;
    v10 = [STCoreUser fetchLocalUserInContext:v46 error:&v55];
    v11 = v55;
    if (!v10)
    {
      v12 = +[STLog persistence];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[STFamilyOrganization fetchWithContext:error:];
      }
    }

    v13 = [v10 familySettings];
    v14 = [v13 organization];

    v15 = +[STLog persistence];
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "Preserving family organization associated with the local user's family settings.", &buf, 2u);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v17 = v8;
      v18 = [v17 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (!v18)
      {
        goto LABEL_37;
      }

      v19 = v18;
      v42 = v11;
      v43 = v10;
      v44 = v8;
      v45 = v6;
      v20 = *v52;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v51 + 1) + 8 * i);
          if (v22 != v14)
          {
            v23 = v22;
            v24 = v46;
            v25 = +[STLog persistence];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *v62 = 138543362;
              v63 = v23;
              _os_log_error_impl(&dword_1B831F000, v25, OS_LOG_TYPE_ERROR, "Deleting extraneous family organization: %{public}@", v62, 0xCu);
            }

            v26 = [v23 settings];
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v59 = __deleteExtraneousFamilyOrganizationAndChildObjects_block_invoke;
            v60 = &unk_1E7CE7480;
            v61 = v24;
            v27 = v24;
            [v26 enumerateObjectsUsingBlock:&buf];

            [v27 deleteObject:v23];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v19);
    }

    else
    {
      if (v16)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "Preserving first family organization returned from fetch request.", &buf, 2u);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v29 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, objc_msgSend(v8, "count") - 1}];
      v17 = [v8 objectsAtIndexes:v29];

      v30 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (!v30)
      {
        goto LABEL_37;
      }

      v31 = v30;
      v42 = v11;
      v43 = v10;
      v44 = v8;
      v45 = v6;
      v32 = *v48;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v17);
          }

          v34 = *(*(&v47 + 1) + 8 * j);
          v35 = v46;
          v36 = +[STLog persistence];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v62 = 138543362;
            v63 = v34;
            _os_log_error_impl(&dword_1B831F000, v36, OS_LOG_TYPE_ERROR, "Deleting extraneous family organization: %{public}@", v62, 0xCu);
          }

          v37 = [v34 settings];
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v59 = __deleteExtraneousFamilyOrganizationAndChildObjects_block_invoke;
          v60 = &unk_1E7CE7480;
          v61 = v35;
          v38 = v35;
          [v37 enumerateObjectsUsingBlock:&buf];

          [v38 deleteObject:v34];
        }

        v31 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v31);
    }

    v8 = v44;
    v6 = v45;
    v11 = v42;
    v10 = v43;
LABEL_37:
  }

  v28 = [v8 firstObject];
  if (!v28)
  {
    v28 = [[STFamilyOrganization alloc] initWithContext:v46];
    v39 = +[STLog persistence];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v28;
      _os_log_impl(&dword_1B831F000, v39, OS_LOG_TYPE_DEFAULT, "Created a family organization. Family Organization; %@", &buf, 0xCu);
    }
  }

LABEL_42:

  v40 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STFamilyOrganization;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STFamilyOrganization;
  if ([(STFamilyOrganization *)&v10 validateForUpdate:?])
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
        [STFamilyOrganization validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STFamilyOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STFamilyOrganization validateForUpdate:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STFamilyOrganization;
  if ([(STFamilyOrganization *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STFamilyOrganization *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STFamilyOrganization validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STFamilyOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STFamilyOrganization validateForInsert:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STFamilyOrganization;
  if ([(STFamilyOrganization *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STFamilyOrganization *)self _validateNumberOfObjects:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STFamilyOrganization validateForDelete:];
      }
    }

    v9.receiver = self;
    v9.super_class = STFamilyOrganization;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STFamilyOrganization validateForDelete:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateNumberOfObjects:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STCoreUser fetchRequestMatchingLocalUser];
  v27 = 0;
  v5 = [v4 execute:&v27];
  v6 = v27;
  if (v5)
  {
    v7 = [v5 firstObject];
    v8 = +[STFamilyOrganization fetchRequest];
    v26 = v6;
    v9 = [v8 execute:&v26];
    v10 = v26;

    if (!v9)
    {
      [v3 addObject:v10];
LABEL_17:
      v18 = 0;
      goto LABEL_18;
    }

    v11 = [v7 familyMemberType];
    v12 = v11;
    if (v11 == @"Unknown")
    {
    }

    else
    {
      v13 = [v7 familyMemberType];

      if (v13)
      {
        if (![v9 count])
        {
          v22 = MEMORY[0x1E696ABC0];
          v30 = *MEMORY[0x1E696A578];
          v31 = @"There must be one Family Organization objects for the local user.";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v20 = v22;
          v21 = 507;
          goto LABEL_16;
        }

        if ([v9 count] >= 2)
        {
          v14 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E696A578];
          v29 = @"There must be one and only one Family Organization objects for the local user.";
          v15 = MEMORY[0x1E695DF20];
          v16 = &v29;
          v17 = &v28;
LABEL_13:
          v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
          v20 = v14;
          v21 = 506;
LABEL_16:
          v23 = [v20 errorWithDomain:@"STErrorDomain" code:v21 userInfo:v19];
          [v3 addObject:v23];

          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

    if ([v9 count])
    {
      v14 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v33[0] = @"There must be 0 Family Organization objects for a local user with no iCloud signed in.";
      v15 = MEMORY[0x1E695DF20];
      v16 = v33;
      v17 = &v32;
      goto LABEL_13;
    }

LABEL_14:
    v18 = 1;
LABEL_18:

    goto LABEL_19;
  }

  [v3 addObject:v6];
  v18 = 0;
  v10 = v6;
LABEL_19:

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (void)fetchWithContext:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fetchWithContext:error:.cold.2()
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

- (void)validateForUpdate:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for update on FamilyOrganization failed with error: %{public}@", v2, v3, v4, v5, 2u);
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
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for insert on FamilyOrganization failed with error: %{public}@", v2, v3, v4, v5, 2u);
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
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for delete on FamilyOrganization failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end