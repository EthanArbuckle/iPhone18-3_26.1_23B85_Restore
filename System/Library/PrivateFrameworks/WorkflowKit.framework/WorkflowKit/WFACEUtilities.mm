@interface WFACEUtilities
+ (void)wf_handleCommand:(id)command onRemoteDevice:(id)device usingClient:(id)client commandHandler:(id)handler completion:(id)completion;
@end

@implementation WFACEUtilities

+ (void)wf_handleCommand:(id)command onRemoteDevice:(id)device usingClient:(id)client commandHandler:(id)handler completion:(id)completion
{
  deviceCopy = device;
  clientCopy = client;
  handlerCopy = handler;
  completionCopy = completion;
  v15 = MEMORY[0x1E696AE40];
  dictionary = [command dictionary];
  v24 = 0;
  v17 = [v15 dataWithPropertyList:dictionary format:200 options:0 error:&v24];
  v18 = v24;

  if (v18)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v18);
    }
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E69C77E0]);
    [v19 setRemoteDevice:deviceCopy];
    [v19 setRequiresResponseFromRemote:1];
    [v19 setSerializedCommand:v17];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__WFACEUtilities_wf_handleCommand_onRemoteDevice_usingClient_commandHandler_completion___block_invoke;
    v22[3] = &unk_1E837F0C8;
    v23 = handlerCopy;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__WFACEUtilities_wf_handleCommand_onRemoteDevice_usingClient_commandHandler_completion___block_invoke_2;
    v20[3] = &unk_1E837F0F0;
    v21 = completionCopy;
    [clientCopy handleCommand:v19 afterCurrentRequest:0 commandHandler:v22 completion:v20];
  }
}

void __88__WFACEUtilities_wf_handleCommand_onRemoteDevice_usingClient_commandHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v12 = 136315906;
      v13 = "WFEnforceClass";
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v4;
      v8 = v17;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v12, 0x2Au);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v6 result];
    (*(v9 + 16))(v9, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __88__WFACEUtilities_wf_handleCommand_onRemoteDevice_usingClient_commandHandler_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end