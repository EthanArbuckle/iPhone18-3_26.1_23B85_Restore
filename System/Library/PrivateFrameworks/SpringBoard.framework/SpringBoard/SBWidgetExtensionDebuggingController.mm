@interface SBWidgetExtensionDebuggingController
- (SBWidgetExtensionDebuggingController)initWithWorkspace:(id)workspace toolService:(id)service homeScreenDataSource:(id)source controlCenterDataSource:(id)dataSource;
- (void)_descriptorForWidgetFromExtension:(id)extension forRequestedKind:(id)kind requestedWidgetFamily:(int64_t)family completion:(id)completion;
- (void)_reallyFindDescriptorForWidgetFromExtension:(id)extension forRequestedKind:(id)kind requestedWidgetFamily:(int64_t)family completion:(id)completion;
- (void)launchExtensionWithBundleID:(id)d options:(id)options completion:(id)completion;
@end

@implementation SBWidgetExtensionDebuggingController

- (SBWidgetExtensionDebuggingController)initWithWorkspace:(id)workspace toolService:(id)service homeScreenDataSource:(id)source controlCenterDataSource:(id)dataSource
{
  workspaceCopy = workspace;
  serviceCopy = service;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v24.receiver = self;
  v24.super_class = SBWidgetExtensionDebuggingController;
  v15 = [(SBWidgetExtensionDebuggingController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workspace, workspace);
    objc_storeStrong(&v16->_homeScreenDataSource, source);
    objc_storeStrong(&v16->_controlCenterDataSource, dataSource);
    objc_storeStrong(&v16->_toolService, service);
    v17 = objc_alloc(MEMORY[0x277CFA3C0]);
    visible = [MEMORY[0x277CFA390] visible];
    visible2 = [MEMORY[0x277CFA218] visible];
    v20 = [v17 initWithWidgetsPredicate:visible controlsPredicate:visible2];

    v21 = [objc_alloc(MEMORY[0x277CFA3B8]) initWithOptions:v20];
    extensionProvider = v16->_extensionProvider;
    v16->_extensionProvider = v21;

    [(SBMainWorkspace *)v16->_workspace registerHandler:v16 forExtensionPoint:@"com.apple.widgetkit-extension"];
  }

  return v16;
}

- (void)launchExtensionWithBundleID:(id)d options:(id)options completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v11 = SBLogWidgets();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = dCopy;
    v25 = 2112;
    v26 = optionsCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAvocadoDebuggingController launching avocado extension: %@ options: %@", buf, 0x16u);
  }

  v12 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277CFA1B0] ofType:objc_opt_class()];
  v13 = [optionsCopy bs_safeObjectForKey:*MEMORY[0x277CFA1A0] ofType:objc_opt_class()];
  v14 = CHSWidgetFamilyFromString();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__SBWidgetExtensionDebuggingController_launchExtensionWithBundleID_options_completion___block_invoke;
  v18[3] = &unk_2783C4C18;
  v19 = v12;
  v20 = dCopy;
  selfCopy = self;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = dCopy;
  v17 = v12;
  [(SBWidgetExtensionDebuggingController *)self _descriptorForWidgetFromExtension:v16 forRequestedKind:v17 requestedWidgetFamily:v14 completion:v18];
}

void __87__SBWidgetExtensionDebuggingController_launchExtensionWithBundleID_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [v5 widgetDescriptorToUse];
  v8 = [v5 controlDescriptorToUse];
  v9 = v8;
  if (v7 | v8)
  {
    if (v7)
    {
      v11 = SBLogWidgets();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v7;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "DEBUG: descriptor chosen: %@", buf, 0xCu);
      }

      v12 = *(*(a1 + 48) + 32);
      v13 = [v5 widgetFamily];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __87__SBWidgetExtensionDebuggingController_launchExtensionWithBundleID_options_completion___block_invoke_67;
      v19[3] = &unk_2783A9FC8;
      v20 = *(a1 + 56);
      [v12 launchWidget:v7 widgetFamily:v13 completion:v19];
      v14 = v20;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_14;
      }

      v15 = SBLogWidgets();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "DEBUG: descriptor chosen: %@", buf, 0xCu);
      }

      v16 = *(*(a1 + 48) + 40);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __87__SBWidgetExtensionDebuggingController_launchExtensionWithBundleID_options_completion___block_invoke_69;
      v17[3] = &unk_2783A9FC8;
      v18 = *(a1 + 56);
      [v16 launchControl:v9 completion:v17];
      v14 = v18;
    }

    goto LABEL_14;
  }

  v10 = SBLogWidgets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __87__SBWidgetExtensionDebuggingController_launchExtensionWithBundleID_options_completion___block_invoke_cold_1(a1, v6, v10);
  }

  (*(*(a1 + 56) + 16))();
LABEL_14:
}

- (void)_descriptorForWidgetFromExtension:(id)extension forRequestedKind:(id)kind requestedWidgetFamily:(int64_t)family completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  kindCopy = kind;
  completionCopy = completion;
  if (!extensionCopy)
  {
    [SBWidgetExtensionDebuggingController _descriptorForWidgetFromExtension:a2 forRequestedKind:self requestedWidgetFamily:? completion:?];
  }

  v14 = SBLogWidgets();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = extensionCopy;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Requesting chronod fetch descriptors for: %{public}@", buf, 0xCu);
  }

  toolService = self->_toolService;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __124__SBWidgetExtensionDebuggingController__descriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke;
  v19[3] = &unk_2783C4C68;
  v19[4] = self;
  v20 = extensionCopy;
  v21 = kindCopy;
  v22 = completionCopy;
  familyCopy = family;
  v16 = kindCopy;
  v17 = completionCopy;
  v18 = extensionCopy;
  [(CHSToolSupportService *)toolService reloadDescriptorsForExtensionBundleIdentifier:v18 completion:v19];
}

void __124__SBWidgetExtensionDebuggingController__descriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 56);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v5;
  v9 = v6;
  v7 = v3;
  BSDispatchMain();
}

void __124__SBWidgetExtensionDebuggingController__descriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = SBLogWidgets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Couldn't find descriptors -- looking locally in process as a last resort", buf, 2u);
    }

    v4 = [*(*(a1 + 40) + 24) widgetExtensionContainerForExtensionBundleIdentifier:*(a1 + 48)];
    v5 = [v4 localExtensions];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __124__SBWidgetExtensionDebuggingController__descriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_81;
    v17 = &unk_2783B62D0;
    v18 = *(a1 + 48);
    v2 = [v5 bs_firstObjectPassingTest:&v14];
  }

  v6 = [v2 orderedDescriptors];
  v7 = [v2 orderedControlDescriptors];
  v8 = SBLogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 count];
    v10 = [v7 count];
    *buf = 134218240;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu widget descriptors, %lu control descriptors", buf, 0x16u);
  }

  if (v2 && ([v6 count] || objc_msgSend(v7, "count")))
  {
    [*(a1 + 40) _reallyFindDescriptorForWidgetFromExtension:v2 forRequestedKind:*(a1 + 56) requestedWidgetFamily:*(a1 + 72) completion:*(a1 + 64)];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get descriptors for extensionBundleID (%@)", *(a1 + 48), v14, v15, v16, v17];
    v12 = SBLogWidgets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SBWorkspaceDestroyApplicationSceneHandlesWithIntent_cold_1();
    }

    v13 = SBWidgetExtensionDebugError(1, v11);
    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __124__SBWidgetExtensionDebuggingController__descriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = [a2 identity];
  v4 = [v3 extensionBundleIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_reallyFindDescriptorForWidgetFromExtension:(id)extension forRequestedKind:(id)kind requestedWidgetFamily:(int64_t)family completion:(id)completion
{
  v104 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  kindCopy = kind;
  completionCopy = completion;
  v74 = extensionCopy;
  identity = [extensionCopy identity];
  extensionBundleIdentifier = [identity extensionBundleIdentifier];

  orderedDescriptors = [extensionCopy orderedDescriptors];
  orderedControlDescriptors = [extensionCopy orderedControlDescriptors];
  if (!extensionBundleIdentifier)
  {
    [SBWidgetExtensionDebuggingController _reallyFindDescriptorForWidgetFromExtension:a2 forRequestedKind:self requestedWidgetFamily:? completion:?];
  }

  if (![orderedDescriptors count] && !objc_msgSend(orderedControlDescriptors, "count"))
  {
    [SBWidgetExtensionDebuggingController _reallyFindDescriptorForWidgetFromExtension:a2 forRequestedKind:self requestedWidgetFamily:? completion:?];
  }

  BSDispatchQueueAssertMain();
  v76 = [orderedDescriptors sortedArrayUsingComparator:&__block_literal_global_452];

  v72 = [orderedControlDescriptors sortedArrayUsingComparator:&__block_literal_global_97_0];

  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  if (kindCopy && [kindCopy length])
  {
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_3;
    v95[3] = &unk_2783C4CD0;
    v15 = kindCopy;
    v96 = v15;
    firstObject = [v76 bs_firstObjectPassingTest:v95];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_4;
    v93[3] = &unk_2783B62F8;
    v17 = v15;
    v94 = v17;
    firstObject2 = [v72 bs_firstObjectPassingTest:v93];
    if (!(firstObject | firstObject2))
    {
      array = [MEMORY[0x277CBEB18] array];
      v70 = v17;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v26 = v76;
      v27 = [v26 countByEnumeratingWithState:&v89 objects:v103 count:16];
      if (v27)
      {
        v28 = *v90;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v90 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = MEMORY[0x277CCACA8];
            kind = [*(*(&v89 + 1) + 8 * i) kind];
            v32 = [v30 stringWithFormat:@"'%@'", kind];
            [array addObject:v32];
          }

          v27 = [v26 countByEnumeratingWithState:&v89 objects:v103 count:16];
        }

        while (v27);
      }

      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v85 = 0u;
      v33 = v72;
      v34 = [v33 countByEnumeratingWithState:&v85 objects:v102 count:16];
      if (v34)
      {
        v35 = *v86;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v86 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = MEMORY[0x277CCACA8];
            kind2 = [*(*(&v85 + 1) + 8 * j) kind];
            v39 = [v37 stringWithFormat:@"'%@'", kind2];
            [array addObject:v39];
          }

          v34 = [v33 countByEnumeratingWithState:&v85 objects:v102 count:16];
        }

        while (v34);
      }

      v40 = [array componentsJoinedByString:{@", "}];
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid requested widget kind: '%@'. Please specify one of: %@ in your scheme's Environment Variables using the key '__WidgetKind'.", v70, v40];
      v42 = SBLogWidgets();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        SBWorkspaceDestroyApplicationSceneHandlesWithIntent_cold_1();
      }

      v43 = SBWidgetExtensionDebugError(2, v41);
      completionCopy[2](completionCopy, 0, v43);

      firstObject = v96;
      goto LABEL_53;
    }

    v19 = v96;
LABEL_45:

    goto LABEL_46;
  }

  if ([v76 count] == 1 && !objc_msgSend(v72, "count"))
  {
    firstObject = [v76 firstObject];
    firstObject2 = 0;
  }

  else
  {
    if ([v76 count] || objc_msgSend(v72, "count") != 1)
    {
      v20 = [(SBWidgetExtensionDebugHomeScreenDataSource *)self->_homeScreenDataSource hasExistingWidgetFromExtension:extensionBundleIdentifier];
      firstObject = v20;
      if (v20)
      {
        kind3 = [v20 kind];
        v22 = kind3 == 0;

        if (v22)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SBWidgetExtensionDebuggingController.m" lineNumber:253 description:@"Must provide a kind"];
        }

        family = [firstObject family];
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_113;
        v83[3] = &unk_2783C4CD0;
        v84 = firstObject;
        v23 = [v76 bs_firstObjectPassingTest:v83];
        firstObject2 = 0;
        v24 = v84;
      }

      else
      {
        v44 = [(SBWidgetExtensionDebugControlCenterDataSource *)self->_controlCenterDataSource hasExistingControlFromExtension:extensionBundleIdentifier];
        v24 = v44;
        if (v44)
        {
          kind4 = [v44 kind];
          v46 = kind4 == 0;

          if (v46)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"SBWidgetExtensionDebuggingController.m" lineNumber:263 description:@"Must provide a kind"];
          }

          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_2_114;
          v81[3] = &unk_2783B62F8;
          v24 = v24;
          v82 = v24;
          firstObject2 = [v72 bs_firstObjectPassingTest:v81];
        }

        else
        {
          firstObject2 = 0;
        }

        v23 = 0;
      }

      if (!(v23 | firstObject2))
      {
        v49 = [v76 bs_map:&__block_literal_global_118_3];
        v50 = [v72 bs_map:&__block_literal_global_122_0];
        v51 = [v49 arrayByAddingObjectsFromArray:v50];
        v52 = [v51 componentsJoinedByString:{@", "}];

        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Please specify the widget kind in the scheme's Environment Variables using the key '_XCWidgetKind' to be one of: %@", v52];
        v54 = SBLogWidgets();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          SBWorkspaceDestroyApplicationSceneHandlesWithIntent_cold_1();
        }

        v55 = SBWidgetExtensionDebugError(2, v53);
        completionCopy[2](completionCopy, 0, v55);

        goto LABEL_53;
      }

      v19 = firstObject;
      firstObject = v23;
      goto LABEL_45;
    }

    firstObject2 = [v72 firstObject];
    firstObject = 0;
  }

LABEL_46:
  if (!(firstObject | firstObject2))
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SBWidgetExtensionDebuggingController.m" lineNumber:287 description:@"Should have a widget or control descriptor to use by now"];

    goto LABEL_49;
  }

  if (!firstObject || v98[3])
  {
    goto LABEL_49;
  }

  if (!family)
  {
    supportedFamilies = [firstObject supportedFamilies];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v78 = __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_135;
    v79 = &unk_2783B1618;
    v80 = &v97;
    v57 = v77;
    if (supportedFamilies)
    {
      v58 = 0;
      v101 = 0;
      v59 = vcnt_s8(supportedFamilies);
      v59.i16[0] = vaddlv_u8(v59);
      v60 = v59.i32[0];
      do
      {
        if (((1 << v58) & *&supportedFamilies) != 0)
        {
          v78(v57);
          if (v101)
          {
            break;
          }

          --v60;
        }

        if (v58 > 0x3E)
        {
          break;
        }

        ++v58;
      }

      while (v60 > 0);
    }

    goto LABEL_49;
  }

  [firstObject supportedFamilies];
  if (CHSWidgetFamilyMaskContainsFamily())
  {
    v98[3] = family;
LABEL_49:
    v47 = [_SBWidgetExtensionLaunchRequestResult alloc];
    v48 = [(_SBWidgetExtensionLaunchRequestResult *)v47 initWithWidgetDescriptor:firstObject widgetFamily:v98[3] controlDescriptor:firstObject2];
    (completionCopy)[2](completionCopy, v48, 0);

    goto LABEL_53;
  }

  v61 = MEMORY[0x277CCACA8];
  v62 = MEMORY[0x223D6C060](family);
  kind5 = [firstObject kind];
  v64 = [v61 stringWithFormat:@"Request widget family (%@) is not supported by this widget kind (%@)", v62, kind5];

  v65 = SBLogWidgets();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    SBWorkspaceDestroyApplicationSceneHandlesWithIntent_cold_1();
  }

  v66 = SBWidgetExtensionDebugError(3, v64);
  completionCopy[2](completionCopy, 0, v66);

LABEL_53:
  _Block_object_dispose(&v97, 8);
}

uint64_t __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 kind];
  v6 = [v4 kind];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 kind];
  v6 = [v4 kind];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [*(a1 + 32) kind];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_2_114(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [*(a1 + 32) kind];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_3_115(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 kind];
  v4 = [v2 stringWithFormat:@"'%@'", v3];

  return v4;
}

id __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_4_119(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a2 kind];
  v4 = [v2 stringWithFormat:@"'%@'", v3];

  return v4;
}

uint64_t __134__SBWidgetExtensionDebuggingController__reallyFindDescriptorForWidgetFromExtension_forRequestedKind_requestedWidgetFamily_completion___block_invoke_135(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a4 = 1;
  return result;
}

void __87__SBWidgetExtensionDebuggingController_launchExtensionWithBundleID_options_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Failed to validate widget kind (%@) for extension (%@): %@", &v5, 0x20u);
}

- (void)_descriptorForWidgetFromExtension:(uint64_t)a1 forRequestedKind:(uint64_t)a2 requestedWidgetFamily:completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWidgetExtensionDebuggingController.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"extensionBundleID"}];
}

- (void)_reallyFindDescriptorForWidgetFromExtension:(uint64_t)a1 forRequestedKind:(uint64_t)a2 requestedWidgetFamily:completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWidgetExtensionDebuggingController.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"extensionBundleIdentifier"}];
}

- (void)_reallyFindDescriptorForWidgetFromExtension:(uint64_t)a1 forRequestedKind:(uint64_t)a2 requestedWidgetFamily:completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWidgetExtensionDebuggingController.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"[widgetDescriptors count] > 0 || [controlDescriptors count] > 0"}];
}

@end