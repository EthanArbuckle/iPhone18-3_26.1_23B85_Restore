@interface _UIShareInvitationRemoteViewController
+ (id)exportedInterface;
+ (id)serviceViewControllerInterface;
- (_UISharingPublicController)publicController;
- (void)_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:(double)a3 y:(double)a4 width:(double)a5 height:(double)a6;
- (void)_cloudSharingControllerDidActivateShowActivityController;
- (void)_cloudSharingControllerDidActivateShowSharedFolder;
- (void)_cloudSharingControllerDidChooseTransport:(id)a3;
- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)a3;
- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)a3;
- (void)_cloudSharingControllerDidUpdateRootFolderURL:(id)a3;
- (void)_dismissAndRepresentForActivity:(id)a3;
- (void)_dismissForActivityRepresentation:(id)a3;
- (void)_dismissViewController;
- (void)_dismissViewControllerWithError:(id)a3;
- (void)_performAuxiliaryActionWithCompletion:(id)a3;
- (void)_performHeaderActionWithCompletion:(id)a3;
- (void)_representFullscreenAfterActivityDismissal:(id)a3;
- (void)_requestContentSize:(CGSize)a3;
- (void)_requestSavedShareWithCompletion:(id)a3;
- (void)_shareDidChange:(id)a3;
- (void)_shareWasMadePrivate;
- (void)_tintColorDidChangeToColor:(id)a3;
- (void)_updateTraitCollectionForPopoverStatus;
- (void)didMoveToParentViewController:(id)a3;
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSSet *_CKOperationProgressCallbackClasses(void)"];
    [v6 handleFailureInFunction:v7 file:@"_UIShareInvitationRemoteViewController.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (void)viewDidLoad
{
  v3 = [(UIViewController *)self view];
  v4 = objc_alloc_init(_UIShareInvitationRemoteViewControllerTintColorView);
  [v3 addSubview:v4];

  v5.receiver = self;
  v5.super_class = _UIShareInvitationRemoteViewController;
  [(UIViewController *)&v5 viewDidLoad];
}

- (void)_dismissViewController
{
  v2 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v2 _dismissViewControllerWithError:0];
}

- (void)_dismissViewControllerWithError:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 _dismissViewControllerWithError:v4];
}

- (void)_shareDidChange:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 _shareDidChange:v4];
}

- (void)_shareWasMadePrivate
{
  v2 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v2 _shareWasMadePrivate];
}

- (void)_tintColorDidChangeToColor:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 _setTintColor:v4];
}

- (void)_performAuxiliaryActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 _performAuxiliaryActionWithCompletion:v4];
}

- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v4 _cloudSharingControllerDidModifyPrimarySwitch:v3];
}

- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v4 _cloudSharingControllerDidModifySecondarySwitch:v3];
}

- (void)_cloudSharingControllerDidUpdateRootFolderURL:(id)a3
{
  v5 = [a3 url];
  v4 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v4 _cloudSharingControllerDidUpdateRootFolderURL:v5];
}

- (void)_cloudSharingControllerDidActivateShowSharedFolder
{
  v2 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v2 _cloudSharingControllerDidActivateShowSharedFolder];
}

- (void)_cloudSharingControllerDidActivateShowActivityController
{
  v2 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v2 _cloudSharingControllerDidActivateShowActivityController];
}

- (void)_cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:(double)a3 y:(double)a4 width:(double)a5 height:(double)a6
{
  v10 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v10 _cloudSharingControllerDidActivateAddPeopleWithRemoteSourceX:a3 y:a4 width:a5 height:a6];
}

- (void)_cloudSharingControllerDidChooseTransport:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 _cloudSharingControllerDidChooseTransport:v4];
}

- (void)_performHeaderActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 _performHeaderActionWithCompletion:v4];
}

- (void)_dismissAndRepresentForActivity:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___UIShareInvitationRemoteViewController__dismissAndRepresentForActivity___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 _dismissForActivityRepresentation:v7];
}

- (void)_dismissForActivityRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 _dismissForActivityRepresentation:v4];
}

- (void)_representFullscreenAfterActivityDismissal:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 _representFullscreenAfterActivityDismissal:v4];
}

- (void)_requestSavedShareWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 _requestSavedShareWithCompletion:v4];
}

- (void)viewWillLayoutSubviews
{
  [(_UIShareInvitationRemoteViewController *)self _updateTraitCollectionForPopoverStatus];
  v3 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v3 _setIsInPopoverMode:{-[UIViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];

  v4.receiver = self;
  v4.super_class = _UIShareInvitationRemoteViewController;
  [(UIViewController *)&v4 viewWillLayoutSubviews];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  [(_UIShareInvitationRemoteViewController *)self _updateTraitCollectionForPopoverStatus];
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 _setIsInPopoverMode:{-[UIViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];

  v6.receiver = self;
  v6.super_class = _UIShareInvitationRemoteViewController;
  [(_UIRemoteViewController *)&v6 didMoveToParentViewController:v4];
}

- (void)_updateTraitCollectionForPopoverStatus
{
  v3 = [(UIViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];
    v7 = [UITraitCollection _traitCollectionWithValue:v5 forTraitNamed:@"_UIShareInvitationPopoverTrait"];

    v6 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v6 _setOverrideTraitCollection:v7];
  }
}

- (void)_requestContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_UIShareInvitationRemoteViewController *)self publicController];
  [v5 setPreferredContentSize:{width, height}];
}

- (_UISharingPublicController)publicController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicController);

  return WeakRetained;
}

@end