@interface SHSheetFactory
+ (id)_createPlatformViewControllerWithSession:(id)session;
+ (id)createAirdropViewControllerWithNoContentView:(BOOL)view delegate:(id)delegate;
+ (id)createCollaborationOptionsViewControllerWithCollaborationOptions:(id)options bundleIdentifier:(id)identifier updateHandler:(id)handler;
+ (id)createCollaborationParticipantsViewControllerWithContext:(id)context request:(id)request delegate:(id)delegate;
+ (id)createContentViewControllerWithSession:(id)session presenter:(id)presenter;
+ (id)createCustomRemoteViewControllerWithSession:(id)session;
+ (id)createMainPresenterWithContext:(id)context;
+ (id)createNavigationControllerWithRootViewController:(id)controller delegate:(id)delegate accessibilityIdentifier:(id)identifier;
+ (id)createOptionsViewControllerWithContext:(id)context delegate:(id)delegate;
+ (id)createScreenTimeAlertViewController;
+ (id)createUserDefaultsViewControllerWithContext:(id)context delegate:(id)delegate;
@end

@implementation SHSheetFactory

+ (id)createMainPresenterWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = contextCopy;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Create main presenter for context:%@", &v11, 0xCu);
  }

  v5 = [SHSheetRouter alloc];
  activityViewController = [contextCopy activityViewController];
  v7 = [(SHSheetRouter *)v5 initWithRootViewController:activityViewController supportsModalPresentations:1];

  v8 = [[SHSheetInteractor alloc] initWithContext:contextCopy];
  v9 = [[SHSheetPresenter alloc] initWithRouter:v7 interactor:v8];

  return v9;
}

+ (id)createContentViewControllerWithSession:(id)session presenter:(id)presenter
{
  v12 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  presenterCopy = presenter;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = sessionCopy;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Create main view for session:%@", &v10, 0xCu);
  }

  v8 = [SHSheetFactory _createPlatformViewControllerWithSession:sessionCopy];
  [v8 setPresenter:presenterCopy];

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

+ (id)createCustomRemoteViewControllerWithSession:(id)session
{
  sessionCopy = session;
  v4 = [SHSheetRemoteCustomViewController alloc];
  identifier = [sessionCopy identifier];

  v6 = [(SHSheetRemoteCustomViewController *)v4 initWithSessionIdentifier:identifier];

  return v6;
}

+ (id)_createPlatformViewControllerWithSession:(id)session
{
  v11 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if ([sessionCopy useRemoteUIService])
  {
    v4 = _ShareSheetPrefersModernRemoteScene();
    v5 = off_1E71F8320;
    if (!v4)
    {
      v5 = off_1E71F8358;
    }

    v6 = [objc_alloc(*v5) initWithSession:sessionCopy];
    createContentContext = share_sheet_log();
    if (os_log_type_enabled(createContentContext, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_18B359000, createContentContext, OS_LOG_TYPE_DEFAULT, "Created remote scene view controller:%@", &v9, 0xCu);
    }
  }

  else
  {
    createContentContext = [sessionCopy createContentContext];
    v6 = [[UIActivityContentViewController alloc] initWithContext:createContentContext];
  }

  return v6;
}

+ (id)createNavigationControllerWithRootViewController:(id)controller delegate:(id)delegate accessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  controllerCopy = controller;
  v10 = [[_UIActivityNavigationController alloc] initWithRootViewController:controllerCopy];

  [(_UIActivityNavigationController *)v10 setDelegate:delegateCopy];
  [(_UIActivityNavigationController *)v10 setModalPresentationStyle:2];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(_UIActivityNavigationController *)v10 setPreferredContentSize:_ShareSheetFormSheetSize()];
  }

  view = [(_UIActivityNavigationController *)v10 view];
  [view setAccessibilityIdentifier:identifierCopy];

  return v10;
}

+ (id)createAirdropViewControllerWithNoContentView:(BOOL)view delegate:(id)delegate
{
  viewCopy = view;
  v21 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
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
  v11 = [v10 initWithNoContentView:{viewCopy, v13}];
  [v11 setDelegate:delegateCopy];

  return v11;
}

+ (id)createUserDefaultsViewControllerWithContext:(id)context delegate:(id)delegate
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = contextCopy;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Create user defaults view with context:%@", buf, 0xCu);
  }

  v8 = [_UIActivityUserDefaultsViewController alloc];
  favoritesProxies = [contextCopy favoritesProxies];
  suggestionProxies = [contextCopy suggestionProxies];
  activitiesByUUID = [contextCopy activitiesByUUID];
  applicationActivityTypes = [contextCopy applicationActivityTypes];
  orderedUUIDs = [contextCopy orderedUUIDs];
  excludedActivityTypes = [contextCopy excludedActivityTypes];
  category = [contextCopy category];
  LOBYTE(v18) = [contextCopy isPresentedModally];
  v16 = [(_UIActivityUserDefaultsViewController *)v8 initWithFavoritesProxies:favoritesProxies suggestionProxies:suggestionProxies activitiesByUUID:activitiesByUUID applicationActivityTypes:applicationActivityTypes orderedUUIDs:orderedUUIDs excludedActivityTypes:excludedActivityTypes activityCategory:category isPresentedModally:v18];

  [(_UIActivityUserDefaultsViewController *)v16 setUserDefaultsDelegate:delegateCopy];

  return v16;
}

+ (id)createOptionsViewControllerWithContext:(id)context delegate:(id)delegate
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = contextCopy;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Create options view with context:%@", &v16, 0xCu);
  }

  v8 = [ObjectManipulationViewController alloc];
  customizationGroups = [contextCopy customizationGroups];
  v10 = [(ObjectManipulationViewController *)v8 initWithCustomizationGroups:customizationGroups];

  [(ObjectManipulationViewController *)v10 setRefreshDelegate:delegateCopy];
  itemPreviewViewController = [contextCopy itemPreviewViewController];
  [(ObjectManipulationViewController *)v10 setItemPreviewViewController:itemPreviewViewController];

  v12 = _ShareSheetBundle();
  v13 = [v12 localizedStringForKey:@"Options" value:@"Options" table:@"Localizable"];
  [(ObjectManipulationViewController *)v10 setTitle:v13];

  v14 = v10;
  return v10;
}

+ (id)createCollaborationOptionsViewControllerWithCollaborationOptions:(id)options bundleIdentifier:(id)identifier updateHandler:(id)handler
{
  optionsCopy = options;
  identifierCopy = identifier;
  handlerCopy = handler;
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
  v28 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v12 initWithCollaborationSharingOptionsView:optionsCopy userDidChangeOption:&v24];
  navigationItem = [v14 navigationItem];
  [navigationItem _setManualScrollEdgeAppearanceEnabled:1];

  v16 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v16 configureWithTransparentBackground];
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [v16 setShadowColor:separatorColor];

  navigationItem2 = [v14 navigationItem];
  [navigationItem2 setScrollEdgeAppearance:v16];

  v19 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v19 configureWithDefaultBackground];
  separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
  [v19 setShadowColor:separatorColor2];

  navigationItem3 = [v14 navigationItem];
  [navigationItem3 setStandardAppearance:v19];

  navigationItem4 = [v14 navigationItem];
  [navigationItem4 _setManualScrollEdgeAppearanceProgress:1.0];

  [v14 setHostBundleID:identifierCopy];

  return v14;
}

+ (id)createCollaborationParticipantsViewControllerWithContext:(id)context request:(id)request delegate:(id)delegate
{
  v39 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  requestCopy = request;
  delegateCopy = delegate;
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    fileOrFolderURL = [requestCopy fileOrFolderURL];
    confirmButtonText = [contextCopy confirmButtonText];
    options = [requestCopy options];
    setupInfo = [requestCopy setupInfo];
    share = [requestCopy share];
    *buf = 138413314;
    v30 = fileOrFolderURL;
    v31 = 2112;
    v32 = confirmButtonText;
    v33 = 2112;
    v34 = options;
    v35 = 2112;
    v36 = setupInfo;
    v37 = 2112;
    v38 = share;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Showing add participants view with file URL %@, primary button text %@, options %@, container setup info %@ and share %@", buf, 0x34u);
  }

  if ([getCSAddParticipantsViewControllerClass() instancesRespondToSelector:sel_initWithCKShare_containerSetupInfo_fileURL_collaborationOptionsGroups_headerImageData_headerTitle_loadingText_supplementaryText_primaryButtonText_secondaryButtonText_])
  {
    v28 = objc_alloc(getCSAddParticipantsViewControllerClass());
    share2 = [requestCopy share];
    setupInfo2 = [requestCopy setupInfo];
    fileOrFolderURL2 = [requestCopy fileOrFolderURL];
    options2 = [requestCopy options];
    headerTitle = [contextCopy headerTitle];
    loadingText = [contextCopy loadingText];
    [contextCopy confirmButtonText];
    v21 = contextCopy;
    v23 = v22 = delegateCopy;
    v24 = [v28 initWithCKShare:share2 containerSetupInfo:setupInfo2 fileURL:fileOrFolderURL2 collaborationOptionsGroups:options2 headerImageData:0 headerTitle:headerTitle loadingText:loadingText supplementaryText:0 primaryButtonText:v23 secondaryButtonText:0];

    delegateCopy = v22;
    contextCopy = v21;

    [v24 setDelegate:delegateCopy];
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