@interface SBSceneRenderingEnvironmentManager
- (SBSceneRenderingEnvironmentManager)init;
- (SBSceneRenderingEnvironmentManager)initWithBKSInterface:(id)interface;
- (id)registerParticipantForSceneWithIdentifier:(id)identifier displayConfiguration:(id)configuration;
- (void)_cleanupForPotentiallyInvalidAssertionForSanitizedDisplayUUID:(id)d;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
@end

@implementation SBSceneRenderingEnvironmentManager

- (SBSceneRenderingEnvironmentManager)init
{
  v3 = objc_alloc_init(SBSceneRenderingEnviromentManagerDefaultBKSInterface);
  v4 = [(SBSceneRenderingEnvironmentManager *)self initWithBKSInterface:v3];

  return v4;
}

- (SBSceneRenderingEnvironmentManager)initWithBKSInterface:(id)interface
{
  interfaceCopy = interface;
  if (!interfaceCopy)
  {
    [(SBSceneRenderingEnvironmentManager *)a2 initWithBKSInterface:?];
  }

  v19.receiver = self;
  v19.super_class = SBSceneRenderingEnvironmentManager;
  v7 = [(SBSceneRenderingEnvironmentManager *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bksInterface, interface);
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    displayUUIDToAssertion = v8->_displayUUIDToAssertion;
    v8->_displayUUIDToAssertion = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    displayUUIDToIdentifier = v8->_displayUUIDToIdentifier;
    v8->_displayUUIDToIdentifier = v11;

    objc_initWeak(&location, v8);
    v13 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v17, &location);
    v14 = BSLogAddStateCaptureBlockWithTitle();
    stateDumpHandle = v8->_stateDumpHandle;
    v8->_stateDumpHandle = v14;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __59__SBSceneRenderingEnvironmentManager_initWithBKSInterface___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x277CF0C08];
    v3 = [MEMORY[0x277CF0C10] debugStyle];
    v4 = [v2 descriptionForRootObject:WeakRetained withStyle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_displayUUIDToAssertion enumerateKeysAndObjectsUsingBlock:&__block_literal_global_268];
  v3.receiver = self;
  v3.super_class = SBSceneRenderingEnvironmentManager;
  [(SBSceneRenderingEnvironmentManager *)&v3 dealloc];
}

- (id)registerParticipantForSceneWithIdentifier:(id)identifier displayConfiguration:(id)configuration
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  configurationCopy = configuration;
  if (!identifierCopy)
  {
    [SBSceneRenderingEnvironmentManager registerParticipantForSceneWithIdentifier:a2 displayConfiguration:self];
  }

  if (!configurationCopy)
  {
    [SBSceneRenderingEnvironmentManager registerParticipantForSceneWithIdentifier:a2 displayConfiguration:self];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  hardwareIdentifier = [configurationCopy hardwareIdentifier];
  hardwareIdentifier2 = [configurationCopy hardwareIdentifier];
  v9 = hardwareIdentifier2;
  v10 = @"main";
  if (hardwareIdentifier2)
  {
    v10 = hardwareIdentifier2;
  }

  v11 = v10;

  v12 = [(NSMutableDictionary *)self->_displayUUIDToAssertion objectForKey:v11];
  if (!v12)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v14 = SBLogShellScene();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [uUID UUIDString];
      *buf = 138543618;
      v34 = uUIDString;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Generated scene rendering environment identifier %{public}@ for displayUUID %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v16 = MEMORY[0x277CF0BD0];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBSceneRenderingEnvironmentManager-%@", v11];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __101__SBSceneRenderingEnvironmentManager_registerParticipantForSceneWithIdentifier_displayConfiguration___block_invoke;
    v28[3] = &unk_2783B46A0;
    objc_copyWeak(&v32, buf);
    v18 = uUID;
    v29 = v18;
    v30 = hardwareIdentifier;
    v19 = v11;
    v31 = v19;
    v12 = [v16 assertionWithIdentifier:v17 stateDidChangeHandler:v28];

    v20 = SBLogShellScene();
    [v12 setLog:v20];

    [(NSMutableDictionary *)self->_displayUUIDToIdentifier setObject:v18 forKey:v19];
    [(NSMutableDictionary *)self->_displayUUIDToAssertion setObject:v12 forKey:v19];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  v21 = [v12 acquireForReason:identifierCopy];
  v22 = [(NSMutableDictionary *)self->_displayUUIDToIdentifier objectForKey:v11];
  uUIDString2 = [v22 UUIDString];

  if (!uUIDString2)
  {
    [(SBSceneRenderingEnvironmentManager *)&self->_displayUUIDToIdentifier registerParticipantForSceneWithIdentifier:a2 displayConfiguration:self, v11];
  }

  v24 = [[SBSceneRenderingEnvironmentParticipant alloc] initWithRenderingEnvironmentIdentifier:uUIDString2 assertion:v21];

  return v24;
}

void __101__SBSceneRenderingEnvironmentManager_registerParticipantForSceneWithIdentifier_displayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([a2 isActive])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v4 = WeakRetained[1];
      v5 = MEMORY[0x277CBEB98];
      v10 = WeakRetained;
      v6 = [*(a1 + 32) UUIDString];
      v7 = [v5 setWithObject:v6];
      [v4 setDisplayIdentifiers:v7 forDisplayUUID:*(a1 + 40)];

      WeakRetained = v10;
    }
  }

  else
  {
    v8 = SBLogShellScene();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling cleanup of scene rendering environments for displayUUID %{public}@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__SBSceneRenderingEnvironmentManager_registerParticipantForSceneWithIdentifier_displayConfiguration___block_invoke_31;
    block[3] = &unk_2783A9CE8;
    objc_copyWeak(&v13, (a1 + 56));
    v12 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v13);
  }
}

void __101__SBSceneRenderingEnvironmentManager_registerParticipantForSceneWithIdentifier_displayConfiguration___block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _cleanupForPotentiallyInvalidAssertionForSanitizedDisplayUUID:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_cleanupForPotentiallyInvalidAssertionForSanitizedDisplayUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(NSMutableDictionary *)self->_displayUUIDToAssertion objectForKey:dCopy];
  isActive = [v5 isActive];
  v7 = SBLogShellScene();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isActive)
  {
    if (v8)
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "No cleanup of scene rendering environment for displayUUID %{public}@ necessary - it is still active", &v11, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Cleaning up scene rendering environment for displayUUID %{public}@", &v11, 0xCu);
    }

    v9 = dCopy;
    if ([@"main" isEqualToString:v9])
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v7 = v10;

    [(SBSceneRenderingEnvironmentManagerBKSInterface *)self->_bksInterface setDisplayIdentifiers:0 forDisplayUUID:v7];
    [v5 invalidate];
    [(NSMutableDictionary *)self->_displayUUIDToAssertion removeObjectForKey:v9];
    [(NSMutableDictionary *)self->_displayUUIDToIdentifier removeObjectForKey:v9];
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBSceneRenderingEnvironmentManager_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

- (void)initWithBKSInterface:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneRenderingEnvironmentManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"bksInterface"}];
}

- (void)registerParticipantForSceneWithIdentifier:(uint64_t)a1 displayConfiguration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneRenderingEnvironmentManager.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)registerParticipantForSceneWithIdentifier:(uint64_t)a1 displayConfiguration:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneRenderingEnvironmentManager.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"displayConfiguration"}];
}

- (void)registerParticipantForSceneWithIdentifier:(uint64_t)a3 displayConfiguration:(uint64_t)a4 .cold.3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSceneRenderingEnvironmentManager.m" lineNumber:118 description:{@"environment identifier is nil for sanitizedDisplayUUID %@ existing identifiers: %@", a4, *a1}];
}

@end