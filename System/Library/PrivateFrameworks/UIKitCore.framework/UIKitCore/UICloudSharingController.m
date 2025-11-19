@interface UICloudSharingController
+ (id)allowedSharingOptionsFromPermissions:(unint64_t)a3;
- (UICloudSharingController)initWithPreparationHandler:(void *)preparationHandler;
- (UICloudSharingController)initWithShare:(CKShare *)share container:(CKContainer *)container;
- (UICloudSharingController)initWithShare:(id)a3 preparationHandler:(id)a4;
- (UIViewController)_originalPresentingViewController;
- (_UICloudSharingControllerDelegate_Internal)internalDelegate;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_customPresentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)_sharingViewPresentationController;
- (id)activityItemSource;
- (id)createActivityLinkMetadata;
- (id)delegate;
- (id)excludedActivityTypes;
- (int64_t)modalPresentationStyle;
- (uint64_t)_commonInit;
- (void)__viewControllerWillBePresented:(BOOL)a3;
- (void)_callPreparationHandler:(id)a3;
- (void)_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:(double)a3 y:(double)a4 width:(double)a5 height:(double)a6;
- (void)_cloudSharingControllerDidActivateShowActivityController;
- (void)_cloudSharingControllerDidActivateShowSharedFolder;
- (void)_cloudSharingControllerDidChooseTransport:(id)a3;
- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)a3;
- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)a3;
- (void)_deleteShareAfterDismissalWithoutSave:(id)a3;
- (void)_didDismiss;
- (void)_dismissForActivityRepresentation:(id)a3;
- (void)_dismissViewControllerWithError:(id)a3;
- (void)_representFullscreenAfterActivityDismissal:(id)a3;
- (void)_sendDidStopSharingDelegate;
- (void)_setFolderSubitemName:(id)a3;
- (void)_setHeaderPrimaryImage:(id)a3;
- (void)_setHeaderSecondaryImage:(id)a3;
- (void)_setParticipantDetails:(id)a3;
- (void)_setPrimaryAuxiliarySwitchState:(BOOL)a3;
- (void)_setPrimaryAuxiliarySwitchTitle:(id)a3;
- (void)_setRootFolderTitle:(id)a3;
- (void)_setSecondaryAuxiliarySwitchState:(BOOL)a3;
- (void)_setSecondaryAuxiliarySwitchTitle:(id)a3;
- (void)_setSectionTitleForAuxiliarySwitches:(id)a3;
- (void)_shareDidChange:(id)a3;
- (void)addResizingChildViewController:(id)a3;
- (void)dealloc;
- (void)setContainer:(id)a3;
@end

@implementation UICloudSharingController

- (uint64_t)_commonInit
{
  v2 = [a1 preparationHandler];
  if (!v2)
  {
    v3 = [a1 share];
    if (v3)
    {
      v4 = v3;
      v5 = [a1 container];

      if (v5)
      {
        goto LABEL_6;
      }
    }

    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    [v2 handleFailureInMethod:sel__commonInit object:a1 file:@"UICloudSharingController.m" lineNumber:120 description:@"Must have either share or preparation handler set"];
  }

LABEL_6:
  v6 = [a1 preparationHandler];
  if (v6)
  {
    v7 = [a1 share];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (IsGelatoEnabled() && !(v8 | ((dyld_program_sdk_at_least() & 1) == 0)))
  {
    return 1;
  }

  v9 = MEMORY[0x1E696ABD0];
  v10 = CloudSharingUIExtensionBundleID();
  v11 = [v9 extensionWithIdentifier:v10 error:0];

  v12 = v11 != 0;
  if (v11)
  {
    v13 = dispatch_semaphore_create(0);
    v14 = a1[124];
    a1[124] = v13;

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __39__UICloudSharingController__commonInit__block_invoke;
    v18[3] = &unk_1E712CA18;
    v18[4] = a1;
    v15 = [_UIResilientRemoteViewContainerViewController instantiateWithExtension:v11 completion:v18];
    [a1 addResizingChildViewController:v15];
    v16 = a1[130];
    a1[130] = v15;

    [a1 setModalPresentationStyle:7];
    [a1 setPreferredContentSize:{375.0, 636.0}];
  }

  return v12;
}

void __39__UICloudSharingController__commonInit__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_opt_class();
    NSLog(&cfstr_RemoteViewCont.isa, v7, v6);
  }

  else
  {
    [v16 setPublicController:*(a1 + 32)];
    v8 = [v16 serviceViewControllerProxy];
    v9 = *(a1 + 32);
    if (v9[127])
    {
      v10 = [v9 share];
      v11 = [*(a1 + 32) container];
      v12 = [v11 containerID];
      [v8 _setCloudKitShare:v10 containerID:v12];
    }

    else
    {
      v10 = [v9 delegate];
      v12 = [v10 itemTitleForCloudSharingController:*(a1 + 32)];
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 itemThumbnailDataForCloudSharingController:*(a1 + 32)];
      }

      else
      {
        v11 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v13 = [v10 itemTypeForCloudSharingController:*(a1 + 32)];
      }

      else
      {
        v13 = 0;
      }

      [v8 _setCloudKitThumbnail:v11 title:v12 type:v13];
    }

    v14 = *(a1 + 32);
    if (*(v14 + 1064))
    {
      [v8 _setCloudKitContainerSetupInfo:?];
      v14 = *(a1 + 32);
    }

    if (*(v14 + 1072))
    {
      [v8 _setParticipantDetails:?];
      v14 = *(a1 + 32);
      if (*(v14 + 1104))
      {
        [v8 _setSectionTitleForAuxiliarySwitches:?];
        v14 = *(a1 + 32);
      }

      if (*(v14 + 1112))
      {
        [v8 _setPrimaryAuxiliarySwitchTitle:?];
        v14 = *(a1 + 32);
      }

      if (*(v14 + 1001) == 1)
      {
        [v8 _setPrimaryAuxiliarySwitchState:1];
        v14 = *(a1 + 32);
      }

      if (*(v14 + 1120))
      {
        [v8 _setSecondaryAuxiliarySwitchTitle:?];
        v14 = *(a1 + 32);
      }

      if (*(v14 + 1002) == 1)
      {
        [v8 _setSecondaryAuxiliarySwitchState:1];
        v14 = *(a1 + 32);
      }
    }

    if (*(v14 + 1128))
    {
      [v8 _setRootFolderTitle:?];
      v14 = *(a1 + 32);
    }

    if (*(v14 + 1136))
    {
      [v8 _setFolderSubitemName:?];
      v14 = *(a1 + 32);
    }

    if (*(v14 + 1144))
    {
      [v8 _setHeaderPrimaryImage:?];
      v14 = *(a1 + 32);
    }

    if (*(v14 + 1152))
    {
      [v8 _setHeaderSecondaryImage:?];
    }

    v15 = [UIApp _localizedApplicationName];
    [v8 _setAppName:v15];

    if (*(*(a1 + 32) + 1024))
    {
      [v8 _setAvailablePermissions:?];
    }
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 992));
}

- (UICloudSharingController)initWithShare:(CKShare *)share container:(CKContainer *)container
{
  v6 = share;
  v7 = container;
  v12.receiver = self;
  v12.super_class = UICloudSharingController;
  v8 = [(UIViewController *)&v12 init];
  v9 = v8;
  if (v8 && ([(UICloudSharingController *)v8 setShare:v6], [(UICloudSharingController *)v9 setContainer:v7], ![(UICloudSharingController *)v9 _commonInit]))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (UICloudSharingController)initWithShare:(id)a3 preparationHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = UICloudSharingController;
  v9 = [(UIViewController *)&v17 init];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [v7 participants];
  v11 = [v10 count];

  if (v11 >= 2)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    v16 = NSStringFromSelector(sel_initWithShare_container_);
    [v14 handleFailureInMethod:a2 object:v9 file:@"UICloudSharingController.m" lineNumber:255 description:{@"Share passed in to %@ has multiple participants. Use %@ for an existing share.", v15, v16}];
  }

  [(UICloudSharingController *)v9 setShare:v7];
  [(UICloudSharingController *)v9 setPreparationHandler:v8];
  if (![(UICloudSharingController *)v9 _commonInit])
  {
    v12 = 0;
  }

  else
  {
LABEL_5:
    v12 = v9;
  }

  return v12;
}

- (UICloudSharingController)initWithPreparationHandler:(void *)preparationHandler
{
  v4 = preparationHandler;
  v9.receiver = self;
  v9.super_class = UICloudSharingController;
  v5 = [(UIViewController *)&v9 init];
  v6 = v5;
  if (v5 && ([(UICloudSharingController *)v5 setPreparationHandler:v4], ![(UICloudSharingController *)v6 _commonInit]))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(UICloudSharingController *)self _remoteViewController];
  [v3 setPublicController:0];

  v4.receiver = self;
  v4.super_class = UICloudSharingController;
  [(UIViewController *)&v4 dealloc];
}

- (void)__viewControllerWillBePresented:(BOOL)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = [(UICloudSharingController *)self preparationHandler];
  if (v4)
  {
    v5 = [(UICloudSharingController *)self share];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 1;
  }

  if (IsGelatoEnabled() && !(v6 | ((dyld_program_sdk_at_least() & 1) == 0)))
  {
    v7 = [(UICloudSharingController *)self _activityViewController];

    if (!v7)
    {
      v8 = [objc_opt_class() allowedSharingOptionsFromPermissions:{-[UICloudSharingController availablePermissions](self, "availablePermissions")}];
      v9 = [_UISharingControllerActivityItemProvider alloc];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__UICloudSharingController___viewControllerWillBePresented___block_invoke;
      v23[3] = &unk_1E712CAB8;
      v23[4] = self;
      v10 = [(_UISharingControllerActivityItemProvider *)v9 initWithCKSharePreparationHandler:v23 allowedSharingOptions:v8];
      v11 = [UIActivityItemsConfiguration alloc];
      v24[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v13 = [(UIActivityItemsConfiguration *)v11 initWithItemProviders:v12];

      objc_initWeak(&location, self);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_7;
      v20[3] = &unk_1E712CAE0;
      objc_copyWeak(&v21, &location);
      [(UIActivityItemsConfiguration *)v13 setPerItemMetadataProvider:v20];
      v14 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItemsConfiguration:v13];
      [v14 setAllowsEmbedding:1];
      [v14 setCollaborationMode:4];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_8;
      v18 = &unk_1E712CB08;
      objc_copyWeak(&v19, &location);
      [v14 setCompletionWithItemsHandler:&v15];
      [(UICloudSharingController *)self addResizingChildViewController:v14, v15, v16, v17, v18];
      [(UICloudSharingController *)self _setActivityViewController:v14];
      objc_destroyWeak(&v19);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void __60__UICloudSharingController___viewControllerWillBePresented___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) preparationHandler];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_2;
  v8[3] = &unk_1E712CA90;
  v8[4] = v5;
  v9 = v3;
  v6 = v4[2];
  v7 = v3;
  v6(v4, v5, v8);
}

void __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, *(a1 + 32));
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v10 = getCKSystemSharingUIObserverClass_softClass;
  v25 = getCKSystemSharingUIObserverClass_softClass;
  if (!getCKSystemSharingUIObserverClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getCKSystemSharingUIObserverClass_block_invoke;
    v21[3] = &unk_1E70F2F20;
    v21[4] = &v22;
    __getCKSystemSharingUIObserverClass_block_invoke(v21);
    v10 = v23[3];
  }

  v11 = v10;
  _Block_object_dispose(&v22, 8);
  v12 = [[v10 alloc] initWithContainer:v8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_3;
  v18[3] = &unk_1E712CA40;
  objc_copyWeak(&v19, &location);
  [v12 setSystemSharingUIDidSaveShareBlock:v18];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_5;
  v16 = &unk_1E712CA68;
  objc_copyWeak(&v17, &location);
  [v12 setSystemSharingUIDidStopSharingBlock:&v13];
  [*(a1 + 32) _setSystemSharingUIObserver:{v12, v13, v14, v15, v16}];
  (*(*(a1 + 40) + 16))();
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

void __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      NSLog(&cfstr_Systemsharingu.isa, v7);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_4;
      block[3] = &unk_1E70F35B8;
      block[4] = WeakRetained;
      v11 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      NSLog(&cfstr_Systemsharingu_0.isa, v4);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_6;
      block[3] = &unk_1E70F3590;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

id __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 isEqualToString:@"linkPresentationMetadata"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained createActivityLinkMetadata];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __60__UICloudSharingController___viewControllerWillBePresented___block_invoke_8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (a3)
  {
    v9 = [WeakRetained delegate];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = [v8 delegate];
    [v11 cloudSharingControllerDidSaveShare:v8];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v11 = [WeakRetained delegate];
    [v11 cloudSharingController:v8 failedToSaveShareWithError:v12];
  }

LABEL_7:
}

- (id)createActivityLinkMetadata
{
  v3 = [(UICloudSharingController *)self delegate];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = qword_1ED49A868;
  v26 = qword_1ED49A868;
  if (!qword_1ED49A868)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getLPLinkMetadataClass_block_invoke_1;
    v21 = &unk_1E70F2F20;
    v22 = &v23;
    __getLPLinkMetadataClass_block_invoke_1(&v18);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  v6 = objc_alloc_init(v4);
  v7 = [v3 itemTitleForCloudSharingController:self];
  [v6 setTitle:v7];

  if (objc_opt_respondsToSelector())
  {
    v8 = [v3 itemThumbnailDataForCloudSharingController:self];
    if (v8)
    {
      v9 = v8;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v10 = qword_1ED49A870;
      v26 = qword_1ED49A870;
      if (!qword_1ED49A870)
      {
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __getLPImagePropertiesClass_block_invoke;
        v21 = &unk_1E70F2F20;
        v22 = &v23;
        __getLPImagePropertiesClass_block_invoke(&v18);
        v10 = v24[3];
      }

      v11 = v10;
      _Block_object_dispose(&v23, 8);
      v12 = objc_alloc_init(v10);
      [v12 setType:5];
      v13 = [UIImage imageWithData:v9];
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v14 = qword_1ED49A878;
      v26 = qword_1ED49A878;
      if (!qword_1ED49A878)
      {
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __getLPImageClass_block_invoke;
        v21 = &unk_1E70F2F20;
        v22 = &v23;
        __getLPImageClass_block_invoke(&v18);
        v14 = v24[3];
      }

      v15 = v14;
      _Block_object_dispose(&v23, 8);
      v16 = [[v14 alloc] initWithPlatformImage:v13 properties:v12];
      [v6 setIcon:v16];
    }
  }

  return v6;
}

- (void)setContainer:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_container, a3);
  v5 = [v10 setupInfo];
  containerSetupInfo = self->_containerSetupInfo;
  self->_containerSetupInfo = v5;

  if (self->_containerSetupInfo)
  {
    v7 = [(UICloudSharingController *)self _childViewController];
    v8 = [v7 remoteViewController];
    v9 = [v8 serviceViewControllerProxy];

    [v9 _setCloudKitContainerSetupInfo:self->_containerSetupInfo];
  }
}

- (void)_callPreparationHandler:(id)a3
{
  v5 = a3;
  v6 = [(UICloudSharingController *)self preparationHandler];

  if (v6)
  {
    v7 = [(UICloudSharingController *)self preparationHandler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__UICloudSharingController__callPreparationHandler___block_invoke;
    v8[3] = &unk_1E712CB80;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    (v7)[2](v7, self, v8);
  }
}

void __52__UICloudSharingController__callPreparationHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 && !v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a1[6] object:a1[4] file:@"UICloudSharingController.m" lineNumber:469 description:{@"%@ preparation handler was called with a nil share or container, but no error", objc_opt_class()}];
  }

  v12 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UICloudSharingController__callPreparationHandler___block_invoke_2;
  block[3] = &unk_1E712CB58;
  v13 = a1[4];
  v14 = a1[5];
  v20 = v10;
  v21 = v13;
  v23 = v8;
  v24 = v14;
  v22 = v7;
  v15 = v8;
  v16 = v7;
  v17 = v10;
  dispatch_async(v12, block);
}

void __52__UICloudSharingController__callPreparationHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 992);
  v4 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];

    v2 = v5;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UICloudSharingController__callPreparationHandler___block_invoke_3;
  block[3] = &unk_1E712CB30;
  v10 = v2;
  v8 = *(a1 + 32);
  v6 = v8.i64[0];
  v11 = vextq_s8(v8, v8, 8uLL);
  v14 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v7 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__UICloudSharingController__callPreparationHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__UICloudSharingController__callPreparationHandler___block_invoke_4;
    block[3] = &unk_1E70FCE28;
    v2 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v8 = v2;
    v9 = *(a1 + 72);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v3 = [*(*(a1 + 40) + 1016) participants];
    *(*(a1 + 40) + 1000) = [v3 count] < 2;

    [*(a1 + 40) setShare:*(a1 + 56)];
    [*(a1 + 40) setContainer:*(a1 + 64)];
    v4 = *(a1 + 72);
    v5 = *(a1 + 56);
    v6 = [*(a1 + 64) containerID];
    (*(v4 + 16))(v4, v5, v6);
  }
}

uint64_t __52__UICloudSharingController__callPreparationHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _dismissViewControllerWithError:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)addResizingChildViewController:(id)a3
{
  v27 = a3;
  [v27 beginAppearanceTransition:1 animated:0];
  [(UIViewController *)self addChildViewController:v27];
  v4 = [v27 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(UIViewController *)self view];
  v6 = [v27 view];
  [v5 addSubview:v6];

  v7 = [(UIViewController *)self view];
  v8 = MEMORY[0x1E69977A0];
  v9 = [(UIViewController *)self view];
  v10 = [v27 view];
  v11 = [v8 constraintWithItem:v9 attribute:7 relatedBy:0 toItem:v10 attribute:7 multiplier:1.0 constant:0.0];
  [v7 addConstraint:v11];

  v12 = [(UIViewController *)self view];
  v13 = MEMORY[0x1E69977A0];
  v14 = [(UIViewController *)self view];
  v15 = [v27 view];
  v16 = [v13 constraintWithItem:v14 attribute:8 relatedBy:0 toItem:v15 attribute:8 multiplier:1.0 constant:0.0];
  [v12 addConstraint:v16];

  v17 = [(UIViewController *)self view];
  v18 = MEMORY[0x1E69977A0];
  v19 = [(UIViewController *)self view];
  v20 = [v27 view];
  v21 = [v18 constraintWithItem:v19 attribute:1 relatedBy:0 toItem:v20 attribute:1 multiplier:1.0 constant:0.0];
  [v17 addConstraint:v21];

  v22 = [(UIViewController *)self view];
  v23 = MEMORY[0x1E69977A0];
  v24 = [(UIViewController *)self view];
  v25 = [v27 view];
  v26 = [v23 constraintWithItem:v24 attribute:3 relatedBy:0 toItem:v25 attribute:3 multiplier:1.0 constant:0.0];
  [v22 addConstraint:v26];

  [v27 didMoveToParentViewController:self];
  [v27 endAppearanceTransition];
}

- (void)_didDismiss
{
  v16 = *MEMORY[0x1E69E9840];
  [(UICloudSharingController *)self setPreparationHandler:0];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  strongReferenceToOurself = self->_strongReferenceToOurself;
  if (has_internal_diagnostics)
  {
    if (strongReferenceToOurself)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v15 = self;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Cyclic reference to %@ wasn't cleared out. This means that the view service didn't call us back.", buf, 0xCu);
      }
    }
  }

  else if (strongReferenceToOurself)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_didDismiss___s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = self;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Cyclic reference to %@ wasn't cleared out. This means that the view service didn't call us back.", buf, 0xCu);
    }
  }

  v5 = self->_strongReferenceToOurself;
  self->_strongReferenceToOurself = 0;

  v6 = [(UICloudSharingController *)self _childViewController];
  v7 = [v6 remoteViewController];
  [v7 setPublicController:0];

  v8 = [(UICloudSharingController *)self _childViewController];
  [v8 invalidate];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__UICloudSharingController__didDismiss__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if (self->_shareNeedsDeletion && ([(UICloudSharingController *)self share], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    [(UICloudSharingController *)self _deleteShareAfterDismissalWithoutSave:v9];
  }

  else
  {
    v9[2](v9);
  }
}

void __39__UICloudSharingController__didDismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 _cloudShareControllerDidDismiss:*(a1 + 32)];
  }
}

- (void)_deleteShareAfterDismissalWithoutSave:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v5 = getCKModifyRecordsOperationClass_softClass;
  v20 = getCKModifyRecordsOperationClass_softClass;
  if (!getCKModifyRecordsOperationClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getCKModifyRecordsOperationClass_block_invoke;
    v16[3] = &unk_1E70F2F20;
    v16[4] = &v17;
    __getCKModifyRecordsOperationClass_block_invoke(v16);
    v5 = v18[3];
  }

  v6 = v5;
  _Block_object_dispose(&v17, 8);
  v7 = [v5 alloc];
  v8 = [(CKShare *)self->_share recordID];
  v21[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v10 = [v7 initWithRecordsToSave:MEMORY[0x1E695E0F0] recordIDsToDelete:v9];

  [v10 setQualityOfService:25];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__UICloudSharingController__deleteShareAfterDismissalWithoutSave___block_invoke;
  v14[3] = &unk_1E712CBA8;
  v14[4] = self;
  v15 = v4;
  v11 = v4;
  [v10 setModifyRecordsCompletionBlock:v14];
  v12 = [(UICloudSharingController *)self container];
  v13 = [v12 privateCloudDatabase];
  [v13 addOperation:v10];
}

void __66__UICloudSharingController__deleteShareAfterDismissalWithoutSave___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__UICloudSharingController__deleteShareAfterDismissalWithoutSave___block_invoke_2;
  block[3] = &unk_1E70FD548;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__UICloudSharingController__deleteShareAfterDismissalWithoutSave___block_invoke_2(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[5];
  if (a1[4])
  {
    v3 = [v2 delegate];
    [v3 cloudSharingController:a1[5] failedToSaveShareWithError:a1[4]];
  }

  else
  {

    [v2 _sendDidStopSharingDelegate];
  }
}

- (void)_dismissViewControllerWithError:(id)a3
{
  v4 = a3;
  if (![(UIViewController *)self isBeingDismissed])
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __60__UICloudSharingController__dismissViewControllerWithError___block_invoke;
    v11 = &unk_1E70F35B8;
    v12 = self;
    v13 = v4;
    v5 = _Block_copy(&v8);
    v6 = [(UIViewController *)self presentingViewController:v8];

    if (v6)
    {
      v7 = [(UIViewController *)self presentingViewController];
      [v7 dismissViewControllerAnimated:1 completion:v5];
    }

    else
    {
      v5[2](v5);
    }
  }
}

void __60__UICloudSharingController__dismissViewControllerWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _didDismiss];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) delegate];
    [v2 cloudSharingController:*(a1 + 32) failedToSaveShareWithError:*(a1 + 40)];
  }
}

- (id)activityItemSource
{
  v3 = objc_alloc_init(_UISharingControllerActivityItemSource);
  [(_UISharingControllerActivityItemSource *)v3 setViewController:self];

  return v3;
}

- (void)_setParticipantDetails:(id)a3
{
  if (self->_participantDetails != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    participantDetails = self->_participantDetails;
    self->_participantDetails = v5;

    v7 = [(UICloudSharingController *)self _childViewController];
    v8 = [v7 remoteViewController];
    v9 = [v8 serviceViewControllerProxy];

    [v9 _setParticipantDetails:v4];
  }
}

- (void)_setSectionTitleForAuxiliarySwitches:(id)a3
{
  v4 = a3;
  if (self->_sectionTitleForAuxiliarySwitches != v4)
  {
    v10 = v4;
    v5 = [(NSString *)v4 copy];
    sectionTitleForAuxiliarySwitches = self->_sectionTitleForAuxiliarySwitches;
    self->_sectionTitleForAuxiliarySwitches = v5;

    v7 = [(UICloudSharingController *)self _childViewController];
    v8 = [v7 remoteViewController];
    v9 = [v8 serviceViewControllerProxy];

    if (objc_opt_respondsToSelector())
    {
      [v9 _setSectionTitleForAuxiliarySwitches:v10];
    }

    v4 = v10;
  }
}

- (void)_setPrimaryAuxiliarySwitchTitle:(id)a3
{
  if (self->_primaryAuxiliarySwitchTitle != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    primaryAuxiliarySwitchTitle = self->_primaryAuxiliarySwitchTitle;
    self->_primaryAuxiliarySwitchTitle = v5;

    v7 = [(UICloudSharingController *)self _childViewController];
    v8 = [v7 remoteViewController];
    v9 = [v8 serviceViewControllerProxy];

    [v9 _setPrimaryAuxiliarySwitchTitle:v4];
  }
}

- (void)_setPrimaryAuxiliarySwitchState:(BOOL)a3
{
  v3 = a3;
  self->_primaryAuxiliarySwitchState = a3;
  v4 = [(UICloudSharingController *)self _childViewController];
  v5 = [v4 remoteViewController];
  v6 = [v5 serviceViewControllerProxy];

  [v6 _setPrimaryAuxiliarySwitchState:v3];
}

- (void)_setSecondaryAuxiliarySwitchTitle:(id)a3
{
  if (self->_secondaryAuxiliarySwitchTitle != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    secondaryAuxiliarySwitchTitle = self->_secondaryAuxiliarySwitchTitle;
    self->_secondaryAuxiliarySwitchTitle = v5;

    v7 = [(UICloudSharingController *)self _childViewController];
    v8 = [v7 remoteViewController];
    v9 = [v8 serviceViewControllerProxy];

    [v9 _setSecondaryAuxiliarySwitchTitle:v4];
  }
}

- (void)_setSecondaryAuxiliarySwitchState:(BOOL)a3
{
  v3 = a3;
  self->_secondaryAuxiliarySwitchState = a3;
  v4 = [(UICloudSharingController *)self _childViewController];
  v5 = [v4 remoteViewController];
  v6 = [v5 serviceViewControllerProxy];

  [v6 _setSecondaryAuxiliarySwitchState:v3];
}

- (void)_setRootFolderTitle:(id)a3
{
  objc_storeStrong(&self->_rootFolderTitle, a3);
  v5 = a3;
  v6 = [(UICloudSharingController *)self _childViewController];
  v7 = [v6 remoteViewController];
  v8 = [v7 serviceViewControllerProxy];

  [v8 _setRootFolderTitle:v5];
}

- (void)_setFolderSubitemName:(id)a3
{
  objc_storeStrong(&self->_folderSubitemName, a3);
  v5 = a3;
  v6 = [(UICloudSharingController *)self _childViewController];
  v7 = [v6 remoteViewController];
  v8 = [v7 serviceViewControllerProxy];

  [v8 _setFolderSubitemName:v5];
}

- (void)_setHeaderPrimaryImage:(id)a3
{
  objc_storeStrong(&self->_headerPrimaryImage, a3);
  v5 = a3;
  v6 = [(UICloudSharingController *)self _childViewController];
  v7 = [v6 remoteViewController];
  v8 = [v7 serviceViewControllerProxy];

  [v8 _setHeaderPrimaryImage:v5];
}

- (void)_setHeaderSecondaryImage:(id)a3
{
  objc_storeStrong(&self->_headerSecondaryImage, a3);
  v5 = a3;
  v6 = [(UICloudSharingController *)self _childViewController];
  v7 = [v6 remoteViewController];
  v8 = [v7 serviceViewControllerProxy];

  [v8 _setHeaderSecondaryImage:v5];
}

- (int64_t)modalPresentationStyle
{
  v3.receiver = self;
  v3.super_class = UICloudSharingController;
  return [(UIViewController *)&v3 modalPresentationStyle];
}

- (id)_customPresentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIPopoverPresentationController *)[_UISharingViewPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9];
  objc_initWeak(&location, self);
  v12 = [v10 view];
  [(UIPresentationController *)v11 setSourceView:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __118__UICloudSharingController__customPresentationControllerForPresentedController_presentingController_sourceController___block_invoke;
  v14[3] = &unk_1E70F5A28;
  objc_copyWeak(&v15, &location);
  [(_UISharingViewPresentationController *)v11 setDismissalHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __118__UICloudSharingController__customPresentationControllerForPresentedController_presentingController_sourceController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didDismiss];
}

- (id)_sharingViewPresentationController
{
  v2 = [(UIViewController *)self presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_dismissForActivityRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self presentingViewController];
  [(UICloudSharingController *)self _setOriginalPresentingViewController:v5];

  v6 = [(UICloudSharingController *)self _sharingViewPresentationController];
  [v6 setSuppressDismissalHandlerUnlessDimmingViewTapped:1];

  v7 = [(UIViewController *)self presentingViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__UICloudSharingController__dismissForActivityRepresentation___block_invoke;
  v9[3] = &unk_1E70F37C0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 dismissViewControllerAnimated:0 completion:v9];
}

uint64_t __62__UICloudSharingController__dismissForActivityRepresentation___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1096), *(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_representFullscreenAfterActivityDismissal:(id)a3
{
  v4 = a3;
  [(UIViewController *)self setModalPresentationStyle:5];
  v5 = [(UICloudSharingController *)self _sharingViewPresentationController];
  [v5 setSuppressDismissalHandlerUnlessDimmingViewTapped:0];

  v6 = [(UICloudSharingController *)self _originalPresentingViewController];
  [v6 presentViewController:self animated:0 completion:v4];

  strongReferenceToOurself = self->_strongReferenceToOurself;
  self->_strongReferenceToOurself = 0;

  objc_storeWeak(&self->_originalPresentingViewController, 0);
}

- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)a3
{
  v3 = a3;
  objc_copyWeak(&to, &self->_delegate);
  v4 = objc_loadWeakRetained(&to);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&to);
    [v6 _cloudSharingControllerDidModifyPrimarySwitch:v3];
  }

  objc_destroyWeak(&to);
}

- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)a3
{
  v3 = a3;
  objc_copyWeak(&to, &self->_delegate);
  v4 = objc_loadWeakRetained(&to);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&to);
    [v6 _cloudSharingControllerDidModifySecondarySwitch:v3];
  }

  objc_destroyWeak(&to);
}

- (void)_cloudSharingControllerDidActivateShowSharedFolder
{
  objc_copyWeak(&to, &self->_delegate);
  v2 = objc_loadWeakRetained(&to);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained(&to);
    [v4 _cloudSharingControllerDidActivateShowSharedFolder];
  }

  objc_destroyWeak(&to);
}

+ (id)allowedSharingOptionsFromPermissions:(unint64_t)a3
{
  if (a3)
  {
    v3 = [objc_alloc(getCKAllowedSharingOptionsClass()) initWithAllowedParticipantPermissionOptions:(a3 >> 2) & 3 allowedParticipantAccessOptions:a3 & 3];
  }

  else
  {
    v3 = [getCKAllowedSharingOptionsClass() standardOptions];
  }

  return v3;
}

- (id)excludedActivityTypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UICloudSharingController_excludedActivityTypes__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1ED49A860 != -1)
  {
    dispatch_once(&qword_1ED49A860, block);
  }

  return _MergedGlobals_5_22;
}

void __49__UICloudSharingController_excludedActivityTypes__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E69CDA88];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v3 = _MergedGlobals_5_22;
  _MergedGlobals_5_22 = v2;

  v4 = [*(a1 + 32) container];
  v5 = [v4 containerID];
  v6 = [v5 containerIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.reminders"];

  if (v7)
  {
    v8 = [_MergedGlobals_5_22 arrayByAddingObject:*MEMORY[0x1E69CDA98]];
    v9 = _MergedGlobals_5_22;
    _MergedGlobals_5_22 = v8;
  }
}

- (void)_cloudSharingControllerDidActivateShowActivityController
{
  v5 = [(UIViewController *)self view];
  [v5 bounds];
  MidX = CGRectGetMidX(v7);
  v4 = [(UIViewController *)self view];
  [v4 bounds];
  [(UICloudSharingController *)self _cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:MidX y:CGRectGetMidY(v8) width:0.0 height:0.0];
}

- (void)_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:(double)a3 y:(double)a4 width:(double)a5 height:(double)a6
{
  v34[1] = *MEMORY[0x1E69E9840];
  v12 = [(UICloudSharingController *)self share];

  if (!v12)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"UICloudSharingController.m" lineNumber:826 description:{@"%s: Expect a CKShare while presenting share sheet", "-[UICloudSharingController _cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:y:width:height:]"}];
  }

  v13 = [(UICloudSharingController *)self container];

  if (!v13)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"UICloudSharingController.m" lineNumber:827 description:{@"%s: Expect a CKShare while presenting share sheet", "-[UICloudSharingController _cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:y:width:height:]"}];
  }

  v14 = [objc_opt_class() allowedSharingOptionsFromPermissions:{-[UICloudSharingController availablePermissions](self, "availablePermissions")}];
  v15 = [_UISharingControllerActivityItemProvider alloc];
  v16 = [(UICloudSharingController *)self share];
  v17 = [(UICloudSharingController *)self container];
  v18 = [(_UISharingControllerActivityItemProvider *)v15 initWithCKShare:v16 container:v17 allowedSharingOptions:v14];

  v19 = [UIActivityItemsConfiguration alloc];
  v34[0] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v21 = [(UIActivityItemsConfiguration *)v19 initWithItemProviders:v20];

  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __104__UICloudSharingController__cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX_y_width_height___block_invoke;
  v31[3] = &unk_1E712CAE0;
  objc_copyWeak(&v32, &location);
  [(UIActivityItemsConfiguration *)v21 setPerItemMetadataProvider:v31];
  v22 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItemsConfiguration:v21];
  [v22 setCollaborationMode:4];
  v23 = [(UICloudSharingController *)self excludedActivityTypes];
  [v22 setExcludedActivityTypes:v23];

  v24 = [(UIViewController *)self view];
  v25 = [v22 popoverPresentationController];
  [v25 setSourceView:v24];

  v26 = [v22 popoverPresentationController];
  [v26 setSourceRect:{a3, a4, a5, a6}];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __104__UICloudSharingController__cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX_y_width_height___block_invoke_2;
  v29[3] = &unk_1E712CB08;
  objc_copyWeak(&v30, &location);
  [v22 setCompletionWithItemsHandler:v29];
  [(UIViewController *)self presentViewController:v22 animated:1 completion:0];
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

id __104__UICloudSharingController__cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX_y_width_height___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 isEqualToString:@"linkPresentationMetadata"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained createActivityLinkMetadata];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __104__UICloudSharingController__cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX_y_width_height___block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v6 = a5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dismissViewControllerWithError:v6];
  }
}

- (void)_cloudSharingControllerDidChooseTransport:(id)a3
{
  v4 = a3;
  objc_copyWeak(&to, &self->_delegate);
  v5 = objc_loadWeakRetained(&to);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&to);
    [v7 _cloudSharingControllerDidChooseTransport:v4];
  }

  objc_destroyWeak(&to);
}

- (void)_shareDidChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(UICloudSharingController *)self setShare:v4];
  }

  self->_shareNeedsDeletion = 0;
  objc_copyWeak(&to, &self->_delegate);
  v5 = objc_loadWeakRetained(&to);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&to);
    [v7 cloudSharingControllerDidSaveShare:self];
  }

  objc_destroyWeak(&to);
}

- (void)_sendDidStopSharingDelegate
{
  objc_copyWeak(&to, &self->_delegate);
  v3 = objc_loadWeakRetained(&to);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 cloudSharingControllerDidStopSharing:self];
  }

  objc_destroyWeak(&to);
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  v2 = [(UICloudSharingController *)self _childViewController];
  v3 = [v2 remoteViewController];

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)_originalPresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPresentingViewController);

  return WeakRetained;
}

- (_UICloudSharingControllerDelegate_Internal)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

@end