@interface SHSheetRemoteCustomViewController
- (SHSheetRemoteCustomViewController)initWithSessionIdentifier:(id)identifier;
- (void)installSceneHostingView;
@end

@implementation SHSheetRemoteCustomViewController

- (SHSheetRemoteCustomViewController)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SHSheetRemoteCustomViewController;
  v5 = [(SHSheetRemoteCustomViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [identifierCopy copy];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    [(SHSheetRemoteCustomViewController *)v5 installSceneHostingView];
  }

  return v5;
}

- (void)installSceneHostingView
{
  v43 = *MEMORY[0x1E69E9840];
  if (![(SHSheetRemoteCustomViewController *)self didInstallHostingView])
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "remote scene view controller %@ installing hosting view", &buf, 0xCu);
    }

    [(SHSheetRemoteCustomViewController *)self setDidInstallHostingView:1];
    if (!self->_hostingController)
    {
      [(SHSheetRemoteCustomViewController *)self _beginDelayingPresentation:&__block_literal_global_17 cancellationHandler:3.0];
      v4 = share_sheet_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "scene %@ setting up scene hosting", &buf, 0xCu);
      }

      v32 = [MEMORY[0x1E69C75F0] identityForAngelJobLabel:@"com.apple.sharinguiservice"];
      v5 = objc_alloc(MEMORY[0x1E69DD688]);
      v6 = objc_opt_new();
      v7 = [v5 initWithProcessIdentity:v32 sceneSpecification:v6];
      hostingController = self->_hostingController;
      self->_hostingController = v7;

      [(_UISceneHostingController *)self->_hostingController setDelegate:self];
      v9 = self->_hostingController;
      v10 = objc_opt_new();
      [(_UISceneHostingController *)v9 setActivationController:v10];

      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v11 = getSFUIShareSheetRemoteSettingsHelperClass_softClass_0;
      v37 = getSFUIShareSheetRemoteSettingsHelperClass_softClass_0;
      if (!getSFUIShareSheetRemoteSettingsHelperClass_softClass_0)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v40 = __getSFUIShareSheetRemoteSettingsHelperClass_block_invoke_0;
        v41 = &unk_1E71F91F0;
        v42 = &v34;
        __getSFUIShareSheetRemoteSettingsHelperClass_block_invoke_0(&buf);
        v11 = v35[3];
      }

      v12 = v11;
      _Block_object_dispose(&v34, 8);
      v13 = self->_hostingController;
      sessionIdentifier = [(SHSheetRemoteCustomViewController *)self sessionIdentifier];
      [v11 updateHostingController:v13 sessionIdentifier:sessionIdentifier];

      hostingController = [(SHSheetRemoteCustomViewController *)self hostingController];
      sceneViewController = [hostingController sceneViewController];

      [(SHSheetRemoteCustomViewController *)self addChildViewController:sceneViewController];
      view = [sceneViewController view];
      view2 = [(SHSheetRemoteCustomViewController *)self view];
      [view2 setAccessibilityIdentifier:@"ShareSheet.RemoteContainerView"];
      [view2 addSubview:view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = MEMORY[0x1E696ACD8];
      leadingAnchor = [view leadingAnchor];
      leadingAnchor2 = [view2 leadingAnchor];
      v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v38[0] = v29;
      trailingAnchor = [view trailingAnchor];
      trailingAnchor2 = [view2 trailingAnchor];
      v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v38[1] = v26;
      topAnchor = [view topAnchor];
      topAnchor2 = [view2 topAnchor];
      v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v38[2] = v20;
      bottomAnchor = [view bottomAnchor];
      bottomAnchor2 = [view2 bottomAnchor];
      v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v38[3] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
      [v25 activateConstraints:v24];

      [sceneViewController didMoveToParentViewController:self];
    }
  }
}

@end