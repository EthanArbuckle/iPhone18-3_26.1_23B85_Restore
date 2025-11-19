@interface RMAccountHelper
+ (BOOL)_removeAccount:(id)a3 store:(id)a4 error:(id *)a5;
+ (BOOL)removeAccountWithEnrollmentURL:(id)a3 error:(id *)a4;
+ (BOOL)removeAccountWithIdentifier:(id)a3 error:(id *)a4;
+ (BOOL)updateAccountWithIdentifier:(id)a3 enrollmentURL:(id)a4 personaID:(id)a5 error:(id *)a6;
+ (id)_createAccountWithEnrollmentURL:(id)a3 username:(id)a4 personaID:(id)a5 description:(id)a6 error:(id *)a7;
+ (id)createAccountWithEnrollmentURL:(id)a3 username:(id)a4 personaID:(id)a5 description:(id)a6 error:(id *)a7;
@end

@implementation RMAccountHelper

+ (id)createAccountWithEnrollmentURL:(id)a3 username:(id)a4 personaID:(id)a5 description:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
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
  v32 = a1;
  v17 = v12;
  v26 = v17;
  v18 = v13;
  v27 = v18;
  v19 = v14;
  v28 = v19;
  v20 = v15;
  v29 = v20;
  v31 = &v33;
  v21 = [v16 performBlockUnderPersona:v19 block:v25];
  if (a7)
  {
    v22 = v34[5];
    if (v22)
    {
      *a7 = v22;
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

+ (id)_createAccountWithEnrollmentURL:(id)a3 username:(id)a4 personaID:(id)a5 description:(id)a6 error:(id *)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x1E6959A48] rm_defaultStore];
  v16 = [MEMORY[0x1E6959A28] rm_createTestAccountWithStore:v15 username:v12 description:v14 enrollmentURL:v11];
  v17 = v16;
  if (v13)
  {
    [v16 rm_setPersonaIdentifier:v13];
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
  [v15 saveAccount:v17 withCompletionHandler:&v25];
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

    if (a7 && (v21 = v32[5]) != 0)
    {
      v22 = 0;
      *a7 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = [v17 identifier];
  }

  _Block_object_dispose(&v31, 8);
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

void __88__RMAccountHelper__createAccountWithEnrollmentURL_username_personaID_description_error___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) complete];
}

+ (BOOL)updateAccountWithIdentifier:(id)a3 enrollmentURL:(id)a4 personaID:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  v13 = v9;
  v21 = v13;
  v25 = &v26;
  v14 = v11;
  v22 = v14;
  v15 = v10;
  v23 = v15;
  v16 = [v12 performBlockUnderPersona:v14 block:v20];
  if (a6)
  {
    v17 = v27[5];
    if (v17)
    {
      *a6 = v17;
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

+ (BOOL)removeAccountWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[RMLog accountHelper];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[RMAccountHelper removeAccountWithIdentifier:error:];
  }

  v8 = [MEMORY[0x1E6959A48] rm_defaultStore];
  v9 = [v8 rm_remoteManagementAccountForIdentifier:v6];
  v10 = [a1 _removeAccount:v9 store:v8 error:a4];

  return v10;
}

+ (BOOL)removeAccountWithEnrollmentURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[RMLog accountHelper];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[RMAccountHelper removeAccountWithEnrollmentURL:error:];
  }

  v8 = [MEMORY[0x1E6959A48] rm_defaultStore];
  v9 = [v8 rm_remoteManagementAccountForEnrollmentURL:v6];
  v10 = [a1 _removeAccount:v9 store:v8 error:a4];

  return v10;
}

+ (BOOL)_removeAccount:(id)a3 store:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
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
    [v8 removeAccount:v7 withCompletionHandler:&v19];
    [v10 waitForCompletion];
    v11 = v26[5];
    v12 = v11 == 0;
    if (v11)
    {
      v13 = +[RMLog accountHelper];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [v7 identifier];
        objc_claimAutoreleasedReturnValue();
        [v26[5] description];
        objc_claimAutoreleasedReturnValue();
        +[RMAccountHelper _createAccountWithEnrollmentURL:username:personaID:description:error:];
      }

      if (a5)
      {
        v14 = v26[5];
        if (v14)
        {
          *a5 = v14;
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