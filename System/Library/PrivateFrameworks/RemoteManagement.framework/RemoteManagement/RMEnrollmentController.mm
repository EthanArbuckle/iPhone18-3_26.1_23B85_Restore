@interface RMEnrollmentController
+ (id)synchronousEnrollmentControllerForManagementEnrollmentType:(int64_t)a3 scope:(int64_t)a4;
- (BOOL)_isDeviceOrSupervisedEnrollment;
- (RMEnrollmentController)initWithEnrollmentType:(int64_t)a3 scope:(int64_t)a4;
- (id)_agentConnection;
- (id)_agentProxyWithErrorHandler:(id)a3;
- (id)_daemonConnection;
- (id)_daemonProxyWithErrorHandler:(id)a3;
- (id)_scopedProxyWithErrorHandler:(id)a3;
- (void)_discoverEnrollmentURLForDomain:(id)a3 port:(id)a4 completionHandler:(id)a5;
- (void)_enrollmentURLFromWellKnownURL:(id)a3 completionHandler:(id)a4;
- (void)_unenrollIdentifier:(id)a3 completionHandler:(id)a4;
- (void)deviceChannelEnrollmentExistsWithCompletionHandler:(id)a3;
- (void)discoverEnrollmentURLForUserIdentifier:(id)a3 completionHandler:(id)a4;
- (void)enrollDeviceChannelWithURI:(id)a3 completionHandler:(id)a4;
- (void)enrollUserChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4;
- (void)enrollViaMDMWithEnrollmentType:(int64_t)a3 uri:(id)a4 accountIdentifier:(id)a5 personaIdentifier:(id)a6 completionHandler:(id)a7;
- (void)managementChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4;
- (void)managementChannelWithEnrollmentURL:(id)a3 completionHandler:(id)a4;
- (void)syncWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)unenrollDeviceChannelWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)unenrollUserChannelWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)unenrollViaMDMWithEnrollmentType:(int64_t)a3 identifier:(id)a4 completionHandler:(id)a5;
- (void)updateWithIdentifier:(id)a3 pushMessage:(id)a4 completionHandler:(id)a5;
- (void)updateWithIdentifier:(id)a3 tokensResponse:(id)a4 completionHandler:(id)a5;
@end

@implementation RMEnrollmentController

+ (id)synchronousEnrollmentControllerForManagementEnrollmentType:(int64_t)a3 scope:(int64_t)a4
{
  v4 = [[RMEnrollmentController alloc] initWithEnrollmentType:a3 scope:a4];
  [(RMEnrollmentController *)v4 setSynchronous:1];

  return v4;
}

- (RMEnrollmentController)initWithEnrollmentType:(int64_t)a3 scope:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = RMEnrollmentController;
  v6 = [(RMEnrollmentController *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    connectionByServiceName = v6->_connectionByServiceName;
    v6->_connectionByServiceName = v7;

    v6->_enrollmentType = a3;
    v6->_scope = a4;
  }

  return v6;
}

- (void)enrollDeviceChannelWithURI:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "Starting device channel enrollment for %{public}@", buf, 0xCu);
  }

  if ([(RMEnrollmentController *)self _isDeviceOrSupervisedEnrollment])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__RMEnrollmentController_enrollDeviceChannelWithURI_completionHandler___block_invoke;
    v18[3] = &unk_1E8706060;
    v9 = v6;
    v19 = v9;
    v10 = v7;
    v20 = v10;
    v11 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__RMEnrollmentController_enrollDeviceChannelWithURI_completionHandler___block_invoke_14;
    v15[3] = &unk_1E8706088;
    v16 = v9;
    v17 = v10;
    [v11 enrollDeviceChannelWithURI:v16 completionHandler:v15];

    v12 = v19;
  }

  else
  {
    v12 = +[RMErrorUtilities createInternalError];
    v13 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [RMEnrollmentController enrollDeviceChannelWithURI:completionHandler:];
    }

    (*(v7 + 2))(v7, 0, v12);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __71__RMEnrollmentController_enrollDeviceChannelWithURI_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__RMEnrollmentController_enrollDeviceChannelWithURI_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __71__RMEnrollmentController_enrollDeviceChannelWithURI_completionHandler___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog enrollmentController];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__RMEnrollmentController_enrollDeviceChannelWithURI_completionHandler___block_invoke_14_cold_1(a1);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "Device channel enrollment for %{public}@ succeeded with identifier: %{public}@", &v12, 0x16u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)enrollUserChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "Starting user channel enrollment for account %{public}@", buf, 0xCu);
  }

  if ([(RMEnrollmentController *)self enrollmentType])
  {
    v9 = +[RMErrorUtilities createInternalError];
    v10 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RMEnrollmentController enrollUserChannelWithAccountIdentifier:completionHandler:];
    }

    v7[2](v7, 0, v9);
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__RMEnrollmentController_enrollUserChannelWithAccountIdentifier_completionHandler___block_invoke;
    v18[3] = &unk_1E8706060;
    v11 = v6;
    v19 = v11;
    v12 = v7;
    v20 = v12;
    v13 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__RMEnrollmentController_enrollUserChannelWithAccountIdentifier_completionHandler___block_invoke_16;
    v15[3] = &unk_1E8706088;
    v16 = v11;
    v17 = v12;
    [v13 enrollUserChannelWithAccountIdentifier:v16 completionHandler:v15];

    v9 = v19;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __83__RMEnrollmentController_enrollUserChannelWithAccountIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__RMEnrollmentController_enrollUserChannelWithAccountIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __83__RMEnrollmentController_enrollUserChannelWithAccountIdentifier_completionHandler___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog enrollmentController];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __83__RMEnrollmentController_enrollUserChannelWithAccountIdentifier_completionHandler___block_invoke_16_cold_1(a1);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "User channel enrollment for account %{public}@ succeeded with channel identifier: %{public}@", &v12, 0x16u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)enrollViaMDMWithEnrollmentType:(int64_t)a3 uri:(id)a4 accountIdentifier:(id)a5 personaIdentifier:(id)a6 completionHandler:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v12;
    _os_log_impl(&dword_1E1168000, v16, OS_LOG_TYPE_DEFAULT, "Starting DDM enrollment for %{public}@", buf, 0xCu);
  }

  if ([(RMEnrollmentController *)self enrollmentType]== a3)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __115__RMEnrollmentController_enrollViaMDMWithEnrollmentType_uri_accountIdentifier_personaIdentifier_completionHandler___block_invoke;
    v26[3] = &unk_1E8706060;
    v17 = v12;
    v27 = v17;
    v18 = v15;
    v28 = v18;
    v19 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v26];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __115__RMEnrollmentController_enrollViaMDMWithEnrollmentType_uri_accountIdentifier_personaIdentifier_completionHandler___block_invoke_17;
    v23[3] = &unk_1E8706088;
    v24 = v17;
    v25 = v18;
    [v19 enrollViaMDMWithEnrollmentType:a3 uri:v24 accountIdentifier:v13 personaIdentifier:v14 completionHandler:v23];

    v20 = v27;
  }

  else
  {
    v20 = +[RMErrorUtilities createInternalError];
    v21 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [RMEnrollmentController enrollViaMDMWithEnrollmentType:uri:accountIdentifier:personaIdentifier:completionHandler:];
    }

    (*(v15 + 2))(v15, 0, v20);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __115__RMEnrollmentController_enrollViaMDMWithEnrollmentType_uri_accountIdentifier_personaIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __115__RMEnrollmentController_enrollViaMDMWithEnrollmentType_uri_accountIdentifier_personaIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __115__RMEnrollmentController_enrollViaMDMWithEnrollmentType_uri_accountIdentifier_personaIdentifier_completionHandler___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog enrollmentController];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __115__RMEnrollmentController_enrollViaMDMWithEnrollmentType_uri_accountIdentifier_personaIdentifier_completionHandler___block_invoke_17_cold_1(a1);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "DDM channel enrollment for %{public}@ succeeded with identifier: %{public}@", &v12, 0x16u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unenrollDeviceChannelWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "Unenrolling device channel", v11, 2u);
  }

  if ([(RMEnrollmentController *)self _isDeviceOrSupervisedEnrollment])
  {
    [(RMEnrollmentController *)self _unenrollIdentifier:v6 completionHandler:v7];
  }

  else
  {
    v9 = +[RMErrorUtilities createInternalError];
    v10 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RMEnrollmentController enrollDeviceChannelWithURI:completionHandler:];
    }

    v7[2](v7, v9);
  }
}

- (void)unenrollUserChannelWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "Unenrolling user channel", v11, 2u);
  }

  if ([(RMEnrollmentController *)self enrollmentType])
  {
    v9 = +[RMErrorUtilities createInternalError];
    v10 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RMEnrollmentController enrollUserChannelWithAccountIdentifier:completionHandler:];
    }

    v7[2](v7, v9);
  }

  else
  {
    [(RMEnrollmentController *)self _unenrollIdentifier:v6 completionHandler:v7];
  }
}

- (void)unenrollViaMDMWithEnrollmentType:(int64_t)a3 identifier:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E1168000, v10, OS_LOG_TYPE_DEFAULT, "Unenrolling DDM channel", v13, 2u);
  }

  if ([(RMEnrollmentController *)self enrollmentType]== a3)
  {
    [(RMEnrollmentController *)self _unenrollIdentifier:v8 completionHandler:v9];
  }

  else
  {
    v11 = +[RMErrorUtilities createInternalError];
    v12 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RMEnrollmentController enrollViaMDMWithEnrollmentType:uri:accountIdentifier:personaIdentifier:completionHandler:];
    }

    v9[2](v9, v11);
  }
}

- (void)_unenrollIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__RMEnrollmentController__unenrollIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E8706060;
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  v10 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__RMEnrollmentController__unenrollIdentifier_completionHandler___block_invoke_18;
  v13[3] = &unk_1E87060B0;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 unenrollWithIdentifier:v12 completionHandler:v13];
}

void __64__RMEnrollmentController__unenrollIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__RMEnrollmentController__unenrollIdentifier_completionHandler___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __64__RMEnrollmentController__unenrollIdentifier_completionHandler___block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[RMLog enrollmentController];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__RMEnrollmentController__unenrollIdentifier_completionHandler___block_invoke_18_cold_1(a1);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1E1168000, v6, OS_LOG_TYPE_DEFAULT, "Unenrolled from %{public}@", &v10, 0xCu);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deviceChannelEnrollmentExistsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1168000, v5, OS_LOG_TYPE_DEFAULT, "Checking device channel enrollment", buf, 2u);
  }

  if ([(RMEnrollmentController *)self _isDeviceOrSupervisedEnrollment])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__RMEnrollmentController_deviceChannelEnrollmentExistsWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E87060D8;
    v6 = v4;
    v13 = v6;
    v7 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__RMEnrollmentController_deviceChannelEnrollmentExistsWithCompletionHandler___block_invoke_20;
    v10[3] = &unk_1E8706100;
    v11 = v6;
    [v7 deviceChannelEnrollmentExistsWithCompletionHandler:v10];

    v8 = v13;
  }

  else
  {
    v8 = +[RMErrorUtilities createInternalError];
    v9 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RMEnrollmentController enrollDeviceChannelWithURI:completionHandler:];
    }

    (*(v4 + 2))(v4, 0, v8);
  }
}

void __77__RMEnrollmentController_deviceChannelEnrollmentExistsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__RMEnrollmentController_deviceChannelEnrollmentExistsWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __77__RMEnrollmentController_deviceChannelEnrollmentExistsWithCompletionHandler___block_invoke_20(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[RMLog enrollmentController];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __77__RMEnrollmentController_deviceChannelEnrollmentExistsWithCompletionHandler___block_invoke_20_cold_1();
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1E1168000, v7, OS_LOG_TYPE_DEFAULT, "Device channel enrollment check result: %{public}@", &v11, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  v8();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)syncWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "Syncing management channel", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__RMEnrollmentController_syncWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E87060D8;
  v9 = v6;
  v15 = v9;
  v10 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__RMEnrollmentController_syncWithIdentifier_completionHandler___block_invoke_22;
  v12[3] = &unk_1E87060D8;
  v13 = v9;
  v11 = v9;
  [v10 syncWithIdentifier:v7 completionHandler:v12];
}

void __63__RMEnrollmentController_syncWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__RMEnrollmentController_syncWithIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__RMEnrollmentController_syncWithIdentifier_completionHandler___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__RMEnrollmentController_syncWithIdentifier_completionHandler___block_invoke_22_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E1168000, v5, OS_LOG_TYPE_DEFAULT, "Synced management channel", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)updateWithIdentifier:(id)a3 pushMessage:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1168000, v11, OS_LOG_TYPE_DEFAULT, "Updating management channel with push message", buf, 2u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__RMEnrollmentController_updateWithIdentifier_pushMessage_completionHandler___block_invoke;
  v17[3] = &unk_1E87060D8;
  v12 = v8;
  v18 = v12;
  v13 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__RMEnrollmentController_updateWithIdentifier_pushMessage_completionHandler___block_invoke_23;
  v15[3] = &unk_1E87060D8;
  v16 = v12;
  v14 = v12;
  [v13 updateWithIdentifier:v10 pushMessage:v9 completionHandler:v15];
}

void __77__RMEnrollmentController_updateWithIdentifier_pushMessage_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__RMEnrollmentController_updateWithIdentifier_pushMessage_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __77__RMEnrollmentController_updateWithIdentifier_pushMessage_completionHandler___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__RMEnrollmentController_updateWithIdentifier_pushMessage_completionHandler___block_invoke_23_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E1168000, v5, OS_LOG_TYPE_DEFAULT, "Updated management channel with push message", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)updateWithIdentifier:(id)a3 tokensResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1168000, v11, OS_LOG_TYPE_DEFAULT, "Updating management channel with tokens response", buf, 2u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__RMEnrollmentController_updateWithIdentifier_tokensResponse_completionHandler___block_invoke;
  v17[3] = &unk_1E87060D8;
  v12 = v8;
  v18 = v12;
  v13 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__RMEnrollmentController_updateWithIdentifier_tokensResponse_completionHandler___block_invoke_24;
  v15[3] = &unk_1E87060D8;
  v16 = v12;
  v14 = v12;
  [v13 updateWithIdentifier:v10 tokensResponse:v9 completionHandler:v15];
}

void __80__RMEnrollmentController_updateWithIdentifier_tokensResponse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__RMEnrollmentController_updateWithIdentifier_tokensResponse_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __80__RMEnrollmentController_updateWithIdentifier_tokensResponse_completionHandler___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__RMEnrollmentController_updateWithIdentifier_tokensResponse_completionHandler___block_invoke_24_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E1168000, v5, OS_LOG_TYPE_DEFAULT, "Updated management channel with tokens response", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)managementChannelWithAccountIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "Finding management channel via account identifier", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E87060D8;
  v9 = v6;
  v15 = v9;
  v10 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke_25;
  v12[3] = &unk_1E8706128;
  v13 = v9;
  v11 = v9;
  [v10 managementChannelWithAccountIdentifier:v7 completionHandler:v12];
}

void __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[RMLog enrollmentController];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v13 = 138543362;
      v14 = v5;
      v9 = "Found management channel: %{public}@";
      v10 = v7;
      v11 = 12;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      LOWORD(v13) = 0;
      v9 = "Did not find management channel";
      v10 = v7;
      v11 = 2;
    }

    _os_log_impl(&dword_1E1168000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    goto LABEL_10;
  }

  v7 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke_25_cold_1();
  }

LABEL_10:

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)managementChannelWithEnrollmentURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1168000, v8, OS_LOG_TYPE_DEFAULT, "Finding management channel via enrollment URL", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__RMEnrollmentController_managementChannelWithEnrollmentURL_completionHandler___block_invoke;
  v14[3] = &unk_1E87060D8;
  v9 = v6;
  v15 = v9;
  v10 = [(RMEnrollmentController *)self _scopedProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__RMEnrollmentController_managementChannelWithEnrollmentURL_completionHandler___block_invoke_27;
  v12[3] = &unk_1E8706128;
  v13 = v9;
  v11 = v9;
  [v10 managementChannelWithEnrollmentURL:v7 completionHandler:v12];
}

void __79__RMEnrollmentController_managementChannelWithEnrollmentURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __79__RMEnrollmentController_managementChannelWithEnrollmentURL_completionHandler___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[RMLog enrollmentController];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v13 = 138543362;
      v14 = v5;
      v9 = "Found management channel: %{public}@";
      v10 = v7;
      v11 = 12;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      LOWORD(v13) = 0;
      v9 = "Did not find management channel";
      v10 = v7;
      v11 = 2;
    }

    _os_log_impl(&dword_1E1168000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    goto LABEL_10;
  }

  v7 = +[RMLog enrollmentController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke_25_cold_1();
  }

LABEL_10:

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)_scopedProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  if ([(RMEnrollmentController *)self scope]== 1)
  {
    [(RMEnrollmentController *)self _daemonProxyWithErrorHandler:v4];
  }

  else
  {
    [(RMEnrollmentController *)self _agentProxyWithErrorHandler:v4];
  }
  v5 = ;

  return v5;
}

- (id)_daemonProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMEnrollmentController *)self _daemonConnection];
  if ([(RMEnrollmentController *)self isSynchronous])
  {
    [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    [v5 remoteObjectProxyWithErrorHandler:v4];
  }
  v6 = ;

  return v6;
}

- (id)_daemonConnection
{
  v3 = self->_connectionByServiceName;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_connectionByServiceName objectForKeyedSubscript:@"com.apple.remotemanagementd"];
  if (!v4)
  {
    v4 = +[RMXPCProxy newDaemonConnection];
    [(NSMutableDictionary *)self->_connectionByServiceName setObject:v4 forKeyedSubscript:@"com.apple.remotemanagementd"];
    [v4 resume];
  }

  objc_sync_exit(v3);

  return v4;
}

- (id)_agentProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMEnrollmentController *)self _agentConnection];
  if ([(RMEnrollmentController *)self isSynchronous])
  {
    [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    [v5 remoteObjectProxyWithErrorHandler:v4];
  }
  v6 = ;

  return v6;
}

- (id)_agentConnection
{
  v3 = self->_connectionByServiceName;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_connectionByServiceName objectForKeyedSubscript:@"com.apple.RemoteManagementAgent"];
  if (!v4)
  {
    v4 = +[RMXPCProxy newAgentConnection];
    [(NSMutableDictionary *)self->_connectionByServiceName setObject:v4 forKeyedSubscript:@"com.apple.RemoteManagementAgent"];
    [v4 resume];
  }

  objc_sync_exit(v3);

  return v4;
}

- (BOOL)_isDeviceOrSupervisedEnrollment
{
  v3 = [(RMEnrollmentController *)self enrollmentType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(RMEnrollmentController *)self enrollmentType]== 3;
  }

  return v3;
}

- (void)discoverEnrollmentURLForUserIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 componentsSeparatedByString:@"@"];
  if ([v8 count] == 2)
  {
    v9 = [v8 objectAtIndexedSubscript:1];
    v10 = [v9 componentsSeparatedByString:@":"];
    if ([v10 count] == 2)
    {
      v11 = [v10 objectAtIndexedSubscript:0];

      v12 = [v10 objectAtIndexedSubscript:1];
      v13 = [v12 integerValue];

      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = 8443;
      }

      v9 = v11;
    }

    else
    {
      v14 = 8443;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__RMEnrollmentController_discoverEnrollmentURLForUserIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_1E8706150;
    v18 = v7;
    [(RMEnrollmentController *)self _discoverEnrollmentURLForDomain:v9 port:v16 completionHandler:v17];
  }

  else
  {
    v15 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RMEnrollmentController discoverEnrollmentURLForUserIdentifier:completionHandler:];
    }

    v9 = [RMErrorUtilities createServiceDiscoveryInvalidUserIdentifierWithReason:v6];
    (*(v7 + 2))(v7, 0, v9);
  }
}

- (void)_discoverEnrollmentURLForDomain:(id)a3 port:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = objc_opt_new();
  [v12 setScheme:@"https"];
  [v12 setHost:v10];

  [v12 setPort:v9];
  [v12 setPath:@"/.well-known/com.apple.remotemanagement"];
  v11 = [v12 URL];
  [(RMEnrollmentController *)self _enrollmentURLFromWellKnownURL:v11 completionHandler:v8];
}

- (void)_enrollmentURLFromWellKnownURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AF78] sharedSession];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke;
  v14 = &unk_1E8706178;
  v15 = v5;
  v16 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 dataTaskWithURL:v9 completionHandler:&v11];

  [v10 resume];
}

void __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke_cold_1(a1);
    }

    v11 = *(a1 + 40);
    v12 = [v9 localizedDescription];
    v13 = [RMErrorUtilities createServiceDiscoveryWellKnownFailedWithReason:v12];
    (*(v11 + 16))(v11, 0, v13);
  }

  else if (v7 && v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v25 = 0;
    v13 = [MEMORY[0x1E69C6DB0] loadData:v7 serializationType:1 error:&v25];
    v12 = v25;
    if (v13)
    {
      v14 = [v13 responseServers];
      if ([v14 count])
      {
        v15 = [v14 objectAtIndexedSubscript:0];
        v16 = [v15 responseBaseURL];

        v17 = *(a1 + 40);
        v18 = [MEMORY[0x1E695DFF8] URLWithString:v16];
        (*(v17 + 16))(v17, v18, 0);
      }

      else
      {
        v23 = +[RMLog enrollmentController];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke_cold_2(a1);
        }

        v24 = *(a1 + 40);
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid well-known servers response for %@: no servers: %@", *(a1 + 32), v7];
        v18 = [RMErrorUtilities createServiceDiscoveryWellKnownInvalidWithReason:v16];
        (*(v24 + 16))(v24, 0, v18);
      }
    }

    else
    {
      v21 = +[RMLog enrollmentController];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke_cold_3(a1);
      }

      v22 = *(a1 + 40);
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid well-known response for %@: JSON error: %@", *(a1 + 32), v12];
      v16 = [RMErrorUtilities createServiceDiscoveryWellKnownInvalidWithReason:v14];
      (*(v22 + 16))(v22, 0, v16);
    }
  }

  else
  {
    v19 = +[RMLog enrollmentController];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke_cold_4(a1);
    }

    v20 = *(a1 + 40);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid well-known response for %@: %@", *(a1 + 32), v8];
    v13 = [RMErrorUtilities createServiceDiscoveryWellKnownInvalidWithReason:v12];
    (*(v20 + 16))(v20, 0, v13);
  }
}

- (void)enrollDeviceChannelWithURI:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__RMEnrollmentController_enrollDeviceChannelWithURI_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Failed XPC connection while starting device channel enrollment for %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __71__RMEnrollmentController_enrollDeviceChannelWithURI_completionHandler___block_invoke_14_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Failed device channel enrollment for %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)enrollUserChannelWithAccountIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__RMEnrollmentController_enrollUserChannelWithAccountIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Failed XPC connection while starting user channel enrollment for account %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __83__RMEnrollmentController_enrollUserChannelWithAccountIdentifier_completionHandler___block_invoke_16_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Failed user channel enrollment for account %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)enrollViaMDMWithEnrollmentType:uri:accountIdentifier:personaIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __115__RMEnrollmentController_enrollViaMDMWithEnrollmentType_uri_accountIdentifier_personaIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Failed XPC connection while starting DDM channel enrollment for %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __115__RMEnrollmentController_enrollViaMDMWithEnrollmentType_uri_accountIdentifier_personaIdentifier_completionHandler___block_invoke_17_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Failed DDM channel enrollment for %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __64__RMEnrollmentController__unenrollIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Failed XPC connection while unenrolling from %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __64__RMEnrollmentController__unenrollIdentifier_completionHandler___block_invoke_18_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Failed to unenroll from %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __77__RMEnrollmentController_deviceChannelEnrollmentExistsWithCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __77__RMEnrollmentController_deviceChannelEnrollmentExistsWithCompletionHandler___block_invoke_20_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __63__RMEnrollmentController_syncWithIdentifier_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __63__RMEnrollmentController_syncWithIdentifier_completionHandler___block_invoke_22_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __77__RMEnrollmentController_updateWithIdentifier_pushMessage_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __77__RMEnrollmentController_updateWithIdentifier_pushMessage_completionHandler___block_invoke_23_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __80__RMEnrollmentController_updateWithIdentifier_tokensResponse_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __80__RMEnrollmentController_updateWithIdentifier_tokensResponse_completionHandler___block_invoke_24_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __83__RMEnrollmentController_managementChannelWithAccountIdentifier_completionHandler___block_invoke_25_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)discoverEnrollmentURLForUserIdentifier:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Well-known request for %{public}@ failed: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Invalid well-known servers response for %{public}@: no servers: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Invalid well-known response for %{public}@: JSON error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

void __75__RMEnrollmentController__enrollmentURLFromWellKnownURL_completionHandler___block_invoke_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v1, v2, "Invalid well-known response for %{public}@: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

@end