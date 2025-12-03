@interface UIKeyboardMediaServiceRemoteViewController
+ (id)exportedInterface;
+ (id)requestCardViewControllerWithConnectionHandler:(id)handler;
+ (id)requestInlineViewControllerWithConnectionHandler:(id)handler;
+ (id)serviceViewControllerInterface;
- (BOOL)__shouldRemoteViewControllerFenceGeometryChange:(id *)change forAncestor:(id)ancestor;
- (UIKeyboardMediaServiceRemoteViewControllerDelegate)delegate;
- (void)dismissCard;
- (void)draggedStickerToPoint:(CGPoint)point;
- (void)pasteImageAtFileHandle:(id)handle;
- (void)presentCard;
- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)handler;
- (void)requestInsertionPointCompletion:(id)completion;
- (void)setHostBundleID:(id)d;
- (void)stageSticker:(id)sticker;
- (void)stageStickerWithFileHandle:(id)handle url:(id)url accessibilityLabel:(id)label;
- (void)stageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name externalURI:(id)i accessibilityLabel:(id)label;
- (void)stickerPickerCardDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation UIKeyboardMediaServiceRemoteViewController

+ (id)requestInlineViewControllerWithConnectionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v5 = @"InlineRecentStickersViewController";
  }

  else
  {
    v5 = @"InlineRecentsViewController";
  }

  v6 = _UIKBMediaLog_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_INFO, "Requesting inline remote VC %@", buf, 0xCu);
  }

  v7 = UIKeyboardMediaServiceBundleIdentifier;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__UIKeyboardMediaServiceRemoteViewController_requestInlineViewControllerWithConnectionHandler___block_invoke;
  v11[3] = &unk_1E7107448;
  v12 = v5;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = [self requestViewController:v5 fromServiceWithBundleIdentifier:v7 connectionHandler:v11];

  return v9;
}

void __95__UIKeyboardMediaServiceRemoteViewController_requestInlineViewControllerWithConnectionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _UIKBMediaLog_0();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unable to request %@: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_INFO, "Got back readyController %@", &v11, 0xCu);
  }

  v10 = _UIUpdateCycleEnabled();
  if (v5 && v10)
  {
    [v5 _setShownInline:1];
  }

  [v5 _setViewClipsToBounds:0];
  (*(*(a1 + 40) + 16))();
}

+ (id)requestCardViewControllerWithConnectionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v5 = @"StickersAppCardViewController";
  }

  else
  {
    v5 = @"AppCardViewController";
  }

  v6 = _UIKBMediaLog_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_INFO, "Requesting remote card VC %@", buf, 0xCu);
  }

  v7 = UIKeyboardMediaServiceBundleIdentifier;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__UIKeyboardMediaServiceRemoteViewController_requestCardViewControllerWithConnectionHandler___block_invoke;
  v11[3] = &unk_1E7107448;
  v12 = v5;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = [self requestViewController:v5 fromServiceWithBundleIdentifier:v7 connectionHandler:v11];

  return v9;
}

void __93__UIKeyboardMediaServiceRemoteViewController_requestCardViewControllerWithConnectionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _UIKBMediaLog_0();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unable to request %@: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_INFO, "Got back readyController %@", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setHostBundleID:(id)d
{
  dCopy = d;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy setHostBundleID:dCopy];
}

+ (id)serviceViewControllerInterface
{
  if (qword_1ED49E3F8 != -1)
  {
    dispatch_once(&qword_1ED49E3F8, &__block_literal_global_281);
  }

  v3 = _MergedGlobals_1126;

  return v3;
}

void __76__UIKeyboardMediaServiceRemoteViewController_serviceViewControllerInterface__block_invoke()
{
  v0 = _os_feature_enabled_impl();
  v1 = &protocolRef__UIStickerPickerServiceProtocol;
  if (!v0)
  {
    v1 = &protocolRef_UIKeyboardMediaServiceProtocol;
  }

  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:*v1];
  v3 = _MergedGlobals_1126;
  _MergedGlobals_1126 = v2;
}

+ (id)exportedInterface
{
  if (qword_1ED49E408 != -1)
  {
    dispatch_once(&qword_1ED49E408, &__block_literal_global_83_0);
  }

  v3 = qword_1ED49E400;

  return v3;
}

void __63__UIKeyboardMediaServiceRemoteViewController_exportedInterface__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFFA3490];
    v1 = qword_1ED49E400;
    qword_1ED49E400 = v0;

    v2 = qword_1ED49E400;
    v3 = MEMORY[0x1E695DFD8];
    v4 = objc_opt_class();
    v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
    [v2 setClasses:v5 forSelector:sel_stageStickerWithIdentifier_representations_name_externalURI_accessibilityLabel_ argumentIndex:1 ofReply:0];

    v6 = qword_1ED49E400;
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v16 = [v7 setWithObjects:{v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    [v6 setClasses:v16 forSelector:sel_stageSticker_ argumentIndex:0 ofReply:0];
    v14 = v16;
  }

  else
  {
    v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFFA3350];
    v14 = qword_1ED49E400;
    qword_1ED49E400 = v15;
  }
}

- (BOOL)__shouldRemoteViewControllerFenceGeometryChange:(id *)change forAncestor:(id)ancestor
{
  ancestorCopy = ancestor;
  if (_UIUpdateCycleEnabled() && self->_shownInline && (change->var0 & 4) != 0)
  {
    v7 = [ancestorCopy __isKindOfUIScrollView] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate viewServiceDidTerminateWithError:errorCopy];
}

- (void)presentCard
{
  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate presentCard];
}

- (void)dismissCard
{
  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate dismissCard];
}

- (void)pasteImageAtFileHandle:(id)handle
{
  handleCopy = handle;
  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate pasteImageAtFileHandle:handleCopy];
}

- (void)stageStickerWithFileHandle:(id)handle url:(id)url accessibilityLabel:(id)label
{
  labelCopy = label;
  urlCopy = url;
  handleCopy = handle;
  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate stageStickerWithFileHandle:handleCopy url:urlCopy accessibilityLabel:labelCopy];
}

- (void)requestInsertionPointCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate requestInsertionPointCompletion:completionCopy];
}

- (void)draggedStickerToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate draggedStickerToPoint:{x, y}];
}

- (void)stageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name externalURI:(id)i accessibilityLabel:(id)label
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  labelCopy = label;
  iCopy = i;
  nameCopy = name;
  representationsCopy = representations;
  v17 = _UIKBMediaLog_0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = identifierCopy;
    _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_INFO, "Staging sticker identifier %@", &v19, 0xCu);
  }

  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate stageStickerWithIdentifier:identifierCopy representations:representationsCopy name:nameCopy externalURI:iCopy accessibilityLabel:labelCopy];
}

- (void)stageSticker:(id)sticker
{
  v10 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  v5 = _UIKBMediaLog_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [stickerCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_INFO, "Staging sticker identifier %@", &v8, 0xCu);
  }

  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate stageSticker:stickerCopy];
}

- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = handlerCopy;
    delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];

    if (delegate)
    {
      delegate2 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
      [delegate2 remoteHandlesRecentsStickerDonationWithCompletionHandler:v7];
    }

    else
    {
      v7[2](v7, 1);
    }

    handlerCopy = v7;
  }
}

- (void)stickerPickerCardDidLoad
{
  delegate = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [delegate stickerPickerCardDidLoad];
}

- (UIKeyboardMediaServiceRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end