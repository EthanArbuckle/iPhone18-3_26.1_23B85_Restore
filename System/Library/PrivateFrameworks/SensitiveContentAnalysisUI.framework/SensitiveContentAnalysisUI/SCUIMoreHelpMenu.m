@interface SCUIMoreHelpMenu
+ (id)_menuWithAnalysis:(id)a3 options:(int64_t)a4 error:(id *)a5;
+ (id)menuWithModel:(id)a3;
+ (id)menuWithOptions:(int64_t)a3;
+ (id)menuWithOptions:(int64_t)a3 interventionType:(int64_t)a4 locale:(id)a5;
- (SCUIMoreHelpMenuDelegate)menuDelegate;
- (void)addActionsFromModel:(id)a3;
- (void)reportToAuthoritiesPressed;
@end

@implementation SCUIMoreHelpMenu

+ (id)menuWithOptions:(int64_t)a3
{
  v4 = SCUICurrentInterventionType();
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [SCUIMoreHelpMenu menuWithOptions:a3 interventionType:v4 locale:v5];

  return v6;
}

+ (id)menuWithOptions:(int64_t)a3 interventionType:(int64_t)a4 locale:(id)a5
{
  v6 = [SCUIMoreHelpMenuModel modelWithOptions:a3 contextDictionary:0 interventionType:a4 locale:a5 menuType:2];
  v7 = [a1 menuWithModel:v6];

  return v7;
}

+ (id)menuWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = SCUIIsRunningInMacCatalyst();
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___SCUIMoreHelpMenu;
  v7 = objc_msgSendSuper2(&v13, sel_alertControllerWithTitle_message_preferredStyle_, v5, 0, v6);

  [v7 setModel:v4];
  [v7 addActionsFromModel:v4];
  [v7 setInterventionType:{objc_msgSend(v4, "interventionType")}];
  v8 = [v4 authority];
  [v7 setAuthority:v8];

  v9 = [v4 options];
  [v7 setOptions:v9];
  v10 = +[SCUIAXIdentifiers actionMenu];
  v11 = [v7 view];
  [v11 setAccessibilityIdentifier:v10];

  return v7;
}

- (void)addActionsFromModel:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v20 = a3;
  objc_initWeak(&location, self);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [v20 actions];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = *v32;
    obj = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = [v8 actionID];
        v9 = MEMORY[0x1E69DC648];
        v10 = [v8 title];
        if ([v8 destructive])
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __40__SCUIMoreHelpMenu_addActionsFromModel___block_invoke;
        v23[3] = &unk_1E7FF24E0;
        v25 = &v27;
        v23[4] = self;
        objc_copyWeak(&v26, &location);
        v24 = v20;
        v12 = [v9 actionWithTitle:v10 style:v11 handler:v23];

        v13 = [SCUIAXIdentifiers helpMenuAction:v28[3]];
        [v12 setAccessibilityIdentifier:v13];

        [(SCUIMoreHelpMenu *)self addAction:v12];
        objc_destroyWeak(&v26);
        _Block_object_dispose(&v27, 8);
        ++v7;
      }

      while (v5 != v7);
      v4 = obj;
      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v14 = MEMORY[0x1E69DC648];
  v15 = [SCUIResources localizedStringForKey:@"CANCEL"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __40__SCUIMoreHelpMenu_addActionsFromModel___block_invoke_2;
  v21[3] = &unk_1E7FF2508;
  objc_copyWeak(&v22, &location);
  v16 = [v14 actionWithTitle:v15 style:1 handler:v21];

  v17 = +[SCUIAXIdentifiers actionMenuCancel];
  [v16 setAccessibilityIdentifier:v17];

  [(SCUIMoreHelpMenu *)self addAction:v16];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x1E69E9840];
}

void __40__SCUIMoreHelpMenu_addActionsFromModel___block_invoke(uint64_t a1, void *a2)
{
  v53 = a2;
  v3 = *(*(*(a1 + 48) + 8) + 24);
  if (v3 > 5)
  {
    if (v3 <= 7)
    {
      if (v3 == 6)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 56));
        v34 = [WeakRetained menuDelegate];
        v35 = objc_opt_respondsToSelector();

        if ((v35 & 1) == 0)
        {
          goto LABEL_36;
        }

        v9 = objc_loadWeakRetained((a1 + 56));
        v10 = [v9 menuDelegate];
        v11 = objc_loadWeakRetained((a1 + 56));
        [v10 didDeleteItem:v11];
      }

      else
      {
        v23 = [*(a1 + 32) model];
        v24 = [v23 analyticsContext];
        [v24 collectResourcesInteractionEventWithRequestedResource:7];

        v25 = objc_loadWeakRetained((a1 + 56));
        v26 = [v25 menuDelegate];
        v27 = objc_opt_respondsToSelector();

        if ((v27 & 1) == 0)
        {
          goto LABEL_36;
        }

        v9 = objc_loadWeakRetained((a1 + 56));
        v10 = [v9 menuDelegate];
        v11 = objc_loadWeakRetained((a1 + 56));
        [v10 didHidePhoto:v11];
      }

      goto LABEL_31;
    }

    switch(v3)
    {
      case 8:
        v39 = [*(a1 + 40) analyticsContext];
        [v39 collectResourcesInteractionEventWithRequestedResource:6];

        v40 = objc_loadWeakRetained((a1 + 56));
        [v40 reportToAuthoritiesPressed];
LABEL_34:

        break;
      case 9:
        v46 = [*(a1 + 32) model];
        v47 = [v46 analyticsContext];
        [v47 collectResourcesInteractionEventWithRequestedResource:5];

        v48 = objc_loadWeakRetained((a1 + 56));
        v49 = [v48 menuDelegate];
        v50 = objc_opt_respondsToSelector();

        if ((v50 & 1) == 0)
        {
          break;
        }

        v9 = objc_loadWeakRetained((a1 + 56));
        v10 = [v9 menuDelegate];
        v11 = objc_loadWeakRetained((a1 + 56));
        [v10 didShowContent:v11];
        goto LABEL_31;
      case 10:
        v12 = [*(a1 + 32) model];
        v13 = [v12 analyticsContext];
        [v13 collectResourcesInteractionEventWithRequestedResource:4];

        v14 = objc_loadWeakRetained((a1 + 56));
        v15 = [v14 menuDelegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v9 = objc_loadWeakRetained((a1 + 56));
          v10 = [v9 menuDelegate];
          v11 = objc_loadWeakRetained((a1 + 56));
          [v10 didUnsubscribe:v11];
LABEL_31:
        }

        break;
    }
  }

  else
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v36 = objc_loadWeakRetained((a1 + 56));
        v37 = [v36 menuDelegate];
        v38 = objc_opt_respondsToSelector();

        if ((v38 & 1) == 0)
        {
          goto LABEL_36;
        }

        v9 = objc_loadWeakRetained((a1 + 56));
        v10 = [v9 menuDelegate];
        v11 = objc_loadWeakRetained((a1 + 56));
        [v10 didLeaveConversation:v11];
      }

      else if (v3 == 4)
      {
        v41 = [*(a1 + 32) model];
        v42 = [v41 analyticsContext];
        [v42 collectResourcesInteractionEventWithRequestedResource:1];

        v43 = objc_loadWeakRetained((a1 + 56));
        v44 = [v43 menuDelegate];
        v45 = objc_opt_respondsToSelector();

        if ((v45 & 1) == 0)
        {
          goto LABEL_36;
        }

        v9 = objc_loadWeakRetained((a1 + 56));
        v10 = [v9 menuDelegate];
        v11 = objc_loadWeakRetained((a1 + 56));
        [v10 didBlockContact:v11];
      }

      else
      {
        v4 = [*(a1 + 32) model];
        v5 = [v4 analyticsContext];
        [v5 collectResourcesInteractionEventWithRequestedResource:1];

        v6 = objc_loadWeakRetained((a1 + 56));
        v7 = [v6 menuDelegate];
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          goto LABEL_36;
        }

        v9 = objc_loadWeakRetained((a1 + 56));
        v10 = [v9 menuDelegate];
        v11 = objc_loadWeakRetained((a1 + 56));
        [v10 didBlockContacts:v11];
      }

      goto LABEL_31;
    }

    if (v3 == 1)
    {
      v28 = [*(a1 + 32) model];
      v29 = [v28 analyticsContext];
      [v29 collectResourcesInteractionEventWithRequestedResource:3];

      v30 = objc_loadWeakRetained((a1 + 56));
      v31 = [v30 menuDelegate];
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        v9 = objc_loadWeakRetained((a1 + 56));
        v10 = [v9 menuDelegate];
        v11 = objc_loadWeakRetained((a1 + 56));
        [v10 didMessageSomeone:v11];
        goto LABEL_31;
      }

      +[SCUIDefaultImplementations didMessageSomeoneWithInterventionType:](SCUIDefaultImplementations, "didMessageSomeoneWithInterventionType:", [*(a1 + 40) interventionType]);
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_36;
      }

      v17 = [*(a1 + 32) model];
      v18 = [v17 analyticsContext];
      [v18 collectResourcesInteractionEventWithRequestedResource:2];

      v19 = objc_loadWeakRetained((a1 + 56));
      v20 = [v19 menuDelegate];
      v21 = objc_opt_respondsToSelector();

      v22 = objc_loadWeakRetained((a1 + 56));
      v9 = v22;
      if (v21)
      {
        v10 = [v22 menuDelegate];
        v11 = objc_loadWeakRetained((a1 + 56));
        [v10 didAskForMoreHelp:v11];
        goto LABEL_31;
      }

      v51 = [v22 presentingViewController];

      if (v51)
      {
        v40 = objc_loadWeakRetained((a1 + 56));
        v52 = [v40 presentingViewController];
        [SCUIDefaultImplementations didAskForMoreHelpWithPresentingViewController:v52];

        goto LABEL_34;
      }
    }
  }

LABEL_36:
}

void __40__SCUIMoreHelpMenu_addActionsFromModel___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained menuDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v5 = [v7 menuDelegate];
    v6 = objc_loadWeakRetained((a1 + 32));
    [v5 didCancel:v6];
  }
}

- (void)reportToAuthoritiesPressed
{
  v7 = [(SCUIMoreHelpMenu *)self viewControllerThatPresented];
  v3 = [(SCUIMoreHelpMenu *)self authority];
  v4 = [(SCUIMoreHelpMenu *)self interventionType];
  v5 = [(SCUIMoreHelpMenu *)self menuDelegate];
  v6 = [(SCUIMoreHelpMenu *)self contextDictionary];
  [SCUIReportToAuthorities presentFlowFromController:v7 authority:v3 interventionType:v4 delegate:v5 contextDictionary:v6];
}

- (SCUIMoreHelpMenuDelegate)menuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_menuDelegate);

  return WeakRetained;
}

+ (id)_menuWithAnalysis:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v5 = sub_1BC67F5CC(a4);

  return v5;
}

@end