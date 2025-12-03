@interface _UIStickerPickerViewController
- (BOOL)supportsReturningStickerIdentifiersDuringAddition;
- (BOOL)supportsReturningStickerIdentifiersDuringAdditionV2;
- (CGRect)_sourceRectInWindowCoordinates;
- (CGRect)sourceRect;
- (_UIStickerPickerViewController)init;
- (_UIStickerPickerViewControllerDelegate)delegate;
- (id)_viewServiceProxy;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_addStickerWithRepresentations:(id)representations previewView:(id)view animatingTo:(CGRect)to;
- (void)_insertStickerFromItemProvider:(id)provider;
- (void)_remoteViewDidLoad:(id)load;
- (void)_updatePopoverWindowLocation;
- (void)addStickerWithRepresentations:(id)representations previewView:(id)view originatingView:(id)originatingView completion:(id)completion;
- (void)animatedStickerCreationProgressChanged:(id)changed progress:(double)progress;
- (void)dealloc;
- (void)dismissCard;
- (void)dismissCardAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)handler;
- (void)setDismissCompletionHandler:(id)handler;
- (void)setSourceRect:(CGRect)rect;
- (void)stageSticker:(id)sticker;
- (void)stageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name externalURI:(id)i accessibilityLabel:(id)label metadata:(id)metadata;
- (void)stickerPickerCardDidLoad;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _UIStickerPickerViewController

- (void)setDismissCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
    presentationController = [(UIViewController *)v3 presentationController];
    [presentationController setDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIStickerPickerViewController;
  [(UIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = _UIStickerPickerViewController;
  [(UIViewController *)&v8 loadView];
  view = [(UIViewController *)self view];
  [view setUserInteractionEnabled:0];

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

- (void)setSourceRect:(CGRect)rect
{
  self->_sourceRect = rect;
  card = [(_UIStickerPickerViewController *)self card];
  if (card)
  {
    v5 = card;
    card2 = [(_UIStickerPickerViewController *)self card];
    view = [card2 view];
    superview = [view superview];

    if (superview)
    {

      [(_UIStickerPickerViewController *)self _updatePopoverWindowLocation];
    }
  }
}

- (CGRect)_sourceRectInWindowCoordinates
{
  sourceView = [(_UIStickerPickerViewController *)self sourceView];
  [(_UIStickerPickerViewController *)self sourceRect];
  [sourceView convertRect:0 toView:?];
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
  traitCollection = [(UIViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && horizontalSizeClass != 1)
  {
    _viewServiceProxy = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    [(_UIStickerPickerViewController *)self _sourceRectInWindowCoordinates];
    [_viewServiceProxy updatePopoverWindowLocation:&__block_literal_global_541 completion:?];
  }
}

- (void)_remoteViewDidLoad:(id)load
{
  loadCopy = load;
  [loadCopy willMoveToParentViewController:self];
  [(UIViewController *)self addChildViewController:loadCopy];
  [loadCopy setDelegate:self];
  view = [(UIViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [loadCopy view];
  [view2 setFrame:{v7, v9, v11, v13}];

  view3 = [loadCopy view];
  [view3 setAutoresizingMask:18];

  view4 = [(UIViewController *)self view];
  view5 = [loadCopy view];
  [view4 addSubview:view5];

  [loadCopy didMoveToParentViewController:self];
  [(_UIStickerPickerViewController *)self setCard:loadCopy];

  traitCollection = [(UIViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v20 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v20 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && horizontalSizeClass != 1)
  {
    _viewServiceProxy = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    [(_UIStickerPickerViewController *)self _sourceRectInWindowCoordinates];
    [_viewServiceProxy presentPopoverAtWindowLocation:&__block_literal_global_46_3 completion:?];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _UIStickerPickerViewController;
  [(UIViewController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
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

- (void)addStickerWithRepresentations:(id)representations previewView:(id)view originatingView:(id)originatingView completion:(id)completion
{
  representationsCopy = representations;
  viewCopy = view;
  completionCopy = completion;
  originatingViewCopy = originatingView;
  card = [(_UIStickerPickerViewController *)self card];
  view = [card view];
  window = [view window];

  [viewCopy frame];
  [originatingViewCopy convertRect:0 toView:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  window2 = [originatingViewCopy window];

  [window convertRect:window2 fromWindow:{v18, v20, v22, v24}];
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

    _viewServiceProxy = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke;
    v50[3] = &unk_1E7122538;
    v51 = completionCopy;
    [_viewServiceProxy addStickerToStoreWithRepresentations:representationsCopy sourceRect:v50 completion:{v27, v29, v31, v33}];

    v36 = v51;
  }

  else
  {
    [viewCopy setFrame:{v27, v29, v31, v33}];
    card2 = [(_UIStickerPickerViewController *)self card];
    view2 = [card2 view];
    [view2 addSubview:viewCopy];

    LOBYTE(view2) = [(_UIStickerPickerViewController *)self supportsReturningStickerIdentifiersDuringAddition];
    v39 = _stickersLog();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
    if (view2)
    {
      if (v40)
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_DEFAULT, "Calling out to the stickers view service to add the sticker to the store with stickerIDs", buf, 2u);
      }

      _viewServiceProxy2 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_58;
      v46[3] = &unk_1E7122588;
      v46[4] = self;
      v47 = representationsCopy;
      v48 = viewCopy;
      v49 = completionCopy;
      [_viewServiceProxy2 addStickerToStoreWithRepresentations:v47 completionWithStickerIDs:v46];

      v36 = v47;
    }

    else
    {
      if (v40)
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_DEFAULT, "Using older addStickerToStoreWithRepresentations:completionHandler SPI", buf, 2u);
      }

      _viewServiceProxy3 = [(_UIStickerPickerViewController *)self _viewServiceProxy];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_60;
      v43[3] = &unk_1E71225B0;
      v43[4] = self;
      v44 = representationsCopy;
      v45 = viewCopy;
      [_viewServiceProxy3 addStickerToStoreWithRepresentations:v44 completionHandler:v43];

      v36 = v44;
    }
  }
}

- (void)animatedStickerCreationProgressChanged:(id)changed progress:(double)progress
{
  changedCopy = changed;
  if ([(_UIStickerPickerViewController *)self supportsReturningStickerIdentifiersDuringAddition])
  {
    _viewServiceProxy = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    [_viewServiceProxy animatedStickerCreationProgressChanged:changedCopy progress:progress];
  }
}

- (void)_addStickerWithRepresentations:(id)representations previewView:(id)view animatingTo:(CGRect)to
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  viewCopy = view;
  v11 = dispatch_group_create();
  card = [(_UIStickerPickerViewController *)self card];
  view = [card view];
  window = [view window];

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
  [viewCopy bounds];
  v17 = v16;
  [viewCopy bounds];
  v19 = v18;
  [viewCopy bounds];
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
  v23 = viewCopy;
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

- (void)_insertStickerFromItemProvider:(id)provider
{
  providerCopy = provider;
  v5 = +[UIWindow _applicationKeyWindow];
  objc_initWeak(&location, v5);

  delegate = [(_UIStickerPickerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(_UIStickerPickerViewController *)self delegate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___UIStickerPickerViewController__insertStickerFromItemProvider___block_invoke;
    v9[3] = &unk_1E71225D8;
    v9[4] = self;
    objc_copyWeak(&v10, &location);
    [delegate2 insertStickerFromItemProvider:providerCopy completionHandler:v9];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v4 = _stickersLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Unexpected dismissal", v5, 2u);
  }

  [(_UIStickerPickerViewController *)self dismissCard];
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [(UIPresentationController *)[UIStickerPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v8 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = _stickersLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Stickers view service did terminate with error: %@", &v6, 0xCu);
  }

  [(_UIStickerPickerViewController *)self dismissCard];
}

- (void)stickerPickerCardDidLoad
{
  delegate = [(_UIStickerPickerViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_UIStickerPickerViewController *)self delegate];
    [delegate2 stickerPickerViewControllerDidLoad];
  }
}

- (void)dismissCardAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy)
  {
    _viewServiceProxy = [(_UIStickerPickerViewController *)self _viewServiceProxy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65___UIStickerPickerViewController_dismissCardAnimated_completion___block_invoke;
    v8[3] = &unk_1E70F37C0;
    v8[4] = self;
    v9 = completionCopy;
    [_viewServiceProxy animateCardHiddenWithCompletion:v8];
  }

  else
  {
    [(_UIStickerPickerViewController *)self dismissCard];
    completionCopy[2](completionCopy);
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
    presentingViewController = [(UIViewController *)self presentingViewController];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45___UIStickerPickerViewController_dismissCard__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [presentingViewController dismissViewControllerAnimated:0 completion:v5];
  }
}

- (void)stageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name externalURI:(id)i accessibilityLabel:(id)label metadata:(id)metadata
{
  representationsCopy = representations;
  metadataCopy = metadata;
  delegate = [(_UIStickerPickerViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    isLaunchedFromKeyboard = [(_UIStickerPickerViewController *)self isLaunchedFromKeyboard];
    view = [(UIViewController *)self view];
    window = [view window];
    screen = [window screen];
    [screen scale];
    v18 = _UIStickerItemProviderWithMetadata(0, representationsCopy, 0, isLaunchedFromKeyboard, metadataCopy, v17);

    [(_UIStickerPickerViewController *)self _insertStickerFromItemProvider:v18];
  }
}

- (void)stageSticker:(id)sticker
{
  stickerCopy = sticker;
  v4 = +[UITextInputPayloadController sharedInstance];
  supportsStickerTapbackPayload = [v4 supportsStickerTapbackPayload];

  if (supportsStickerTapbackPayload)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 insertSticker:stickerCopy];

    [(_UIStickerPickerViewController *)self dismissCardAnimated:1];
  }

  else
  {
    delegate = [(_UIStickerPickerViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      isLaunchedFromKeyboard = [(_UIStickerPickerViewController *)self isLaunchedFromKeyboard];
      externalURI = [stickerCopy externalURI];
      representations = [stickerCopy representations];
      bakedInRep = [stickerCopy bakedInRep];
      view = [(UIViewController *)self view];
      window = [view window];
      screen = [window screen];
      [screen scale];
      v17 = v16;
      metadata = [stickerCopy metadata];
      v19 = _UIStickerItemProviderWithMetadata(externalURI, representations, bakedInRep, isLaunchedFromKeyboard, metadata, v17);

      [(_UIStickerPickerViewController *)self _insertStickerFromItemProvider:v19];
    }
  }
}

- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = handlerCopy;
    delegate = [(_UIStickerPickerViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(_UIStickerPickerViewController *)self delegate];
      remoteHandlesRecentsStickerDonation = [delegate2 remoteHandlesRecentsStickerDonation];
    }

    else
    {
      remoteHandlesRecentsStickerDonation = 1;
    }

    v9[2](v9, remoteHandlesRecentsStickerDonation);
    handlerCopy = v9;
  }
}

- (id)_viewServiceProxy
{
  card = [(_UIStickerPickerViewController *)self card];
  serviceViewControllerProxy = [card serviceViewControllerProxy];

  return serviceViewControllerProxy;
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