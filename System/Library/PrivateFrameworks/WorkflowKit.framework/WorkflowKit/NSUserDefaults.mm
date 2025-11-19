@interface NSUserDefaults
@end

@implementation NSUserDefaults

void __55__NSUserDefaults_Workflow__systemShortcutsUserDefaults__block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x1E69E0FB8]];
  v2 = systemShortcutsUserDefaults_systemShortcutsUserDefaults;
  systemShortcutsUserDefaults_systemShortcutsUserDefaults = v1;

  v3 = systemShortcutsUserDefaults_systemShortcutsUserDefaults;
  v6[0] = @"WFSiriShortcutsMultipageDisambiguationEnabled";
  v6[1] = @"IntentsHandledBySiriOverride";
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = &unk_1F4A9AF90;
  v6[2] = @"WFShortcutsToastedBannerAutoCollapseDuration";
  v6[3] = @"AppKitEditor";
  v7[2] = &unk_1F4A9A120;
  v7[3] = MEMORY[0x1E695E118];
  v6[4] = @"UIKitEditor";
  v7[4] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];
  [v3 registerDefaults:v4];

  v5 = *MEMORY[0x1E69E9840];
}

void __48__NSUserDefaults_Workflow__workflowUserDefaults__block_invoke()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x1E6997190]];
  v2 = workflowUserDefaults_workflowUserDefaults;
  workflowUserDefaults_workflowUserDefaults = v1;

  v3 = workflowUserDefaults_workflowUserDefaults;
  v8[0] = @"WFEmailAutomationEnabled";
  v8[1] = @"WFMessagesAutomationEnabled";
  v9[0] = MEMORY[0x1E695E118];
  v9[1] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 registerDefaults:v4];

  if (([workflowUserDefaults_workflowUserDefaults BOOLForKey:@"WFActionDefaultFavoritesAddedKey"] & 1) == 0)
  {
    [workflowUserDefaults_workflowUserDefaults setBool:1 forKey:@"WFActionDefaultFavoritesAddedKey"];
    v5 = [workflowUserDefaults_workflowUserDefaults arrayForKey:@"WFActionFavorites"];
    v6 = v5;
    if (!v5 || ![v5 count])
    {
      [workflowUserDefaults_workflowUserDefaults setValue:&unk_1F4A9AF78 forKey:@"WFActionFavorites"];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __49__NSUserDefaults_Sync__syncShortcutsUserDefaults__block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x1E69E0FB8]];
  v2 = syncShortcutsUserDefaults_syncShortcutsUserDefaults;
  syncShortcutsUserDefaults_syncShortcutsUserDefaults = v1;

  v3 = syncShortcutsUserDefaults_syncShortcutsUserDefaults;
  v6[0] = @"WFSyncEventLoggingEnabled";
  v6[1] = @"WFSyncUnavailableMessage";
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E110];
  v6[2] = @"WFSyncUnavailableMessageDismissedByUser";
  v6[3] = @"WFSyncUnavailableMessageCount";
  v7[2] = MEMORY[0x1E695E110];
  v7[3] = &unk_1F4A9AD38;
  v6[4] = @"WFAddEligibleShortcutToWatchFolderEnabled";
  v7[4] = MEMORY[0x1E695E110];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];
  [v3 registerDefaults:v4];

  v5 = *MEMORY[0x1E69E9840];
}

void __53__NSUserDefaults_Workflow__siriAssistantUserDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.assistant"];
  v1 = siriAssistantUserDefaults_siriAssistantUserDefaults;
  siriAssistantUserDefaults_siriAssistantUserDefaults = v0;
}

@end