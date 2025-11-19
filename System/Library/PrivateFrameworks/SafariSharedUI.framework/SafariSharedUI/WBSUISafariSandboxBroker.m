@interface WBSUISafariSandboxBroker
@end

@implementation WBSUISafariSandboxBroker

void __92__WBSUISafariSandboxBroker_loadLinkPresentationMetdataForMessageWithGUID_completionHandler___block_invoke_34_cold_1(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696B098];
  v6 = a1;
  [a2 size];
  *a3 = v7;
  a3[1] = v8;
  v9 = [v5 valueWithBytes:a3 objCType:"{CGSize=dd}"];
  v10 = 138543362;
  v11 = v9;
  _os_log_fault_impl(&dword_1C6968000, v6, OS_LOG_TYPE_FAULT, "IMCore platform image too large: %{public}@", &v10, 0xCu);
}

@end