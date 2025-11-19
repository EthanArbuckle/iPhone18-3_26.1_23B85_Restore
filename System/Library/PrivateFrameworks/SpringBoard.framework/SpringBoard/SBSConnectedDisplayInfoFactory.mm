@interface SBSConnectedDisplayInfoFactory
- (id)_effectiveSettingsForDisplayConfiguration:(id)a3 defaults:(id)a4;
- (id)connectedDisplayInfoForDisplayConfiguration:(id)a3 externalDisplayDefaults:(id)a4;
- (unint64_t)_supportedScalesForDisplayConfiguration:(id)a3 defaults:(id)a4 error:(id *)a5;
@end

@implementation SBSConnectedDisplayInfoFactory

- (id)connectedDisplayInfoForDisplayConfiguration:(id)a3 externalDisplayDefaults:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hardwareIdentifier];
  v9 = [MEMORY[0x277CD9E40] displays];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __102__SBSConnectedDisplayInfoFactory_connectedDisplayInfoForDisplayConfiguration_externalDisplayDefaults___block_invoke;
  v27[3] = &unk_2783BF6A0;
  v25 = v8;
  v28 = v25;
  v10 = [v9 bs_firstObjectPassingTest:v27];

  v11 = objc_alloc(MEMORY[0x277D66BB0]);
  v12 = [v7 arrangementEdge];
  [v7 arrangementOffset];
  v26 = [v11 initWithDisplayIdentifier:0 edge:v12 offset:?];
  if (v10)
  {
    v13 = [(SBSConnectedDisplayInfoFactory *)self _supportedScalesForDisplayConfiguration:v6 defaults:v7 error:0];
    v14 = [(SBSConnectedDisplayInfoFactory *)self _effectiveSettingsForDisplayConfiguration:v6 defaults:v7];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = [v10 immutableCopy];
  v16 = [v15 productName];
  if (![(__CFString *)v16 length])
  {
    v17 = [v6 deviceName];

    if ([(__CFString *)v17 length])
    {
      v16 = v17;
    }

    else
    {
      v18 = SBLogDisplayControlling();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        v30 = v15;
        v31 = 2114;
        v32 = v10;
        v33 = 2114;
        v34 = v6;
        _os_log_fault_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_FAULT, "failed to retrieve productName and deviceName for display. immutableCADisplay: %{public}@; caDisplay: %{public}@; displayConfiguration: %{public}@", buf, 0x20u);
      }

      v16 = @"External Display";
    }
  }

  v19 = objc_alloc(MEMORY[0x277D66A48]);
  v20 = [v6 deviceName];
  [v6 bounds];
  v23 = [v19 initWithIdentifier:v25 deviceName:v20 displayName:v16 size:objc_msgSend(v7 mirrored:"isMirroringEnabled") supportedScales:v13 displayModeSettings:v14 arrangement:{v21, v22, v26}];

  return v23;
}

uint64_t __102__SBSConnectedDisplayInfoFactory_connectedDisplayInfoForDisplayConfiguration_externalDisplayDefaults___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (unint64_t)_supportedScalesForDisplayConfiguration:(id)a3 defaults:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSConnectedDisplayInfoFactory _supportedScalesForDisplayConfiguration:defaults:error:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBSConnectedDisplayInfoFactory _supportedScalesForDisplayConfiguration:defaults:error:];
LABEL_3:
  v10 = [MEMORY[0x277D65DB0] withDisplay:v7];
  v11 = [v10 supportedScales];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D66FB0];
    v22 = @"displayHardwareIdentifier";
    v15 = [v7 hardwareIdentifier];
    v16 = v15;
    v17 = @"<nil>";
    if (v15)
    {
      v17 = v15;
    }

    v23[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v12 = [v13 errorWithDomain:v14 code:2 userInfo:v18];

    if (a5 && v12)
    {
      v19 = SBLogDisplayControlling();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SBSConnectedDisplayInfoFactory _supportedScalesForDisplayConfiguration:v12 defaults:v19 error:?];
      }

      v20 = v12;
      *a5 = v12;
    }
  }

  return v11;
}

- (id)_effectiveSettingsForDisplayConfiguration:(id)a3 defaults:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSConnectedDisplayInfoFactory _effectiveSettingsForDisplayConfiguration:defaults:];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [SBSConnectedDisplayInfoFactory _effectiveSettingsForDisplayConfiguration:defaults:];
LABEL_3:
  v8 = [v7 displayModeSettingsForDisplay:v5];

  return v8;
}

- (void)_supportedScalesForDisplayConfiguration:defaults:error:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayConfiguration" object:? file:? lineNumber:? description:?];
}

- (void)_supportedScalesForDisplayConfiguration:defaults:error:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"defaults" object:? file:? lineNumber:? description:?];
}

- (void)_supportedScalesForDisplayConfiguration:(uint64_t)a1 defaults:(NSObject *)a2 error:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "error:%{public}@", &v2, 0xCu);
}

- (void)_effectiveSettingsForDisplayConfiguration:defaults:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayConfiguration" object:? file:? lineNumber:? description:?];
}

- (void)_effectiveSettingsForDisplayConfiguration:defaults:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"defaults" object:? file:? lineNumber:? description:?];
}

@end