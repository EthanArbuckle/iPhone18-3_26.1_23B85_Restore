@interface TUIKTConversationViewController
- (TUIKTConversationViewControllerDelegate)delegate;
- (id)initForMembers:(id)members options:(id)options;
- (id)specifiers;
- (void)_doneButtonTapped;
- (void)_openWithNavigationController:(id)controller;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)requestPresentationStyleExpanded:(BOOL)expanded;
- (void)specifierProvider:(id)provider didFinishLoadingSpecifier:(id)specifier;
- (void)specifierProvider:(id)provider showViewController:(id)controller;
- (void)specifierProvider:(id)provider willBeginLoadingSpecifier:(id)specifier;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)validateDataclassAccessForProvider:(id)provider specifier:(id)specifier completion:(id)completion;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation TUIKTConversationViewController

- (id)initForMembers:(id)members options:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  membersCopy = members;
  optionsCopy = options;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [TUIKTConversationViewController initForMembers:options:];
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[TUIKTConversationViewController initForMembers:options:]";
    v20 = 2114;
    v21 = membersCopy;
    v22 = 2114;
    v23 = optionsCopy;
    v24 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEFAULT, "%s conversationMembers = %{public}@, options = %{public}@ on %{public}@", &v18, 0x2Au);
  }

  v9 = [(TUIKTConversationViewController *)self init];
  if (!v9)
  {
    goto LABEL_8;
  }

  if ([membersCopy count])
  {
    objc_storeStrong(&v9->_options, options);
    v10 = objc_alloc_init(TUIAnalytics);
    analytics = v9->_analytics;
    v9->_analytics = v10;

    v12 = [[TUIStaticIdentityManager alloc] initWithConversationMembers:membersCopy options:optionsCopy];
    staticIdentityManager = v9->_staticIdentityManager;
    v9->_staticIdentityManager = v12;

    [(TUIStaticIdentityManager *)v9->_staticIdentityManager requestSelfAccountKey];
LABEL_8:
    v14 = v9;
    goto LABEL_14;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [TUIKTConversationViewController initForMembers:options:];
  }

  v15 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_26F50B000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter, no conversation members", &v18, 2u);
  }

  v14 = 0;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __58__TUIKTConversationViewController_initForMembers_options___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__TUIKTConversationViewController_initForMembers_options___block_invoke_40()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)willMoveToParentViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = TUIKTConversationViewController;
  [(TUIKTConversationViewController *)&v9 willMoveToParentViewController:controller];
  navigationController = [(TUIKTConversationViewController *)self navigationController];
  if (navigationController)
  {
    v5 = navigationController;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(TUIStaticIdentityManager *)self->_staticIdentityManager showAccountKeys:0];
      navigationController2 = [(TUIKTConversationViewController *)self navigationController];
      [navigationController2 setModalPresentationStyle:2];
    }
  }
}

- (void)requestPresentationStyleExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v17[1] = *MEMORY[0x277D85DE8];
  navigationController = [(TUIKTConversationViewController *)self navigationController];
  presentationController = [navigationController presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController2 = [(TUIKTConversationViewController *)self navigationController];
    presentationController2 = [navigationController2 presentationController];

    if (expandedCopy)
    {
      [MEMORY[0x277D75A28] largeDetent];
    }

    else
    {
      [MEMORY[0x277D75A28] mediumDetent];
    }
    v10 = ;
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [presentationController2 setDetents:v11];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__TUIKTConversationViewController_requestPresentationStyleExpanded___block_invoke;
    v14[3] = &unk_279DDAEC8;
    v16 = expandedCopy;
    v15 = presentationController2;
    v12 = presentationController2;
    [v12 animateChanges:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __68__TUIKTConversationViewController_requestPresentationStyleExpanded___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    v3 = MEMORY[0x277D76EC8];
  }

  else
  {
    v3 = MEMORY[0x277D76ED0];
  }

  return [v2 setSelectedDetentIdentifier:*v3];
}

uint64_t __49__TUIKTConversationViewController_viewDidAppear___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __52__TUIKTConversationViewController_viewDidDisappear___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __52__TUIKTConversationViewController_viewDidDisappear___block_invoke_72()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_doneButtonTapped
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __52__TUIKTConversationViewController__doneButtonTapped__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __52__TUIKTConversationViewController__doneButtonTapped__block_invoke_82()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    staticIdentitySpecifierProvider = self->_staticIdentitySpecifierProvider;
    if (!staticIdentitySpecifierProvider)
    {
      v7 = [[TUIStaticIdentitySpecifierProvider alloc] initWithStaticIdentityManager:self->_staticIdentityManager analytics:self->_analytics];
      v8 = self->_staticIdentitySpecifierProvider;
      self->_staticIdentitySpecifierProvider = v7;

      [(TUIStaticIdentitySpecifierProvider *)self->_staticIdentitySpecifierProvider setDelegate:self];
      staticIdentitySpecifierProvider = self->_staticIdentitySpecifierProvider;
    }

    specifiers = [(TUIStaticIdentitySpecifierProvider *)staticIdentitySpecifierProvider specifiers];
    [array addObjectsFromArray:specifiers];

    if ([(TUIStaticIdentityManager *)self->_staticIdentityManager accountKeysDisplayed])
    {
      v10 = [[TUIAccountKeySpecifierProvider alloc] initWithStaticIdentityManager:self->_staticIdentityManager analytics:self->_analytics];
      peerAccountKeySpecifierProvider = self->_peerAccountKeySpecifierProvider;
      self->_peerAccountKeySpecifierProvider = v10;

      [(TUIAccountKeySpecifierProvider *)self->_peerAccountKeySpecifierProvider setDelegate:self];
      [(TUIAccountKeySpecifierProvider *)self->_peerAccountKeySpecifierProvider setIsPeerAccount:1];
      [(TUIAccountKeySpecifierProvider *)self->_peerAccountKeySpecifierProvider setIsExpanded:1];
      specifiers2 = [(TUIAccountKeySpecifierProvider *)self->_peerAccountKeySpecifierProvider specifiers];
      [array addObjectsFromArray:specifiers2];

      selfAccountKeySpecifierProvider = self->_selfAccountKeySpecifierProvider;
      if (!selfAccountKeySpecifierProvider)
      {
        v14 = objc_opt_new();
        v15 = self->_selfAccountKeySpecifierProvider;
        self->_selfAccountKeySpecifierProvider = v14;

        [(TUIAccountKeySpecifierProvider *)self->_selfAccountKeySpecifierProvider setIsExpanded:1];
        [(TUIAccountKeySpecifierProvider *)self->_selfAccountKeySpecifierProvider setDelegate:self];
        selfAccountKeySpecifierProvider = self->_selfAccountKeySpecifierProvider;
      }

      specifiers3 = [(TUIAccountKeySpecifierProvider *)selfAccountKeySpecifierProvider specifiers];
      [array addObjectsFromArray:specifiers3];
    }

    [(TUIKTConversationViewController *)self requestPresentationStyleExpanded:[(TUIStaticIdentityManager *)self->_staticIdentityManager accountKeysDisplayed]];
    v17 = [array copy];
    v18 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v17;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)specifierProvider:(id)provider showViewController:(id)controller
{
  providerCopy = provider;
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [(TUIKTConversationViewController *)self presentViewController:controllerCopy animated:1 completion:0];
      }

      else
      {
        [(TUIKTConversationViewController *)self showViewController:controllerCopy sender:providerCopy];
      }

      goto LABEL_5;
    }
  }

  [(TUIKTConversationViewController *)self _openWithNavigationController:controllerCopy];
LABEL_5:
}

- (void)specifierProvider:(id)provider willBeginLoadingSpecifier:(id)specifier
{
  providerCopy = provider;
  specifierCopy = specifier;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [TUIKTConversationViewController specifierProvider:willBeginLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:willBeginLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __79__TUIKTConversationViewController_specifierProvider_willBeginLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)specifierProvider:(id)provider didFinishLoadingSpecifier:(id)specifier
{
  providerCopy = provider;
  specifierCopy = specifier;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [TUIKTConversationViewController specifierProvider:didFinishLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:didFinishLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __79__TUIKTConversationViewController_specifierProvider_didFinishLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated
{
  v11 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [TUIKTConversationViewController reloadSpecifiersForProvider:oldSpecifiers:animated:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = providerCopy;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "Reloading specifiers for provider %@", &v9, 0xCu);
  }

  [(TUIKTConversationViewController *)self reloadSpecifiers];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __86__TUIKTConversationViewController_reloadSpecifiersForProvider_oldSpecifiers_animated___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)validateDataclassAccessForProvider:(id)provider specifier:(id)specifier completion:(id)completion
{
  providerCopy = provider;
  specifierCopy = specifier;
  completionCopy = completion;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [TUIKTConversationViewController validateDataclassAccessForProvider:specifier:completion:];
  }

  v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_DEBUG, "validateDataclassAccessForProvider:specifier:completion not implemented", v11, 2u);
  }
}

uint64_t __91__TUIKTConversationViewController_validateDataclassAccessForProvider_specifier_completion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
  {
    [TUIKTConversationViewController contactViewController:didCompleteWithContact:];
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
  {
    [(TUIKTConversationViewController *)contactCopy contactViewController:v8 didCompleteWithContact:?];
  }

  objc_initWeak(&location, self);
  staticIdentityManager = self->_staticIdentityManager;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke_102;
  v13 = &unk_279DDAB28;
  objc_copyWeak(&v14, &location);
  [(TUIStaticIdentityManager *)staticIdentityManager verifyConversationWithContact:contactCopy completionHandler:&v10];
  [(TUIKTConversationViewController *)self dismissViewControllerAnimated:1 completion:0, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

uint64_t __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke_102(uint64_t a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained analytics];
    v4 = [v2 staticIdentityManager];
    v5 = [v4 conversationVerified];
    v6 = [v2 staticIdentityManager];
    v7 = [v6 sasCodeString];
    v8 = [v2 staticIdentityManager];
    [v3 ktMarkAsVerified:v5 sasCodeGenerated:v7 != 0 publicKeyVisible:{objc_msgSend(v8, "accountKeysDisplayed")}];

    v9 = [v2 staticIdentityManager];
    LODWORD(v4) = [v9 conversationVerified];

    if (v4)
    {
      objc_initWeak(location, v2);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke_105;
      block[3] = &unk_279DDAB28;
      objc_copyWeak(&v13, location);
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
    {
      __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke_102_cold_1();
    }

    v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TUIKTConversationViewController contactViewController:didCompleteWithContact:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", location, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke_105(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
    {
      __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke_105_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[TUIKTConversationViewController contactViewController:didCompleteWithContact:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TUIKTConversationViewController_contactViewController_didCompleteWithContact___block_invoke_2_106()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v7 = [pathCopy section] || objc_msgSend(pathCopy, "row");
  [cellCopy setSeparatorStyle:v7];
}

- (void)_openWithNavigationController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__TUIKTConversationViewController__openWithNavigationController___block_invoke;
  block[3] = &unk_279DDA9E8;
  objc_copyWeak(&v8, &location);
  v7 = controllerCopy;
  v5 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__TUIKTConversationViewController__openWithNavigationController___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:*(a1 + 32)];
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = -2;
    }

    [v3 setModalPresentationStyle:v6];
    [WeakRetained presentViewController:v3 animated:1 completion:0];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_7 != -1)
    {
      __65__TUIKTConversationViewController__openWithNavigationController___block_invoke_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[TUIKTConversationViewController _openWithNavigationController:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __65__TUIKTConversationViewController__openWithNavigationController___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (TUIKTConversationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewDidAppear:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewDidDisappear:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewDidDisappear:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)contactViewController:(os_log_t)log didCompleteWithContact:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[TUIKTConversationViewController contactViewController:didCompleteWithContact:]";
  v6 = 1024;
  v7 = a1 != 0;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&dword_26F50B000, log, OS_LOG_TYPE_DEBUG, "%s contact updated = %d on %{public}@", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

@end