@interface _UIShareInvitationRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (_UISharingPublicController)publicController;
- (void)_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:(double)x y:(double)y width:(double)width height:(double)height;
- (void)_cloudSharingControllerDidActivateShowActivityController;
- (void)_cloudSharingControllerDidActivateShowSharedFolder;
- (void)_cloudSharingControllerDidChooseTransport:(id)transport;
- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)switch;
- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)switch;
- (void)_cloudSharingControllerDidUpdateRootFolderURL:(id)l;
- (void)_dismissAndRepresentForActivity:(id)activity;
- (void)_dismissForActivityRepresentation:(id)representation;
- (void)_dismissViewController;
- (void)_dismissViewControllerWithError:(id)error;
- (void)_performAuxiliaryActionWithCompletion:(id)completion;
- (void)_performHeaderActionWithCompletion:(id)completion;
- (void)_representFullscreenAfterActivityDismissal:(id)dismissal;
- (void)_requestContentSize:(CGSize)size;
- (void)_requestSavedShareWithCompletion:(id)completion;
- (void)_shareDidChange:(id)change;
- (void)_shareWasMadePrivate;
- (void)_tintColorDidChangeToColor:(id)color;
- (void)_updateTraitCollectionForPopoverStatus;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation _UIShareInvitationRemoteViewController

+ (id)serviceViewControllerInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016E4F0];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel__setParticipantDetails_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0114A18];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = _MergedGlobals_1404;
  v12 = _MergedGlobals_1404;
  if (!_MergedGlobals_1404)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getCKOperationProgressCallbackClassesSymbolLoc_block_invoke;
    v8[3] = &unk_1E70F2F20;
    v8[4] = &v9;
    __getCKOperationProgressCallbackClassesSymbolLoc_block_invoke(v8);
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v3)
  {
    v4 = v3();
    [v2 setClasses:v4 forSelector:sel__dismissViewControllerWithError_ argumentIndex:0 ofReply:0];

    return v2;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSSet *_CKOperationProgressCallbackClasses(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"_UIShareInvitationRemoteViewController.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (void)viewDidLoad
{
  view = [(UIViewController *)self view];
  v4 = objc_alloc_init(_UIShareInvitationRemoteViewControllerTintColorView);
  [view addSubview:v4];

  v5.receiver = self;
  v5.super_class = _UIShareInvitationRemoteViewController;
  [(UIViewController *)&v5 viewDidLoad];
}

- (void)_dismissViewController
{
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _dismissViewControllerWithError:0];
}

- (void)_dismissViewControllerWithError:(id)error
{
  errorCopy = error;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _dismissViewControllerWithError:errorCopy];
}

- (void)_shareDidChange:(id)change
{
  changeCopy = change;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _shareDidChange:changeCopy];
}

- (void)_shareWasMadePrivate
{
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _shareWasMadePrivate];
}

- (void)_tintColorDidChangeToColor:(id)color
{
  colorCopy = color;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy _setTintColor:colorCopy];
}

- (void)_performAuxiliaryActionWithCompletion:(id)completion
{
  completionCopy = completion;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _performAuxiliaryActionWithCompletion:completionCopy];
}

- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)switch
{
  switchCopy = switch;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _cloudSharingControllerDidModifyPrimarySwitch:switchCopy];
}

- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)switch
{
  switchCopy = switch;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _cloudSharingControllerDidModifySecondarySwitch:switchCopy];
}

- (void)_cloudSharingControllerDidUpdateRootFolderURL:(id)l
{
  v5 = [l url];
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _cloudSharingControllerDidUpdateRootFolderURL:v5];
}

- (void)_cloudSharingControllerDidActivateShowSharedFolder
{
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _cloudSharingControllerDidActivateShowSharedFolder];
}

- (void)_cloudSharingControllerDidActivateShowActivityController
{
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _cloudSharingControllerDidActivateShowActivityController];
}

- (void)_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:(double)x y:(double)y width:(double)width height:(double)height
{
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:x y:y width:width height:height];
}

- (void)_cloudSharingControllerDidChooseTransport:(id)transport
{
  transportCopy = transport;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _cloudSharingControllerDidChooseTransport:transportCopy];
}

- (void)_performHeaderActionWithCompletion:(id)completion
{
  completionCopy = completion;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _performHeaderActionWithCompletion:completionCopy];
}

- (void)_dismissAndRepresentForActivity:(id)activity
{
  activityCopy = activity;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___UIShareInvitationRemoteViewController__dismissAndRepresentForActivity___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  [publicController _dismissForActivityRepresentation:v7];
}

- (void)_dismissForActivityRepresentation:(id)representation
{
  representationCopy = representation;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _dismissForActivityRepresentation:representationCopy];
}

- (void)_representFullscreenAfterActivityDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _representFullscreenAfterActivityDismissal:dismissalCopy];
}

- (void)_requestSavedShareWithCompletion:(id)completion
{
  completionCopy = completion;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController _requestSavedShareWithCompletion:completionCopy];
}

- (void)viewWillLayoutSubviews
{
  [(_UIShareInvitationRemoteViewController *)self _updateTraitCollectionForPopoverStatus];
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy _setIsInPopoverMode:{-[UIViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];

  v4.receiver = self;
  v4.super_class = _UIShareInvitationRemoteViewController;
  [(UIViewController *)&v4 viewWillLayoutSubviews];
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  [(_UIShareInvitationRemoteViewController *)self _updateTraitCollectionForPopoverStatus];
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy _setIsInPopoverMode:{-[UIViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];

  v6.receiver = self;
  v6.super_class = _UIShareInvitationRemoteViewController;
  [(_UIRemoteViewController *)&v6 didMoveToParentViewController:controllerCopy];
}

- (void)_updateTraitCollectionForPopoverStatus
{
  view = [(UIViewController *)self view];
  window = [view window];

  if (window)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];
    v7 = [UITraitCollection _traitCollectionWithValue:v5 forTraitNamed:@"_UIShareInvitationPopoverTrait"];

    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy _setOverrideTraitCollection:v7];
  }
}

- (void)_requestContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  publicController = [(_UIShareInvitationRemoteViewController *)self publicController];
  [publicController setPreferredContentSize:{width, height}];
}

- (_UISharingPublicController)publicController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicController);

  return WeakRetained;
}

@end