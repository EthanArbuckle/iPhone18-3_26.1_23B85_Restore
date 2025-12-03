@interface STAskForTimeRequestResponse
+ (id)_fetchPredicateForAskForTimeRequest:(id)request requestingUserDSID:(id)d;
+ (id)fetchAskForTimeRequest:(id)request fromUser:(id)user inContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)upsertAskForTimeRequest:(id)request fromUser:(id)user inContext:(id)context error:(id *)error;
- (BOOL)_validateFieldsOfRequesterResponder:(id)responder;
- (BOOL)_validateRequestingApplication:(id)application;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (void)awakeFromInsert;
@end

@implementation STAskForTimeRequestResponse

+ (id)upsertAskForTimeRequest:(id)request fromUser:(id)user inContext:(id)context error:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  userCopy = user;
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  dsid = [userCopy dsid];
  v16 = [self _fetchPredicateForAskForTimeRequest:requestCopy requestingUserDSID:dsid];
  [fetchRequest setPredicate:v16];

  v68 = 0;
  v17 = [fetchRequest execute:&v68];
  v18 = v68;
  v19 = v18;
  if (v17)
  {
    v20 = 0x1E695D000;
    v67 = contextCopy;
    if ([v17 count])
    {
      firstObject = [v17 firstObject];
      requestedResourceIdentifier = +[STLog ask];
      if (!os_log_type_enabled(requestedResourceIdentifier, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        v57 = *(v20 + 3840);
        v58 = objc_opt_new();
        v59 = [currentCalendar nextDateAfterDate:v58 matchingHour:0 minute:0 second:0 options:1024];
        [(STAskForTimeRequestResponse *)firstObject setExpirationDate:v59];

        timeRequested = [requestCopy timeRequested];
        [(STAskForTimeRequestResponse *)firstObject setTimeRequested:timeRequested];

        firstObject = firstObject;
        v25 = firstObject;
LABEL_29:

        contextCopy = v67;
        goto LABEL_30;
      }

      identifier = [(STAskForTimeRequestResponse *)firstObject identifier];
      *buf = 138543618;
      v70 = firstObject;
      v71 = 2114;
      v72 = identifier;
      _os_log_impl(&dword_1B831F000, requestedResourceIdentifier, OS_LOG_TYPE_DEFAULT, "Updating existing ask for time request %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    else
    {
      errorCopy = error;
      firstObject = [[STAskForTimeRequestResponse alloc] initWithContext:contextCopy];
      familySettings = [userCopy familySettings];
      organization = [familySettings organization];
      [(STAskForTimeRequestResponse *)firstObject setFamilyOrganization:organization];

      requestedResourceIdentifier = [requestCopy requestedResourceIdentifier];
      v28 = +[STLog ask];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        [requestCopy requestIdentifier];
        v29 = v65 = a2;
        *buf = 138543618;
        v70 = requestedResourceIdentifier;
        v71 = 2114;
        v72 = v29;
        _os_log_impl(&dword_1B831F000, v28, OS_LOG_TYPE_DEFAULT, "Adding new ask for time request for resource identifier %{public}@, request %{public}@", buf, 0x16u);

        a2 = v65;
      }

      usageType = [requestCopy usageType];
      [(STAskForTimeRequestResponse *)firstObject setUsageType:usageType];
      if (usageType == 2)
      {
        v45 = +[STLog ask];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)requestedResourceIdentifier upsertAskForTimeRequest:v45 fromUser:v46 inContext:v47 error:v48, v49, v50, v51];
        }

        [(STAskForTimeRequestResponse *)firstObject setRequestedCategoryIdentifier:requestedResourceIdentifier];
      }

      else if (usageType == 1)
      {
        v38 = +[STLog ask];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)requestedResourceIdentifier upsertAskForTimeRequest:v38 fromUser:v39 inContext:v40 error:v41, v42, v43, v44];
        }

        [(STAskForTimeRequestResponse *)firstObject setRequestedWebDomain:requestedResourceIdentifier];
      }

      else if (usageType)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v53 = a2;
        v54 = currentHandler;
        [currentHandler handleFailureInMethod:v53 object:self file:@"STAskForTimeRequestResponse.m" lineNumber:80 description:{@"Unexpected usage type %ld", usageType}];
      }

      else
      {
        v31 = +[STLog ask];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [(STAskForTimeRequestResponse *)requestedResourceIdentifier upsertAskForTimeRequest:v31 fromUser:v32 inContext:v33 error:v34, v35, v36, v37];
        }

        [(STAskForTimeRequestResponse *)firstObject setRequestedApplicationBundleIdentifier:requestedResourceIdentifier];
      }

      v20 = 0x1E695D000uLL;
      requestedApplicationBundleIdentifier = [(STAskForTimeRequestResponse *)firstObject requestedApplicationBundleIdentifier];
      if (requestedApplicationBundleIdentifier || ([(STAskForTimeRequestResponse *)firstObject requestedWebDomain], (requestedApplicationBundleIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        requestedCategoryIdentifier = [(STAskForTimeRequestResponse *)firstObject requestedCategoryIdentifier];

        if (!requestedCategoryIdentifier)
        {
          if (errorCopy)
          {
            v64 = v19;
            *errorCopy = v19;
          }

          v25 = 0;
          goto LABEL_29;
        }
      }

      [(STAskForTimeRequestResponse *)firstObject setRequestingUser:userCopy];
      identifier = objc_opt_new();
      [(STAskForTimeRequestResponse *)firstObject setRequestTimeStamp:identifier];
    }

    goto LABEL_28;
  }

  if (error)
  {
    v24 = v18;
    v25 = 0;
    *error = v19;
  }

  else
  {
    v25 = 0;
  }

LABEL_30:

  v61 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)fetchAskForTimeRequest:(id)request fromUser:(id)user inContext:(id)context error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  userCopy = user;
  requestCopy = request;
  fetchRequest = [self fetchRequest];
  dsid = [userCopy dsid];

  v13 = [self _fetchPredicateForAskForTimeRequest:requestCopy requestingUserDSID:dsid];

  [fetchRequest setPredicate:v13];
  v23 = 0;
  v14 = [fetchRequest execute:&v23];
  v15 = v23;
  v16 = v15;
  if (!v14)
  {
    if (error)
    {
      v20 = v15;
      firstObject = 0;
      *error = v16;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (![v14 count])
  {
LABEL_8:
    firstObject = 0;
    goto LABEL_9;
  }

  firstObject = [v14 firstObject];
  v18 = +[STLog ask];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [firstObject identifier];
    *buf = 138543618;
    v25 = firstObject;
    v26 = 2114;
    v27 = identifier;
    _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_DEFAULT, "Found existing ask for time request %{public}@ with identifier %{public}@", buf, 0x16u);
  }

LABEL_9:
  v21 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)_fetchPredicateForAskForTimeRequest:(id)request requestingUserDSID:(id)d
{
  v31[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dCopy = d;
  usageType = [requestCopy usageType];
  requestedResourceIdentifier = [requestCopy requestedResourceIdentifier];
  switch(usageType)
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
      v13 = [v11 predicateWithFormat:@"(%K == %@)", v12, requestedResourceIdentifier];
      goto LABEL_9;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STAskForTimeRequestResponse.m" lineNumber:139 description:{@"Unexpected usage type %ld", usageType}];

  v13 = 0;
LABEL_9:
  v15 = MEMORY[0x1E696AE18];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:usageType];
  v17 = objc_opt_new();
  v18 = [v15 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K > %@) && (%K == NULL)", @"usageType", v16, @"requestingUser.dsid", dCopy, @"expirationDate", v17, @"respondingUser"];

  v19 = MEMORY[0x1E696AE18];
  requestIdentifier = [requestCopy requestIdentifier];
  v21 = [v19 predicateWithFormat:@"(%K == %@)", @"identifier", requestIdentifier];

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
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STAskForTimeRequestResponse;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (BOOL)validateForUpdate:(id *)update
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
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForUpdate:update];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
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
        [STAskForTimeRequestResponse validateForInsert:insert];
      }
    }

    v9.receiver = self;
    v9.super_class = STAskForTimeRequestResponse;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForInsert:insert];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
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
        [STAskForTimeRequestResponse validateForDelete:delete];
      }
    }

    v9.receiver = self;
    v9.super_class = STAskForTimeRequestResponse;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STAskForTimeRequestResponse validateForDelete:delete];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateRequestingApplication:(id)application
{
  v34 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v4 = +[STAskForTimeRequestResponse fetchRequest];
  v30 = 0;
  v5 = [v4 execute:&v30];
  v6 = v30;
  v7 = v6;
  if (!v5)
  {
    [applicationCopy addObject:v6];
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
      requestedApplicationBundleIdentifier = [v14 requestedApplicationBundleIdentifier];
      if (requestedApplicationBundleIdentifier || ([v14 requestedWebDomain], (requestedApplicationBundleIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = requestedApplicationBundleIdentifier;
LABEL_10:

        goto LABEL_11;
      }

      requestedCategoryIdentifier = [v14 requestedCategoryIdentifier];

      if (!requestedCategoryIdentifier)
      {
        v18 = MEMORY[0x1E696ABC0];
        v31 = v12;
        v32 = @"AskForTimeRequestResponse is missing a valid requested application identifer.";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v19 = [v18 errorWithDomain:@"STErrorDomain" code:561 userInfo:v16];
        [applicationCopy addObject:v19];

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

  v21 = [applicationCopy count] == 0;
  v7 = v25;
  v5 = v24;
LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_validateFieldsOfRequesterResponder:(id)responder
{
  v70 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  v4 = +[STAskForTimeRequestResponse fetchRequest];
  v56 = 0;
  v5 = [v4 execute:&v56];
  v6 = v56;
  v7 = v6;
  if (!v5)
  {
    [responderCopy addObject:v6];
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
        requestingUser = [*(*(&v52 + 1) + 8 * v11) requestingUser];
        respondingUser = [v12 respondingUser];
        v15 = respondingUser;
        if (!(respondingUser | requestingUser))
        {
          v16 = MEMORY[0x1E696ABC0];
          v67 = v51;
          v68 = @"AskForTimeRequestResponse is missing a valid responding or requesting user.";
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          v18 = v16;
          v19 = 564;
          goto LABEL_10;
        }

        if (respondingUser)
        {
          respondingUser2 = [v12 respondingUser];
          familyMemberType = [respondingUser2 familyMemberType];

          if (familyMemberType != @"Adult")
          {
            v23 = MEMORY[0x1E696ABC0];
            v65 = v51;
            v66 = @"AskForTimeRequestResponse responding user is not an adult.";
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
            v25 = [v23 errorWithDomain:@"STErrorDomain" code:562 userInfo:v24];
            [responderCopy addObject:v25];
          }

          amountGranted = [v12 amountGranted];
          if (!amountGranted)
          {
            goto LABEL_19;
          }

          v27 = amountGranted;
          answer = [v12 answer];
          if (!answer)
          {

            goto LABEL_19;
          }

          v29 = answer;
          responseTimeStamp = [v12 responseTimeStamp];

          if (!responseTimeStamp)
          {
LABEL_19:
            v31 = MEMORY[0x1E696ABC0];
            v63 = v51;
            v64 = @"AskForTimeRequestResponse is missing a field from the responding user.";
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
            v33 = [v31 errorWithDomain:@"STErrorDomain" code:562 userInfo:v32];
            [responderCopy addObject:v33];
          }
        }

        if (requestingUser)
        {
          if (([requestingUser isManaged] & 1) == 0)
          {
            v34 = MEMORY[0x1E696ABC0];
            v61 = v51;
            v62 = @"AskForTimeRequestResponse requesting user is not managed.";
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
            v36 = [v34 errorWithDomain:@"STErrorDomain" code:565 userInfo:v35];
            [responderCopy addObject:v36];
          }

          familyMemberType2 = [requestingUser familyMemberType];

          if (familyMemberType2 != @"Child")
          {
            v38 = MEMORY[0x1E696ABC0];
            v59 = v51;
            v60 = @"AskForTimeRequestResponse requesting user is not a child.";
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v40 = [v38 errorWithDomain:@"STErrorDomain" code:566 userInfo:v39];
            [responderCopy addObject:v40];
          }

          timeRequested = [v12 timeRequested];

          if (!timeRequested)
          {
            v42 = MEMORY[0x1E696ABC0];
            v57 = v51;
            v58 = @"AskForTimeRequestResponse is missing a field from the requesting user.";
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
            v18 = v42;
            v19 = 563;
LABEL_10:
            v20 = [v18 errorWithDomain:@"STErrorDomain" code:v19 userInfo:{v17, v47, v48, v49}];
            [responderCopy addObject:v20];
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

  v44 = [responderCopy count] == 0;
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