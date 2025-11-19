@interface SHSheetFactory
+ (id)_createPlatformViewControllerWithSession:(id)a3;
+ (id)createAirdropViewControllerWithNoContentView:(BOOL)a3 delegate:(id)a4;
+ (id)createCollaborationOptionsViewControllerWithCollaborationOptions:(id)a3 bundleIdentifier:(id)a4 updateHandler:(id)a5;
+ (id)createCollaborationParticipantsViewControllerWithContext:(id)a3 request:(id)a4 delegate:(id)a5;
+ (id)createContentViewControllerWithSession:(id)a3 presenter:(id)a4;
+ (id)createCustomRemoteViewControllerWithSession:(id)a3;
+ (id)createMainPresenterWithContext:(id)a3;
+ (id)createNavigationControllerWithRootViewController:(id)a3 delegate:(id)a4 accessibilityIdentifier:(id)a5;
+ (id)createOptionsViewControllerWithContext:(id)a3 delegate:(id)a4;
+ (id)createScreenTimeAlertViewController;
+ (id)createUserDefaultsViewControllerWithContext:(id)a3 delegate:(id)a4;
@end

@implementation SHSheetFactory

+ (id)createMainPresenterWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Create main presenter for context:%@", &v11, 0xCu);
  }

  v5 = [SHSheetRouter alloc];
  v6 = [v3 activityViewController];
  v7 = [(SHSheetRouter *)v5 initWithRootViewController:v6 supportsModalPresentations:1];

  v8 = [[SHSheetInteractor alloc] initWithContext:v3];
  v9 = [[SHSheetPresenter alloc] initWithRouter:v7 interactor:v8];

  return v9;
}

+ (id)createContentViewControllerWithSession:(id)a3 presenter:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Create main view for session:%@", &v10, 0xCu);
  }

  v8 = [SHSheetFactory _createPlatformViewControllerWithSession:v5];
  [v8 setPresenter:v6];

  return v8;
}

+ (id)createScreenTimeAlertViewController
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"RESTRICTED_ALERT_SCREEN_TIME_TITLE" value:@"Time Limit" table:@"Localizable"];

  v4 = _ShareSheetBundle();
  v5 = [v4 localizedStringForKey:@"RESTRICTED_ALERT_SCREEN_TIME_MESSAGE" value:@"You've reached your limit for this app." table:@"Localizable"];

  v6 = _ShareSheetBundle();
  v7 = [v6 localizedStringForKey:@"RESTRICTED_ALERT_SCREEN_TIME_DISMISS_BUTTON_TITLE" value:@"Dismiss" table:@"Localizable"];

  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v5 preferredStyle:1];
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:v7 style:1 handler:0];
  [v8 addAction:v9];

  return v8;
}

+ (id)createCustomRemoteViewControllerWithSession:(id)a3
{
  v3 = a3;
  v4 = [SHSheetRemoteCustomViewController alloc];
  v5 = [v3 identifier];

  v6 = [(SHSheetRemoteCustomViewController *)v4 initWithSessionIdentifier:v5];

  return v6;
}

+ (id)_createPlatformViewControllerWithSession:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 useRemoteUIService])
  {
    v4 = _ShareSheetPrefersModernRemoteScene();
    v5 = off_1E71F8320;
    if (!v4)
    {
      v5 = off_1E71F8358;
    }

    v6 = [objc_alloc(*v5) initWithSession:v3];
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Created remote scene view controller:%@", &v9, 0xCu);
    }
  }

  else
  {
    v7 = [v3 createContentContext];
    v6 = [[UIActivityContentViewController alloc] initWithContext:v7];
  }

  return v6;
}

+ (id)createNavigationControllerWithRootViewController:(id)a3 delegate:(id)a4 accessibilityIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_UIActivityNavigationController alloc] initWithRootViewController:v9];

  [(_UIActivityNavigationController *)v10 setDelegate:v8];
  [(_UIActivityNavigationController *)v10 setModalPresentationStyle:2];
  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    [(_UIActivityNavigationController *)v10 setPreferredContentSize:_ShareSheetFormSheetSize()];
  }

  v13 = [(_UIActivityNavigationController *)v10 view];
  [v13 setAccessibilityIdentifier:v7];

  return v10;
}

+ (id)createAirdropViewControllerWithNoContentView:(BOOL)a3 delegate:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBOOL();
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Create airdrop view with no content view:%@", &buf, 0xCu);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getSFAirDropViewControllerClass_softClass;
  v16 = getSFAirDropViewControllerClass_softClass;
  if (!getSFAirDropViewControllerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v18 = __getSFAirDropViewControllerClass_block_invoke;
    v19 = &unk_1E71F91F0;
    v20 = &v13;
    __getSFAirDropViewControllerClass_block_invoke(&buf);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  v10 = [v8 alloc];
  v11 = [v10 initWithNoContentView:{v4, v13}];
  [v11 setDelegate:v5];

  return v11;
}

+ (id)createUserDefaultsViewControllerWithContext:(id)a3 delegate:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Create user defaults view with context:%@", buf, 0xCu);
  }

  v8 = [_UIActivityUserDefaultsViewController alloc];
  v9 = [v5 favoritesProxies];
  v10 = [v5 suggestionProxies];
  v11 = [v5 activitiesByUUID];
  v12 = [v5 applicationActivityTypes];
  v13 = [v5 orderedUUIDs];
  v14 = [v5 excludedActivityTypes];
  v15 = [v5 category];
  LOBYTE(v18) = [v5 isPresentedModally];
  v16 = [(_UIActivityUserDefaultsViewController *)v8 initWithFavoritesProxies:v9 suggestionProxies:v10 activitiesByUUID:v11 applicationActivityTypes:v12 orderedUUIDs:v13 excludedActivityTypes:v14 activityCategory:v15 isPresentedModally:v18];

  [(_UIActivityUserDefaultsViewController *)v16 setUserDefaultsDelegate:v6];

  return v16;
}

+ (id)createOptionsViewControllerWithContext:(id)a3 delegate:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Create options view with context:%@", &v16, 0xCu);
  }

  v8 = [ObjectManipulationViewController alloc];
  v9 = [v5 customizationGroups];
  v10 = [(ObjectManipulationViewController *)v8 initWithCustomizationGroups:v9];

  [(ObjectManipulationViewController *)v10 setRefreshDelegate:v6];
  v11 = [v5 itemPreviewViewController];
  [(ObjectManipulationViewController *)v10 setItemPreviewViewController:v11];

  v12 = _ShareSheetBundle();
  v13 = [v12 localizedStringForKey:@"Options" value:@"Options" table:@"Localizable"];
  [(ObjectManipulationViewController *)v10 setTitle:v13];

  v14 = v10;
  return v10;
}

+ (id)createCollaborationOptionsViewControllerWithCollaborationOptions:(id)a3 bundleIdentifier:(id)a4 updateHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v10 = getCSSharingOptionsViewControllerClass_softClass;
  v33 = getCSSharingOptionsViewControllerClass_softClass;
  if (!getCSSharingOptionsViewControllerClass_softClass)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __getCSSharingOptionsViewControllerClass_block_invoke;
    v29[3] = &unk_1E71F91F0;
    v29[4] = &v30;
    __getCSSharingOptionsViewControllerClass_block_invoke(v29);
    v10 = v31[3];
  }

  v11 = v10;
  _Block_object_dispose(&v30, 8);
  v12 = [v10 alloc];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __114__SHSheetFactory_createCollaborationOptionsViewControllerWithCollaborationOptions_bundleIdentifier_updateHandler___block_invoke;
  v27 = &unk_1E71FA430;
  v28 = v9;
  v13 = v9;
  v14 = [v12 initWithCollaborationSharingOptionsView:v7 userDidChangeOption:&v24];
  v15 = [v14 navigationItem];
  [v15 _setManualScrollEdgeAppearanceEnabled:1];

  v16 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v16 configureWithTransparentBackground];
  v17 = [MEMORY[0x1E69DC888] separatorColor];
  [v16 setShadowColor:v17];

  v18 = [v14 navigationItem];
  [v18 setScrollEdgeAppearance:v16];

  v19 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v19 configureWithDefaultBackground];
  v20 = [MEMORY[0x1E69DC888] separatorColor];
  [v19 setShadowColor:v20];

  v21 = [v14 navigationItem];
  [v21 setStandardAppearance:v19];

  v22 = [v14 navigationItem];
  [v22 _setManualScrollEdgeAppearanceProgress:1.0];

  [v14 setHostBundleID:v8];

  return v14;
}

+ (id)createCollaborationParticipantsViewControllerWithContext:(id)a3 request:(id)a4 delegate:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 fileOrFolderURL];
    v12 = [v7 confirmButtonText];
    v13 = [v8 options];
    v14 = [v8 setupInfo];
    v15 = [v8 share];
    *buf = 138413314;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v15;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Showing add participants view with file URL %@, primary button text %@, options %@, container setup info %@ and share %@", buf, 0x34u);
  }

  if ([getCSAddParticipantsViewControllerClass() instancesRespondToSelector:sel_initWithCKShare_containerSetupInfo_fileURL_collaborationOptionsGroups_headerImageData_headerTitle_loadingText_supplementaryText_primaryButtonText_secondaryButtonText_])
  {
    v28 = objc_alloc(getCSAddParticipantsViewControllerClass());
    v27 = [v8 share];
    v16 = [v8 setupInfo];
    v17 = [v8 fileOrFolderURL];
    v18 = [v8 options];
    v19 = [v7 headerTitle];
    v20 = [v7 loadingText];
    [v7 confirmButtonText];
    v21 = v7;
    v23 = v22 = v9;
    v24 = [v28 initWithCKShare:v27 containerSetupInfo:v16 fileURL:v17 collaborationOptionsGroups:v18 headerImageData:0 headerTitle:v19 loadingText:v20 supplementaryText:0 primaryButtonText:v23 secondaryButtonText:0];

    v9 = v22;
    v7 = v21;

    [v24 setDelegate:v9];
  }

  else
  {
    v25 = share_sheet_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SHSheetFactory createCollaborationParticipantsViewControllerWithContext:v25 request:? delegate:?];
    }

    v24 = 0;
  }

  return v24;
}

@end