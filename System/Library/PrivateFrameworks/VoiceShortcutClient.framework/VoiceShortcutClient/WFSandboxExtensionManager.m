@interface WFSandboxExtensionManager
+ (BOOL)hasExtensionForResourceClassName:(id)a3;
+ (NSSet)allAvailableExtensionResourceClassNames;
- (WFSandboxExtensionManager)init;
- (WFSandboxExtensionManager)initWithExtensionClassesPerResource:(id)a3;
- (id)requestSandboxExtensionForResources:(id)a3 destinationProcessAuditToken:(id *)a4 unauthorizedResources:(id *)a5;
@end

@implementation WFSandboxExtensionManager

- (WFSandboxExtensionManager)init
{
  v3 = &unk_1F2931600;
  v4 = [(WFSandboxExtensionManager *)self initWithExtensionClassesPerResource:&unk_1F2931600];

  return v4;
}

- (id)requestSandboxExtensionForResources:(id)a3 destinationProcessAuditToken:(id *)a4 unauthorizedResources:(id *)a5
{
  v8 = MEMORY[0x1E695DFA8];
  v9 = a3;
  v10 = [v8 set];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __116__WFSandboxExtensionManager_requestSandboxExtensionForResources_destinationProcessAuditToken_unauthorizedResources___block_invoke;
  v18 = &unk_1E7B019D8;
  v19 = self;
  v11 = v10;
  v20 = v11;
  v12 = *&a4->var0[4];
  v21 = *a4->var0;
  v22 = v12;
  v13 = [v9 if_compactMap:&v15];

  if (a5)
  {
    *a5 = [v11 copy];
  }

  return v13;
}

id __116__WFSandboxExtensionManager_requestSandboxExtensionForResources_destinationProcessAuditToken_unauthorizedResources___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) extensionClassesPerResource];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    [*(a1 + 40) addObject:v3];
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  [v5 UTF8String];
  v6 = *(a1 + 64);
  *buf = *(a1 + 48);
  *&buf[16] = v6;
  v7 = sandbox_extension_issue_generic_to_process();
  v8 = v7;
  if (!v7)
  {
    v12 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[WFSandboxExtensionManager requestSandboxExtensionForResources:destinationProcessAuditToken:unauthorizedResources:]_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v3;
      _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_FAULT, "%s Cannot issue sandbox extension for resource %{public}@", buf, 0x16u);
    }

    [*(a1 + 40) addObject:v3];
    goto LABEL_10;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__WFSandboxExtensionManager_requestSandboxExtensionForResources_destinationProcessAuditToken_unauthorizedResources___block_invoke_50;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v7;
  v9 = _Block_copy(aBlock);
  v10 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[WFSandboxExtensionManager requestSandboxExtensionForResources:destinationProcessAuditToken:unauthorizedResources:]_block_invoke_2";
    *&buf[12] = 2114;
    *&buf[14] = v3;
    _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_DEFAULT, "%s Sandbox extension issued for resource %{public}@", buf, 0x16u);
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  v9[2](v9);

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (WFSandboxExtensionManager)initWithExtensionClassesPerResource:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = WFSandboxExtensionManager;
  v5 = [(WFSandboxExtensionManager *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
    extensionClassesPerResource = v5->_extensionClassesPerResource;
    v5->_extensionClassesPerResource = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = [(WFSandboxExtensionManager *)v5 extensionClassesPerResource];
    v10 = [v9 allKeys];
    v11 = [v8 setWithArray:v10];
    extensionResourcesClassNames = v5->_extensionResourcesClassNames;
    v5->_extensionResourcesClassNames = v11;

    v13 = v5;
  }

  return v5;
}

+ (BOOL)hasExtensionForResourceClassName:(id)a3
{
  v3 = a3;
  v4 = &unk_1F2931600;
  v5 = [&unk_1F2931600 objectForKey:v3];

  return v5 != 0;
}

+ (NSSet)allAvailableExtensionResourceClassNames
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = &unk_1F2931600;
  v4 = [&unk_1F2931600 allKeys];
  v5 = [v2 setWithArray:v4];

  return v5;
}

@end