@interface SBFObliterationController
+ (id)sharedInstance;
- (void)_doObliterateWithType:(__CFString *)a3 eraseDataPlan:(BOOL)a4 showingProgress:(BOOL)a5 options:(id)a6;
- (void)markObliterationStart;
- (void)obliterateDataPartitionShowingProgress:(BOOL)a3 skipDataObliteration:(BOOL)a4 eraseDataPlan:(BOOL)a5 reason:(id)a6;
- (void)wipeAndBrickShowingProgress:(BOOL)a3 reason:(id)a4;
@end

@implementation SBFObliterationController

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[SBFObliterationController sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __43__SBFObliterationController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBFObliterationController);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;

  return kdebug_trace();
}

- (void)_doObliterateWithType:(__CFString *)a3 eraseDataPlan:(BOOL)a4 showingProgress:(BOOL)a5 options:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a6;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v9];
  [v10 setObject:a3 forKeyedSubscript:*MEMORY[0x1E69B1A90]];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69B1A78]];

  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v14 = get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr;
  v40 = get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr;
  if (!get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __get_CTServerConnectionCreateWithIdentifierSymbolLoc_block_invoke;
    v35 = &unk_1E807F028;
    v36 = &v37;
    v15 = CoreTelephonyLibrary();
    v38[3] = dlsym(v15, "_CTServerConnectionCreateWithIdentifier");
    get_CTServerConnectionCreateWithIdentifierSymbolLoc_ptr = *(v36[1] + 24);
    v14 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v14)
  {
    [SBFObliterationController _doObliterateWithType:eraseDataPlan:showingProgress:options:];
  }

  v16 = v14(*MEMORY[0x1E695E480], v13, _ResetCTServerConnectionCallback, &v31);

  if (v16)
  {
    if (v7)
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v17 = get_CTServerConnectionEraseAllUserProfilesSymbolLoc_ptr;
      v40 = get_CTServerConnectionEraseAllUserProfilesSymbolLoc_ptr;
      if (!get_CTServerConnectionEraseAllUserProfilesSymbolLoc_ptr)
      {
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __get_CTServerConnectionEraseAllUserProfilesSymbolLoc_block_invoke;
        v35 = &unk_1E807F028;
        v36 = &v37;
        v18 = CoreTelephonyLibrary();
        v19 = dlsym(v18, "_CTServerConnectionEraseAllUserProfiles");
        *(v36[1] + 24) = v19;
        get_CTServerConnectionEraseAllUserProfilesSymbolLoc_ptr = *(v36[1] + 24);
        v17 = v38[3];
      }

      _Block_object_dispose(&v37, 8);
      if (!v17)
      {
        [SBFObliterationController _doObliterateWithType:eraseDataPlan:showingProgress:options:];
      }

      v17(v16);
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v20 = getkCTBasebandSettingsEraseEFSSymbolLoc_ptr;
    v40 = getkCTBasebandSettingsEraseEFSSymbolLoc_ptr;
    if (!getkCTBasebandSettingsEraseEFSSymbolLoc_ptr)
    {
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __getkCTBasebandSettingsEraseEFSSymbolLoc_block_invoke;
      v35 = &unk_1E807F028;
      v36 = &v37;
      v21 = CoreTelephonyLibrary();
      v22 = dlsym(v21, "kCTBasebandSettingsEraseEFS");
      *(v36[1] + 24) = v22;
      getkCTBasebandSettingsEraseEFSSymbolLoc_ptr = *(v36[1] + 24);
      v20 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v20)
    {
      [SBFObliterationController _doObliterateWithType:eraseDataPlan:showingProgress:options:];
    }

    v23 = *v20;
    v24 = *v20;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v25 = get_CTServerConnectionEraseBasebandSettingsSymbolLoc_ptr;
    v40 = get_CTServerConnectionEraseBasebandSettingsSymbolLoc_ptr;
    if (!get_CTServerConnectionEraseBasebandSettingsSymbolLoc_ptr)
    {
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __get_CTServerConnectionEraseBasebandSettingsSymbolLoc_block_invoke;
      v35 = &unk_1E807F028;
      v36 = &v37;
      v26 = CoreTelephonyLibrary();
      v27 = dlsym(v26, "_CTServerConnectionEraseBasebandSettings");
      *(v36[1] + 24) = v27;
      get_CTServerConnectionEraseBasebandSettingsSymbolLoc_ptr = *(v36[1] + 24);
      v25 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v25)
    {
      [SBFObliterationController _doObliterateWithType:eraseDataPlan:showingProgress:options:];
    }

    v25(v16, v23);
    CFRelease(v16);
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v28 = getSOSCCBailFromCircle_BestEffortSymbolLoc_ptr;
  v40 = getSOSCCBailFromCircle_BestEffortSymbolLoc_ptr;
  if (!getSOSCCBailFromCircle_BestEffortSymbolLoc_ptr)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getSOSCCBailFromCircle_BestEffortSymbolLoc_block_invoke;
    v35 = &unk_1E807F028;
    v36 = &v37;
    __getSOSCCBailFromCircle_BestEffortSymbolLoc_block_invoke(&v32);
    v28 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v28)
  {
    [SBFObliterationController _doObliterateWithType:eraseDataPlan:showingProgress:options:];
  }

  v28(5, 0);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v29 = getIDSHardDeregisterSymbolLoc_ptr;
  v40 = getIDSHardDeregisterSymbolLoc_ptr;
  if (!getIDSHardDeregisterSymbolLoc_ptr)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getIDSHardDeregisterSymbolLoc_block_invoke;
    v35 = &unk_1E807F028;
    v36 = &v37;
    __getIDSHardDeregisterSymbolLoc_block_invoke(&v32);
    v29 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v29)
  {
    [SBFObliterationController _doObliterateWithType:eraseDataPlan:showingProgress:options:];
  }

  v29(5);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v30 = getAKUnregisterAllAppleIDsSymbolLoc_ptr;
  v40 = getAKUnregisterAllAppleIDsSymbolLoc_ptr;
  if (!getAKUnregisterAllAppleIDsSymbolLoc_ptr)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getAKUnregisterAllAppleIDsSymbolLoc_block_invoke;
    v35 = &unk_1E807F028;
    v36 = &v37;
    __getAKUnregisterAllAppleIDsSymbolLoc_block_invoke(&v32);
    v30 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v30)
  {
    [SBFObliterationController _doObliterateWithType:eraseDataPlan:showingProgress:options:];
  }

  v30(5);
  Mobile_Obliterate();
}

- (void)wipeAndBrickShowingProgress:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v10[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = *MEMORY[0x1E69B1A88];
    v10[0] = a4;
    v6 = MEMORY[0x1E695DF20];
    v7 = a4;
    v8 = [v6 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v8 = 0;
  }

  [(SBFObliterationController *)self _doObliterateWithType:*MEMORY[0x1E69B1AA0] eraseDataPlan:1 showingProgress:v4 options:v8];
}

- (void)obliterateDataPartitionShowingProgress:(BOOL)a3 skipDataObliteration:(BOOL)a4 eraseDataPlan:(BOOL)a5 reason:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v12 = a6;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (v7)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B1AA8]];
  }

  if (v12)
  {
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69B1A88]];
  }

  [(SBFObliterationController *)self _doObliterateWithType:*MEMORY[0x1E69B1A80] eraseDataPlan:v6 showingProgress:v8 options:v11];
}

- (void)markObliterationStart
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69B1A90];
  v3[0] = *MEMORY[0x1E69B1A98];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  Mobile_Obliterate();
}

- (void)_doObliterateWithType:eraseDataPlan:showingProgress:options:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTError soft_CTServerConnectionEraseBasebandSettings(CTServerConnectionRef, CFStringRef)"}];
  [v0 handleFailureInFunction:v1 file:@"SBFObliterationController.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_doObliterateWithType:eraseDataPlan:showingProgress:options:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCTBasebandSettingsEraseEFS(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBFObliterationController.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_doObliterateWithType:eraseDataPlan:showingProgress:options:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CTError soft_CTServerConnectionEraseAllUserProfiles(CTServerConnectionRef)"];
  [v0 handleFailureInFunction:v1 file:@"SBFObliterationController.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_doObliterateWithType:eraseDataPlan:showingProgress:options:.cold.4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void soft_AKUnregisterAllAppleIDs(uint32_t)"];
  [v0 handleFailureInFunction:v1 file:@"SBFObliterationController.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_doObliterateWithType:eraseDataPlan:showingProgress:options:.cold.5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void soft_IDSHardDeregister(uint32_t)"];
  [v0 handleFailureInFunction:v1 file:@"SBFObliterationController.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_doObliterateWithType:eraseDataPlan:showingProgress:options:.cold.6()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool soft_SOSCCBailFromCircle_BestEffort(uint64_t, CFErrorRef *)"}];
  [v0 handleFailureInFunction:v1 file:@"SBFObliterationController.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_doObliterateWithType:eraseDataPlan:showingProgress:options:.cold.7()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTServerConnectionRef soft_CTServerConnectionCreateWithIdentifier(CFAllocatorRef, CFStringRef, CTServerConnectionCallback, _CTServerConnectionContext *)"}];
  [v0 handleFailureInFunction:v1 file:@"SBFObliterationController.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

@end