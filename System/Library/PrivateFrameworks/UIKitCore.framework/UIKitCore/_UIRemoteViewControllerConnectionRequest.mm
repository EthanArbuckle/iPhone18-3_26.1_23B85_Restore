@interface _UIRemoteViewControllerConnectionRequest
+ (id)__requestRemoteViewController:(id)a3 service:(id)a4 fromServiceWithBundleIdentifier:(id)a5 traitCollection:(id)a6 legacyImpl:(id)a7 serviceViewControllerDeputyInterface:(id)a8 connectionHandler:(id)a9;
+ (id)requestViewControllerWithService:(id)a3 traitCollection:(id)a4 legacyImpl:(id)a5 remoteViewControllerClass:(Class)a6 serviceViewControllerDeputyInterface:(id)a7 connectionHandler:(id)a8;
- (id)_cancelWithError:(id)a3;
- (void)_cancelUnconditionallyThen:(id)a3;
- (void)_connectToDeputyWithInterface:(id)a3 fromExportedHostingObject:(id)a4 successHandler:(id)a5;
- (void)_connectToPlugInKitService;
- (void)_connectToServiceViewController;
- (void)_connectToTextEffectsOperator;
- (void)_connectToViewControllerControlMessageDeputy;
- (void)_connectToViewControllerOperator;
- (void)_connectToViewService;
- (void)_didFinishEstablishingConnection;
- (void)_sendServiceTextEffectsRequest;
- (void)_sendServiceViewControllerRequest;
- (void)dealloc;
@end

@implementation _UIRemoteViewControllerConnectionRequest

+ (id)__requestRemoteViewController:(id)a3 service:(id)a4 fromServiceWithBundleIdentifier:(id)a5 traitCollection:(id)a6 legacyImpl:(id)a7 serviceViewControllerDeputyInterface:(id)a8 connectionHandler:(id)a9
{
  v15 = a3;
  v55 = a4;
  v16 = a5;
  v53 = a6;
  v54 = a7;
  v52 = a8;
  v17 = a9;
  if (!v17)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"connection handler can't be nil"];
  }

  v18 = objc_alloc_init(_UIRemoteViewControllerConnectionRequest);
  v19 = v18;
  if (v18)
  {
    v51 = v16;
    if (v55)
    {
      objc_storeStrong(&v18->_service, a4);
      v19->_remoteViewControllerClass = NSClassFromString(v15);
      v20 = [(_UIRemoteViewService *)v19->_service viewControllerClassName];
      viewControllerClassName = v19->_viewControllerClassName;
      v19->_viewControllerClassName = v20;

      v22 = [(_UIRemoteViewService *)v19->_service contextToken];
      v23 = [v22 copy];
      contextToken = v19->_contextToken;
      v19->_contextToken = v23;

      v25 = MEMORY[0x1E696AEC0];
      v26 = [(_UIRemoteViewService *)v19->_service identifier];
      v27 = [v25 stringWithFormat:@"com.apple.uikit._UIRemoteViewControllerCreationRequest %@ %p", v26, a1];
    }

    else
    {
      v30 = [v54 _owningRemoteViewController];
      v31 = objc_opt_class();

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = objc_opt_class();
      }

      v32 = [v51 copy];
      viewServiceBundleIdentifier = v19->_viewServiceBundleIdentifier;
      v19->_viewServiceBundleIdentifier = v32;

      v34 = [(NSString *)v15 copy];
      v35 = v19->_viewControllerClassName;
      v19->_viewControllerClassName = v34;

      v19->_remoteViewControllerClass = v31;
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.uikit._UIRemoteViewControllerCreationRequest %@ %@ %p", v51, v15, a1];
    }

    objc_storeStrong(&v19->_traits, a6);
    objc_storeStrong(&v19->_legacyImpl, a7);
    objc_storeStrong(&v19->_serviceViewControllerDeputyInterface, a8);
    v36 = objc_alloc_init(_UIRemoteViewControllerConnectionInfo);
    connectionInfo = v19->_connectionInfo;
    v19->_connectionInfo = v36;

    v38 = dispatch_queue_create([v27 UTF8String], 0);
    queue = v19->_queue;
    v19->_queue = v38;

    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 0;
    objc_initWeak(&location, v19);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke;
    aBlock[3] = &unk_1E7128500;
    v64 = v67;
    v63 = v17;
    objc_copyWeak(&v65, &location);
    v40 = _Block_copy(aBlock);
    v41 = [v40 copy];
    handler = v19->_handler;
    v19->_handler = v41;

    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke_2;
    v60[3] = &unk_1E7103900;
    v43 = v19;
    v61 = v43;
    v44 = [_UIAsyncInvocation invocationWithBlock:v60];
    requestCancellationInvocation = v43->_requestCancellationInvocation;
    v43->_requestCancellationInvocation = v44;

    v46 = v19->_queue;
    if (v55)
    {
      v47 = v59;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v48 = __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke_3;
    }

    else
    {
      v47 = v58;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v48 = __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke_4;
    }

    v47[2] = v48;
    v47[3] = &unk_1E70F3590;
    v49 = v43;
    v47[4] = v49;
    dispatch_async(v46, v47);

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke_5;
    v56[3] = &unk_1E7103900;
    v57 = v49;
    v29 = [_UIAsyncInvocation invocationWithBlock:v56];

    objc_destroyWeak(&v65);
    objc_destroyWeak(&location);
    _Block_object_dispose(v67, 8);

    v16 = v51;
  }

  else
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:786747 userInfo:0];
    (*(v17 + 2))(v17, 0, v28);

    v29 = 0;
  }

  return v29;
}

+ (id)requestViewControllerWithService:(id)a3 traitCollection:(id)a4 legacyImpl:(id)a5 remoteViewControllerClass:(Class)a6 serviceViewControllerDeputyInterface:(id)a7 connectionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = NSStringFromClass(a6);
  v20 = [a1 __requestRemoteViewController:v19 service:v18 fromServiceWithBundleIdentifier:0 traitCollection:v17 legacyImpl:v16 serviceViewControllerDeputyInterface:v15 connectionHandler:v14];

  return v20;
}

- (void)dealloc
{
  v8[38] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = @"UIWindowFirstResponderDidChangeNotification";
  v8[1] = @"UITextEffectsWindowViewControllerWillRotateNotification";
  v8[2] = @"UIApplicationDidChangeStatusBarOrientationNotification";
  v8[3] = @"UIApplicationStatusBarHeightChangedNotification";
  v8[4] = @"UIApplicationWillEnterForegroundNotification";
  v8[5] = @"UISceneWillEnterForegroundNotification";
  v8[6] = 0x1EFBB47D0;
  v8[7] = 0x1EFBB4810;
  v8[8] = @"_UIPencilEventDidEvaluateBarrelFocusForSceneTransition";
  v8[9] = @"_UIViewServiceHostDidEvaluatePencilBarrelEventFocusForSceneTransition";
  v8[10] = @"UIApplicationDidEnterBackgroundNotification";
  v8[11] = @"UISceneDidEnterBackgroundNotification";
  v8[12] = 0x1EFBB47B0;
  v8[13] = 0x1EFBB47F0;
  v8[14] = @"_UIApplicationDidFinishSuspensionSnapshotNotification";
  v8[15] = @"_UIScreenDisplayConfigurationUpdatedNotification";
  v4 = *MEMORY[0x1E69DED18];
  v8[16] = @"UIScreenReferenceDisplayModeStatusDidChangeNotification";
  v8[17] = v4;
  v8[18] = @"UITextEffectsWindowOffsetDidChangeNotification";
  v8[19] = @"_UIScreenDidConnectNotification";
  v8[20] = @"_UIScreenDidDisconnectNotification";
  v8[21] = @"UIScreenCapturedDidChangeNotification";
  v8[22] = _UIWindowDidAttachContextNotification;
  v8[23] = @"UIApplicationDidBecomeActiveNotification";
  v8[24] = @"UIApplicationWillResignActiveNotification";
  v8[25] = @"_UIApplicationWillAddDeactivationReasonNotification";
  v8[26] = @"_UISystemApplicationWillLockNotification";
  v8[27] = @"_UISystemApplicationDidUnlockNotification";
  v8[28] = @"_UIScreenUniqueIdDidChangeNotification";
  v8[29] = @"_UISceneWillChangeSettingsSceneNotification";
  v8[30] = @"_UIWindowWillBecomeApplicationKeyNotification";
  v8[31] = @"_UIWindowWillMoveToSceneNotification";
  v8[32] = @"_UIWindowDidMoveToSceneNotification";
  v8[33] = 0x1EFBB48B0;
  v8[34] = @"UIWindowDidBecomeKeyNotification";
  v8[35] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v8[36] = @"UIWindowDidResignKeyNotification";
  v8[37] = @"_UIWindowDidResignApplicationKeyNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:38];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v5 names:?];

  [v3 removeObserver:self name:@"_UIWindowSceneEnhancedWindowingModeChanged" object:0];
  contextToken = self->_contextToken;
  self->_contextToken = 0;

  v7.receiver = self;
  v7.super_class = _UIRemoteViewControllerConnectionRequest;
  [(_UIRemoteViewControllerConnectionRequest *)&v7 dealloc];
}

- (void)_cancelUnconditionallyThen:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___UIRemoteViewControllerConnectionRequest__cancelUnconditionallyThen___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_connectToDeputyWithInterface:(id)a3 fromExportedHostingObject:(id)a4 successHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_isCancelledOrComplete)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__229;
    v21[4] = __Block_byref_object_dispose__229;
    v11 = self;
    v22 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115___UIRemoteViewControllerConnectionRequest__connectToDeputyWithInterface_fromExportedHostingObject_successHandler___block_invoke;
    aBlock[3] = &unk_1E7128550;
    v20 = v21;
    v12 = v8;
    v18 = v12;
    v19 = v10;
    v13 = _Block_copy(aBlock);
    v14 = [(_UIRemoteViewControllerConnectionInfo *)v11->_connectionInfo session];
    v15 = [v14 connectToDeputyWithInterface:v12 fromExportedHostingObject:v9 connectionHandler:v13];
    cancelInvocationForCurrentOperation = v11->_cancelInvocationForCurrentOperation;
    v11->_cancelInvocationForCurrentOperation = v15;

    _Block_object_dispose(v21, 8);
  }
}

- (void)_connectToViewService
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (self->_cancelInvocationForCurrentOperation)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:1248 description:@"A connection is already in progress."];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__229;
  v15[4] = __Block_byref_object_dispose__229;
  v3 = self;
  v16 = v3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___UIRemoteViewControllerConnectionRequest__connectToViewService__block_invoke;
  v14[3] = &unk_1E7128578;
  v14[4] = v15;
  v4 = _Block_copy(v14);
  v5 = [objc_opt_class() XPCInterface];
  v17[0] = v5;
  v6 = [objc_opt_class() XPCInterface];
  v17[1] = v6;
  v7 = [objc_opt_class() XPCInterface];
  serviceViewControllerDeputyInterface = v3->_serviceViewControllerDeputyInterface;
  v17[2] = v7;
  v17[3] = serviceViewControllerDeputyInterface;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];

  v10 = [_UIViewServiceHostSessionDeputyShim connectToViewService:0 appBundleViewServiceBundleIdentifier:v3->_viewServiceBundleIdentifier deputyInterfaces:v9 connectionHandler:v4];
  cancelInvocationForCurrentOperation = self->_cancelInvocationForCurrentOperation;
  self->_cancelInvocationForCurrentOperation = v10;

  _Block_object_dispose(v15, 8);
}

- (void)_connectToPlugInKitService
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (self->_cancelInvocationForCurrentOperation)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:1268 description:@"A connection is already in progress."];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__229;
  v15[4] = __Block_byref_object_dispose__229;
  v3 = self;
  v16 = v3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70___UIRemoteViewControllerConnectionRequest__connectToPlugInKitService__block_invoke;
  v14[3] = &unk_1E7128578;
  v14[4] = v15;
  v4 = _Block_copy(v14);
  v5 = [objc_opt_class() XPCInterface];
  v17[0] = v5;
  v6 = [objc_opt_class() XPCInterface];
  v17[1] = v6;
  v7 = [objc_opt_class() XPCInterface];
  serviceViewControllerDeputyInterface = v3->_serviceViewControllerDeputyInterface;
  v17[2] = v7;
  v17[3] = serviceViewControllerDeputyInterface;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];

  v10 = [_UIViewServiceHostSessionDeputyShim connectToViewService:v3->_service appBundleViewServiceBundleIdentifier:0 deputyInterfaces:v9 connectionHandler:v4];
  cancelInvocationForCurrentOperation = self->_cancelInvocationForCurrentOperation;
  self->_cancelInvocationForCurrentOperation = v10;

  _Block_object_dispose(v15, 8);
}

- (void)_connectToViewControllerOperator
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__229;
  v6[4] = __Block_byref_object_dispose__229;
  v2 = self;
  v7 = v2;
  v3 = +[_UIViewServiceViewControllerOperator XPCInterface];
  v4 = [[_UIRemoteViewControllerWeakWrapperProxy alloc] initWithTarget:v2->_legacyImpl];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76___UIRemoteViewControllerConnectionRequest__connectToViewControllerOperator__block_invoke;
  v5[3] = &unk_1E7100678;
  v5[4] = v6;
  [(_UIRemoteViewControllerConnectionRequest *)v2 _connectToDeputyWithInterface:v3 fromExportedHostingObject:v4 successHandler:v5];

  _Block_object_dispose(v6, 8);
}

- (void)_sendServiceViewControllerRequest
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_isCancelledOrComplete)
  {
    v4 = [(_UIRemoteViewControllerConnectionInfo *)self->_connectionInfo hostedWindowHostingHandle];

    if (v4)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:1300 description:@"Already got the hosted window context ID"];
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = *MEMORY[0x1E69E9A60];
      v6 = [UIApp _accessibilityMachPort];
      mach_port_insert_right(v5, v6, [UIApp _accessibilityMachPort], 0x14u);
      v7 = objc_alloc(MEMORY[0x1E698E6C8]);
      v8 = [v7 initWithPort:{objc_msgSend(UIApp, "_accessibilityMachPort")}];
    }

    else
    {
      v8 = 0;
    }

    v9 = +[_UITextServiceSession availableTextServices];
    traits = self->_traits;
    if (traits)
    {
      v11 = traits;
    }

    else
    {
      v12 = [objc_opt_self() mainScreen];
      v11 = [v12 traitCollection];
    }

    v13 = objc_alloc_init(_UIViewServiceViewControllerOperatorCreateOptions);
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v13 setViewControllerClassName:self->_viewControllerClassName];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v13 setContextToken:self->_contextToken];
    v14 = +[UIScreen __displayConfigurationsForViewService];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v13 setDisplayConfigurations:v14];

    v15 = _obscuredTraitCollectionFromTraitCollection(v11);
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v13 setTraitCollection:v15];

    v16 = [objc_opt_self() mainScreen];
    -[_UIViewServiceViewControllerOperatorCreateOptions setInitialInterfaceOrientation:](v13, "setInitialInterfaceOrientation:", [v16 _interfaceOrientation]);

    [(_UIViewServiceViewControllerOperatorCreateOptions *)v13 setHostAccessibilityServerPort:v8];
    [(_UIViewServiceViewControllerOperatorCreateOptions *)v13 setAvailableTextServices:v9];
    v17 = [(_UIRemoteViewControllerConnectionInfo *)self->_connectionInfo viewControllerOperatorProxy];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77___UIRemoteViewControllerConnectionRequest__sendServiceViewControllerRequest__block_invoke;
    v24[3] = &unk_1E70FD7F8;
    v24[4] = self;
    v18 = [v17 remoteObjectProxyWithErrorHandler:v24];

    v19 = *(__UILogGetCategoryCachedImpl("ViewServiceConnectionRequest", &_sendServiceViewControllerRequest___s_category) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(_UIRemoteViewService *)self->_service identifier];
      viewServiceBundleIdentifier = v20;
      if (!v20)
      {
        viewServiceBundleIdentifier = self->_viewServiceBundleIdentifier;
      }

      *buf = 138543362;
      v26 = viewServiceBundleIdentifier;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "Sending view controller creation request to %{public}@", buf, 0xCu);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77___UIRemoteViewControllerConnectionRequest__sendServiceViewControllerRequest__block_invoke_271;
    v23[3] = &unk_1E71285A0;
    v23[4] = self;
    [v18 __createViewControllerWithOptions:v13 completionBlock:v23];
  }
}

- (void)_connectToTextEffectsOperator
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__229;
  v6[4] = __Block_byref_object_dispose__229;
  v2 = self;
  v7 = v2;
  v3 = +[_UIViewServiceTextEffectsOperator XPCInterface];
  v4 = [[_UIRemoteViewControllerWeakWrapperProxy alloc] initWithTarget:v2->_legacyImpl];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73___UIRemoteViewControllerConnectionRequest__connectToTextEffectsOperator__block_invoke;
  v5[3] = &unk_1E7100678;
  v5[4] = v6;
  [(_UIRemoteViewControllerConnectionRequest *)v2 _connectToDeputyWithInterface:v3 fromExportedHostingObject:v4 successHandler:v5];

  _Block_object_dispose(v6, 8);
}

- (void)_sendServiceTextEffectsRequest
{
  if (!self->_isCancelledOrComplete)
  {
    v4 = [(_UIRemoteViewControllerConnectionInfo *)self->_connectionInfo textEffectsWindowHostingHandle];

    if (v4)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:1402 description:@"Already got the text effects window's hosting handle"];
    }

    v5 = [(_UIRemoteViewControllerConnectionInfo *)self->_connectionInfo textEffectsOperatorProxy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74___UIRemoteViewControllerConnectionRequest__sendServiceTextEffectsRequest__block_invoke;
    v9[3] = &unk_1E70FD7F8;
    v9[4] = self;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74___UIRemoteViewControllerConnectionRequest__sendServiceTextEffectsRequest__block_invoke_2;
    v8[3] = &unk_1E71285C8;
    v8[4] = self;
    [v6 __createHostedTextEffectsWithReplyHandler:v8];
  }
}

- (void)_connectToServiceViewController
{
  v2 = self;
  serviceViewControllerDeputyInterface = v2->_serviceViewControllerDeputyInterface;
  v4 = [_UIRemoteViewControllerWeakWrapperProxy alloc];
  v5 = [(_UIRemoteViewControllerLegacyImpl *)v2->_legacyImpl _owningRemoteViewController];
  v6 = [(_UIRemoteViewControllerWeakWrapperProxy *)v4 initWithTarget:v5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75___UIRemoteViewControllerConnectionRequest__connectToServiceViewController__block_invoke;
  v8[3] = &unk_1E7118240;
  v9 = v2;
  v7 = v2;
  [(_UIRemoteViewControllerConnectionRequest *)v7 _connectToDeputyWithInterface:serviceViewControllerDeputyInterface fromExportedHostingObject:v6 successHandler:v8];
}

- (void)_connectToViewControllerControlMessageDeputy
{
  v2 = self;
  v3 = +[_UIViewControllerControlMessageDeputy XPCInterface];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88___UIRemoteViewControllerConnectionRequest__connectToViewControllerControlMessageDeputy__block_invoke;
  v5[3] = &unk_1E7118240;
  v6 = v2;
  v4 = v2;
  [(_UIRemoteViewControllerConnectionRequest *)v4 _connectToDeputyWithInterface:v3 fromExportedHostingObject:0 successHandler:v5];
}

- (void)_didFinishEstablishingConnection
{
  if (!self->_isCancelledOrComplete)
  {
    self->_isCancelledOrComplete = 1;
    [(objc_class *)self->_remoteViewControllerClass __shouldHostRemoteTextEffectsWindow];
    v3 = *(__UILogGetCategoryCachedImpl("ViewServiceConnectionRequest", &_didFinishEstablishingConnection___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Connection to service was established", v7, 2u);
    }

    v4 = self;
    handler = self->_handler;
    if (handler)
    {
      handler[2](handler, self->_connectionInfo, 0);
      v6 = self->_handler;
    }

    else
    {
      v6 = 0;
    }

    self->_handler = 0;
  }
}

- (id)_cancelWithError:(id)a3
{
  v5 = a3;
  if (!self->_error)
  {
    objc_storeStrong(&self->_error, a3);
  }

  requestCancellationInvocation = self->_requestCancellationInvocation;
  if (requestCancellationInvocation)
  {
    v7 = requestCancellationInvocation;
  }

  else
  {
    v7 = +[_UIAsyncInvocation emptyInvocation];
  }

  v8 = v7;
  v9 = [(_UIAsyncInvocation *)v7 invoke];

  return v9;
}

@end