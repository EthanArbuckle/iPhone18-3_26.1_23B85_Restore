@interface STAskForTimeRequestResponse
+ (id)_fetchPredicateForAskForTimeRequest:(id)a3 requestingUserDSID:(id)a4;
+ (id)fetchAskForTimeRequest:(id)a3 fromUser:(id)a4 inContext:(id)a5 error:(id *)a6;
+ (id)fetchRequest;
+ (id)upsertAskForTimeRequest:(id)a3 fromUser:(id)a4 inContext:(id)a5 error:(id *)a6;
- (BOOL)_validateFieldsOfRequesterResponder:(id)a3;
- (BOOL)_validateRequestingApplication:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (void)awakeFromInsert;
@end

@implementation STAskForTimeRequestResponse

+ (id)upsertAskForTimeRequest:(id)a3 fromUser:(id)a4 inContext:(id)a5 error:(id *)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [a1 fetchRequest];
  v15 = [v12 dsid];
  v16 = [a1 _fetchPredicateForAskForTimeRequest:v11 requestingUserDSID:v15];
  [v14 setPredicate:v16];

  v68 = 0;
  v17 = [v14 execute:&v68];
  v18 = v68;
  v19 = v18;
  if (v17)
  {
    v20 = 0x1E695D000;
    v67 = v13;
    if ([v17 count])
    {
      v21 = [v17 firstObject];
      v22 = +[STLog ask];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        v56 = [MEMORY[0x1E695DEE8] currentCalendar];
        v57 = *(v20 + 3840);
        v58 = objc_opt_new();
        v59 = [v56 nextDateAfterDate:v58 matchingHour:0 minute:0 second:0 options:1024];
        [(STAskForTimeRequestResponse *)v21 setExpirationDate:v59];

        v60 = [v11 timeRequested];
        [(STAskForTimeRequestResponse *)v21 setTimeRequested:v60];

        v21 = v21;
        v25 = v21;
LABEL_29:

        v13 = v67;
        goto LABEL_30;
      }

      v23 = [(STAskForTimeRequestResponse *)v21 identifier];
      *buf = 138543618;
      v70 = v21;
      v71 = 2114;
      v72 = v23;
      _os_log_impl(&dword_1B831F000, v22, OS_LOG_TYPE_DEFAULT, "Updating existing ask for time request %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    else
    {
      v66 = a6;
      v21 = [[STAskForTimeRequestResponse alloc] initWithContext:v13];
      v26 = [v12 familySettings];
      v27 = [v26 organization];
      [(STAskForTimeRequestResponse *)v21 setFamilyOrganization:v27];

      v22 = [v11 requestedResourceIdentifier];
      v28 = +[STLog ask];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        [v11 requestIdentifier];
        v29 = v65 = a2;
        *buf = 138543618;
        v70 = v22;
        v71 = 2114;
        v72 = v29;
        _os_log_impl(&dword_1B831F000, v28, OS_LOG_TYPE_DEFAULT, "Adding new ask for time request for resource identifier %{public}@, request %{public}@", buf, 0x16u);

        a2 = v65;
      }

      v30 = [v11 usageType];
      [(STAskForTimeRequestResponse *)v21 setUsageType:v30];
      if (v30 == 2)
      {
        v45 = +[STLog ask];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)v22 upsertAskForTimeRequest:v45 fromUser:v46 inContext:v47 error:v48, v49, v50, v51];
        }

        [(STAskForTimeRequestResponse *)v21 setRequestedCategoryIdentifier:v22];
      }

      else if (v30 == 1)
      {
        v38 = +[STLog ask];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)v22 upsertAskForTimeRequest:v38 fromUser:v39 inContext:v40 error:v41, v42, v43, v44];
        }

        [(STAskForTimeRequestResponse *)v21 setRequestedWebDomain:v22];
      }

      else if (v30)
      {
        v52 = [MEMORY[0x1E696AAA8] currentHandler];
        v53 = a2;
        v54 = v52;
        [v52 handleFailureInMethod:v53 object:a1 file:@"STAskForTimeRequestResponse.m" lineNumber:80 description:{@"Unexpected usage type %ld", v30}];
      }

      else
      {
        v31 = +[STLog ask];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)v22 upsertAskForTimeRequest:v31 fromUser:v32 inContext:v33 error:v34, v35, v36, v37];
        }

        [(STAskForTimeRequestResponse *)v21 setRequestedApplicationBundleIdentifier:v22];
      }

      v20 = 0x1E695D000uLL;
      v55 = [(STAskForTimeRequestResponse *)v21 requestedApplicationBundleIdentifier];
      if (v55 || ([(STAskForTimeRequestResponse *)v21 requestedWebDomain], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v63 = [(STAskForTimeRequestResponse *)v21 requestedCategoryIdentifier];

        if (!v63)
        {
          if (v66)
          {
            v64 = v19;
            *v66 = v19;
          }

          v25 = 0;
          goto LABEL_29;
        }
      }

      [(STAskForTimeRequestResponse *)v21 setRequestingUser:v12];
      v23 = objc_opt_new();
      [(STAskForTimeRequestResponse *)v21 setRequestTimeStamp:v23];
    }

    goto LABEL_28;
  }

  if (a6)
  {
    v24 = v18;
    v25 = 0;
    *a6 = v19;
  }

  else
  {
    v25 = 0;
  }

LABEL_30:

  v61 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)fetchAskForTimeRequest:(id)a3 fromUser:(id)a4 inContext:(id)a5 error:(id *)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a3;
  v11 = [a1 fetchRequest];
  v12 = [v9 dsid];

  v13 = [a1 _fetchPredicateForAskForTimeRequest:v10 requestingUserDSID:v12];

  [v11 setPredicate:v13];
  v23 = 0;
  v14 = [v11 execute:&v23];
  v15 = v23;
  v16 = v15;
  if (!v14)
  {
    if (a6)
    {
      v20 = v15;
      v17 = 0;
      *a6 = v16;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (![v14 count])
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v17 = [v14 firstObject];
  v18 = +[STLog ask];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 identifier];
    *buf = 138543618;
    v25 = v17;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_DEFAULT, "Found existing ask for time request %{public}@ with identifier %{public}@", buf, 0x16u);
  }

LABEL_9:
  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)_fetchPredicateForAskForTimeRequest:(id)a3 requestingUserDSID:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 usageType];
  v10 = [v7 requestedResourceIdentifier];
  switch(v9)
  {
    case 2:
      v11 = MEMORY[0x1E696AE18];
      v12 = @"requestedCategoryIdentifier";
      goto LABEL_7;
    case 1:
      v11 = MEMORY[0x1E696AE18];
      v12 = @"requestedWebDomain";
      goto LABEL_7;
    case 0:
      v11 = MEMORY[0x1E696AE18];
      v12 = @"requestedApplicationBundleIdentifier";
LABEL_7:
      v13 = [v11 predicateWithFormat:@"(%K == %@)", v12, v10];
      goto LABEL_9;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"STAskForTimeRequestResponse.m" lineNumber:139 description:{@"Unexpected usage type %ld", v9}];

  v13 = 0;
LABEL_9:
  v15 = MEMORY[0x1E696AE18];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v17 = objc_opt_new();
  v18 = [v15 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K > %@) && (%K == NULL)", @"usageType", v16, @"requestingUser.dsid", v8, @"expirationDate", v17, @"respondingUser"];

  v19 = MEMORY[0x1E696AE18];
  v20 = [v7 requestIdentifier];
  v21 = [v19 predicateWithFormat:@"(%K == %@)", @"identifier", v20];

  v22 = MEMORY[0x1E696AB28];
  v31[0] = v18;
  v31[1] = v13;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v24 = [v22 andPredicateWithSubpredicates:v23];

  v25 = MEMORY[0x1E696AB28];
  v30[0] = v24;
  v30[1] = v21;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v27 = [v25 orPredicateWithSubpredicates:v26];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = STAskForTimeRequestResponse;
  [(STAskForTimeRequestResponse *)&v4 awakeFromInsert];
  v3 = objc_opt_new();
  [(STAskForTimeRequestResponse *)self setPrimitiveValue:v3 forKey:@"identifier"];
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STAskForTimeRequestResponse;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STAskForTimeRequestResponse;
  if ([(STAskForTimeRequestResponse *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STAskForTimeRequestResponse *)self _validateRequestingApplication:v5];
    [(STAskForTimeRequestResponse *)self _validateFieldsOfRequesterResponder:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(STAskForTimeRequestResponse *)v5 validateForUpdate:v6];
      }
    }

    v9.receiver = self;
    v9.super_class = STAskForTimeRequestResponse;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForUpdate:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STAskForTimeRequestResponse;
  if ([(STAskForTimeRequestResponse *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STAskForTimeRequestResponse *)self _validateRequestingApplication:v5];
    [(STAskForTimeRequestResponse *)self _validateFieldsOfRequesterResponder:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [STAskForTimeRequestResponse validateForInsert:a3];
      }
    }

    v9.receiver = self;
    v9.super_class = STAskForTimeRequestResponse;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForInsert:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STAskForTimeRequestResponse;
  if ([(STAskForTimeRequestResponse *)&v10 validateForDelete:?])
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
        [STAskForTimeRequestResponse validateForDelete:a3];
      }
    }

    v9.receiver = self;
    v9.super_class = STAskForTimeRequestResponse;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForDelete:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateRequestingApplication:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STAskForTimeRequestResponse fetchRequest];
  v30 = 0;
  v5 = [v4 execute:&v30];
  v6 = v30;
  v7 = v6;
  if (!v5)
  {
    [v3 addObject:v6];
    v21 = 0;
    goto LABEL_18;
  }

  v25 = v6;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = v5;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v27;
  v12 = *MEMORY[0x1E696A578];
  do
  {
    v13 = 0;
    do
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v26 + 1) + 8 * v13);
      v15 = [v14 requestedApplicationBundleIdentifier];
      if (v15 || ([v14 requestedWebDomain], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = v15;
LABEL_10:

        goto LABEL_11;
      }

      v17 = [v14 requestedCategoryIdentifier];

      if (!v17)
      {
        v18 = MEMORY[0x1E696ABC0];
        v31 = v12;
        v32 = @"AskForTimeRequestResponse is missing a valid requested application identifer.";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v19 = [v18 errorWithDomain:@"STErrorDomain" code:561 userInfo:v16];
        [v3 addObject:v19];

        goto LABEL_10;
      }

LABEL_11:
      ++v13;
    }

    while (v10 != v13);
    v20 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
    v10 = v20;
  }

  while (v20);
LABEL_16:

  v21 = [v3 count] == 0;
  v7 = v25;
  v5 = v24;
LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_validateFieldsOfRequesterResponder:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STAskForTimeRequestResponse fetchRequest];
  v56 = 0;
  v5 = [v4 execute:&v56];
  v6 = v56;
  v7 = v6;
  if (!v5)
  {
    [v3 addObject:v6];
    v44 = 0;
    goto LABEL_33;
  }

  v48 = v6;
  v49 = v4;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v47 = v5;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v52 objects:v69 count:16];
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8;
  v10 = *v53;
  v51 = *MEMORY[0x1E696A578];
  do
  {
    v11 = 0;
    do
    {
      if (*v53 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v52 + 1) + 8 * v11);
      if (v12)
      {
        v13 = [*(*(&v52 + 1) + 8 * v11) requestingUser];
        v14 = [v12 respondingUser];
        v15 = v14;
        if (!(v14 | v13))
        {
          v16 = MEMORY[0x1E696ABC0];
          v67 = v51;
          v68 = @"AskForTimeRequestResponse is missing a valid responding or requesting user.";
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          v18 = v16;
          v19 = 564;
          goto LABEL_10;
        }

        if (v14)
        {
          v21 = [v12 respondingUser];
          v22 = [v21 familyMemberType];

          if (v22 != @"Adult")
          {
            v23 = MEMORY[0x1E696ABC0];
            v65 = v51;
            v66 = @"AskForTimeRequestResponse responding user is not an adult.";
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
            v25 = [v23 errorWithDomain:@"STErrorDomain" code:562 userInfo:v24];
            [v3 addObject:v25];
          }

          v26 = [v12 amountGranted];
          if (!v26)
          {
            goto LABEL_19;
          }

          v27 = v26;
          v28 = [v12 answer];
          if (!v28)
          {

            goto LABEL_19;
          }

          v29 = v28;
          v30 = [v12 responseTimeStamp];

          if (!v30)
          {
LABEL_19:
            v31 = MEMORY[0x1E696ABC0];
            v63 = v51;
            v64 = @"AskForTimeRequestResponse is missing a field from the responding user.";
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
            v33 = [v31 errorWithDomain:@"STErrorDomain" code:562 userInfo:v32];
            [v3 addObject:v33];
          }
        }

        if (v13)
        {
          if (([v13 isManaged] & 1) == 0)
          {
            v34 = MEMORY[0x1E696ABC0];
            v61 = v51;
            v62 = @"AskForTimeRequestResponse requesting user is not managed.";
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
            v36 = [v34 errorWithDomain:@"STErrorDomain" code:565 userInfo:v35];
            [v3 addObject:v36];
          }

          v37 = [v13 familyMemberType];

          if (v37 != @"Child")
          {
            v38 = MEMORY[0x1E696ABC0];
            v59 = v51;
            v60 = @"AskForTimeRequestResponse requesting user is not a child.";
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v40 = [v38 errorWithDomain:@"STErrorDomain" code:566 userInfo:v39];
            [v3 addObject:v40];
          }

          v41 = [v12 timeRequested];

          if (!v41)
          {
            v42 = MEMORY[0x1E696ABC0];
            v57 = v51;
            v58 = @"AskForTimeRequestResponse is missing a field from the requesting user.";
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
            v18 = v42;
            v19 = 563;
LABEL_10:
            v20 = [v18 errorWithDomain:@"STErrorDomain" code:v19 userInfo:{v17, v47, v48, v49}];
            [v3 addObject:v20];
          }
        }
      }

      ++v11;
    }

    while (v9 != v11);
    v43 = [obj countByEnumeratingWithState:&v52 objects:v69 count:16];
    v9 = v43;
  }

  while (v43);
LABEL_31:

  v44 = [v3 count] == 0;
  v7 = v48;
  v4 = v49;
  v5 = v47;
LABEL_33:

  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

+ (void)upsertAskForTimeRequest:(uint64_t)a3 fromUser:(uint64_t)a4 inContext:(uint64_t)a5 error:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, a2, a3, "Associating category %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)upsertAskForTimeRequest:(uint64_t)a3 fromUser:(uint64_t)a4 inContext:(uint64_t)a5 error:(uint64_t)a6 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, a2, a3, "Associating web domain %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)upsertAskForTimeRequest:(uint64_t)a3 fromUser:(uint64_t)a4 inContext:(uint64_t)a5 error:(uint64_t)a6 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, a2, a3, "Associating app %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for update for AskForMoreTimeRequestResponse failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = "[STAskForTimeRequestResponse validateForUpdate:]";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "%{public}s Validate for update on AskForMoreTimeRequestResponse failed with error: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for insert on AskForMoreTimeRequestResponse failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v1, v2, "%{public}s Built-in CoreData Validation for delete on AskForMoreTimeRequestResponse failed with: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

@end