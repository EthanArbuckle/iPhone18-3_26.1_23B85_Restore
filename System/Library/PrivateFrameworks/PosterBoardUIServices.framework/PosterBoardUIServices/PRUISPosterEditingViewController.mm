@interface PRUISPosterEditingViewController
+ (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout;
+ (id)posterEditingViewControllerForProvider:(id)a3 role:(id)a4 context:(id)a5 boundingShape:(int64_t)a6 error:(id *)a7;
+ (id)posterEditingViewControllerForProvider:(id)a3 role:(id)a4 context:(id)a5 error:(id *)a6;
- (BOOL)_acquireInstanceForExtension:(id)a3;
- (BOOL)_prepareEditingForNewPoster;
- (BOOL)_prepareEditingForPath:(id)a3;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3;
- (PRSPosterConfiguration)configuration;
- (PRUISInjectedEditingClientSettingsDelegate)injectedClientSettingsDelegate;
- (PRUISPosterEditingViewController)initWithEditingConfiguration:(id)a3;
- (PRUISPosterEditingViewController)initWithExistingConfiguration:(id)a3 context:(id)a4 boundingShape:(int64_t)a5;
- (PRUISPosterEditingViewController)initWithExtensionIdentifier:(id)a3 configuration:(id)a4 context:(id)a5 boundingShape:(int64_t)a6;
- (PRUISPosterEditingViewControllerDelegate)delegate;
- (PRUISPosterMotionEventsDelegate)motionEventsDelegate;
- (id)_addObserverForNotificationName:(id)a3 forwardingNotificationName:(id)a4;
- (id)_buildSceneViewControllerAdditionalInfo;
- (id)_contentOnlyPosterLevelSet;
- (id)contentOnlySnapshot;
- (id)internalContext;
- (id)phonePreviewSnapshot;
- (uint64_t)deviceMotionController:(uint64_t)a3 didUpdateMotionWithRotation:(_OWORD *)a4;
- (uint64_t)updateMotionWithRotation:(_OWORD *)a3;
- (void)_commonInit;
- (void)_prepareEditingForNewPoster;
- (void)_prepareForEditing;
- (void)_registerForStateNotifications;
- (void)_updateEditingSceneViewControllerShowsContentWhenReady;
- (void)dealloc;
- (void)editingSceneViewController:(id)a3 deviceMotionEventsRequestedDidChange:(BOOL)a4;
- (void)editingSceneViewController:(id)a3 injectedEditingClientSettingsDidChange:(id)a4;
- (void)editingSceneViewController:(id)a3 preferredDeviceMotionUpdateIntervalDidChange:(double)a4;
- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7;
- (void)editingSceneViewControllerDidFinishShowingContent:(id)a3;
- (void)posterExtensionProvider:(id)a3 foundExtensions:(id)a4;
- (void)presentationDidFinishAnimated:(BOOL)a3;
- (void)setAcceptButtonType:(unint64_t)a3;
- (void)setContext:(id)a3;
- (void)setDeviceMotionEventGenerationActive:(BOOL)a3;
- (void)setDeviceMotionUpdateInterval:(double)a3;
- (void)setInjectedEditingSettings:(id)a3;
- (void)setShowsContentWhenReady:(BOOL)a3;
- (void)startGeneratingMotionEvents;
- (void)startSendingMotionEvents;
- (void)stopGeneratingMotionEvents;
- (void)stopSendingMotionEvents;
- (void)updateEditingControllerWithContext:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PRUISPosterEditingViewController

+ (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout
{
  if (_topButtonLayout_onceToken != -1)
  {
    +[PRUISPosterEditingViewController _topButtonLayout];
  }

  v4 = unk_1EDE9D268;
  retstr->var0.origin = _topButtonLayout_layout;
  retstr->var0.size = v4;
  v5 = unk_1EDE9D288;
  retstr->var1.origin = xmmword_1EDE9D278;
  retstr->var1.size = v5;
  return result;
}

double __52__PRUISPosterEditingViewController__topButtonLayout__block_invoke()
{
  SBSTopButtonFramesForPosters();
  result = 0.0;
  _topButtonLayout_layout = 0u;
  unk_1EDE9D268 = 0u;
  xmmword_1EDE9D278 = 0u;
  unk_1EDE9D288 = 0u;
  return result;
}

+ (id)posterEditingViewControllerForProvider:(id)a3 role:(id)a4 context:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [objc_opt_class() posterEditingViewControllerForProvider:v11 role:v10 context:v9 boundingShape:-1 error:a6];

  return v12;
}

+ (id)posterEditingViewControllerForProvider:(id)a3 role:(id)a4 context:(id)a5 boundingShape:(int64_t)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PRUISPosterEditingViewController posterEditingViewControllerForProvider:a2 role:? context:? boundingShape:? error:?];
  }

  v16 = [MEMORY[0x1E69C4FE8] mutableConfigurationWithRole:v14];
  v17 = [v16 _path];
  v18 = [v17 ensureContentsURLIsReachableAndReturnError:a7];

  if (v18)
  {
    v19 = [[a1 alloc] initWithExtensionIdentifier:v13 configuration:v16 context:v15 boundingShape:a6];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (PRUISPosterEditingViewController)initWithExtensionIdentifier:(id)a3 configuration:(id)a4 context:(id)a5 boundingShape:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v11;
  NSClassFromString(&cfstr_Prsmutablepost.isa);
  if (!v13)
  {
    [PRUISPosterEditingViewController initWithExtensionIdentifier:a2 configuration:? context:? boundingShape:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISPosterEditingViewController initWithExtensionIdentifier:a2 configuration:? context:? boundingShape:?];
  }

  v14 = v10;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v14)
  {
    [PRUISPosterEditingViewController initWithExtensionIdentifier:a2 configuration:? context:? boundingShape:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISPosterEditingViewController initWithExtensionIdentifier:a2 configuration:? context:? boundingShape:?];
  }

  v15 = v12;
  if (!v15)
  {
    [PRUISPosterEditingViewController initWithExtensionIdentifier:a2 configuration:? context:? boundingShape:?];
  }

  v16 = v15;
  if (([v15 conformsToProtocol:&unk_1F4AED040] & 1) == 0)
  {
    [PRUISPosterEditingViewController initWithExtensionIdentifier:a2 configuration:? context:? boundingShape:?];
  }

  v17 = [v13 role];
  IsValid = PFPosterRoleIsValid();

  if ((IsValid & 1) == 0)
  {
    [PRUISPosterEditingViewController initWithExtensionIdentifier:a2 configuration:? context:? boundingShape:?];
  }

  v19 = PUIPosterBoundingShapeFromInt();
  v28.receiver = self;
  v28.super_class = PRUISPosterEditingViewController;
  v20 = [(PRUISPosterEditingViewController *)&v28 initWithNibName:0 bundle:0];
  if (v20)
  {
    v21 = [v14 copy];
    extensionIdentifier = v20->_extensionIdentifier;
    v20->_extensionIdentifier = v21;

    objc_storeStrong(&v20->_posterContents, a4);
    v23 = [v13 role];
    role = v20->_role;
    v20->_role = v23;

    v25 = [v13 _path];
    path = v20->_path;
    v20->_path = v25;

    objc_storeStrong(&v20->_context, a5);
    v20->_boundingShape = v19;
    [(PRUISPosterEditingViewController *)v20 _commonInit];
  }

  return v20;
}

- (PRUISPosterEditingViewController)initWithExistingConfiguration:(id)a3 context:(id)a4 boundingShape:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 _path];
  v12 = v9;
  NSClassFromString(&cfstr_Prsposterconfi.isa);
  if (!v12)
  {
    [PRUISPosterEditingViewController initWithExistingConfiguration:a2 context:? boundingShape:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISPosterEditingViewController initWithExistingConfiguration:a2 context:? boundingShape:?];
  }

  if (([v11 isServerPosterPath] & 1) == 0)
  {
    [PRUISPosterEditingViewController initWithExistingConfiguration:a2 context:? boundingShape:?];
  }

  v13 = objc_alloc_init(PRUISPosterEditingViewControllerConfiguration);
  [(PRUISPosterEditingViewControllerConfiguration *)v13 setPosterContents:v12];
  [(PRUISPosterEditingViewControllerConfiguration *)v13 setContext:v10];
  [(PRUISPosterEditingViewControllerConfiguration *)v13 setBoundingShape:a5];
  v14 = [(PRUISPosterEditingViewController *)self initWithEditingConfiguration:v13];

  return v14;
}

- (PRUISPosterEditingViewController)initWithEditingConfiguration:(id)a3
{
  v5 = a3;
  v6 = [v5 posterContents];
  v7 = [v5 context];
  [v5 boundingShape];
  if (!v6)
  {
    [PRUISPosterEditingViewController initWithEditingConfiguration:a2];
  }

  v8 = [v6 _path];
  v9 = [v8 serverIdentity];
  v10 = v7;
  if (!v10)
  {
    [PRUISPosterEditingViewController initWithEditingConfiguration:a2];
  }

  v11 = v10;
  if (([v10 conformsToProtocol:&unk_1F4AED040] & 1) == 0)
  {
    [PRUISPosterEditingViewController initWithEditingConfiguration:a2];
  }

  v12 = PUIPosterBoundingShapeFromInt();
  if (!PUIPosterBoundingShapeIsValid())
  {
    v12 = -1;
  }

  if ((PUIPosterBoundingShapeIsValid() & 1) == 0)
  {
    [PRUISPosterEditingViewController initWithEditingConfiguration:a2];
  }

  v25.receiver = self;
  v25.super_class = PRUISPosterEditingViewController;
  v13 = [(PRUISPosterEditingViewController *)&v25 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = [v5 hostedContentSettings];
    hostedContentSettings = v13->_hostedContentSettings;
    v13->_hostedContentSettings = v14;

    v16 = [v5 userInterfaceStyleLuminanceThreshold];
    userInterfaceStyleLuminanceThreshold = v13->_userInterfaceStyleLuminanceThreshold;
    v13->_userInterfaceStyleLuminanceThreshold = v16;

    objc_storeStrong(&v13->_context, v7);
    objc_storeStrong(&v13->_posterContents, v6);
    objc_storeStrong(&v13->_path, v8);
    v18 = [v9 provider];
    extensionIdentifier = v13->_extensionIdentifier;
    v13->_extensionIdentifier = v18;

    v20 = [v9 role];
    role = v13->_role;
    v13->_role = v20;

    v22 = +[PRUISPosterSnapshotFilesystemCache incomingCallSnapshotCache];
    snapshotCache = v13->_snapshotCache;
    v13->_snapshotCache = v22;

    v13->_boundingShape = v12;
    [(PRUISPosterEditingViewController *)v13 _commonInit];
  }

  return v13;
}

- (void)_commonInit
{
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DECAF000-0000-0000-0000-000000000003"];
  v3 = [objc_alloc(MEMORY[0x1E69C5170]) initWithDefaultInstanceIdentifier:v7];
  extensionDataSource = self->_extensionDataSource;
  self->_extensionDataSource = v3;

  [(PFPosterExtensionProvider *)self->_extensionDataSource setObserverQueue:MEMORY[0x1E69E96A0]];
  [(PFPosterExtensionProvider *)self->_extensionDataSource addObserver:self];
  [(PFPosterExtensionProvider *)self->_extensionDataSource start];
  self->_prefersDisplayingSnapshotBeforePresentation = 1;
  self->_boundingShape = -1;
  v5 = objc_alloc_init(PRUISDeviceMotionController);
  deviceMotionController = self->_deviceMotionController;
  self->_deviceMotionController = v5;

  [(PRUISDeviceMotionController *)self->_deviceMotionController setDelegate:self];
  if (PUIFeatureEnabled())
  {
    [(PRUISPosterEditingViewController *)self setModalInPresentation:1];
  }

  [(PRUISPosterEditingViewController *)self _registerForStateNotifications];
}

- (PRSPosterConfiguration)configuration
{
  posterContents = self->_posterContents;
  v3 = objc_opt_class();
  v4 = posterContents;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)setContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    editingSceneViewController = self->_editingSceneViewController;
    v7 = PRUISLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      context = self->_context;
      v9 = 138543874;
      v10 = context;
      v11 = 2114;
      v12 = v5;
      v13 = 1026;
      v14 = editingSceneViewController != 0;
      _os_log_debug_impl(&dword_1CAE63000, v7, OS_LOG_TYPE_DEBUG, "Updating context from: %{public}@ to: %{public}@. Will propagate to editor: %{public}d", &v9, 0x1Cu);
    }

    objc_storeStrong(&self->_context, a3);
    if (editingSceneViewController)
    {
      [(PRUISPosterEditingViewController *)self updateEditingControllerWithContext:self->_editingSceneViewController];
    }
  }
}

- (void)_registerForStateNotifications
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = [(PRUISPosterEditingViewController *)self _addObserverForNotificationName:*MEMORY[0x1E69DDAC8] forwardingNotificationName:*MEMORY[0x1E696A2C8]];
  v4 = [(PRUISPosterEditingViewController *)self _addObserverForNotificationName:*MEMORY[0x1E69DDBC0] forwardingNotificationName:*MEMORY[0x1E696A2D0]];
  v5 = [(PRUISPosterEditingViewController *)self _addObserverForNotificationName:*MEMORY[0x1E69DDBC8] forwardingNotificationName:*MEMORY[0x1E696A2D8]];
  v6 = [(PRUISPosterEditingViewController *)self _addObserverForNotificationName:*MEMORY[0x1E69DDAB0] forwardingNotificationName:*MEMORY[0x1E696A2C0]];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  notificationObservers = self->_notificationObservers;
  self->_notificationObservers = v7;
}

- (id)_addObserverForNotificationName:(id)a3 forwardingNotificationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__PRUISPosterEditingViewController__addObserverForNotificationName_forwardingNotificationName___block_invoke;
  v12[3] = &unk_1E83A7468;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = [v8 addObserverForName:v6 object:0 queue:0 usingBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

void __95__PRUISPosterEditingViewController__addObserverForNotificationName_forwardingNotificationName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:0];

  v3 = [WeakRetained editingSceneViewController];
  if (objc_opt_respondsToSelector())
  {
    [v3 forwardAppearanceNotificationName:*(a1 + 32)];
  }
}

- (void)_prepareForEditing
{
  if ((self->_editingPreparationState - 1) >= 2)
  {
    self->_editingPreparationState = 1;
    if ([(PFPosterPath *)self->_path isServerPosterPath])
    {
      v3 = [(PRUISPosterEditingViewController *)self _prepareEditingForPath:self->_path];
    }

    else
    {
      v3 = [(PRUISPosterEditingViewController *)self _prepareEditingForNewPoster];
    }

    v4 = 2;
    if (!v3)
    {
      v4 = 0;
    }

    self->_editingPreparationState = v4;
  }
}

- (void)dealloc
{
  if (self->_extensionInstance)
  {
    v3 = [(PFPosterExtensionProvider *)self->_extensionDataSource instanceProvider];
    extensionInstance = self->_extensionInstance;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v3 relinquishExtensionInstance:extensionInstance reason:v6];

    [(PFPosterExtensionInstance *)self->_extensionInstance invalidate];
    v7 = self->_extensionInstance;
    self->_extensionInstance = 0;
  }

  [(PFPosterExtensionProvider *)self->_extensionDataSource cancel];
  extensionDataSource = self->_extensionDataSource;
  self->_extensionDataSource = 0;

  [(PREditingSceneViewController *)self->_editingSceneViewController setShowsContentWhenReady:0];
  [(PREditingSceneViewController *)self->_editingSceneViewController setForcesSceneForeground:0];
  [(PREditingSceneViewController *)self->_editingSceneViewController removeObserver:self];
  [(PRUISPosterEditingViewController *)self stopGeneratingMotionEvents];
  [(PRUISDeviceMotionController *)self->_deviceMotionController invalidate];
  v9.receiver = self;
  v9.super_class = PRUISPosterEditingViewController;
  [(PRUISPosterEditingViewController *)&v9 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PRUISPosterEditingViewController;
  [(PRUISPosterEditingViewController *)&v3 viewDidLoad];
  [(PRUISPosterEditingViewController *)self _prepareForEditing];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PRUISPosterEditingViewController;
  [(PRUISPosterEditingViewController *)&v6 viewDidAppear:?];
  if (self->_prefersDisplayingSnapshotBeforePresentation)
  {
    v5 = [(UIImageView *)self->_snapshotImageView superview];

    if (v5)
    {
      [(PRUISPosterEditingViewController *)self presentationDidFinishAnimated:v3];
    }
  }
}

- (id)internalContext
{
  if ([(PRUISPosterEditingContext *)self->_context conformsToProtocol:&unk_1F4AED0D8])
  {
    context = self->_context;
  }

  else
  {
    context = 0;
  }

  return context;
}

- (void)setAcceptButtonType:(unint64_t)a3
{
  if (self->_acceptButtonType != a3)
  {
    self->_acceptButtonType = a3;
    editingSceneViewController = self->_editingSceneViewController;
    if (a3 - 1 >= 3)
    {
      a3 = 0;
    }

    [(PREditingSceneViewController *)editingSceneViewController setAcceptButtonType:a3];
  }
}

- (void)setShowsContentWhenReady:(BOOL)a3
{
  if (self->_showsContentWhenReady != a3)
  {
    if (a3)
    {
      [(PRUISPosterEditingViewController *)self _prepareForEditing];
    }

    self->_showsContentWhenReady = a3;

    [(PRUISPosterEditingViewController *)self _updateEditingSceneViewControllerShowsContentWhenReady];
  }
}

- (void)_updateEditingSceneViewControllerShowsContentWhenReady
{
  editingSceneViewController = self->_editingSceneViewController;
  if (editingSceneViewController && self->_showsContentWhenReady != [(PREditingSceneViewController *)editingSceneViewController showsContentWhenReady])
  {
    [(PREditingSceneViewController *)self->_editingSceneViewController setShowsContentWhenReady:?];
    v4 = self->_editingSceneViewController;
    showsContentWhenReady = self->_showsContentWhenReady;

    [(PREditingSceneViewController *)v4 setForcesSceneForeground:showsContentWhenReady];
  }
}

- (void)presentationDidFinishAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self->_snapshotImageView;
  v6 = v5;
  if (v3)
  {
    v7 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PRUISPosterEditingViewController_presentationDidFinishAnimated___block_invoke;
    v12[3] = &unk_1E83A72F8;
    v13 = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PRUISPosterEditingViewController_presentationDidFinishAnimated___block_invoke_2;
    v10[3] = &unk_1E83A7490;
    v11 = v13;
    [v7 animateWithDuration:v12 animations:v10 completion:0.2];
    snapshotImageView = self->_snapshotImageView;
    self->_snapshotImageView = 0;

    v9 = v13;
  }

  else
  {
    [(UIImageView *)self->_snapshotImageView removeFromSuperview];
    v9 = self->_snapshotImageView;
    self->_snapshotImageView = 0;
  }

  [(PREditingSceneViewController *)self->_editingSceneViewController setForcesSceneForeground:0];
}

- (BOOL)_prepareEditingForNewPoster
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = [(PRUISPosterEditingViewController *)self extensionInstance];
  if (v4)
  {
    v5 = v4;
    goto LABEL_3;
  }

  v35 = [(PFPosterExtensionProvider *)self->_extensionDataSource extensionForIdentifier];
  v36 = [v35 objectForKey:self->_extensionIdentifier];

  if (v36 && [(PRUISPosterEditingViewController *)self _acquireInstanceForExtension:v36])
  {
    v5 = [(PRUISPosterEditingViewController *)self extensionInstance];

    if (v5)
    {
LABEL_3:
      v6 = MEMORY[0x1E69C4FE8];
      extensionIdentifier = self->_extensionIdentifier;
      v8 = [(PFPosterContents *)self->_posterContents _path];
      v9 = [v8 serverIdentity];
      v10 = [v9 descriptorIdentifier];
      v11 = [v6 mutableConfigurationWithProvider:extensionIdentifier descriptorIdentifier:v10 role:self->_role];

      v12 = [v11 _path];
      v51 = 0;
      LOBYTE(v9) = [v12 ensureContentsURLIsReachableAndReturnError:&v51];
      v13 = v51;
      if (v9)
      {

        path = self->_path;
        v50 = 0;
        v15 = [v12 copyContentsOfPath:path error:&v50];
        v16 = v50;
        if ((v15 & 1) == 0)
        {
          v17 = PRUISLogEditing();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [PRUISPosterEditingViewController _prepareEditingForNewPoster];
          }
        }

        v18 = [MEMORY[0x1E69C5308] defaultHomeScreenConfigurationForProvider:self->_extensionIdentifier role:self->_role];
        v19 = objc_alloc(MEMORY[0x1E69C52E0]);
        v20 = [v19 initWithDisplayNameLocalizationKey:&stru_1F4ACA8E0 ambientSupportedDataLayout:0 preferredTimeFontConfigurations:MEMORY[0x1E695E0F0] preferredTitleColors:MEMORY[0x1E695E0F0] luminance:v18 preferredHomeScreenConfiguration:0 preferredRenderingConfiguration:0.5];
        v21 = [MEMORY[0x1E69C5328] loadConfiguredPropertiesForPath:v12 error:0];
        v49 = 0;
        v22 = [MEMORY[0x1E69C5328] storeConfigurableOptionsForPath:v12 configurableOptions:v20 error:&v49];
        v48 = v49;
        if (v22)
        {
          objc_storeStrong(&self->_temporaryConfiguration, v11);
          v23 = objc_alloc(MEMORY[0x1E69C5290]);
          v24 = [(PRUISPosterEditingViewController *)self _buildSceneViewControllerAdditionalInfo];
          v25 = [v23 initWithProvider:v5 contents:v12 configurableOptions:v20 configuredProperties:v21 additionalInfo:v24];

          [v25 setDelegate:self];
          [v25 addObserver:self];
          if (self->_acceptButtonType - 1 >= 3)
          {
            acceptButtonType = 0;
          }

          else
          {
            acceptButtonType = self->_acceptButtonType;
          }

          [v25 setAcceptButtonType:acceptButtonType];
          v27 = PRUISLogEditing();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v53 = v12;
            _os_log_impl(&dword_1CAE63000, v27, OS_LOG_TYPE_DEFAULT, "Adding child editing view controller for new poster path: %{public}@}", buf, 0xCu);
          }

          [(PRUISPosterEditingViewController *)self addChildViewController:v25];
          v28 = [(PRUISPosterEditingViewController *)self view];
          v29 = [v25 view];
          [v28 addSubview:v29];

          v30 = [v25 view];
          v31 = [(PRUISPosterEditingViewController *)self view];
          [v31 bounds];
          [v30 setFrame:?];

          [v25 didMoveToParentViewController:self];
          editingSceneViewController = self->_editingSceneViewController;
          self->_editingSceneViewController = v25;
          v33 = v25;

          [(PRUISPosterEditingViewController *)self updateEditingControllerWithContext:self->_editingSceneViewController];
          v34 = 1;
          goto LABEL_23;
        }

        v46 = PRUISLogEditing();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [PRUISPosterEditingViewController _prepareEditingForNewPoster];
        }

        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"didLaydownConfigurableOptions"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [(PRUISPosterEditingViewController *)a2 _prepareEditingForNewPoster];
        }

        [v47 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
      }

      else
      {
        v44 = PRUISLogEditing();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [PRUISPosterEditingViewController _prepareEditingForNewPoster];
        }

        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"contentsURLIsReachable"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [(PRUISPosterEditingViewController *)a2 _prepareEditingForNewPoster];
        }

        [v45 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
      }

      JUMPOUT(0x1CAE6F8D8);
    }
  }

  else
  {
  }

  v5 = PRUISLogEditing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(PRUISPosterEditingViewController *)&self->_extensionIdentifier _prepareEditingForNewPoster:v5];
  }

  v34 = 0;
LABEL_23:

  return v34;
}

- (void)updateEditingControllerWithContext:(id)a3
{
  v4 = a3;
  [(PRUISPosterEditingViewController *)self _updateEditingSceneViewControllerShowsContentWhenReady];
  v5 = [(PRUISPosterEditingViewController *)self internalContext];
  [v5 applyContextToEditingSceneViewController:v4];
}

- (BOOL)_prepareEditingForPath:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PRUISPosterEditingViewController *)self extensionInstance];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69C5290]);
    v7 = [(PRUISPosterEditingViewController *)self _buildSceneViewControllerAdditionalInfo];
    v8 = [v6 initWithProvider:v5 contents:v4 configurableOptions:0 configuredProperties:0 additionalInfo:v7];

    [v8 setDelegate:self];
    [v8 addObserver:self];
    if (self->_acceptButtonType - 1 >= 3)
    {
      acceptButtonType = 0;
    }

    else
    {
      acceptButtonType = self->_acceptButtonType;
    }

    [v8 setAcceptButtonType:acceptButtonType];
    v10 = PRUISLogEditing();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138543362;
      v31 = v4;
      _os_log_impl(&dword_1CAE63000, v10, OS_LOG_TYPE_DEFAULT, "Adding child editing view controller for existing poster path: %{public}@}", &v30, 0xCu);
    }

    [(PRUISPosterEditingViewController *)self addChildViewController:v8];
    v11 = [(PRUISPosterEditingViewController *)self view];
    v12 = [v8 view];
    [v11 addSubview:v12];

    v13 = [v8 view];
    v14 = [(PRUISPosterEditingViewController *)self view];
    [v14 bounds];
    [v13 setFrame:?];

    [v8 didMoveToParentViewController:self];
    objc_storeStrong(&self->_editingSceneViewController, v8);
    [(PRUISPosterEditingViewController *)self updateEditingControllerWithContext:self->_editingSceneViewController];
    if (([(PREditingSceneViewController *)self->_editingSceneViewController showsContentWhenReady]& 1) == 0 && self->_prefersDisplayingSnapshotBeforePresentation)
    {
      if ([(NSString *)self->_role isEqualToString:*MEMORY[0x1E69C53B8]])
      {
        v15 = [(PRUISPosterEditingViewController *)self contentOnlySnapshot];
        if (v15 || ([(PRUISPosterEditingViewController *)self phonePreviewSnapshot], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v16 = v15;
          snapshotImageView = self->_snapshotImageView;
          if (!snapshotImageView)
          {
            v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
            v19 = [(PRUISPosterEditingViewController *)self view];
            [v19 bounds];
            v20 = [v18 initWithFrame:?];

            [(UIImageView *)v20 setAutoresizingMask:18];
            v21 = self->_snapshotImageView;
            self->_snapshotImageView = v20;

            snapshotImageView = self->_snapshotImageView;
          }

          [(UIImageView *)snapshotImageView setImage:v16];
          v22 = [(PRUISPosterEditingViewController *)self view];
          [v22 addSubview:self->_snapshotImageView];
        }
      }
    }
  }

  else
  {
    v8 = PRUISLogEditing();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PRUISPosterEditingViewController *)self _prepareEditingForPath:v8, v23, v24, v25, v26, v27, v28];
    }
  }

  return v5 != 0;
}

- (id)_buildSceneViewControllerAdditionalInfo
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E69C53E0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_boundingShape];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  hostedContentSettings = self->_hostedContentSettings;
  if (hostedContentSettings)
  {
    [v6 setObject:hostedContentSettings forKey:*MEMORY[0x1E69C53F0]];
  }

  userInterfaceStyleLuminanceThreshold = self->_userInterfaceStyleLuminanceThreshold;
  if (userInterfaceStyleLuminanceThreshold)
  {
    [v6 setObject:userInterfaceStyleLuminanceThreshold forKey:*MEMORY[0x1E69C53F8]];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v6 setObject:v9 forKey:*MEMORY[0x1E69C53E8]];

  return v6;
}

- (id)_contentOnlyPosterLevelSet
{
  v2 = [PRUISPosterLevelSet alloc];
  v3 = [(PRUISPosterLevelSet *)v2 initWithNumberOfLevels:4, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C5398], *MEMORY[0x1E69C53A0], *MEMORY[0x1E69C5380]];

  return v3;
}

- (uint64_t)updateMotionWithRotation:(_OWORD *)a3
{
  v3 = *(a1 + 1120);
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return [v3 updateMotionWithRotation:v6];
}

- (id)contentOnlySnapshot
{
  if ([(NSString *)self->_role isEqualToString:*MEMORY[0x1E69C53B8]]&& ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (context = 0) : (context = self->_context), v4 = context, v5 = [PRUISIncomingCallSnapshotDefinition alloc], v6 = [(PRUISIncomingCallSnapshotDefinition *)v5 initWithBaseIdentifier:PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly context:v4 attachmentUniqueIdentifiers:0], v7 = [[PRUISPosterSnapshotRequest alloc] initWithPoster:self->_posterContents definition:v6 interfaceOrientation:1], v4, v6, v7))
  {
    snapshotCache = self->_snapshotCache;
    v13 = 0;
    v9 = [(PRUISPosterSnapshotCache *)snapshotCache latestSnapshotBundleForRequest:v7 error:&v13];
    v10 = [(PRUISPosterEditingViewController *)self _contentOnlyPosterLevelSet];
    v11 = [v9 snapshotForLevelSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)phonePreviewSnapshot
{
  v36[2] = *MEMORY[0x1E69E9840];
  if (-[NSString isEqualToString:](self->_role, "isEqualToString:", *MEMORY[0x1E69C53B8]) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (context = 0) : (context = self->_context), v4 = context, v5 = [PRUISIncomingCallPosterContext alloc], -[PRUISPosterEditingContext nameVariations](v4, "nameVariations"), v6 = objc_claimAutoreleasedReturnValue(), -[PRUISPosterEditingContext horizontalTitleBoundingRect](v4, "horizontalTitleBoundingRect"), v8 = v7, v10 = v9, v12 = v11, v14 = v13, -[PRUISPosterEditingContext verticalTitleBoundingRect](v4, "verticalTitleBoundingRect"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, -[PRUISPosterEditingContext imageAssetID](v4, "imageAssetID"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[PRUISIncomingCallPosterContext initWithNameVariations:preferredNameStyle:horizontalTitleBoundingRect:verticalTitleBoundingRect:imageAssetID:personalPoster:](v5, "initWithNameVariations:preferredNameStyle:horizontalTitleBoundingRect:verticalTitleBoundingRect:imageAssetID:personalPoster:", v6, 1, v23, -[PRUISPosterEditingContext isPersonalPoster](v4, "isPersonalPoster"), v8, v10, v12, v14, v16, v18, v20, v22), v23, v6, v25 = [PRUISIncomingCallSnapshotDefinition alloc], v26 = PRPosterSnapshotDefinitionIdentifierIncomingCallComposite, v36[0] = @"TPUI_MobileLabelAndBottomBarAndInfoLabel", v36[1] = PRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel, [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2], v27 = objc_claimAutoreleasedReturnValue(), v28 = -[PRUISIncomingCallSnapshotDefinition initWithBaseIdentifier:context:attachmentUniqueIdentifiers:](v25, "initWithBaseIdentifier:context:attachmentUniqueIdentifiers:", v26, v24, v27), v27, v29 = -[PRUISPosterSnapshotRequest initWithPoster:definition:interfaceOrientation:]([PRUISPosterSnapshotRequest alloc], "initWithPoster:definition:interfaceOrientation:", self->_posterContents, v28, 1), v4, v28, v24, v29))
  {
    snapshotCache = self->_snapshotCache;
    v35 = 0;
    v31 = [(PRUISPosterSnapshotCache *)snapshotCache latestSnapshotBundleForRequest:v29 error:&v35];
    v32 = [(PRUISPosterEditingViewController *)self _contentOnlyPosterLevelSet];
    v33 = [v31 snapshotForLevelSet:v32];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)startSendingMotionEvents
{
  v6 = [(PREditingSceneViewController *)self->_editingSceneViewController scene];
  v3 = [v6 clientSettings];
  if ([v3 pr_deviceMotionEventsRequested])
  {
  }

  else
  {
    v4 = [v6 clientSettings];
    v5 = [v4 pr_deviceMotionMode];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  [(PRUISPosterEditingViewController *)self startGeneratingMotionEvents];
LABEL_5:
  self->_hostHasRequestedMotionEvents = 1;
}

- (void)stopSendingMotionEvents
{
  [(PRUISDeviceMotionController *)self->_deviceMotionController stopGeneratingMotionEvents];
  self->_hostHasRequestedMotionEvents = 0;

  [(PRUISPosterEditingViewController *)self setDeviceMotionEventGenerationActive:0];
}

- (void)setDeviceMotionUpdateInterval:(double)a3
{
  if (self->_deviceMotionUpdateInterval != a3)
  {
    self->_deviceMotionUpdateInterval = a3;
    v4 = [(PREditingSceneViewController *)self->_editingSceneViewController scene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PRUISPosterEditingViewController_setDeviceMotionUpdateInterval___block_invoke;
    v5[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
    *&v5[4] = a3;
    [v4 performUpdate:v5];
  }
}

- (void)setDeviceMotionEventGenerationActive:(BOOL)a3
{
  if (self->_deviceMotionEventGenerationActive != a3)
  {
    self->_deviceMotionEventGenerationActive = a3;
    [(PREditingSceneViewController *)self->_editingSceneViewController setDeviceMotionEventGenerationActive:?];
  }
}

- (void)startGeneratingMotionEvents
{
  [(PRUISPosterEditingViewController *)self setDeviceMotionEventGenerationActive:1];
  deviceMotionController = self->_deviceMotionController;

  [(PRUISDeviceMotionController *)deviceMotionController startGeneratingMotionEvents];
}

- (void)stopGeneratingMotionEvents
{
  [(PRUISDeviceMotionController *)self->_deviceMotionController stopGeneratingMotionEvents];

  [(PRUISPosterEditingViewController *)self setDeviceMotionEventGenerationActive:0];
}

- (void)posterExtensionProvider:(id)a3 foundExtensions:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v11 = [v10 posterExtensionBundleIdentifier];
      v12 = [v11 isEqualToString:self->_extensionIdentifier];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = PRUISLogEditing();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      extensionIdentifier = self->_extensionIdentifier;
      *buf = 138543874;
      v23 = v15;
      v24 = 2048;
      v25 = self;
      v26 = 2114;
      v27 = extensionIdentifier;
      v17 = v15;
      _os_log_impl(&dword_1CAE63000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@:%p)Found extension with id: %{public}@", buf, 0x20u);
    }
  }

  else
  {
LABEL_9:

LABEL_13:
    v14 = PRUISLogEditing();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterEditingViewController posterExtensionProvider:v14 foundExtensions:?];
    }

    v13 = 0;
  }

  if ([(PRUISPosterEditingViewController *)self _acquireInstanceForExtension:v13])
  {
    [(PRUISPosterEditingViewController *)self _prepareForEditing];
  }
}

- (BOOL)_acquireInstanceForExtension:(id)a3
{
  v4 = a3;
  v5 = [(PFPosterExtensionInstance *)self->_extensionInstance extension];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(PFPosterExtensionProvider *)self->_extensionDataSource instanceProvider];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    extensionInstance = self->_extensionInstance;
    if (extensionInstance)
    {
      [v8 relinquishExtensionInstance:extensionInstance reason:v10];
      v12 = self->_extensionInstance;
      self->_extensionInstance = 0;
    }

    v13 = [v8 acquireInstanceForExtension:v4 reason:v10 error:0];
    v14 = self->_extensionInstance;
    self->_extensionInstance = v13;

    v7 = self->_extensionInstance != 0;
  }

  return v7;
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3
{
  result = objc_opt_class();
  if (result)
  {

    return [(PREditingSceneViewControllerTopButtonLayout *)result _topButtonLayout];
  }

  else
  {
    retstr->var1.origin = 0u;
    retstr->var1.size = 0u;
    retstr->var0.origin = 0u;
    retstr->var0.size = 0u;
  }

  return result;
}

- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7
{
  v11 = a7;
  if (a4 == 1)
  {
    v12 = MEMORY[0x1E69C5008];
    v13 = a6;
    v14 = a5;
    v15 = [v12 alloc];
    v16 = [v14 _path];

    v17 = [v15 initWithPath:v16 extensionIdentifier:self->_extensionIdentifier];
    v21 = 0;
    v18 = [PRUISPosterConfigurationFinalizer finalizedConfigurationForAttributes:v17 withConfiguredProperties:v13 error:&v21];

    v19 = v21;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v11[2](v11, v19);
  v20 = [(PRUISPosterEditingViewController *)self delegate];
  [v20 editingViewController:self didFinishWithConfiguration:v18];
}

- (void)editingSceneViewController:(id)a3 deviceMotionEventsRequestedDidChange:(BOOL)a4
{
  if (!self->_hostHasRequestedMotionEvents || !a4)
  {
    [(PRUISPosterEditingViewController *)self stopGeneratingMotionEvents:a3];
  }

  else
  {
    [(PRUISPosterEditingViewController *)self startGeneratingMotionEvents:a3];
  }
}

- (void)editingSceneViewController:(id)a3 preferredDeviceMotionUpdateIntervalDidChange:(double)a4
{
  v6 = [(PRUISPosterEditingViewController *)self motionEventsDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 posterMotionEventsController:self preferredDeviceMotionUpdateIntervalDidChange:a4];
  }
}

- (void)editingSceneViewController:(id)a3 injectedEditingClientSettingsDidChange:(id)a4
{
  v6 = a4;
  v5 = [(PRUISPosterEditingViewController *)self injectedClientSettingsDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 injectedEditingClientSettingsDidChange:v6];
  }
}

- (void)editingSceneViewControllerDidFinishShowingContent:(id)a3
{
  v4 = [(PRUISPosterEditingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 editingViewControllerDidFinishShowingContent:self];
  }
}

- (uint64_t)deviceMotionController:(uint64_t)a3 didUpdateMotionWithRotation:(_OWORD *)a4
{
  v4 = a4[1];
  v6[0] = *a4;
  v6[1] = v4;
  return [a1 updateMotionWithRotation:v6];
}

- (void)setInjectedEditingSettings:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterEditingViewController setInjectedEditingSettings:a2];
  }

  v6 = v5;
  v7 = [(PREditingSceneViewController *)self->_editingSceneViewController scene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PRUISPosterEditingViewController_setInjectedEditingSettings___block_invoke;
  v9[3] = &unk_1E83A7260;
  v10 = v6;
  v8 = v6;
  [v7 performUpdate:v9];
}

- (PRUISPosterMotionEventsDelegate)motionEventsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEventsDelegate);

  return WeakRetained;
}

- (PRUISPosterEditingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PRUISInjectedEditingClientSettingsDelegate)injectedClientSettingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_injectedClientSettingsDelegate);

  return WeakRetained;
}

+ (void)posterEditingViewControllerForProvider:(char *)a1 role:context:boundingShape:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PFPosterRoleIsValid(role)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionIdentifier:(char *)a1 configuration:context:boundingShape:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSMutablePosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionIdentifier:(char *)a1 configuration:context:boundingShape:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionIdentifier:(char *)a1 configuration:context:boundingShape:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PRUISPosterEditingContext)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionIdentifier:(char *)a1 configuration:context:boundingShape:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PFPosterRoleIsValid([configuration role])", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionIdentifier:(char *)a1 configuration:context:boundingShape:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionIdentifier:(char *)a1 configuration:context:boundingShape:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExtensionIdentifier:(char *)a1 configuration:context:boundingShape:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExistingConfiguration:(char *)a1 context:boundingShape:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExistingConfiguration:(char *)a1 context:boundingShape:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[path isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithExistingConfiguration:(char *)a1 context:boundingShape:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEditingConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PRUISPosterEditingContext)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEditingConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PUIPosterBoundingShapeIsValid(puiBoundingShape)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEditingConfiguration:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEditingConfiguration:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"posterContents != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_prepareEditingForNewPoster
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_2();
  v9 = @"PRUISPosterEditingViewController.m";
  v10 = 1024;
  v11 = 420;
  v12 = v7;
  v13 = a3;
  _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
}

- (void)posterExtensionProvider:(uint64_t)a1 foundExtensions:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_5();
  v8 = 2048;
  v9 = a1;
  v10 = 2114;
  v11 = v4;
  v6 = v5;
  _os_log_error_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_ERROR, "(%{public}@:%p)Could not find extension with id: %{public}@", v7, 0x20u);
}

- (void)setInjectedEditingSettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"injectedEditingSettings", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end