@interface SCUIMoreHelpContextMenu
+ (id)controllerToPresentFrom;
+ (id)menuActionsFromModel:(id)model menuInfo:(id)info menuDelegate:(id)delegate;
+ (id)menuWithAnalysis:(id)analysis delegate:(id)delegate additionalOptions:(int64_t)options error:(id *)error;
+ (id)menuWithDelegate:(id)delegate additionalOptions:(int64_t)options;
+ (id)menuWithDelegate:(id)delegate contextDictionary:(id)dictionary additionalOptions:(int64_t)options;
+ (id)menuWithDelegate:(id)delegate contextDictionary:(id)dictionary additionalOptions:(int64_t)options interventionType:(int64_t)type;
+ (void)controllerToPresentFrom;
+ (void)reportToAuthoritiesPressedForModel:(id)model delegate:(id)delegate;
+ (void)setAnalyticsContextWithModel:(id)model identifier:(id)identifier;
@end

@implementation SCUIMoreHelpContextMenu

+ (id)menuWithDelegate:(id)delegate additionalOptions:(int64_t)options
{
  delegateCopy = delegate;
  v6 = [SCUIMoreHelpContextMenu menuWithDelegate:delegateCopy additionalOptions:options interventionType:SCUICurrentInterventionType()];

  return v6;
}

+ (id)menuWithDelegate:(id)delegate contextDictionary:(id)dictionary additionalOptions:(int64_t)options
{
  dictionaryCopy = dictionary;
  delegateCopy = delegate;
  v9 = [SCUIMoreHelpContextMenu menuWithDelegate:delegateCopy contextDictionary:dictionaryCopy additionalOptions:options interventionType:SCUICurrentInterventionType()];

  return v9;
}

+ (id)menuWithDelegate:(id)delegate contextDictionary:(id)dictionary additionalOptions:(int64_t)options interventionType:(int64_t)type
{
  dictionaryCopy = dictionary;
  v10 = MEMORY[0x1E695DF58];
  delegateCopy = delegate;
  currentLocale = [v10 currentLocale];
  v13 = [SCUIMoreHelpMenuModel modelWithOptions:options contextDictionary:dictionaryCopy interventionType:type locale:currentLocale menuType:1];

  v14 = [[SCUIMoreHelpContextMenuContainer alloc] initWithOptions:options contextDictionary:dictionaryCopy interventionType:type];
  v15 = [SCUIMoreHelpContextMenu menuActionsFromModel:v13 menuInfo:v14 menuDelegate:delegateCopy];

  if (type == 2)
  {
    title2 = &stru_1F3B30210;
  }

  else
  {
    title = [v13 title];
    if (title)
    {
      title2 = [v13 title];
    }

    else
    {
      title2 = &stru_1F3B30210;
    }
  }

  v18 = [MEMORY[0x1E69DCC60] menuWithTitle:title2 children:v15];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v18];
  [(SCUIMoreHelpContextMenuContainer *)v14 setMenuIdentifier:v19];

  v20 = [dictionaryCopy objectForKeyedSubscript:@"SCUIAnalyticsContextKeyForContextDictionary"];

  if (v20)
  {
    [dictionaryCopy objectForKeyedSubscript:@"SCUIAnalyticsContextKeyForContextDictionary"];
  }

  else
  {
    [(SCUIMoreHelpContextMenuContainer *)v14 menuIdentifier];
  }
  v21 = ;
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "options")}];
  [SCUIAnalytics insertNewOptionsToContextMenuWith:v21 value:v22];

  return v18;
}

+ (id)menuActionsFromModel:(id)model menuInfo:(id)info menuDelegate:(id)delegate
{
  v54 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  infoCopy = info;
  delegateCopy = delegate;
  objc_initWeak(&location, delegateCopy);
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy_;
  v50[4] = __Block_byref_object_dispose_;
  v8 = infoCopy;
  v51 = v8;
  v9 = [MEMORY[0x1E695E0F0] mutableCopy];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  actions = [modelCopy actions];
  v11 = [actions countByEnumeratingWithState:&v46 objects:v53 count:16];
  obj = actions;
  v34 = v9;
  if (v11)
  {
    v32 = *v47;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        actionID = [v13 actionID];
        if (v43[3] == 9)
        {
          contextDictionary = [v8 contextDictionary];
          v15 = [contextDictionary objectForKeyedSubscript:@"SCUIMoreHelpContextMenuShowContentNameKey"];

          if (v15)
          {
            v16 = objc_alloc(MEMORY[0x1E696AEC0]);
            v17 = [SCUIResources localizedStringForKey:@"SHOW_CONTENT_NAME_TITLE %@"];
            v18 = [v16 initWithFormat:v17, v15];
            [v13 setTitle:v18];
          }
        }

        iconSystemName = [v13 iconSystemName];
        if (iconSystemName)
        {
          v20 = MEMORY[0x1E69DCAB8];
          iconSystemName2 = [v13 iconSystemName];
          v22 = [v20 systemImageNamed:iconSystemName2];
        }

        else
        {
          v22 = 0;
        }

        v23 = MEMORY[0x1E69DC628];
        title = [v13 title];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __70__SCUIMoreHelpContextMenu_menuActionsFromModel_menuInfo_menuDelegate___block_invoke;
        v36[3] = &unk_1E7FF2538;
        v37 = v8;
        v38 = modelCopy;
        v39 = &v42;
        objc_copyWeak(v41, &location);
        v40 = v50;
        v41[1] = self;
        v25 = [v23 actionWithTitle:title image:v22 identifier:0 handler:v36];

        if ([v13 destructive])
        {
          [v25 setAttributes:2];
        }

        v26 = [SCUIAXIdentifiers helpMenuAction:v43[3]];
        [v25 setAccessibilityIdentifier:v26];

        [v34 addObject:v25];
        objc_destroyWeak(v41);

        _Block_object_dispose(&v42, 8);
      }

      v11 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v11);
  }

  v27 = [v34 copy];
  _Block_object_dispose(v50, 8);

  objc_destroyWeak(&location);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __70__SCUIMoreHelpContextMenu_menuActionsFromModel_menuInfo_menuDelegate___block_invoke(uint64_t a1)
{
  v26 = [*(a1 + 32) menuIdentifier];
  [SCUIMoreHelpContextMenu setAnalyticsContextWithModel:*(a1 + 40) identifier:?];
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 > 5)
  {
    if (v2 <= 7)
    {
      if (v2 == 6)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v15 = objc_opt_respondsToSelector();

        if ((v15 & 1) == 0)
        {
          goto LABEL_36;
        }

        v5 = objc_loadWeakRetained((a1 + 64));
        [v5 didDeleteItem:*(*(*(a1 + 56) + 8) + 40)];
      }

      else
      {
        [*(a1 + 40) collectResourcesInteractionEventWithRequestedResource:7];
        v10 = objc_loadWeakRetained((a1 + 64));
        v11 = objc_opt_respondsToSelector();

        if ((v11 & 1) == 0)
        {
          goto LABEL_36;
        }

        v5 = objc_loadWeakRetained((a1 + 64));
        [v5 didHidePhoto:*(*(*(a1 + 56) + 8) + 40)];
      }

      goto LABEL_31;
    }

    switch(v2)
    {
      case 8:
        [*(a1 + 40) collectResourcesInteractionEventWithRequestedResource:6];
        v18 = *(a1 + 72);
        v19 = *(a1 + 40);
        v20 = objc_loadWeakRetained((a1 + 64));
        [v18 reportToAuthoritiesPressedForModel:v19 delegate:v20];
LABEL_34:

        break;
      case 9:
        [*(a1 + 40) collectResourcesInteractionEventWithRequestedResource:5];
        v23 = objc_loadWeakRetained((a1 + 64));
        v24 = objc_opt_respondsToSelector();

        if ((v24 & 1) == 0)
        {
          break;
        }

        v5 = objc_loadWeakRetained((a1 + 64));
        [v5 didShowContent:*(*(*(a1 + 56) + 8) + 40)];
        goto LABEL_31;
      case 10:
        [*(a1 + 40) collectResourcesInteractionEventWithRequestedResource:4];
        v6 = objc_loadWeakRetained((a1 + 64));
        v7 = objc_opt_respondsToSelector();

        if (v7)
        {
          v5 = objc_loadWeakRetained((a1 + 64));
          [v5 didUnsubscribe:*(*(*(a1 + 56) + 8) + 40)];
LABEL_31:
        }

        break;
    }
  }

  else
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v16 = objc_loadWeakRetained((a1 + 64));
        v17 = objc_opt_respondsToSelector();

        if ((v17 & 1) == 0)
        {
          goto LABEL_36;
        }

        v5 = objc_loadWeakRetained((a1 + 64));
        [v5 didLeaveConversation:*(*(*(a1 + 56) + 8) + 40)];
      }

      else if (v2 == 4)
      {
        [*(a1 + 40) collectResourcesInteractionEventWithRequestedResource:1];
        v21 = objc_loadWeakRetained((a1 + 64));
        v22 = objc_opt_respondsToSelector();

        if ((v22 & 1) == 0)
        {
          goto LABEL_36;
        }

        v5 = objc_loadWeakRetained((a1 + 64));
        [v5 didBlockContact:*(*(*(a1 + 56) + 8) + 40)];
      }

      else
      {
        [*(a1 + 40) collectResourcesInteractionEventWithRequestedResource:1];
        v3 = objc_loadWeakRetained((a1 + 64));
        v4 = objc_opt_respondsToSelector();

        if ((v4 & 1) == 0)
        {
          goto LABEL_36;
        }

        v5 = objc_loadWeakRetained((a1 + 64));
        [v5 didBlockContacts:*(*(*(a1 + 56) + 8) + 40)];
      }

      goto LABEL_31;
    }

    if (v2 == 1)
    {
      [*(a1 + 40) collectResourcesInteractionEventWithRequestedResource:3];
      v12 = objc_loadWeakRetained((a1 + 64));
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v5 = objc_loadWeakRetained((a1 + 64));
        [v5 didMessageSomeone:*(*(*(a1 + 56) + 8) + 40)];
        goto LABEL_31;
      }

      +[SCUIDefaultImplementations didMessageSomeoneWithInterventionType:](SCUIDefaultImplementations, "didMessageSomeoneWithInterventionType:", [*(a1 + 40) interventionType]);
    }

    else
    {
      if (v2 != 2)
      {
        goto LABEL_36;
      }

      [*(a1 + 40) collectResourcesInteractionEventWithRequestedResource:2];
      v8 = objc_loadWeakRetained((a1 + 64));
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v5 = objc_loadWeakRetained((a1 + 64));
        [v5 didAskForMoreHelp:*(*(*(a1 + 56) + 8) + 40)];
        goto LABEL_31;
      }

      v25 = [*(a1 + 72) controllerToPresentFrom];

      if (v25)
      {
        v20 = [*(a1 + 72) controllerToPresentFrom];
        [SCUIDefaultImplementations didAskForMoreHelpWithPresentingViewController:v20];
        goto LABEL_34;
      }
    }
  }

LABEL_36:
}

+ (id)controllerToPresentFrom
{
  clientUI = [MEMORY[0x1E697B660] clientUI];
  if (os_log_type_enabled(clientUI, OS_LOG_TYPE_DEBUG))
  {
    +[(SCUIMoreHelpContextMenu *)clientUI];
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
  allObjects = [connectedScenes allObjects];
  firstObject = [allObjects firstObject];
  windows = [firstObject windows];
  firstObject2 = [windows firstObject];
  rootViewController = [firstObject2 rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    LODWORD(presentedViewController) = 0;
    v11 = rootViewController;
    do
    {
      rootViewController = [v11 presentedViewController];

      LODWORD(presentedViewController) = presentedViewController + 1;
      presentedViewController2 = [rootViewController presentedViewController];

      v11 = rootViewController;
    }

    while (presentedViewController2);
  }

  clientUI2 = [MEMORY[0x1E697B660] clientUI];
  if (os_log_type_enabled(clientUI2, OS_LOG_TYPE_DEBUG))
  {
    +[(SCUIMoreHelpContextMenu *)presentedViewController];
  }

  return rootViewController;
}

+ (void)reportToAuthoritiesPressedForModel:(id)model delegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  if ([delegateCopy conformsToProtocol:&unk_1F3B49920])
  {
    controllerToPresentFrom = [self controllerToPresentFrom];
    authority = [modelCopy authority];
    interventionType = [modelCopy interventionType];
    contextDictionary = [modelCopy contextDictionary];
    [SCUIReportToAuthorities presentFlowFromController:controllerToPresentFrom authority:authority interventionType:interventionType delegate:delegateCopy contextDictionary:contextDictionary];
  }
}

+ (void)setAnalyticsContextWithModel:(id)model identifier:(id)identifier
{
  modelCopy = model;
  identifierCopy = identifier;
  contextDictionary = [modelCopy contextDictionary];
  v7 = [SCUIAnalytics getAnalyticsUIContextWith:contextDictionary];

  if (!v7)
  {
    v8 = [SCUIAnalytics getAnalyticsUIContextByIdentifierWithIdentifier:identifierCopy];
    if (!v8)
    {
      goto LABEL_5;
    }

    v7 = v8;
  }

  [modelCopy setAnalyticsContext:v7];

LABEL_5:
}

+ (id)menuWithAnalysis:(id)analysis delegate:(id)delegate additionalOptions:(int64_t)options error:(id *)error
{
  analysisCopy = analysis;
  swift_unknownObjectRetain();
  v9 = sub_1BC67F10C(analysisCopy, delegate, options);
  swift_unknownObjectRelease();

  return v9;
}

+ (void)controllerToPresentFrom
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_debug_impl(&dword_1BC630000, a2, OS_LOG_TYPE_DEBUG, "Found a valid controller %d from rootViewController's presented controllers", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end