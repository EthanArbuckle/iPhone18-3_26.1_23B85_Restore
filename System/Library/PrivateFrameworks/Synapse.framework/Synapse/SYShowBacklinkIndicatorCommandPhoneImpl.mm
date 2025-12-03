@interface SYShowBacklinkIndicatorCommandPhoneImpl
- (SYShowBacklinkIndicatorCommandPhoneImpl)initWithDomainIdentifiers:(id)identifiers linkIdentifiers:(id)linkIdentifiers;
- (void)runWithCompletion:(id)completion;
@end

@implementation SYShowBacklinkIndicatorCommandPhoneImpl

- (SYShowBacklinkIndicatorCommandPhoneImpl)initWithDomainIdentifiers:(id)identifiers linkIdentifiers:(id)linkIdentifiers
{
  identifiersCopy = identifiers;
  linkIdentifiersCopy = linkIdentifiers;
  v12.receiver = self;
  v12.super_class = SYShowBacklinkIndicatorCommandPhoneImpl;
  v8 = [(SYShowBacklinkIndicatorCommandPhoneImpl *)&v12 init];
  if (v8)
  {
    v9 = SYMakeUserActivity(@"com.apple.notes.activity.show-backlink", identifiersCopy, linkIdentifiersCopy);
    userActivity = v8->_userActivity;
    v8->_userActivity = v9;
  }

  return v8;
}

- (void)runWithCompletion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke;
  v36[3] = &unk_27856C208;
  v5 = completionCopy;
  v37 = v5;
  v6 = MEMORY[0x22AA6A360](v36);
  if (SYIsQuickNoteOnPhoneEnabled())
  {
    v35 = 0;
    v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.BacklinkIndicator" allowPlaceholder:1 error:&v35];
    v8 = v35;
    if (v8)
    {
      v9 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        userActivity = self->_userActivity;
        *buf = 138412802;
        *&buf[4] = @"com.apple.BacklinkIndicator";
        *&buf[12] = 2112;
        *&buf[14] = userActivity;
        *&buf[22] = 2112;
        v45 = v8;
        _os_log_error_impl(&dword_225901000, v9, OS_LOG_TYPE_ERROR, "Failed to find record for %@ to show backlink indicator for activity: %@, error: %@", buf, 0x20u);
      }

      v6[2](v6);
      goto LABEL_32;
    }

    if ([(NSUserActivity *)self->_userActivity _syIsShowBacklinkIndicatorUserActivity])
    {
LABEL_10:
      v11 = objc_alloc_init(MEMORY[0x277CC1F00]);
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v12 = getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_ptr;
      v41 = getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_ptr;
      if (!getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_block_invoke;
        v45 = &unk_27856B3C8;
        v46 = &v38;
        __getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_block_invoke(buf);
        v12 = v39[3];
      }

      _Block_object_dispose(&v38, 8);
      if (!v12)
      {
        [SYShowBacklinkIndicatorCommandPhoneImpl runWithCompletion:];
      }

      v42 = *v12;
      v43 = MEMORY[0x277CBEC38];
      v13 = MEMORY[0x277CBEAC0];
      v14 = v42;
      v15 = [v13 dictionaryWithObjects:&v43 forKeys:&v42 count:1];

      [v11 setFrontBoardOptions:v15];
      objc_initWeak(buf, self);
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v17 = self->_userActivity;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke_8;
      v31[3] = &unk_27856C230;
      objc_copyWeak(&v33, buf);
      v32 = v6;
      [defaultWorkspace openUserActivity:v17 usingApplicationRecord:v7 configuration:v11 completionHandler:v31];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);

      goto LABEL_32;
    }

    v30 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:@"com.apple.BacklinkIndicator"];
    v34 = 0;
    v18 = [MEMORY[0x277D46F48] handleForPredicate:v30 error:&v34];
    v19 = v34;
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18 == 0;
    }

    v21 = v20;
    v29 = v21;
    if (!v20)
    {
      goto LABEL_25;
    }

    v22 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(SYShowBacklinkIndicatorCommandPhoneImpl *)@"com.apple.BacklinkIndicator" runWithCompletion:v19, v22];
    }

    if (v18)
    {
LABEL_25:
      currentState = [v18 currentState];
      isRunning = [currentState isRunning];

      if (isRunning)
      {
        if (!v29)
        {

          goto LABEL_10;
        }
      }

      else
      {
        v25 = os_log_create("com.apple.synapse", "");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = self->_userActivity;
          *buf = 138412290;
          *&buf[4] = v26;
          _os_log_impl(&dword_225901000, v25, OS_LOG_TYPE_INFO, "Backlink indicator isn't running. Skip request to hide the backlink indicator for activity: %@", buf, 0xCu);
        }
      }
    }

    v6[2](v6);

LABEL_32:
    goto LABEL_33;
  }

  v10 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", buf, 2u);
  }

  v6[2](v6);
LABEL_33:

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke_8(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke_8_cold_1(WeakRetained, v5, v7);
      }
    }

    if (a2)
    {
      v8 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = WeakRetained[1];
        v10 = [v9 userInfo];
        v12 = 138412802;
        v13 = @"com.apple.BacklinkIndicator";
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_INFO, "Successfully invoked %@ to show or hide backlink indicator for activity: %@, userInfo: %@", &v12, 0x20u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)runWithCompletion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Failed to create handle for process: %@, error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)runWithCompletion:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyActivateSuspended(void)"];
  [v0 handleFailureInFunction:v1 file:@"SYShowBacklinkIndicatorCommandPhoneImpl.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke_8_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v5 = 138412802;
  v6 = @"com.apple.BacklinkIndicator";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Failed to invoke %@ to show backlink indicator for activity: %@, error: %@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end