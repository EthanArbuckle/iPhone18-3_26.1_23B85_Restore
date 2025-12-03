@interface PXCloudPhotoWelcomeNavigationController
+ (BOOL)shouldPresentWelcomeViewController:(BOOL *)controller;
+ (id)new;
- (PXCloudPhotoWelcomeNavigationController)init;
- (PXCloudPhotoWelcomeNavigationController)initWithCoder:(id)coder;
- (PXCloudPhotoWelcomeNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (PXCloudPhotoWelcomeNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (PXCloudPhotoWelcomeNavigationController)initWithRootViewController:(id)controller;
- (PXCloudPhotoWelcomeNavigationController)initWithWelcomeController:(id)controller;
- (PXCloudPhotoWelcomeNavigationControllerDismissDelegate)dismissDelegate;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation PXCloudPhotoWelcomeNavigationController

- (PXCloudPhotoWelcomeNavigationControllerDismissDelegate)dismissDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissDelegate);

  return WeakRetained;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = PXCloudPhotoWelcomeNavigationController;
  [(PXCloudPhotoWelcomeNavigationController *)&v6 dismissViewControllerAnimated:animated completion:completion];
  dismissDelegate = [(PXCloudPhotoWelcomeNavigationController *)self dismissDelegate];
  [dismissDelegate navigationControllerDidDismissViewController:self];
}

- (PXCloudPhotoWelcomeNavigationController)initWithWelcomeController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PXCloudPhotoWelcomeNavigationController;
  v5 = [(PXCloudPhotoWelcomeNavigationController *)&v8 initWithRootViewController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    [(PXCloudPhotoWelcomeNavigationController *)v5 setDismissDelegate:controllerCopy];
    [(PXCloudPhotoWelcomeNavigationController *)v6 setNavigationBarHidden:1];
    [(PXCloudPhotoWelcomeNavigationController *)v6 setModalPresentationStyle:2];
  }

  return v6;
}

- (PXCloudPhotoWelcomeNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXCloudPhotoWelcomeNavigationController initWithNavigationBarClass:toolbarClass:]"}];

  abort();
}

- (PXCloudPhotoWelcomeNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:91 description:{@"%s is not available as initializer", "-[PXCloudPhotoWelcomeNavigationController initWithNibName:bundle:]"}];

  abort();
}

- (PXCloudPhotoWelcomeNavigationController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:87 description:{@"%s is not available as initializer", "-[PXCloudPhotoWelcomeNavigationController initWithCoder:]"}];

  abort();
}

- (PXCloudPhotoWelcomeNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:83 description:{@"%s is not available as initializer", "-[PXCloudPhotoWelcomeNavigationController initWithRootViewController:]"}];

  abort();
}

- (PXCloudPhotoWelcomeNavigationController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:79 description:{@"%s is not available as initializer", "-[PXCloudPhotoWelcomeNavigationController init]"}];

  abort();
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:75 description:{@"%s is not available as initializer", "+[PXCloudPhotoWelcomeNavigationController new]"}];

  abort();
}

+ (BOOL)shouldPresentWelcomeViewController:(BOOL *)controller
{
  v38 = *MEMORY[0x1E69E9840];
  pl_sharedAccountStore = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [pl_sharedAccountStore cachedPrimaryAppleAccount];

  v6 = [cachedPrimaryAppleAccount isEnabledForDataclass:*MEMORY[0x1E6959AE8]];
  v7 = v6;
  if (controller)
  {
    *controller = v6;
  }

  v37 = xmmword_1A5381390;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v8 = getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr;
  v36 = getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr;
  if (!getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getSCNetworkReachabilityCreateWithAddressSymbolLoc_block_invoke;
    v31 = &unk_1E774BD00;
    v32 = &v33;
    v9 = SystemConfigurationLibrary();
    v34[3] = dlsym(v9, "SCNetworkReachabilityCreateWithAddress");
    getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr = *(v32[1] + 24);
    v8 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"SCNetworkReachabilityRef PLSCNetworkReachabilityCreateWithAddress(CFAllocatorRef, const struct sockaddr *)"}];
    [currentHandler handleFailureInFunction:v22 file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:28 description:{@"%s", dlerror()}];

    goto LABEL_22;
  }

  v10 = v8(*MEMORY[0x1E695E480], &v37);
  if (v10)
  {
    v27 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v11 = getSCNetworkReachabilityGetFlagsSymbolLoc_ptr;
    v36 = getSCNetworkReachabilityGetFlagsSymbolLoc_ptr;
    if (!getSCNetworkReachabilityGetFlagsSymbolLoc_ptr)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getSCNetworkReachabilityGetFlagsSymbolLoc_block_invoke;
      v31 = &unk_1E774BD00;
      v32 = &v33;
      v12 = SystemConfigurationLibrary();
      v34[3] = dlsym(v12, "SCNetworkReachabilityGetFlags");
      getSCNetworkReachabilityGetFlagsSymbolLoc_ptr = *(v32[1] + 24);
      v11 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (!v11)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean PLSCNetworkReachabilityGetFlags(SCNetworkReachabilityRef, SCNetworkReachabilityFlags *)"}];
      [currentHandler2 handleFailureInFunction:v24 file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:29 description:{@"%s", dlerror()}];

      goto LABEL_22;
    }

    v11(v10, &v27);
    v13 = v27;
    CFRelease(v10);
    LOBYTE(v10) = 0;
    if (!(v7 & 1 | (cachedPrimaryAppleAccount == 0)) && (v13 & 2) != 0)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2050000000;
      v14 = getMCProfileConnectionClass_softClass;
      v36 = getMCProfileConnectionClass_softClass;
      if (!getMCProfileConnectionClass_softClass)
      {
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __getMCProfileConnectionClass_block_invoke;
        v31 = &unk_1E774BD00;
        v32 = &v33;
        __getMCProfileConnectionClass_block_invoke(&v28);
        v14 = v34[3];
      }

      v15 = v14;
      _Block_object_dispose(&v33, 8);
      sharedConnection = [v14 sharedConnection];
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v17 = getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr;
      v36 = getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr;
      if (!getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr)
      {
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_block_invoke;
        v31 = &unk_1E774BD00;
        v32 = &v33;
        v18 = ManagedConfigurationLibrary();
        v19 = dlsym(v18, "MCFeatureCloudPhotoLibraryAllowed");
        *(v32[1] + 24) = v19;
        getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr = *(v32[1] + 24);
        v17 = v34[3];
      }

      _Block_object_dispose(&v33, 8);
      if (v17)
      {
        LOBYTE(v10) = [sharedConnection BOOLRestrictionForFeature:*v17] != 2;

        goto LABEL_18;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMCFeatureCloudPhotoLibraryAllowed(void)"];
      [currentHandler3 handleFailureInFunction:v26 file:@"PXCloudPhotoWelcomeNavigationController.m" lineNumber:33 description:{@"%s", dlerror()}];

LABEL_22:
      __break(1u);
    }
  }

LABEL_18:

  return v10;
}

@end