@interface SBBackgroundFetchExternalRequest
- (id)initForAppInfo:(id)info;
- (void)dealloc;
- (void)execute;
@end

@implementation SBBackgroundFetchExternalRequest

- (id)initForAppInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    [(SBBackgroundFetchExternalRequest *)a2 initForAppInfo:?];
  }

  v23.receiver = self;
  v23.super_class = SBBackgroundFetchExternalRequest;
  v6 = [(SBBackgroundFetchExternalRequest *)&v23 init];
  if (v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__148;
    v21 = __Block_byref_object_dispose__148;
    v22 = objc_alloc(MEMORY[0x277D754E0]);
    v7 = +[SBBackgroundMultitaskingManager sharedInstance];
    v8 = [v7 _createBackgroundFetchTaskForAppInfo:infoCopy];

    objc_storeStrong(&v6->_task, v8);
    v9 = v18[5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__SBBackgroundFetchExternalRequest_initForAppInfo___block_invoke;
    v14[3] = &unk_2783B49E0;
    v10 = v8;
    v15 = v10;
    v16 = &v17;
    v11 = [v9 initWithHandler:v14];
    action = v6->_action;
    v6->_action = v11;

    _Block_object_dispose(&v17, 8);
  }

  return v6;
}

- (void)execute
{
  [(SBBackgroundFetchTask *)self->_task execute];
  task = self->_task;
  self->_task = 0;

  action = self->_action;
  self->_action = 0;
}

void __51__SBBackgroundFetchExternalRequest_initForAppInfo___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 result];
    v5 = 4;
    if (v4 == 1)
    {
      v5 = 2;
    }

    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_ERROR, "Error completing %{public}@: invalid response (the process probably exited)", &v9, 0xCu);
    }

    v6 = 4;
  }

  [(SBBackgroundFetchTask *)*(a1 + 32) finishWithResult:v6];
}

- (void)dealloc
{
  [(SBBackgroundFetchTask *)self->_task finishWithResult:?];
  [(UIFetchContentInBackgroundAction *)self->_action invalidate];
  v3.receiver = self;
  v3.super_class = SBBackgroundFetchExternalRequest;
  [(SBBackgroundFetchExternalRequest *)&v3 dealloc];
}

- (void)initForAppInfo:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBBackgroundMultitaskingManager.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"appInfo != nil"}];
}

@end