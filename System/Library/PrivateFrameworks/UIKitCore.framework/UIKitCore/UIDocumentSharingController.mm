@interface UIDocumentSharingController
- (NSString)_appName;
- (UIDocumentSharingController)initWithFileURL:(id)l error:(id *)error;
- (UIViewController)_originalPresentingViewController;
- (_UIDocumentSharingControllerDelegate_Private)_privateDelegate;
- (id)_customPresentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)_sharingViewPresentationController;
- (id)delegate;
- (void)_addResizingChildViewController:(id)controller;
- (void)_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:(double)x y:(double)y width:(double)width height:(double)height;
- (void)_cloudSharingControllerDidActivateShowActivityController;
- (void)_cloudSharingControllerDidChooseTransport:(id)transport;
- (void)_cloudSharingControllerDidUpdateRootFolderURL:(id)l;
- (void)_didDismiss;
- (void)_dismissForActivityRepresentation:(id)representation;
- (void)_dismissViewControllerWithError:(id)error;
- (void)_performAuxiliaryActionWithCompletion:(id)completion;
- (void)_performHeaderActionWithCompletion:(id)completion;
- (void)_presentationControllerDidDismiss:(id)dismiss;
- (void)_representFullscreenAfterActivityDismissal:(id)dismissal;
- (void)_setAuxiliaryActionTitle:(id)title;
- (void)_setChildViewController:(id)controller;
- (void)_setLegacyAppearance:(BOOL)appearance;
- (void)_setMailSubject:(id)subject template:(id)template;
- (void)_setThumbnail:(id)thumbnail;
- (void)_shareDidChange:(id)change;
- (void)_shareWasMadePrivate;
- (void)_updatePresentationStyleForLegacyAppearance;
- (void)dealloc;
@end

@implementation UIDocumentSharingController

- (UIDocumentSharingController)initWithFileURL:(id)l error:(id *)error
{
  v65[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  if ([absoluteString length])
  {
    isFileURL = [lCopy isFileURL];

    if (isFileURL)
    {
      v55.receiver = self;
      v55.super_class = UIDocumentSharingController;
      v10 = [(UIViewController *)&v55 init];
      if (!v10)
      {
        self = 0;
LABEL_31:
        self = self;
        selfCopy3 = self;
        goto LABEL_18;
      }

      v10->_legacyAppearance = dyld_program_sdk_at_least() ^ 1;
      objc_storeStrong(&v10->_url, l);
      v61 = 0;
      v62 = &v61;
      v63 = 0x2050000000;
      v11 = _MergedGlobals_7_16;
      v64 = _MergedGlobals_7_16;
      if (!_MergedGlobals_7_16)
      {
        location = MEMORY[0x1E69E9820];
        v57 = 3221225472;
        v58 = __getFPItemManagerClass_block_invoke;
        v59 = &unk_1E70F2F20;
        v60 = &v61;
        __getFPItemManagerClass_block_invoke(&location);
        v11 = v62[3];
      }

      v12 = v11;
      _Block_object_dispose(&v61, 8);
      defaultManager = [v11 defaultManager];
      v54 = 0;
      v14 = [defaultManager itemForURL:lCopy error:&v54];
      v15 = v54;

      if (v14)
      {
        isShared = [v14 isShared];
        if (!IsGelatoEnabled() || isShared & 1 | ((dyld_program_sdk_at_least() & 1) == 0) || v10->_legacyAppearance)
        {
          v17 = MEMORY[0x1E696ABD0];
          v18 = CloudSharingUIExtensionBundleID();
          v19 = [v17 extensionWithIdentifier:v18 error:error];

          if (v19)
          {
            [(UIViewController *)v10 _beginDelayingPresentation:0 cancellationHandler:3.0];
            v61 = 0;
            v62 = &v61;
            v63 = 0x2050000000;
            v20 = qword_1ED49AED0;
            v64 = qword_1ED49AED0;
            if (!qword_1ED49AED0)
            {
              location = MEMORY[0x1E69E9820];
              v57 = 3221225472;
              v58 = __getFPSandboxingURLWrapperClass_block_invoke_0;
              v59 = &unk_1E70F2F20;
              v60 = &v61;
              __getFPSandboxingURLWrapperClass_block_invoke_0(&location);
              v20 = v62[3];
            }

            v21 = v20;
            _Block_object_dispose(&v61, 8);
            v46 = 0;
            v22 = [v20 wrapperWithURL:lCopy readonly:0 error:&v46];
            v23 = v46;
            v24 = v23;
            if (v22)
            {
              v43[0] = MEMORY[0x1E69E9820];
              v43[1] = 3221225472;
              v43[2] = __53__UIDocumentSharingController_initWithFileURL_error___block_invoke_3;
              v43[3] = &unk_1E712CC98;
              self = v10;
              selfCopy2 = self;
              v45 = v22;
              v25 = [_UIResilientRemoteViewContainerViewController instantiateWithExtension:v19 completion:v43];
              [(UIDocumentSharingController *)self _setChildViewController:v25];
              [(UIDocumentSharingController *)self _updatePresentationStyleForLegacyAppearance];

              v10 = selfCopy2;
            }

            else
            {
              NSLog(&cfstr_FailedToCreate_11.isa, lCopy, v23);
              if (error)
              {
                v29 = v24;
                self = 0;
                *error = v24;
              }

              else
              {
                self = 0;
              }
            }

            if (v22)
            {
              goto LABEL_31;
            }
          }

          else
          {

            self = 0;
          }

          goto LABEL_17;
        }

        v53 = 0;
        v30 = *MEMORY[0x1E695DAA0];
        v52 = 0;
        v31 = [lCopy getResourceValue:&v53 forKey:v30 error:&v52];
        v32 = v53;
        v33 = v52;
        v34 = v33;
        if (v31)
        {
          v35 = objc_alloc(MEMORY[0x1E696ACA0]);
          identifier = [v32 identifier];
          v42 = [v35 initWithItem:lCopy typeIdentifier:identifier];

          v37 = [UIActivityItemsConfiguration alloc];
          v65[0] = v42;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
          v39 = [(UIActivityItemsConfiguration *)v37 initWithItemProviders:v38];

          objc_initWeak(&location, v10);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __53__UIDocumentSharingController_initWithFileURL_error___block_invoke;
          v49[3] = &unk_1E712CC70;
          objc_copyWeak(&v51, &location);
          v50 = lCopy;
          [(UIActivityItemsConfiguration *)v39 setMetadataProvider:v49];
          v40 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItemsConfiguration:v39];
          [v40 setAllowsEmbedding:1];
          [v40 setCollaborationMode:4];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __53__UIDocumentSharingController_initWithFileURL_error___block_invoke_2;
          v47[3] = &unk_1E712CB08;
          objc_copyWeak(&v48, &location);
          [v40 setCompletionWithItemsHandler:v47];
          [(UIDocumentSharingController *)v10 _addResizingChildViewController:v40];
          [(UIDocumentSharingController *)v10 setActivityViewController:v40];
          self = v10;
          objc_destroyWeak(&v48);

          objc_destroyWeak(&v51);
          objc_destroyWeak(&location);

          v10 = v42;
        }

        else
        {
          if (error)
          {
            v41 = v33;
            *error = v34;
          }

          NSLog(&cfstr_UnableToGetUti.isa, lCopy, v34);
          self = 0;
        }

        v10 = v34;
      }

      else
      {
        if (error)
        {
          v28 = v15;
          *error = v15;
        }

        NSLog(&cfstr_UnableToGetFpi.isa, lCopy, v15);
        self = 0;
      }

      selfCopy3 = self;
      goto LABEL_18;
    }
  }

  else
  {
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"must pass a valid file URL to -[%@ initWithFileURL:]", objc_opt_class()}];
LABEL_17:
  selfCopy3 = 0;
LABEL_18:

  return selfCopy3;
}

id __53__UIDocumentSharingController_initWithFileURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  if (@"title" == v3)
  {
    v7 = *(a1 + 32);
    v16 = 0;
    v8 = *MEMORY[0x1E695DC10];
    v15 = 0;
    v9 = [v7 getResourceValue:&v16 forKey:v8 error:&v15];
    v10 = v16;
    v11 = v15;
    v12 = v11;
    if (v9)
    {
      v6 = v10;
    }

    else
    {
      NSLog(&cfstr_UnableToGetDis.isa, *(a1 + 32), v11);
      v13 = [*(a1 + 32) lastPathComponent];
      v6 = [v13 stringByDeletingPathExtension];
    }

    goto LABEL_10;
  }

  if (@"thumbnail" == v3)
  {
    v6 = [WeakRetained _thumbnail];
  }

  else
  {
LABEL_4:
    v6 = 0;
  }

LABEL_10:

  return v6;
}

void __53__UIDocumentSharingController_initWithFileURL_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didDismiss];
}

void __53__UIDocumentSharingController_initWithFileURL_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_opt_class();
    NSLog(&cfstr_RemoteViewCont.isa, v8, v7);
  }

  else
  {
    [v6 setPublicController:*(a1 + 32)];
    v9 = [v6 serviceViewControllerProxy];
    [v9 _setLegacyAppearance:*(*(a1 + 32) + 995)];
    v10 = [*(a1 + 32) _thumbnail];

    if (v10)
    {
      v11 = [*(a1 + 32) _thumbnail];
      [v9 _setThumbnail:v11];
    }

    v12 = [*(a1 + 32) _auxiliaryActionTitle];

    if (v12)
    {
      v13 = [*(a1 + 32) _auxiliaryActionTitle];
      [v9 _setAuxiliaryActionTitle:v13];
    }

    v14 = [*(a1 + 32) _mailTemplate];

    if (v14)
    {
      v15 = [*(a1 + 32) _mailSubject];
      v16 = [*(a1 + 32) _mailTemplate];
      [v9 _setMailSubject:v15 template:v16];
    }

    v17 = [*(a1 + 32) _initialHeaderSubtitle];

    if (v17)
    {
      v18 = [*(a1 + 32) _initialHeaderSubtitle];
      [v9 _setInitialHeaderSubtitle:v18];
    }

    v19 = [*(a1 + 32) _headerSubtitle];

    if (v19)
    {
      v20 = [*(a1 + 32) _headerSubtitle];
      [v9 _setHeaderSubtitle:v20];
    }

    v21 = [*(a1 + 32) _headerActionTitle];

    if (v21)
    {
      v22 = [*(a1 + 32) _headerActionTitle];
      [v9 _setHeaderActionTitle:v22];
    }

    v23 = [*(a1 + 32) _messageTemplate];

    if (v23)
    {
      v24 = [*(a1 + 32) _messageTemplate];
      [v9 _setMessageTemplate:v24];
    }

    if ([*(a1 + 32) _collaborationUIEnabled])
    {
      [v9 _setCollaborationUIEnabled:{objc_msgSend(*(a1 + 32), "_collaborationUIEnabled")}];
    }

    v25 = [*(a1 + 32) _showOnlyAddPeople];
    v26 = *(a1 + 32);
    if (v25)
    {
      [v9 _setShowAddPeople:{objc_msgSend(v26, "_showOnlyAddPeople")}];
    }

    else if ([v26 _showRootFolder])
    {
      [v9 _setShowRootFolder:{objc_msgSend(*(a1 + 32), "_showRootFolder")}];
    }

    v27 = [*(a1 + 32) _appName];
    [v9 _setAppName:v27];

    [v9 _setSandboxingURLWrapper:*(a1 + 40)];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __53__UIDocumentSharingController_initWithFileURL_error___block_invoke_4;
    v28[3] = &unk_1E710CB38;
    v29 = *(a1 + 32);
    [v9 _prepareForDisplayWithCompletion:v28];
  }
}

uint64_t __53__UIDocumentSharingController_initWithFileURL_error___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setPreferredContentSize:?];
  v2 = *(a1 + 32);

  return [v2 _endDelayingPresentation];
}

- (void)dealloc
{
  _remoteViewController = [(UIDocumentSharingController *)self _remoteViewController];
  [_remoteViewController setPublicController:0];

  v4.receiver = self;
  v4.super_class = UIDocumentSharingController;
  [(UIViewController *)&v4 dealloc];
}

- (void)_presentationControllerDidDismiss:(id)dismiss
{
  v4.receiver = self;
  v4.super_class = UIDocumentSharingController;
  [(UIViewController *)&v4 _presentationControllerDidDismiss:dismiss];
  [(UIDocumentSharingController *)self _didDismiss];
}

- (void)_setLegacyAppearance:(BOOL)appearance
{
  if (self->_legacyAppearance != appearance)
  {
    self->_legacyAppearance = appearance;
    [(UIDocumentSharingController *)self _updatePresentationStyleForLegacyAppearance];
  }
}

- (void)_updatePresentationStyleForLegacyAppearance
{
  if (self->_legacyAppearance)
  {
    v2 = 2;
  }

  else
  {
    v2 = 7;
  }

  [(UIViewController *)self setModalPresentationStyle:v2];
}

- (NSString)_appName
{
  appName = self->_appName;
  if (appName)
  {
    _localizedApplicationName = appName;
  }

  else
  {
    _localizedApplicationName = [UIApp _localizedApplicationName];
  }

  return _localizedApplicationName;
}

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_childViewController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentSharingController.m" lineNumber:316 description:{@"%s: remote view controller can only be set once", "-[UIDocumentSharingController _setChildViewController:]"}];

    childViewController = self->_childViewController;
  }

  else
  {
    childViewController = 0;
  }

  self->_childViewController = controllerCopy;
  v8 = controllerCopy;

  [(UIDocumentSharingController *)self _addResizingChildViewController:v8];
}

- (void)_addResizingChildViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  v30 = controllerCopy;
  if (self && (*&self->super._viewControllerFlags & 3u) - 1 <= 1)
  {
    v6 = 1;
    [controllerCopy beginAppearanceTransition:1 animated:0];
    v5 = v30;
  }

  else
  {
    v6 = 0;
  }

  [(UIViewController *)self addChildViewController:v5];
  view = [v30 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(UIViewController *)self view];
  view3 = [v30 view];
  [view2 addSubview:view3];

  view4 = [(UIViewController *)self view];
  v11 = MEMORY[0x1E69977A0];
  view5 = [(UIViewController *)self view];
  view6 = [v30 view];
  v14 = [v11 constraintWithItem:view5 attribute:7 relatedBy:0 toItem:view6 attribute:7 multiplier:1.0 constant:0.0];
  [view4 addConstraint:v14];

  view7 = [(UIViewController *)self view];
  v16 = MEMORY[0x1E69977A0];
  view8 = [(UIViewController *)self view];
  view9 = [v30 view];
  v19 = [v16 constraintWithItem:view8 attribute:8 relatedBy:0 toItem:view9 attribute:8 multiplier:1.0 constant:0.0];
  [view7 addConstraint:v19];

  view10 = [(UIViewController *)self view];
  v21 = MEMORY[0x1E69977A0];
  view11 = [(UIViewController *)self view];
  view12 = [v30 view];
  v24 = [v21 constraintWithItem:view11 attribute:1 relatedBy:0 toItem:view12 attribute:1 multiplier:1.0 constant:0.0];
  [view10 addConstraint:v24];

  view13 = [(UIViewController *)self view];
  v26 = MEMORY[0x1E69977A0];
  view14 = [(UIViewController *)self view];
  view15 = [v30 view];
  v29 = [v26 constraintWithItem:view14 attribute:3 relatedBy:0 toItem:view15 attribute:3 multiplier:1.0 constant:0.0];
  [view13 addConstraint:v29];

  [v30 didMoveToParentViewController:self];
  if (v6)
  {
    [v30 endAppearanceTransition];
  }
}

- (void)_performAuxiliaryActionWithCompletion:(id)completion
{
  completionCopy = completion;
  _privateDelegate = [(UIDocumentSharingController *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_privateDelegate _documentSharingControllerPerformAuxiliaryAction:self completion:completionCopy];
  }

  else if (self->_legacyAppearance && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_privateDelegate shareInvitationViewControllerPerformAuxiliaryAction:self completion:completionCopy];
  }

  else
  {
    completionCopy[2]();
  }
}

- (void)_performHeaderActionWithCompletion:(id)completion
{
  completionCopy = completion;
  _privateDelegate = [(UIDocumentSharingController *)self _privateDelegate];
  if (self->_legacyAppearance && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_privateDelegate shareInvitationViewControllerPerformHeaderAction:self completion:completionCopy];
  }

  else
  {
    completionCopy[2]();
  }
}

- (void)_shareDidChange:(id)change
{
  _privateDelegate = [(UIDocumentSharingController *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_privateDelegate _documentSharingControllerDidModifyShare:self];
  }

  else if (self->_legacyAppearance && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_privateDelegate shareInvitationViewControllerDidModifyShare:self];
  }
}

- (void)_shareWasMadePrivate
{
  _privateDelegate = [(UIDocumentSharingController *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_privateDelegate _documentSharingControllerDidStopSharing:self];
  }

  else if (self->_legacyAppearance && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_privateDelegate shareInvitationViewControllerDidStopSharing:self];
  }
}

- (void)_setMailSubject:(id)subject template:(id)template
{
  templateCopy = template;
  [(UIDocumentSharingController *)self _setMailSubject:subject];
  [(UIDocumentSharingController *)self _setMailTemplate:templateCopy];
}

- (void)_setAuxiliaryActionTitle:(id)title
{
  if (self->_auxiliaryActionTitle != title)
  {
    v4 = [title copy];
    auxiliaryActionTitle = self->_auxiliaryActionTitle;
    self->_auxiliaryActionTitle = v4;

    _remoteViewController = [(UIDocumentSharingController *)self _remoteViewController];
    serviceViewControllerProxy = [_remoteViewController serviceViewControllerProxy];
    [serviceViewControllerProxy _setAuxiliaryActionTitle:self->_auxiliaryActionTitle];
  }
}

- (void)_setThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  if (self->_thumbnail != thumbnailCopy)
  {
    v8 = thumbnailCopy;
    objc_storeStrong(&self->_thumbnail, thumbnail);
    _remoteViewController = [(UIDocumentSharingController *)self _remoteViewController];
    serviceViewControllerProxy = [_remoteViewController serviceViewControllerProxy];
    [serviceViewControllerProxy _setThumbnail:self->_thumbnail];

    thumbnailCopy = v8;
  }
}

- (void)_didDismiss
{
  v12 = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  strongReferenceToOurself = self->_strongReferenceToOurself;
  if (has_internal_diagnostics)
  {
    if (strongReferenceToOurself)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Cyclic reference to %@ wasn't cleared out. This means that the view service didn't call us back.", &v10, 0xCu);
      }
    }
  }

  else if (strongReferenceToOurself)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &_didDismiss___s_category_0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Cyclic reference to %@ wasn't cleared out. This means that the view service didn't call us back.", &v10, 0xCu);
    }
  }

  v5 = self->_strongReferenceToOurself;
  self->_strongReferenceToOurself = 0;

  _childViewController = [(UIDocumentSharingController *)self _childViewController];
  [_childViewController invalidate];

  _privateDelegate = [(UIDocumentSharingController *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_privateDelegate _documentSharingControllerDidDismiss:self];
  }
}

- (void)_dismissViewControllerWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (![(UIViewController *)self isBeingDismissed])
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (errorCopy)
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v11 = errorCopy;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "%@ should never get error from service", buf, 0xCu);
        }
      }
    }

    else if (errorCopy)
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_dismissViewControllerWithError____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = errorCopy;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%@ should never get error from service", buf, 0xCu);
      }
    }

    presentingViewController = [(UIViewController *)self presentingViewController];

    if (presentingViewController)
    {
      presentingViewController2 = [(UIViewController *)self presentingViewController];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__UIDocumentSharingController__dismissViewControllerWithError___block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [presentingViewController2 dismissViewControllerAnimated:1 completion:v9];
    }

    else
    {
      [(UIDocumentSharingController *)self _didDismiss];
    }
  }
}

- (void)_cloudSharingControllerDidUpdateRootFolderURL:(id)l
{
  if (l)
  {
    [(UIDocumentSharingController *)self setRootFolderURL:?];
  }
}

- (void)_cloudSharingControllerDidActivateShowActivityController
{
  view = [(UIViewController *)self view];
  [view bounds];
  MidX = CGRectGetMidX(v7);
  view2 = [(UIViewController *)self view];
  [view2 bounds];
  [(UIDocumentSharingController *)self _cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:MidX y:CGRectGetMidY(v8) width:0.0 height:0.0];
}

- (void)_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:(double)x y:(double)y width:(double)width height:(double)height
{
  v32[1] = *MEMORY[0x1E69E9840];
  rootFolderURL = [(UIDocumentSharingController *)self rootFolderURL];
  if (rootFolderURL)
  {
    goto LABEL_2;
  }

  v13 = [(UIDocumentSharingController *)self url];

  if (!v13)
  {
    rootFolderURL = [MEMORY[0x1E696AAA8] currentHandler];
    [rootFolderURL handleFailureInMethod:a2 object:self file:@"UIDocumentSharingController.m" lineNumber:513 description:{@"%s: Expect a URL while presenting share sheet", "-[UIDocumentSharingController _cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:y:width:height:]"}];
LABEL_2:
  }

  rootFolderURL2 = [(UIDocumentSharingController *)self rootFolderURL];
  v15 = rootFolderURL2;
  if (rootFolderURL2)
  {
    v16 = rootFolderURL2;
  }

  else
  {
    v16 = [(UIDocumentSharingController *)self url];
  }

  v17 = v16;

  v18 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v32[0] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v20 = [v18 initWithActivityItems:v19 applicationActivities:0];

  [v20 setCollaborationMode:4];
  v31 = *MEMORY[0x1E69CDA88];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [v20 setExcludedActivityTypes:v21];

  view = [(UIViewController *)self view];
  popoverPresentationController = [v20 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  popoverPresentationController2 = [v20 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{x, y, width, height}];

  rootFolderURL3 = [(UIDocumentSharingController *)self rootFolderURL];
  if (rootFolderURL3)
  {
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = [(UIDocumentSharingController *)self url];
      [v20 setManagedFileURL:v27];
    }
  }

  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __107__UIDocumentSharingController__cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX_y_width_height___block_invoke;
  v28[3] = &unk_1E712CB08;
  objc_copyWeak(&v29, &location);
  [v20 setCompletionWithItemsHandler:v28];
  [(UIViewController *)self presentViewController:v20 animated:1 completion:0];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __107__UIDocumentSharingController__cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX_y_width_height___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v6 = a5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dismissViewControllerWithError:v6];
  }
}

- (void)_cloudSharingControllerDidChooseTransport:(id)transport
{
  transportCopy = transport;
  _privateDelegate = [(UIDocumentSharingController *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_privateDelegate _cloudSharingControllerDidChooseTransport:self transport:transportCopy];
  }
}

- (id)_customPresentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  v11 = [(UIPopoverPresentationController *)[_UISharingViewPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
  objc_initWeak(&location, self);
  view = [sourceControllerCopy view];
  [(UIPresentationController *)v11 setSourceView:view];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __121__UIDocumentSharingController__customPresentationControllerForPresentedController_presentingController_sourceController___block_invoke;
  v14[3] = &unk_1E70F5A28;
  objc_copyWeak(&v15, &location);
  [(_UISharingViewPresentationController *)v11 setDismissalHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __121__UIDocumentSharingController__customPresentationControllerForPresentedController_presentingController_sourceController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didDismiss];
}

- (id)_sharingViewPresentationController
{
  presentationController = [(UIViewController *)self presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = presentationController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_dismissForActivityRepresentation:(id)representation
{
  representationCopy = representation;
  presentingViewController = [(UIViewController *)self presentingViewController];
  [(UIDocumentSharingController *)self _setOriginalPresentingViewController:presentingViewController];

  _sharingViewPresentationController = [(UIDocumentSharingController *)self _sharingViewPresentationController];
  [_sharingViewPresentationController setSuppressDismissalHandlerUnlessDimmingViewTapped:1];

  presentingViewController2 = [(UIViewController *)self presentingViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__UIDocumentSharingController__dismissForActivityRepresentation___block_invoke;
  v9[3] = &unk_1E70F37C0;
  v9[4] = self;
  v10 = representationCopy;
  v8 = representationCopy;
  [presentingViewController2 dismissViewControllerAnimated:0 completion:v9];
}

uint64_t __65__UIDocumentSharingController__dismissForActivityRepresentation___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1016), *(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_representFullscreenAfterActivityDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  [(UIViewController *)self setModalPresentationStyle:5];
  _sharingViewPresentationController = [(UIDocumentSharingController *)self _sharingViewPresentationController];
  [_sharingViewPresentationController setSuppressDismissalHandlerUnlessDimmingViewTapped:0];

  _originalPresentingViewController = [(UIDocumentSharingController *)self _originalPresentingViewController];
  [_originalPresentingViewController presentViewController:self animated:0 completion:dismissalCopy];

  strongReferenceToOurself = self->_strongReferenceToOurself;
  self->_strongReferenceToOurself = 0;

  objc_storeWeak(&self->_originalPresentingViewController, 0);
}

- (UIViewController)_originalPresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPresentingViewController);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIDocumentSharingControllerDelegate_Private)_privateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__privateDelegate);

  return WeakRetained;
}

@end