@interface _UIStickerPickerViewController
- (BOOL)supportsReturningStickerIdentifiersDuringAddition;
- (BOOL)supportsReturningStickerIdentifiersDuringAdditionV2;
- (CGRect)_sourceRectInWindowCoordinates;
- (CGRect)sourceRect;
- (_UIStickerPickerViewController)init;
- (_UIStickerPickerViewControllerDelegate)delegate;
- (id)_viewServiceProxy;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_addStickerWithRepresentations:(id)a3 previewView:(id)a4 animatingTo:(CGRect)a5;
- (void)_insertStickerFromItemProvider:(id)a3;
- (void)_remoteViewDidLoad:(id)a3;
- (void)_updatePopoverWindowLocation;
- (void)addStickerWithRepresentations:(id)a3 previewView:(id)a4 originatingView:(id)a5 completion:(id)a6;
- (void)animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4;
- (void)dealloc;
- (void)dismissCard;
- (void)dismissCardAnimated:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)a3;
- (void)setDismissCompletionHandler:(id)a3;
- (void)setSourceRect:(CGRect)a3;
- (void)stageSticker:(id)a3;
- (void)stageStickerWithIdentifier:(id)a3 representations:(id)a4 name:(id)a5 externalURI:(id)a6 accessibilityLabel:(id)a7 metadata:(id)a8;
- (void)stickerPickerCardDidLoad;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _UIStickerPickerViewController

- (void)setDismissCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  objc_setAssociatedObject(self, &kDismissCompletionHandlerKey, v4, 3);
}

- (_UIStickerPickerViewController)init
{
  v6.receiver = self;
  v6.super_class = _UIStickerPickerViewController;
  v2 = [(UIViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(UIViewController *)v2 setModalPresentationStyle:4];
    [(UIViewController *)v3 setTransitioningDelegate:v3];
    v4 = [(UIViewController *)v3 presentationController];
    [v4 setDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIStickerPickerViewController;
  [(UIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = _UIStickerPickerViewController;
  [(UIViewController *)&v8 loadView];
  v3 = [(UIViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42___UIStickerPickerViewController_loadView__block_invoke;
  v5[3] = &unk_1E7122510;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v4 = [_UIStickerPickerServiceRemoteViewController requestCardViewControllerWithConnectionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)setSourceRect:(CGRect)a3
{
  self->_sourceRect = a3;
  v4 = [(_UIStickerPickerViewController *)self card];
  if (v4)
  {
    v5 = v4;
    v6 = [(_UIStickerPickerViewController *)self card];
    v7 = [v6 view];
    v8 = [v7 superview];

    if (v8)
    {

      [(_UIStickerPickerViewController *)self _updatePopoverWindowLocation];
    }
  }
}

- (CGRect)_sourceRectInWindowCoordinates
{
  v3 = [(_UIStickerPickerViewController *)self sourceView];
  [(_UIStickerPickerViewController *)self sourceRect];
  [v3 convertRect:0 toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_updatePopoverWindowLocation
{
  v3 = [(UIViewController *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1 && v4 != 1)
  {
    v8 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    [(_UIStickerPickerViewController *)self _sourceRectInWindowCoordinates];
    [v8 updatePopoverWindowLocation:&__block_literal_global_541 completion:?];
  }
}

- (void)_remoteViewDidLoad:(id)a3
{
  v4 = a3;
  [v4 willMoveToParentViewController:self];
  [(UIViewController *)self addChildViewController:v4];
  [v4 setDelegate:self];
  v5 = [(UIViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [v4 view];
  [v15 setAutoresizingMask:18];

  v16 = [(UIViewController *)self view];
  v17 = [v4 view];
  [v16 addSubview:v17];

  [v4 didMoveToParentViewController:self];
  [(_UIStickerPickerViewController *)self setCard:v4];

  v18 = [(UIViewController *)self traitCollection];
  v19 = [v18 horizontalSizeClass];

  v20 = +[UIDevice currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if ((v21 & 0xFFFFFFFFFFFFFFFBLL) == 1 && v19 != 1)
  {
    v22 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    [(_UIStickerPickerViewController *)self _sourceRectInWindowCoordinates];
    [v22 presentPopoverAtWindowLocation:&__block_literal_global_46_3 completion:?];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _UIStickerPickerViewController;
  [(UIViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
}

- (BOOL)supportsReturningStickerIdentifiersDuringAdditionV2
{
  CKBrowserViewControllerClass = getCKBrowserViewControllerClass();

  return [CKBrowserViewControllerClass instancesRespondToSelector:sel__addStickerToStoreWithRepresentations_sourceRect_completion_];
}

- (BOOL)supportsReturningStickerIdentifiersDuringAddition
{
  CKBrowserViewControllerClass = getCKBrowserViewControllerClass();

  return [CKBrowserViewControllerClass instancesRespondToSelector:sel__addStickerToStoreWithRepresentations_completionWithStickerIDs_];
}

- (void)addStickerWithRepresentations:(id)a3 previewView:(id)a4 originatingView:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(_UIStickerPickerViewController *)self card];
  v15 = [v14 view];
  v16 = [v15 window];

  [v11 frame];
  [v13 convertRect:0 toView:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v13 window];

  [v16 convertRect:v25 fromWindow:{v18, v20, v22, v24}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if ([(_UIStickerPickerViewController *)self supportsReturningStickerIdentifiersDuringAdditionV2])
  {
    v34 = _stickersLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "Calling out to the stickers view service to add the sticker to the store with stickerIDs", buf, 2u);
    }

    v35 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke;
    v50[3] = &unk_1E7122538;
    v51 = v12;
    [v35 addStickerToStoreWithRepresentations:v10 sourceRect:v50 completion:{v27, v29, v31, v33}];

    v36 = v51;
  }

  else
  {
    [v11 setFrame:{v27, v29, v31, v33}];
    v37 = [(_UIStickerPickerViewController *)self card];
    v38 = [v37 view];
    [v38 addSubview:v11];

    LOBYTE(v38) = [(_UIStickerPickerViewController *)self supportsReturningStickerIdentifiersDuringAddition];
    v39 = _stickersLog();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      if (v40)
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_DEFAULT, "Calling out to the stickers view service to add the sticker to the store with stickerIDs", buf, 2u);
      }

      v41 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_58;
      v46[3] = &unk_1E7122588;
      v46[4] = self;
      v47 = v10;
      v48 = v11;
      v49 = v12;
      [v41 addStickerToStoreWithRepresentations:v47 completionWithStickerIDs:v46];

      v36 = v47;
    }

    else
    {
      if (v40)
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_DEFAULT, "Using older addStickerToStoreWithRepresentations:completionHandler SPI", buf, 2u);
      }

      v42 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_60;
      v43[3] = &unk_1E71225B0;
      v43[4] = self;
      v44 = v10;
      v45 = v11;
      [v42 addStickerToStoreWithRepresentations:v44 completionHandler:v43];

      v36 = v44;
    }
  }
}

- (void)animatedStickerCreationProgressChanged:(id)a3 progress:(double)a4
{
  v7 = a3;
  if ([(_UIStickerPickerViewController *)self supportsReturningStickerIdentifiersDuringAddition])
  {
    v6 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    [v6 animatedStickerCreationProgressChanged:v7 progress:a4];
  }
}

- (void)_addStickerWithRepresentations:(id)a3 previewView:(id)a4 animatingTo:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = dispatch_group_create();
  v12 = [(_UIStickerPickerViewController *)self card];
  v13 = [v12 view];
  v32 = [v13 window];

  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  MidX = CGRectGetMidX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MidY = CGRectGetMidY(v59);
  [v10 bounds];
  v17 = v16;
  [v10 bounds];
  v19 = v18;
  [v10 bounds];
  if (v17 > v19)
  {
    v22 = height / v21;
  }

  else
  {
    v22 = width / v20;
  }

  dispatch_group_enter(v11);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke;
  v54[3] = &unk_1E70F6848;
  v23 = v10;
  v55 = v23;
  v56 = MidX;
  v57 = MidY;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_3;
  v52[3] = &unk_1E70F5AC0;
  v24 = v11;
  v53 = v24;
  [UIView animateWithDuration:0 delay:v54 usingSpringWithDamping:v52 initialSpringVelocity:1.0 options:0.0 animations:1.0 completion:0.0];
  memset(&v51, 0, sizeof(v51));
  CGAffineTransformMakeScale(&v51, v22 * 1.4, v22 * 1.4);
  dispatch_group_enter(v24);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_4;
  v48[3] = &unk_1E70F3DC8;
  v25 = v23;
  v50 = v51;
  v49 = v25;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_6;
  v46[3] = &unk_1E70F5AC0;
  v26 = v24;
  v47 = v26;
  [UIView animateWithDuration:0 delay:v48 usingSpringWithDamping:v46 initialSpringVelocity:0.7 options:0.0 animations:1.0 completion:0.0];
  CGAffineTransformMakeScale(&v45, v22 * 0.8, v22 * 0.8);
  v51 = v45;
  dispatch_group_enter(v26);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_7;
  v42[3] = &unk_1E70F3DC8;
  v27 = v25;
  v44 = v51;
  v43 = v27;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_9;
  v40[3] = &unk_1E70F5AC0;
  v28 = v26;
  v41 = v28;
  [UIView animateWithDuration:0 delay:v42 usingSpringWithDamping:v40 initialSpringVelocity:0.8 options:0.3 animations:1.0 completion:0.0];
  CGAffineTransformMakeScale(&v45, v22, v22);
  v51 = v45;
  dispatch_group_enter(v28);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_10;
  v37[3] = &unk_1E70F3DC8;
  v29 = v27;
  v39 = v51;
  v38 = v29;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_12;
  v35[3] = &unk_1E70F5AC0;
  v36 = v28;
  v30 = v28;
  [UIView animateWithDuration:0 delay:v37 usingSpringWithDamping:v35 initialSpringVelocity:0.8 options:0.6 animations:0.8 completion:0.0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_13;
  block[3] = &unk_1E70F35B8;
  block[4] = self;
  v34 = v29;
  v31 = v29;
  dispatch_group_notify(v30, MEMORY[0x1E69E96A0], block);
}

- (void)_insertStickerFromItemProvider:(id)a3
{
  v4 = a3;
  v5 = +[UIWindow _applicationKeyWindow];
  objc_initWeak(&location, v5);

  v6 = [(_UIStickerPickerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UIStickerPickerViewController *)self delegate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___UIStickerPickerViewController__insertStickerFromItemProvider___block_invoke;
    v9[3] = &unk_1E71225D8;
    v9[4] = self;
    objc_copyWeak(&v10, &location);
    [v8 insertStickerFromItemProvider:v4 completionHandler:v9];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = _stickersLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Unexpected dismissal", v5, 2u);
  }

  [(_UIStickerPickerViewController *)self dismissCard];
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIPresentationController *)[UIStickerPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _stickersLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Stickers view service did terminate with error: %@", &v6, 0xCu);
  }

  [(_UIStickerPickerViewController *)self dismissCard];
}

- (void)stickerPickerCardDidLoad
{
  v3 = [(_UIStickerPickerViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIStickerPickerViewController *)self delegate];
    [v5 stickerPickerViewControllerDidLoad];
  }
}

- (void)dismissCardAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65___UIStickerPickerViewController_dismissCardAnimated_completion___block_invoke;
    v8[3] = &unk_1E70F37C0;
    v8[4] = self;
    v9 = v6;
    [v7 animateCardHiddenWithCompletion:v8];
  }

  else
  {
    [(_UIStickerPickerViewController *)self dismissCard];
    v6[2](v6);
  }
}

- (void)dismissCard
{
  if ([(UIViewController *)self isBeingDismissed])
  {
    v3 = _stickersLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring call to dismissCard. Card is already being dismissed.", buf, 2u);
    }
  }

  else
  {
    v4 = [(UIViewController *)self presentingViewController];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45___UIStickerPickerViewController_dismissCard__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [v4 dismissViewControllerAnimated:0 completion:v5];
  }
}

- (void)stageStickerWithIdentifier:(id)a3 representations:(id)a4 name:(id)a5 externalURI:(id)a6 accessibilityLabel:(id)a7 metadata:(id)a8
{
  v19 = a4;
  v10 = a8;
  v11 = [(_UIStickerPickerViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(_UIStickerPickerViewController *)self isLaunchedFromKeyboard];
    v14 = [(UIViewController *)self view];
    v15 = [v14 window];
    v16 = [v15 screen];
    [v16 scale];
    v18 = _UIStickerItemProviderWithMetadata(0, v19, 0, v13, v10, v17);

    [(_UIStickerPickerViewController *)self _insertStickerFromItemProvider:v18];
  }
}

- (void)stageSticker:(id)a3
{
  v20 = a3;
  v4 = +[UITextInputPayloadController sharedInstance];
  v5 = [v4 supportsStickerTapbackPayload];

  if (v5)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 insertSticker:v20];

    [(_UIStickerPickerViewController *)self dismissCardAnimated:1];
  }

  else
  {
    v7 = [(_UIStickerPickerViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(_UIStickerPickerViewController *)self isLaunchedFromKeyboard];
      v10 = [v20 externalURI];
      v11 = [v20 representations];
      v12 = [v20 bakedInRep];
      v13 = [(UIViewController *)self view];
      v14 = [v13 window];
      v15 = [v14 screen];
      [v15 scale];
      v17 = v16;
      v18 = [v20 metadata];
      v19 = _UIStickerItemProviderWithMetadata(v10, v11, v12, v9, v18, v17);

      [(_UIStickerPickerViewController *)self _insertStickerFromItemProvider:v19];
    }
  }
}

- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(_UIStickerPickerViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(_UIStickerPickerViewController *)self delegate];
      v8 = [v7 remoteHandlesRecentsStickerDonation];
    }

    else
    {
      v8 = 1;
    }

    v9[2](v9, v8);
    v4 = v9;
  }
}

- (id)_viewServiceProxy
{
  v2 = [(_UIStickerPickerViewController *)self card];
  v3 = [v2 serviceViewControllerProxy];

  return v3;
}

- (_UIStickerPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end