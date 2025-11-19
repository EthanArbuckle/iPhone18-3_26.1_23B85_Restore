@interface SBOpenApplicationWindowsContextMenuDataSource
- (id)openApplicationWindowsContextMenuProvider:(id)a3 contextMenuSectionsForBundleIdentifier:(id)a4;
@end

@implementation SBOpenApplicationWindowsContextMenuDataSource

- (id)openApplicationWindowsContextMenuProvider:(id)a3 contextMenuSectionsForBundleIdentifier:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a4;
  if (v4)
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    v31 = v4;
    [v26 knownWindowsForAppBundleIdentifier:v4];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v5 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v29 = *v36;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v35 + 1) + 8 * i);
          v9 = [MEMORY[0x277D755B8] systemImageNamed:@"macwindow"];
          v10 = [v8 objectForKey:@"SBSwitcherCoordinatorOpenWindowForAppTitleUserInfoKey"];
          v11 = [v8 objectForKey:@"SBSwitcherCoordinatorOpenWindowForAppSceneIDUserInfoKey"];
          v12 = [v8 objectForKey:@"kSBSwitcherCoordinatorOpenWindowForAppIsMenuBarRecipientKey"];
          v13 = [v12 BOOLValue];

          v14 = MEMORY[0x277D750C8];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __130__SBOpenApplicationWindowsContextMenuDataSource_openApplicationWindowsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke;
          v32[3] = &unk_2783B66D0;
          v33 = v31;
          v34 = v11;
          v15 = v11;
          v16 = [v14 actionWithTitle:v10 image:v9 identifier:0 handler:v32];
          [v16 setState:v13];
          [v30 addObject:v16];
        }

        v6 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v6);
    }

    v17 = v27;
    if ([v30 count])
    {
      v18 = MEMORY[0x277D75710];
      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [v19 localizedStringForKey:@"OPEN_WINDOWS_MENU_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v21 = [v18 menuWithTitle:v20 image:0 identifier:0 options:1 children:v30];

      v22 = MEMORY[0x277D75710];
      v39 = v21;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      v24 = [v22 menuWithTitle:&stru_283094718 image:0 identifier:0 options:1 children:v23];

      [v27 addObject:v24];
    }

    v4 = v31;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __130__SBOpenApplicationWindowsContextMenuDataSource_openApplicationWindowsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 applicationWithBundleIdentifier:*(a1 + 32)];

  v4 = [SBApp windowSceneManager];
  v5 = [v4 activeDisplayWindowScene];
  v6 = [v5 sceneManager];
  v7 = [v5 _fbsDisplayIdentity];
  v8 = [v5 _fbsDisplayConfiguration];
  v9 = [[SBDeviceApplicationSceneEntity alloc] initWithApplication:v3 uniqueIdentifier:*(a1 + 40) sceneHandleProvider:v6 displayIdentity:v7];
  v10 = +[SBMainWorkspace sharedInstance];
  v11 = [v10 createRequestWithOptions:4 displayConfiguration:v8];

  v12 = [MEMORY[0x277CF0CD0] processHandle];
  [v11 setOriginatingProcess:v12];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __130__SBOpenApplicationWindowsContextMenuDataSource_openApplicationWindowsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_2;
  v15[3] = &unk_2783A98C8;
  v16 = v9;
  v13 = v9;
  [v11 modifyApplicationContext:v15];
  v14 = +[SBMainWorkspace sharedInstance];
  [v14 executeTransitionRequest:v11];
}

void __130__SBOpenApplicationWindowsContextMenuDataSource_openApplicationWindowsContextMenuProvider_contextMenuSectionsForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEntity:v3 forLayoutRole:1];
  [v4 _setRequestedFrontmostEntity:*(a1 + 32)];
}

@end