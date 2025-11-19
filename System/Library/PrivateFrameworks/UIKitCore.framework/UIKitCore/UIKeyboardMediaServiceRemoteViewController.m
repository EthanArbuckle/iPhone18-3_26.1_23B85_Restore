@interface UIKeyboardMediaServiceRemoteViewController
+ (id)exportedInterface;
+ (id)requestCardViewControllerWithConnectionHandler:(id)a3;
+ (id)requestInlineViewControllerWithConnectionHandler:(id)a3;
+ (id)serviceViewControllerInterface;
- (BOOL)__shouldRemoteViewControllerFenceGeometryChange:(id *)a3 forAncestor:(id)a4;
- (UIKeyboardMediaServiceRemoteViewControllerDelegate)delegate;
- (void)dismissCard;
- (void)draggedStickerToPoint:(CGPoint)a3;
- (void)pasteImageAtFileHandle:(id)a3;
- (void)presentCard;
- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)a3;
- (void)requestInsertionPointCompletion:(id)a3;
- (void)setHostBundleID:(id)a3;
- (void)stageSticker:(id)a3;
- (void)stageStickerWithFileHandle:(id)a3 url:(id)a4 accessibilityLabel:(id)a5;
- (void)stageStickerWithIdentifier:(id)a3 representations:(id)a4 name:(id)a5 externalURI:(id)a6 accessibilityLabel:(id)a7;
- (void)stickerPickerCardDidLoad;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation UIKeyboardMediaServiceRemoteViewController

+ (id)requestInlineViewControllerWithConnectionHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v13 = v4;
  v8 = v4;
  v9 = [a1 requestViewController:v5 fromServiceWithBundleIdentifier:v7 connectionHandler:v11];

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

+ (id)requestCardViewControllerWithConnectionHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v13 = v4;
  v8 = v4;
  v9 = [a1 requestViewController:v5 fromServiceWithBundleIdentifier:v7 connectionHandler:v11];

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

- (void)setHostBundleID:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 setHostBundleID:v4];
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

- (BOOL)__shouldRemoteViewControllerFenceGeometryChange:(id *)a3 forAncestor:(id)a4
{
  v6 = a4;
  if (_UIUpdateCycleEnabled() && self->_shownInline && (a3->var0 & 4) != 0)
  {
    v7 = [v6 __isKindOfUIScrollView] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v5 viewServiceDidTerminateWithError:v4];
}

- (void)presentCard
{
  v2 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v2 presentCard];
}

- (void)dismissCard
{
  v2 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v2 dismissCard];
}

- (void)pasteImageAtFileHandle:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v5 pasteImageAtFileHandle:v4];
}

- (void)stageStickerWithFileHandle:(id)a3 url:(id)a4 accessibilityLabel:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v11 stageStickerWithFileHandle:v10 url:v9 accessibilityLabel:v8];
}

- (void)requestInsertionPointCompletion:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v5 requestInsertionPointCompletion:v4];
}

- (void)draggedStickerToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v5 draggedStickerToPoint:{x, y}];
}

- (void)stageStickerWithIdentifier:(id)a3 representations:(id)a4 name:(id)a5 externalURI:(id)a6 accessibilityLabel:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = _UIKBMediaLog_0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_INFO, "Staging sticker identifier %@", &v19, 0xCu);
  }

  v18 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v18 stageStickerWithIdentifier:v12 representations:v16 name:v15 externalURI:v14 accessibilityLabel:v13];
}

- (void)stageSticker:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIKBMediaLog_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 identifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_INFO, "Staging sticker identifier %@", &v8, 0xCu);
  }

  v7 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v7 stageSticker:v4];
}

- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];

    if (v5)
    {
      v6 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
      [v6 remoteHandlesRecentsStickerDonationWithCompletionHandler:v7];
    }

    else
    {
      v7[2](v7, 1);
    }

    v4 = v7;
  }
}

- (void)stickerPickerCardDidLoad
{
  v2 = [(UIKeyboardMediaServiceRemoteViewController *)self delegate];
  [v2 stickerPickerCardDidLoad];
}

- (UIKeyboardMediaServiceRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end