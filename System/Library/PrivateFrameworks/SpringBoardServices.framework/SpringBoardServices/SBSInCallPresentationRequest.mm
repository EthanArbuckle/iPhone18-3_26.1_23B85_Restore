@interface SBSInCallPresentationRequest
+ (id)identifiersForRequestedPresentations;
+ (void)notePresentationEndForRequestWithIdentifier:(id)identifier;
+ (void)performPresentationWithConfiguration:(id)configuration completion:(id)completion;
@end

@implementation SBSInCallPresentationRequest

+ (id)identifiersForRequestedPresentations
{
  BSDispatchQueueAssertMain();
  v2 = SBSInCallIdentifiersForRequestedPresentations;

  return v2;
}

+ (void)notePresentationEndForRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  [SBSInCallIdentifiersForRequestedPresentations removeObject:identifierCopy];

  if (![SBSInCallIdentifiersForRequestedPresentations count])
  {
    v4 = SBSInCallIdentifiersForRequestedPresentations;
    SBSInCallIdentifiersForRequestedPresentations = 0;
  }
}

+ (void)performPresentationWithConfiguration:(id)configuration completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = SBLogInCallPresentation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = configurationCopy;
    _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_DEFAULT, "performPresentationWithConfiguration: %{public}@", buf, 0xCu);
  }

  v9 = SBSInCallIdentifiersForRequestedPresentations;
  if (!SBSInCallIdentifiersForRequestedPresentations)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    v11 = SBSInCallIdentifiersForRequestedPresentations;
    SBSInCallIdentifiersForRequestedPresentations = v10;

    v9 = SBSInCallIdentifiersForRequestedPresentations;
  }

  identifier = [configurationCopy identifier];
  [v9 addObject:identifier];

  v13 = MEMORY[0x1E698F498];
  defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
  v15 = +[SBSInCallPresentationServiceInterfaceSpecification identifier];
  v16 = [v13 endpointForMachName:defaultShellMachName service:v15 instance:0];

  v17 = [MEMORY[0x1E698F490] connectionWithEndpoint:v16];
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_create("com.apple.SpringBoardServices.SBSInCallPresentationRequest.connectionQueue", v18);

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke;
  v29[3] = &unk_1E7360370;
  v30 = v19;
  selfCopy = self;
  v20 = v19;
  [v17 configureConnection:v29];
  v21 = SBLogInCallPresentation();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v17;
    _os_log_impl(&dword_19169D000, v21, OS_LOG_TYPE_DEFAULT, "Activating Connection: %{public}@", buf, 0xCu);
  }

  [v17 activate];
  v22 = v17;
  remoteTarget = [v22 remoteTarget];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_13;
  v26[3] = &unk_1E735FEC0;
  v27 = v22;
  v28 = completionCopy;
  v24 = v22;
  v25 = completionCopy;
  [remoteTarget presentWithConfiguration:configurationCopy completion:v26];
}

void __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSInCallPresentationServiceInterfaceSpecification interface];
  [v5 setInterface:v3];

  v4 = +[SBSInCallPresentationServiceInterfaceSpecification serviceQuality];
  [v5 setServiceQuality:v4];

  [v5 setInterfaceTarget:*(a1 + 40)];
  [v5 setTargetQueue:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_55];
  [v5 setInterruptionHandler:&__block_literal_global_8_1];
  [v5 setInvalidationHandler:&__block_literal_global_11_1];
}

void __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogInCallPresentation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogInCallPresentation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_6_cold_1(v2, v3);
  }

  [v2 activate];
}

void __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogInCallPresentation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19_cold_1(v2, v3);
  }
}

void __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_2_14;
    v8 = &unk_1E735F120;
    v10 = v4;
    v9 = v3;
    BSDispatchMain();
  }

  [*(a1 + 32) invalidate];
}

void __80__SBSInCallPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_6_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "Received interruption for connection: %{public}@", &v2, 0xCu);
}

@end