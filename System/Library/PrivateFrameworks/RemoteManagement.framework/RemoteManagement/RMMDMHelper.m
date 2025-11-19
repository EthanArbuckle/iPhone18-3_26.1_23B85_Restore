@interface RMMDMHelper
+ (BOOL)_unenrollDDMChannelWithController:(id)a3 enrollmentURL:(id)a4 enrollmentType:(int64_t)a5 error:(id *)a6;
+ (BOOL)isActiveForScope:(int64_t)a3;
+ (BOOL)processDeclarativeManagementCommandWithProfileIdentifier:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 username:(id)a6 personaID:(id)a7 request:(id)a8 error:(id *)a9;
+ (BOOL)unenrollWithProfileIdentifier:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 error:(id *)a6;
+ (id)_enrollDDMChannelIfNeededWithController:(id)a3 profileIdentifier:(id)a4 enrollmentType:(int64_t)a5 scope:(int64_t)a6 username:(id)a7 personaID:(id)a8 error:(id *)a9;
+ (id)_enrolledDDMChannelWithController:(id)a3 profileIdentifier:(id)a4 enrollmentType:(int64_t)a5 scope:(int64_t)a6 username:(id)a7 personaID:(id)a8 error:(id *)a9;
+ (id)_managementChannelForEnrollmentURL:(id)a3 controller:(id)a4 error:(id *)a5;
+ (id)enrollmentURLForProfileIdentifier:(id)a3;
@end

@implementation RMMDMHelper

+ (BOOL)isActiveForScope:(int64_t)a3
{
  v4 = +[RMManagedDevice currentManagedDevice];
  v5 = [v4 getPropertyForKey:@"RMDMActive" scope:a3];
  v6 = [v5 BOOLValue];

  return v6;
}

+ (BOOL)processDeclarativeManagementCommandWithProfileIdentifier:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 username:(id)a6 personaID:(id)a7 request:(id)a8 error:(id *)a9
{
  v41[4] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = +[RMLog mdmHelper];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [RMMDMHelper processDeclarativeManagementCommandWithProfileIdentifier:v15 enrollmentType:a4 scope:? username:? personaID:? request:? error:?];
  }

  v20 = [RMEnrollmentController synchronousEnrollmentControllerForManagementEnrollmentType:a4 scope:a5];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41[0] = 0;
  obj = 0;
  v21 = [a1 _enrolledDDMChannelWithController:v20 profileIdentifier:v15 enrollmentType:a4 scope:a5 username:v16 personaID:v17 error:&obj];
  objc_storeStrong(v41, obj);
  if (!v37[5])
  {
    if (v21)
    {
      v25 = [v18 objectForKeyedSubscript:@"Data"];
      if (v25)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = [RMErrorUtilities createMDMRequestFailed:@"Cannot refresh management channel because the sync tokens response is invalid."];
          v29 = v37[5];
          v37[5] = v28;

          v30 = +[RMLog mdmHelper];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [v37[5] description];
            objc_claimAutoreleasedReturnValue();
            +[RMMDMHelper processDeclarativeManagementCommandWithProfileIdentifier:enrollmentType:scope:username:personaID:request:error:];
          }

          goto LABEL_19;
        }
      }

      v26 = [v21 identifier];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __126__RMMDMHelper_processDeclarativeManagementCommandWithProfileIdentifier_enrollmentType_scope_username_personaID_request_error___block_invoke;
      v34[3] = &unk_1E8706248;
      v34[4] = &v36;
      [v20 updateWithIdentifier:v26 tokensResponse:v25 completionHandler:v34];

      if (v37[5])
      {
        v27 = +[RMLog mdmHelper];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [v37[5] description];
          objc_claimAutoreleasedReturnValue();
          +[RMMDMHelper processDeclarativeManagementCommandWithProfileIdentifier:enrollmentType:scope:username:personaID:request:error:];
        }

LABEL_19:
        if (a9)
        {
          v31 = v37[5];
          if (v31)
          {
            *a9 = v31;
          }
        }

        goto LABEL_23;
      }
    }

    v24 = 1;
    goto LABEL_26;
  }

  v22 = +[RMLog mdmHelper];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [v37[5] description];
    objc_claimAutoreleasedReturnValue();
    +[RMMDMHelper processDeclarativeManagementCommandWithProfileIdentifier:enrollmentType:scope:username:personaID:request:error:];
  }

  if (!a9 || (v23 = v37[5]) == 0)
  {
LABEL_23:
    v24 = 0;
    goto LABEL_26;
  }

  v24 = 0;
  *a9 = v23;
LABEL_26:

  _Block_object_dispose(&v36, 8);
  v32 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)unenrollWithProfileIdentifier:(id)a3 enrollmentType:(int64_t)a4 scope:(int64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [RMMDMHelper isActiveForScope:a5];
  v12 = +[RMLog mdmHelper];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      [RMMDMHelper unenrollWithProfileIdentifier:v10 enrollmentType:a4 scope:? error:?];
    }

    v12 = [RMEnrollmentController synchronousEnrollmentControllerForManagementEnrollmentType:a4 scope:a5];
    v14 = [a1 enrollmentURLForProfileIdentifier:v10];
    v15 = [a1 _unenrollDDMChannelWithController:v12 enrollmentURL:v14 enrollmentType:a4 error:a6];
    if (v15)
    {
      [RMMDMHelper setActive:0 scope:a5];
    }
  }

  else
  {
    if (v13)
    {
      +[RMMDMHelper unenrollWithProfileIdentifier:enrollmentType:scope:error:];
    }

    LOBYTE(v15) = 1;
  }

  return v15;
}

+ (id)_enrolledDDMChannelWithController:(id)a3 profileIdentifier:(id)a4 enrollmentType:(int64_t)a5 scope:(int64_t)a6 username:(id)a7 personaID:(id)a8 error:(id *)a9
{
  v15 = 0;
  v9 = [a1 _enrollDDMChannelIfNeededWithController:a3 profileIdentifier:a4 enrollmentType:a5 scope:a6 username:a7 personaID:a8 error:&v15];
  v10 = v15;
  if (v10)
  {
    v11 = +[RMLog mdmHelper];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RMMDMHelper _enrolledDDMChannelWithController:v10 profileIdentifier:? enrollmentType:? scope:? username:? personaID:? error:?];
    }

    if (a9)
    {
      v12 = v10;
      v13 = 0;
      *a9 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

+ (id)_enrollDDMChannelIfNeededWithController:(id)a3 profileIdentifier:(id)a4 enrollmentType:(int64_t)a5 scope:(int64_t)a6 username:(id)a7 personaID:(id)a8 error:(id *)a9
{
  v81 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__0;
  v73 = __Block_byref_object_dispose__0;
  v74 = 0;
  v18 = [a1 enrollmentURLForProfileIdentifier:v15];
  v19 = (v70 + 5);
  obj = v70[5];
  v20 = [a1 _managementChannelForEnrollmentURL:v18 controller:v14 error:&obj];
  objc_storeStrong(v19, obj);
  v21 = v70[5];
  if (v21)
  {
    if (a9)
    {
LABEL_3:
      v22 = 0;
      *a9 = v21;
      goto LABEL_50;
    }

    goto LABEL_18;
  }

  if (!v20)
  {
    v24 = [MEMORY[0x1E6959A48] rm_defaultStore];
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__0;
    v79 = __Block_byref_object_dispose__0;
    v54 = v24;
    v80 = [v24 rm_remoteManagementAccountForEnrollmentURL:v18];
    v25 = v76[5];
    if (v25)
    {
      v55 = [v25 identifier];
      v26 = +[RMLog mdmHelper];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
      }

      goto LABEL_13;
    }

    v31 = [v54 dmc_remoteManagementAccountForManagementProfileIdentifier:v15];
    v32 = v76[5];
    v76[5] = v31;

    if (!v76[5])
    {
      v33 = +[RMManagedDevice currentManagedDevice];
      v56 = [v33 isSharediPad];

      if (v56)
      {
        v34 = +[RMLog mdmHelper];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1168000, v34, OS_LOG_TYPE_DEFAULT, "We are under Shared iPad mode!", buf, 2u);
        }

        v49 = objc_opt_new();
        v52 = objc_opt_new();
        v35 = [MEMORY[0x1E69AD420] sharedConfiguration];
        v57 = [v35 details];
        v51 = [v57 objectForKeyedSubscript:*MEMORY[0x1E6999788]];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __119__RMMDMHelper__enrollDDMChannelIfNeededWithController_profileIdentifier_enrollmentType_scope_username_personaID_error___block_invoke;
        v62[3] = &unk_1E8706270;
        v66 = &v75;
        v63 = v54;
        v64 = v18;
        v50 = v49;
        v65 = v50;
        [v52 updateSharediPadUserChannelWithManagedAppleID:v16 profileIdentifier:v15 organizationName:v51 enrollmentURL:v64 completionHandler:v62];

        [v50 waitForCompletion];
      }
    }

    v36 = v76[5];
    if (a5 || v36)
    {
      if (!v36)
      {
        v48 = +[RMLog mdmHelper];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
        }

        v55 = 0;
        goto LABEL_13;
      }

      v55 = [v36 identifier];
      v42 = +[RMLog mdmHelper];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
      }

      v43 = (v70 + 5);
      v61 = v70[5];
      v53 = [RMAccountHelper updateAccountWithIdentifier:v55 enrollmentURL:v18 personaID:v17 error:&v61];
      objc_storeStrong(v43, v61);
      if (v53)
      {
LABEL_13:
        v27 = 1;
LABEL_34:
        _Block_object_dispose(&v75, 8);

        if ((v27 & 1) == 0)
        {
          goto LABEL_40;
        }

        v39 = +[RMLog mdmHelper];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
        }

        v40 = [MEMORY[0x1E695DFF8] URLWithString:v18];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __119__RMMDMHelper__enrollDDMChannelIfNeededWithController_profileIdentifier_enrollmentType_scope_username_personaID_error___block_invoke_28;
        v60[3] = &unk_1E8706298;
        v60[4] = &v69;
        [v14 enrollViaMDMWithEnrollmentType:a5 uri:v40 accountIdentifier:v55 personaIdentifier:v17 completionHandler:v60];

        v41 = v70[5];
        if (!v41)
        {
          [RMMDMHelper setActive:1 scope:a6];
          v45 = (v70 + 5);
          v59 = v70[5];
          v22 = [a1 _managementChannelForEnrollmentURL:v18 controller:v14 error:&v59];
          objc_storeStrong(v45, v59);
          goto LABEL_49;
        }

        if (a9)
        {
          v22 = 0;
          *a9 = v41;
        }

        else
        {
LABEL_40:
          v22 = 0;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (a9)
      {
        v44 = v70[5];
        if (v44)
        {
          v27 = 0;
          *a9 = v44;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v37 = +[RMLog mdmHelper];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
      }

      if (a9)
      {
        v38 = [RMErrorUtilities createAccountMissingErrorWithIdentifier:v15];
        if (v38)
        {
          v38 = v38;
          *a9 = v38;
        }
      }

      v55 = 0;
    }

    v27 = 0;
    goto LABEL_34;
  }

  if ([v20 type] != a5)
  {
    v28 = [RMErrorUtilities createMDMRequestFailed:@"Cannot enroll DDM channel because a different enrollment type already exists."];
    v29 = v70[5];
    v70[5] = v28;

    v30 = +[RMLog mdmHelper];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [v70[5] description];
      objc_claimAutoreleasedReturnValue();
      +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
    }

    if (a9)
    {
      v21 = v70[5];
      if (v21)
      {
        goto LABEL_3;
      }
    }

LABEL_18:
    v22 = 0;
    goto LABEL_50;
  }

  v23 = +[RMLog mdmHelper];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
  }

  v22 = v20;
LABEL_50:

  _Block_object_dispose(&v69, 8);
  v46 = *MEMORY[0x1E69E9840];

  return v22;
}

uint64_t __119__RMMDMHelper__enrollDDMChannelIfNeededWithController_profileIdentifier_enrollmentType_scope_username_personaID_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = +[RMLog mdmHelper];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __119__RMMDMHelper__enrollDDMChannelIfNeededWithController_profileIdentifier_enrollmentType_scope_username_personaID_error___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = [*(a1 + 32) rm_remoteManagementAccountForEnrollmentURL:*(a1 + 40)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return [*(a1 + 48) complete];
}

void __119__RMMDMHelper__enrollDDMChannelIfNeededWithController_profileIdentifier_enrollmentType_scope_username_personaID_error___block_invoke_28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[RMLog mdmHelper];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __119__RMMDMHelper__enrollDDMChannelIfNeededWithController_profileIdentifier_enrollmentType_scope_username_personaID_error___block_invoke_28_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

+ (BOOL)_unenrollDDMChannelWithController:(id)a3 enrollmentURL:(id)a4 enrollmentType:(int64_t)a5 error:(id *)a6
{
  v29[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29[0] = 0;
  obj = 0;
  v12 = [a1 _managementChannelForEnrollmentURL:v11 controller:v10 error:&obj];
  objc_storeStrong(v29, obj);
  if (v12)
  {
    if ([v12 type] == a5)
    {
      v13 = [v12 identifier];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __84__RMMDMHelper__unenrollDDMChannelWithController_enrollmentURL_enrollmentType_error___block_invoke;
      v22[3] = &unk_1E8706248;
      v22[4] = &v24;
      [v10 unenrollViaMDMWithEnrollmentType:a5 identifier:v13 completionHandler:v22];

      if (v25[5])
      {
        v14 = +[RMLog mdmHelper];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [v25[5] description];
          objc_claimAutoreleasedReturnValue();
          +[RMMDMHelper _unenrollDDMChannelWithController:enrollmentURL:enrollmentType:error:];
        }

        goto LABEL_14;
      }

LABEL_18:
      v19 = 1;
      goto LABEL_19;
    }

    v16 = [RMErrorUtilities createMDMRequestFailed:@"Management channel found does not match expected channel."];
    v17 = v25[5];
    v25[5] = v16;

    v15 = +[RMLog mdmHelper];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v25[5] description];
      objc_claimAutoreleasedReturnValue();
      +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
    }
  }

  else
  {
    if (!v25[5])
    {
      goto LABEL_18;
    }

    v15 = +[RMLog mdmHelper];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v25[5] description];
      objc_claimAutoreleasedReturnValue();
      +[RMMDMHelper processDeclarativeManagementCommandWithProfileIdentifier:enrollmentType:scope:username:personaID:request:error:];
    }
  }

LABEL_14:
  if (a6 && (v18 = v25[5]) != 0)
  {
    v19 = 0;
    *a6 = v18;
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  _Block_object_dispose(&v24, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)_managementChannelForEnrollmentURL:(id)a3 controller:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__RMMDMHelper__managementChannelForEnrollmentURL_controller_error___block_invoke;
  v12[3] = &unk_1E87062C0;
  v12[4] = &v19;
  v12[5] = &v13;
  [v8 managementChannelWithEnrollmentURL:v7 completionHandler:v12];
  if (a5)
  {
    v9 = v20[5];
    if (v9)
    {
      *a5 = v9;
    }
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __67__RMMDMHelper__managementChannelForEnrollmentURL_controller_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[RMLog mdmHelper];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __67__RMMDMHelper__managementChannelForEnrollmentURL_controller_error___block_invoke_cold_1(v7);
    }

    v9 = 32;
  }

  else
  {
    v9 = 40;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), a3);
}

+ (id)enrollmentURLForProfileIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setScheme:@"mdm"];
  [v4 setPath:v3];

  v5 = [v4 string];

  return v5;
}

+ (void)processDeclarativeManagementCommandWithProfileIdentifier:(uint64_t)a1 enrollmentType:(uint64_t)a2 scope:username:personaID:request:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  OUTLINED_FUNCTION_7(&dword_1E1168000, v2, v3, "Processing RemoteManagement command for %{public}@, type: %{public}@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)processDeclarativeManagementCommandWithProfileIdentifier:enrollmentType:scope:username:personaID:request:error:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_4(&dword_1E1168000, v3, v4, "Failed to retrieve enrolled management channel. Error: %{public}@", v5);
}

+ (void)processDeclarativeManagementCommandWithProfileIdentifier:enrollmentType:scope:username:personaID:request:error:.cold.3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_4(&dword_1E1168000, v3, v4, "Failed to refresh enrolled management channel. Error: %{public}@", v5);
}

+ (void)unenrollWithProfileIdentifier:enrollmentType:scope:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)unenrollWithProfileIdentifier:(uint64_t)a1 enrollmentType:(uint64_t)a2 scope:error:.cold.2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  OUTLINED_FUNCTION_7(&dword_1E1168000, v2, v3, "Processing unenroll request for %{public}@, type: %{public}@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_enrolledDDMChannelWithController:(void *)a1 profileIdentifier:enrollmentType:scope:username:personaID:error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1E1168000, v2, v3, "Failed to retrieve enrolled management channel. Error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_4(&dword_1E1168000, v3, v4, "Management channel found is not the right enrollment type. Error: %{public}@", v5);
}

+ (void)_enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __119__RMMDMHelper__enrollDDMChannelIfNeededWithController_profileIdentifier_enrollmentType_scope_username_personaID_error___block_invoke_28_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(*(*(a1 + 32) + 8) + 40) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1E1168000, v2, v3, "Failed to enroll DDM channel. Error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_unenrollDDMChannelWithController:enrollmentURL:enrollmentType:error:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_4(&dword_1E1168000, v3, v4, "Failed to unenroll management channel. Error: %{public}@", v5);
}

void __67__RMMDMHelper__managementChannelForEnrollmentURL_controller_error___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1E1168000, v2, v3, "Failed to find management channel. Error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end