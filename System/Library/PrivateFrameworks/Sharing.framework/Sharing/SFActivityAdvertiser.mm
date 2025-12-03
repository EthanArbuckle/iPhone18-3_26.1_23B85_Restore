@interface SFActivityAdvertiser
+ (id)sharedAdvertiser;
- (SFActivityAdvertiser)init;
- (id)exportedInterface;
- (id)remoteObjectInterface;
- (void)activityPayloadForAdvertisementPayload:(id)payload command:(id)command requestedByDevice:(id)device withCompletionHandler:(id)handler;
- (void)advertiseAdvertisementPayload:(id)payload options:(id)options;
- (void)didSendPayloadForActivityIdentifier:(id)identifier toDevice:(id)device error:(id)error;
- (void)fetchLoginIDWithCompletionHandler:(id)handler;
- (void)fetchPeerForUUID:(id)d withCompletionHandler:(id)handler;
- (void)fetchSFPeerDevicesWithCompletionHandler:(id)handler;
- (void)pairedDevicesChanged:(id)changed;
@end

@implementation SFActivityAdvertiser

+ (id)sharedAdvertiser
{
  if (sharedAdvertiser_onceToken != -1)
  {
    +[SFActivityAdvertiser sharedAdvertiser];
  }

  v3 = sharedAdvertiser_manager;

  return v3;
}

void __40__SFActivityAdvertiser_sharedAdvertiser__block_invoke()
{
  if (SFDeviceSupportsContinuity())
  {
    v0 = objc_alloc_init(SFActivityAdvertiser);
  }

  else
  {
    v0 = 0;
  }

  v1 = sharedAdvertiser_manager;
  sharedAdvertiser_manager = v0;
}

- (SFActivityAdvertiser)init
{
  v6.receiver = self;
  v6.super_class = SFActivityAdvertiser;
  v2 = [(SFXPCClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = SFActivityAdvertiser;
    [(SFXPCClient *)&v5 _activate];
  }

  return v3;
}

- (void)fetchLoginIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFActivityAdvertiser/fetchLoginIDWithCompletionHandler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SFActivityAdvertiser_fetchLoginIDWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E788FFF0;
  v6 = handlerCopy;
  v8 = v6;
  [(SFActivityAdvertiser *)self _getRemoteObjectProxyOnQueue:v7];

  os_activity_scope_leave(&state);
}

- (void)fetchSFPeerDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFActivityAdvertiser/fetchSFPeerDevicesWithCompletionHandler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SFActivityAdvertiser_fetchSFPeerDevicesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E788FFF0;
  v6 = handlerCopy;
  v8 = v6;
  [(SFActivityAdvertiser *)self _getRemoteObjectProxyOnQueue:v7];

  os_activity_scope_leave(&state);
}

- (void)fetchPeerForUUID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFActivityAdvertiser/fetchPeerForUUID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SFActivityAdvertiser_fetchPeerForUUID_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E7890018;
  v9 = dCopy;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  [(SFActivityAdvertiser *)self _getRemoteObjectProxyOnQueue:v11];

  os_activity_scope_leave(&state);
}

- (void)advertiseAdvertisementPayload:(id)payload options:(id)options
{
  payloadCopy = payload;
  optionsCopy = options;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFActivityAdvertiser/advertiseAdvertisementPayload", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke;
  v11[3] = &unk_1E7890040;
  v11[4] = self;
  v9 = payloadCopy;
  v12 = v9;
  v10 = optionsCopy;
  v13 = v10;
  [(SFActivityAdvertiser *)self _getRemoteObjectProxyOnQueue:v11];

  os_activity_scope_leave(&state);
}

void __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke_cold_1(a1);
  }

  v5 = a1[5];
  v6 = a1[6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke_134;
  v7[3] = &unk_1E788B520;
  v7[4] = a1[4];
  v8 = v5;
  [v3 advertiseAdvertisementPayload:v8 options:v6 withErrorHandler:v7];
}

void __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handoff_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke_134_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke_134_cold_2(a1);
  }
}

- (void)activityPayloadForAdvertisementPayload:(id)payload command:(id)command requestedByDevice:(id)device withCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  commandCopy = command;
  deviceCopy = device;
  handlerCopy = handler;
  v14 = handoff_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = SFAdvertisementDescriptionFromPayloadData(payloadCopy);
    *buf = 138412802;
    v29 = v16;
    v30 = 2112;
    v31 = deviceCopy;
    v32 = 2112;
    v33 = v17;
    _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "[%@] Received payload request from %@ for %@", buf, 0x20u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__SFActivityAdvertiser_activityPayloadForAdvertisementPayload_command_requestedByDevice_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7890068;
  block[4] = self;
  v24 = payloadCopy;
  v25 = commandCopy;
  v26 = deviceCopy;
  v27 = handlerCopy;
  v18 = handlerCopy;
  v19 = deviceCopy;
  v20 = commandCopy;
  v21 = payloadCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v22 = *MEMORY[0x1E69E9840];
}

void __111__SFActivityAdvertiser_activityPayloadForAdvertisementPayload_command_requestedByDevice_withCompletionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 32) activityAdvertiser:*(a1 + 32) activityPayloadForAdvertisementPayload:*(a1 + 40) command:*(a1 + 48) requestedByDevice:*(a1 + 56) withCompletionHandler:*(a1 + 64)];
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 56);
    v9 = SFAdvertisementDescriptionFromPayloadData(*(a1 + 40));
    v11 = 138413058;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "[%@] Received payload request from %@ for %@. Handled: %@", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)didSendPayloadForActivityIdentifier:(id)identifier toDevice:(id)device error:(id)error
{
  identifierCopy = identifier;
  deviceCopy = device;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__SFActivityAdvertiser_didSendPayloadForActivityIdentifier_toDevice_error___block_invoke;
  v14[3] = &unk_1E788B9C0;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = deviceCopy;
  v17 = errorCopy;
  v11 = errorCopy;
  v12 = deviceCopy;
  v13 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __75__SFActivityAdvertiser_didSendPayloadForActivityIdentifier_toDevice_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 32) activityAdvertiser:*(a1 + 32) didSendPayloadForActivityIdentifier:*(a1 + 40) toDevice:*(a1 + 48) error:*(a1 + 56)];
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 48);
    v10 = [*(a1 + 40) UUIDString];
    v11 = 138413058;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEBUG, "[%@] Did send payload to %@ for activity identifier %@. Handled: %@", &v11, 0x2Au);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)pairedDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SFActivityAdvertiser_pairedDevicesChanged___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __45__SFActivityAdvertiser_pairedDevicesChanged___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 32);

    return [v5 activityAdvertiser:? pairedDevicesChangedNotification:?];
  }

  return result;
}

- (id)exportedInterface
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D9DBA0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityPayloadForAdvertisementPayload_command_requestedByDevice_withCompletionHandler_ argumentIndex:2 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_didSendPayloadForActivityIdentifier_toDevice_error_ argumentIndex:1 ofReply:0];
  v3 = MEMORY[0x1E695DFD8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_pairedDevicesChanged_ argumentIndex:0 ofReply:0];

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)remoteObjectInterface
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAECC0];
  v3 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_pairedSFPeerDevicesWithOptions_completionHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_advertiseAdvertisementPayload_options_withErrorHandler_ argumentIndex:1 ofReply:0];

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

void __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = SFAdvertisementDescriptionFromPayloadData(*(a1 + 40));
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_17(&dword_1A9662000, v6, v7, "%@ dispatching request to advertise %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

void __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke_134_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = SFAdvertisementDescriptionFromPayloadData(*(a1 + 40));
  v12 = 138412802;
  v13 = v8;
  OUTLINED_FUNCTION_0_17();
  v14 = v10;
  v15 = a2;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "%@ dispatching advertisement request for %@ failed (%@)", &v12, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

void __62__SFActivityAdvertiser_advertiseAdvertisementPayload_options___block_invoke_134_cold_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = SFAdvertisementDescriptionFromPayloadData(*(a1 + 40));
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_17(&dword_1A9662000, v6, v7, "%@ advertisement request for %@ succeeded", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

@end