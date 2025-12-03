@interface SYNotesActivationCommandInAppImpl
+ (id)fetchPresenterViewControllerInvocationBlock;
+ (void)_activateWithActivity:(id)activity completion:(id)completion;
+ (void)_launchNotesWithUserActivity:(id)activity completion:(id)completion;
+ (void)activateWithDomainIdentifier:(id)identifier noteIdentifier:(id)noteIdentifier completion:(id)completion;
+ (void)setFetchPresenterViewControllerInvocationBlock:(id)block;
@end

@implementation SYNotesActivationCommandInAppImpl

+ (id)fetchPresenterViewControllerInvocationBlock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x22AA6A360](__fetchPresenterViewControllerInvocationBlock);
  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)setFetchPresenterViewControllerInvocationBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [blockCopy copy];
  v6 = __fetchPresenterViewControllerInvocationBlock;
  __fetchPresenterViewControllerInvocationBlock = v5;

  objc_sync_exit(selfCopy);
}

+ (void)activateWithDomainIdentifier:(id)identifier noteIdentifier:(id)noteIdentifier completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = 0;
  if (identifier && noteIdentifier)
  {
    v17[0] = identifier;
    v10 = MEMORY[0x277CBEA60];
    noteIdentifierCopy = noteIdentifier;
    identifierCopy = identifier;
    v13 = [v10 arrayWithObjects:v17 count:1];
    v16 = noteIdentifierCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];

    v9 = SYMakeEditNoteUserActivity(v13, v14);
  }

  [self _activateWithActivity:v9 completion:completionCopy];

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)_activateWithActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [__fetchPresenterViewControllerInvocationBlock copy];
  v10 = __fetchPresenterViewControllerInvocationBlock;
  __fetchPresenterViewControllerInvocationBlock = 0;

  objc_sync_exit(selfCopy);
  if (SYIsPhone() && (SYIsQuickNoteOnPhoneEnabled() & 1) != 0)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if ([bundleIdentifier isEqual:@"com.apple.springboard"])
    {

LABEL_10:
      [selfCopy _launchNotesWithUserActivity:activityCopy completion:completionCopy];
      goto LABEL_15;
    }

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v17 = [bundleIdentifier2 isEqual:@"com.apple.BacklinkIndicator"];

    if (v17)
    {
      goto LABEL_10;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__SYNotesActivationCommandInAppImpl__activateWithActivity_completion___block_invoke;
    v19[3] = &unk_27856C4F8;
    v21 = v9;
    v20 = activityCopy;
    v22 = completionCopy;
    v18 = MEMORY[0x22AA6A360](v19);
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v18[2](v18);
    }

    else
    {
      dispatch_async(MEMORY[0x277D85CD0], v18);
    }
  }

  else
  {
    v13 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SYNotesActivationCommandSynapseImpl _activateWithActivity:v13 completion:?];
    }

    if (completionCopy)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.synapse" code:-127 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v14);
    }
  }

LABEL_15:
}

void __70__SYNotesActivationCommandInAppImpl__activateWithActivity_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = (*(v2 + 16))();
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 32) _createUserActivityDataWithSaving:0 options:MEMORY[0x277CBEC10] error:0];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getICSystemPaperSceneViewControllerClass_softClass;
  v13 = getICSystemPaperSceneViewControllerClass_softClass;
  if (!getICSystemPaperSceneViewControllerClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getICSystemPaperSceneViewControllerClass_block_invoke;
    v9[3] = &unk_27856B3C8;
    v9[4] = &v10;
    __getICSystemPaperSceneViewControllerClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SYNotesActivationCommandInAppImpl__activateWithActivity_completion___block_invoke_2;
  v7[3] = &unk_27856C208;
  v8 = *(a1 + 48);
  [v5 presentSystemPaperWithUserActivityData:v4 presenter:v3 completion:v7];
}

+ (void)_launchNotesWithUserActivity:(id)activity completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__SYNotesActivationCommandInAppImpl__launchNotesWithUserActivity_completion___block_invoke;
  v21[3] = &unk_27856BFE0;
  v7 = activityCopy;
  v22 = v7;
  v8 = completionCopy;
  v23 = v8;
  v9 = MEMORY[0x22AA6A360](v21);
  if (v7)
  {
    v20 = 0;
    v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.mobilenotes" allowPlaceholder:1 error:&v20];
    v11 = v20;
    if (v11)
    {
      v12 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v11;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_225901000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create System Notes application record with error: %@, to launch for activity: %@", buf, 0x16u);
      }
    }

    if (v10)
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __77__SYNotesActivationCommandInAppImpl__launchNotesWithUserActivity_completion___block_invoke_10;
      v18[3] = &unk_27856B738;
      v19 = v9;
      [defaultWorkspace openUserActivity:v7 usingApplicationRecord:v10 configuration:0 completionHandler:v18];
    }

    else if (v8)
    {
      (v9)[2](v9, 0, v11);
    }
  }

  else
  {
    defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__SYNotesActivationCommandInAppImpl__launchNotesWithUserActivity_completion___block_invoke_2;
    v16[3] = &unk_27856B738;
    v17 = v9;
    [defaultWorkspace2 openApplicationWithBundleIdentifier:@"com.apple.mobilenotes" usingConfiguration:0 completionHandler:v16];

    v11 = v17;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __77__SYNotesActivationCommandInAppImpl__launchNotesWithUserActivity_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Error received requesting System Notes presentation: %@, activity: %@", &v11, 0x16u);
    }
  }

  v8 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    LODWORD(v12) = a2;
    _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "System Notes presentation request succeeded: %d", &v11, 8u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end