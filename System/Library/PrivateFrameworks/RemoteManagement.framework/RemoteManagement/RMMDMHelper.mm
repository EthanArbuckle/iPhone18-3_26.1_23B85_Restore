@interface RMMDMHelper
+ (BOOL)_unenrollDDMChannelWithController:(id)controller enrollmentURL:(id)l enrollmentType:(int64_t)type error:(id *)error;
+ (BOOL)isActiveForScope:(int64_t)scope;
+ (BOOL)processDeclarativeManagementCommandWithProfileIdentifier:(id)identifier enrollmentType:(int64_t)type scope:(int64_t)scope username:(id)username personaID:(id)d request:(id)request error:(id *)error;
+ (BOOL)unenrollWithProfileIdentifier:(id)identifier enrollmentType:(int64_t)type scope:(int64_t)scope error:(id *)error;
+ (id)_enrollDDMChannelIfNeededWithController:(id)controller profileIdentifier:(id)identifier enrollmentType:(int64_t)type scope:(int64_t)scope username:(id)username personaID:(id)d error:(id *)error;
+ (id)_enrolledDDMChannelWithController:(id)controller profileIdentifier:(id)identifier enrollmentType:(int64_t)type scope:(int64_t)scope username:(id)username personaID:(id)d error:(id *)error;
+ (id)_managementChannelForEnrollmentURL:(id)l controller:(id)controller error:(id *)error;
+ (id)enrollmentURLForProfileIdentifier:(id)identifier;
@end

@implementation RMMDMHelper

+ (BOOL)isActiveForScope:(int64_t)scope
{
  v4 = +[RMManagedDevice currentManagedDevice];
  v5 = [v4 getPropertyForKey:@"RMDMActive" scope:scope];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

+ (BOOL)processDeclarativeManagementCommandWithProfileIdentifier:(id)identifier enrollmentType:(int64_t)type scope:(int64_t)scope username:(id)username personaID:(id)d request:(id)request error:(id *)error
{
  v41[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  usernameCopy = username;
  dCopy = d;
  requestCopy = request;
  v19 = +[RMLog mdmHelper];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [RMMDMHelper processDeclarativeManagementCommandWithProfileIdentifier:identifierCopy enrollmentType:type scope:? username:? personaID:? request:? error:?];
  }

  v20 = [RMEnrollmentController synchronousEnrollmentControllerForManagementEnrollmentType:type scope:scope];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41[0] = 0;
  obj = 0;
  v21 = [self _enrolledDDMChannelWithController:v20 profileIdentifier:identifierCopy enrollmentType:type scope:scope username:usernameCopy personaID:dCopy error:&obj];
  objc_storeStrong(v41, obj);
  if (!v37[5])
  {
    if (v21)
    {
      v25 = [requestCopy objectForKeyedSubscript:@"Data"];
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

      identifier = [v21 identifier];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __126__RMMDMHelper_processDeclarativeManagementCommandWithProfileIdentifier_enrollmentType_scope_username_personaID_request_error___block_invoke;
      v34[3] = &unk_1E8706248;
      v34[4] = &v36;
      [v20 updateWithIdentifier:identifier tokensResponse:v25 completionHandler:v34];

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
        if (error)
        {
          v31 = v37[5];
          if (v31)
          {
            *error = v31;
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

  if (!error || (v23 = v37[5]) == 0)
  {
LABEL_23:
    v24 = 0;
    goto LABEL_26;
  }

  v24 = 0;
  *error = v23;
LABEL_26:

  _Block_object_dispose(&v36, 8);
  v32 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)unenrollWithProfileIdentifier:(id)identifier enrollmentType:(int64_t)type scope:(int64_t)scope error:(id *)error
{
  identifierCopy = identifier;
  v11 = [RMMDMHelper isActiveForScope:scope];
  v12 = +[RMLog mdmHelper];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      [RMMDMHelper unenrollWithProfileIdentifier:identifierCopy enrollmentType:type scope:? error:?];
    }

    v12 = [RMEnrollmentController synchronousEnrollmentControllerForManagementEnrollmentType:type scope:scope];
    v14 = [self enrollmentURLForProfileIdentifier:identifierCopy];
    v15 = [self _unenrollDDMChannelWithController:v12 enrollmentURL:v14 enrollmentType:type error:error];
    if (v15)
    {
      [RMMDMHelper setActive:0 scope:scope];
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

+ (id)_enrolledDDMChannelWithController:(id)controller profileIdentifier:(id)identifier enrollmentType:(int64_t)type scope:(int64_t)scope username:(id)username personaID:(id)d error:(id *)error
{
  v15 = 0;
  v9 = [self _enrollDDMChannelIfNeededWithController:controller profileIdentifier:identifier enrollmentType:type scope:scope username:username personaID:d error:&v15];
  v10 = v15;
  if (v10)
  {
    v11 = +[RMLog mdmHelper];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RMMDMHelper _enrolledDDMChannelWithController:v10 profileIdentifier:? enrollmentType:? scope:? username:? personaID:? error:?];
    }

    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v10;
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

+ (id)_enrollDDMChannelIfNeededWithController:(id)controller profileIdentifier:(id)identifier enrollmentType:(int64_t)type scope:(int64_t)scope username:(id)username personaID:(id)d error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  identifierCopy = identifier;
  usernameCopy = username;
  dCopy = d;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__0;
  v73 = __Block_byref_object_dispose__0;
  v74 = 0;
  v18 = [self enrollmentURLForProfileIdentifier:identifierCopy];
  v19 = (v70 + 5);
  obj = v70[5];
  v20 = [self _managementChannelForEnrollmentURL:v18 controller:controllerCopy error:&obj];
  objc_storeStrong(v19, obj);
  v21 = v70[5];
  if (v21)
  {
    if (error)
    {
LABEL_3:
      v22 = 0;
      *error = v21;
      goto LABEL_50;
    }

    goto LABEL_18;
  }

  if (!v20)
  {
    rm_defaultStore = [MEMORY[0x1E6959A48] rm_defaultStore];
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__0;
    v79 = __Block_byref_object_dispose__0;
    v54 = rm_defaultStore;
    v80 = [rm_defaultStore rm_remoteManagementAccountForEnrollmentURL:v18];
    v25 = v76[5];
    if (v25)
    {
      identifier = [v25 identifier];
      v26 = +[RMLog mdmHelper];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
      }

      goto LABEL_13;
    }

    v31 = [v54 dmc_remoteManagementAccountForManagementProfileIdentifier:identifierCopy];
    v32 = v76[5];
    v76[5] = v31;

    if (!v76[5])
    {
      v33 = +[RMManagedDevice currentManagedDevice];
      isSharediPad = [v33 isSharediPad];

      if (isSharediPad)
      {
        v34 = +[RMLog mdmHelper];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1168000, v34, OS_LOG_TYPE_DEFAULT, "We are under Shared iPad mode!", buf, 2u);
        }

        v49 = objc_opt_new();
        v52 = objc_opt_new();
        mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
        details = [mEMORY[0x1E69AD420] details];
        v51 = [details objectForKeyedSubscript:*MEMORY[0x1E6999788]];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __119__RMMDMHelper__enrollDDMChannelIfNeededWithController_profileIdentifier_enrollmentType_scope_username_personaID_error___block_invoke;
        v62[3] = &unk_1E8706270;
        v66 = &v75;
        v63 = v54;
        v64 = v18;
        v50 = v49;
        v65 = v50;
        [v52 updateSharediPadUserChannelWithManagedAppleID:usernameCopy profileIdentifier:identifierCopy organizationName:v51 enrollmentURL:v64 completionHandler:v62];

        [v50 waitForCompletion];
      }
    }

    v36 = v76[5];
    if (type || v36)
    {
      if (!v36)
      {
        v48 = +[RMLog mdmHelper];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
        }

        identifier = 0;
        goto LABEL_13;
      }

      identifier = [v36 identifier];
      v42 = +[RMLog mdmHelper];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        +[RMMDMHelper _enrollDDMChannelIfNeededWithController:profileIdentifier:enrollmentType:scope:username:personaID:error:];
      }

      v43 = (v70 + 5);
      v61 = v70[5];
      v53 = [RMAccountHelper updateAccountWithIdentifier:identifier enrollmentURL:v18 personaID:dCopy error:&v61];
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
        [controllerCopy enrollViaMDMWithEnrollmentType:type uri:v40 accountIdentifier:identifier personaIdentifier:dCopy completionHandler:v60];

        v41 = v70[5];
        if (!v41)
        {
          [RMMDMHelper setActive:1 scope:scope];
          v45 = (v70 + 5);
          v59 = v70[5];
          v22 = [self _managementChannelForEnrollmentURL:v18 controller:controllerCopy error:&v59];
          objc_storeStrong(v45, v59);
          goto LABEL_49;
        }

        if (error)
        {
          v22 = 0;
          *error = v41;
        }

        else
        {
LABEL_40:
          v22 = 0;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (error)
      {
        v44 = v70[5];
        if (v44)
        {
          v27 = 0;
          *error = v44;
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

      if (error)
      {
        v38 = [RMErrorUtilities createAccountMissingErrorWithIdentifier:identifierCopy];
        if (v38)
        {
          v38 = v38;
          *error = v38;
        }
      }

      identifier = 0;
    }

    v27 = 0;
    goto LABEL_34;
  }

  if ([v20 type] != type)
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

    if (error)
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

+ (BOOL)_unenrollDDMChannelWithController:(id)controller enrollmentURL:(id)l enrollmentType:(int64_t)type error:(id *)error
{
  v29[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  lCopy = l;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29[0] = 0;
  obj = 0;
  v12 = [self _managementChannelForEnrollmentURL:lCopy controller:controllerCopy error:&obj];
  objc_storeStrong(v29, obj);
  if (v12)
  {
    if ([v12 type] == type)
    {
      identifier = [v12 identifier];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __84__RMMDMHelper__unenrollDDMChannelWithController_enrollmentURL_enrollmentType_error___block_invoke;
      v22[3] = &unk_1E8706248;
      v22[4] = &v24;
      [controllerCopy unenrollViaMDMWithEnrollmentType:type identifier:identifier completionHandler:v22];

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
  if (error && (v18 = v25[5]) != 0)
  {
    v19 = 0;
    *error = v18;
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

+ (id)_managementChannelForEnrollmentURL:(id)l controller:(id)controller error:(id *)error
{
  lCopy = l;
  controllerCopy = controller;
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
  [controllerCopy managementChannelWithEnrollmentURL:lCopy completionHandler:v12];
  if (error)
  {
    v9 = v20[5];
    if (v9)
    {
      *error = v9;
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

+ (id)enrollmentURLForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setScheme:@"mdm"];
  [v4 setPath:identifierCopy];

  string = [v4 string];

  return string;
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