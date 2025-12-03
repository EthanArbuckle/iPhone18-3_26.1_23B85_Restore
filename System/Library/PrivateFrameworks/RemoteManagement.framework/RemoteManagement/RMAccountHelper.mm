@interface RMAccountHelper
+ (BOOL)_removeAccount:(id)account store:(id)store error:(id *)error;
+ (BOOL)removeAccountWithEnrollmentURL:(id)l error:(id *)error;
+ (BOOL)removeAccountWithIdentifier:(id)identifier error:(id *)error;
+ (BOOL)updateAccountWithIdentifier:(id)identifier enrollmentURL:(id)l personaID:(id)d error:(id *)error;
+ (id)_createAccountWithEnrollmentURL:(id)l username:(id)username personaID:(id)d description:(id)description error:(id *)error;
+ (id)createAccountWithEnrollmentURL:(id)l username:(id)username personaID:(id)d description:(id)description error:(id *)error;
@end

@implementation RMAccountHelper

+ (id)createAccountWithEnrollmentURL:(id)l username:(id)username personaID:(id)d description:(id)description error:(id *)error
{
  lCopy = l;
  usernameCopy = username;
  dCopy = d;
  descriptionCopy = description;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v16 = MEMORY[0x1E6999808];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __87__RMAccountHelper_createAccountWithEnrollmentURL_username_personaID_description_error___block_invoke;
  v25[3] = &unk_1E8705E78;
  v30 = &v39;
  selfCopy = self;
  v17 = lCopy;
  v26 = v17;
  v18 = usernameCopy;
  v27 = v18;
  v19 = dCopy;
  v28 = v19;
  v20 = descriptionCopy;
  v29 = v20;
  v31 = &v33;
  v21 = [v16 performBlockUnderPersona:v19 block:v25];
  if (error)
  {
    v22 = v34[5];
    if (v22)
    {
      *error = v22;
    }
  }

  v23 = v40[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v23;
}

void __87__RMAccountHelper_createAccountWithEnrollmentURL_username_personaID_description_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [v6 _createAccountWithEnrollmentURL:v2 username:v3 personaID:v4 description:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)_createAccountWithEnrollmentURL:(id)l username:(id)username personaID:(id)d description:(id)description error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  usernameCopy = username;
  dCopy = d;
  descriptionCopy = description;
  rm_defaultStore = [MEMORY[0x1E6959A48] rm_defaultStore];
  v16 = [MEMORY[0x1E6959A28] rm_createTestAccountWithStore:rm_defaultStore username:usernameCopy description:descriptionCopy enrollmentURL:lCopy];
  v17 = v16;
  if (dCopy)
  {
    [v16 rm_setPersonaIdentifier:dCopy];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v18 = objc_opt_new();
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __88__RMAccountHelper__createAccountWithEnrollmentURL_username_personaID_description_error___block_invoke;
  v28 = &unk_1E8705EA0;
  v30 = &v31;
  v19 = v18;
  v29 = v19;
  [rm_defaultStore saveAccount:v17 withCompletionHandler:&v25];
  [v19 waitForCompletion];
  if (v32[5])
  {
    v20 = +[RMLog accountHelper];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [v17 identifier];
      objc_claimAutoreleasedReturnValue();
      [v32[5] description];
      objc_claimAutoreleasedReturnValue();
      +[RMAccountHelper _createAccountWithEnrollmentURL:username:personaID:description:error:];
    }

    if (error && (v21 = v32[5]) != 0)
    {
      identifier = 0;
      *error = v21;
    }

    else
    {
      identifier = 0;
    }
  }

  else
  {
    identifier = [v17 identifier];
  }

  _Block_object_dispose(&v31, 8);
  v23 = *MEMORY[0x1E69E9840];

  return identifier;
}

void __88__RMAccountHelper__createAccountWithEnrollmentURL_username_personaID_description_error___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) complete];
}

+ (BOOL)updateAccountWithIdentifier:(id)identifier enrollmentURL:(id)l personaID:(id)d error:(id *)error
{
  identifierCopy = identifier;
  lCopy = l;
  dCopy = d;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v12 = MEMORY[0x1E6999808];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__RMAccountHelper_updateAccountWithIdentifier_enrollmentURL_personaID_error___block_invoke;
  v20[3] = &unk_1E8705EF0;
  v24 = &v32;
  v13 = identifierCopy;
  v21 = v13;
  v25 = &v26;
  v14 = dCopy;
  v22 = v14;
  v15 = lCopy;
  v23 = v15;
  v16 = [v12 performBlockUnderPersona:v14 block:v20];
  if (error)
  {
    v17 = v27[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

void __77__RMAccountHelper_updateAccountWithIdentifier_enrollmentURL_personaID_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6959A48] rm_defaultStore];
  v3 = *(*(a1 + 64) + 8);
  v8 = *(v3 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__RMAccountHelper_updateAccountWithIdentifier_enrollmentURL_personaID_error___block_invoke_2;
  v5[3] = &unk_1E8705EC8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  LOBYTE(v4) = [v2 dmc_updateAccountWithIdentifier:v4 error:&v8 updateBlock:v5];
  objc_storeStrong((v3 + 40), v8);
  *(*(*(a1 + 56) + 8) + 24) = v4;
}

void __77__RMAccountHelper_updateAccountWithIdentifier_enrollmentURL_personaID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 rm_setAccountScheme:@"Bearer"];
    v3 = v4;
  }

  [v3 rm_setEnrollmentURL:*(a1 + 40)];
}

+ (BOOL)removeAccountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[RMLog accountHelper];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[RMAccountHelper removeAccountWithIdentifier:error:];
  }

  rm_defaultStore = [MEMORY[0x1E6959A48] rm_defaultStore];
  v9 = [rm_defaultStore rm_remoteManagementAccountForIdentifier:identifierCopy];
  v10 = [self _removeAccount:v9 store:rm_defaultStore error:error];

  return v10;
}

+ (BOOL)removeAccountWithEnrollmentURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = +[RMLog accountHelper];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[RMAccountHelper removeAccountWithEnrollmentURL:error:];
  }

  rm_defaultStore = [MEMORY[0x1E6959A48] rm_defaultStore];
  v9 = [rm_defaultStore rm_remoteManagementAccountForEnrollmentURL:lCopy];
  v10 = [self _removeAccount:v9 store:rm_defaultStore error:error];

  return v10;
}

+ (BOOL)_removeAccount:(id)account store:(id)store error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  storeCopy = store;
  if (accountCopy)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    v9 = objc_opt_new();
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __46__RMAccountHelper__removeAccount_store_error___block_invoke;
    v22 = &unk_1E8705EA0;
    v24 = &v25;
    v10 = v9;
    v23 = v10;
    [storeCopy removeAccount:accountCopy withCompletionHandler:&v19];
    [v10 waitForCompletion];
    v11 = v26[5];
    v12 = v11 == 0;
    if (v11)
    {
      v13 = +[RMLog accountHelper];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [accountCopy identifier];
        objc_claimAutoreleasedReturnValue();
        [v26[5] description];
        objc_claimAutoreleasedReturnValue();
        +[RMAccountHelper _createAccountWithEnrollmentURL:username:personaID:description:error:];
      }

      if (error)
      {
        v14 = v26[5];
        if (v14)
        {
          *error = v14;
        }
      }
    }

    else
    {
      v16 = +[RMLog accountHelper];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[RMAccountHelper _removeAccount:store:error:];
      }
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = +[RMLog accountHelper];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[RMAccountHelper _removeAccount:store:error:];
    }

    v12 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

void __46__RMAccountHelper__removeAccount_store_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  v6 = a3;
  [*(a1 + 32) complete];
}

+ (void)_createAccountWithEnrollmentURL:username:personaID:description:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  _os_log_error_impl(&dword_1E1168000, v6, OS_LOG_TYPE_ERROR, "Failed to remove account: %{public}@. Error: %{public}@", v5, 0x16u);
}

+ (void)removeAccountWithIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)removeAccountWithEnrollmentURL:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end