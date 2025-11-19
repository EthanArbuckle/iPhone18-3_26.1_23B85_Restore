@interface _UIDocumentPickerRemoteViewController
+ (id)serviceViewControllerInterface;
- (_UIDocumentPickerRemoteViewControllerContaining)publicController;
- (void)_didSelectPicker;
- (void)_didSelectURLBookmark:(id)a3;
- (void)_didSelectURLWrapper:(id)a3;
- (void)_dismissViewController;
- (void)_dismissWithOption:(id)a3;
- (void)_stitchFileCreationAtURL:(id)a3;
- (void)_tintColorDidChangeToColor:(id)a3;
- (void)invalidate;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _UIDocumentPickerRemoteViewController

+ (id)serviceViewControllerInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016C690];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel__setAuxiliaryOptions_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)invalidate
{
  v3 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v3 _documentPickerDidDismiss];

  [(_UIDocumentPickerRemoteViewController *)self setPublicController:0];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerRemoteViewController;
  [(UIViewController *)&v5 viewDidLoad];
  v3 = objc_alloc_init(_UIDocumentPickerRemoteViewControllerTintColorView);
  v4 = [(UIViewController *)self view];
  [v4 addSubview:v3];
}

- (void)_didSelectURLWrapper:(id)a3
{
  v4 = a3;
  v6 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  v5 = [v4 url];

  [v6 _didSelectURL:v5];
}

- (void)_didSelectURLBookmark:(id)a3
{
  v4 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __63___UIDocumentPickerRemoteViewController__didSelectURLBookmark___block_invoke;
  v13 = &unk_1E7105650;
  v14 = self;
  v5 = v4;
  v15 = v5;
  v6 = &v10;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v7 = _MergedGlobals_3_7;
  v20 = _MergedGlobals_3_7;
  if (!_MergedGlobals_3_7)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getFPDocumentURLFromBookmarkableStringSymbolLoc_block_invoke;
    v16[3] = &unk_1E70F2F20;
    v16[4] = &v17;
    __getFPDocumentURLFromBookmarkableStringSymbolLoc_block_invoke(v16);
    v7 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v7)
  {
    v7(v5, v6);
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _FPDocumentURLFromBookmarkableString(CFStringRef, void (^__strong)(CFURLRef, CFErrorRef))"}];
    [v8 handleFailureInFunction:v9 file:@"_UIDocumentPickerRemoteViewController.m" lineNumber:32 description:{@"%s", dlerror(), v10, v11, v12, v13, v14}];

    __break(1u);
  }
}

- (void)_dismissViewController
{
  v2 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [v2 _dismissViewController];
}

- (void)_didSelectPicker
{
  v2 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [v2 _didSelectPicker];
}

- (void)_dismissWithOption:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [v5 _dismissWithOption:v4];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerRemoteViewController;
  [(_UIRemoteViewController *)&v5 viewServiceDidTerminateWithError:a3];
  v4 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [v4 _dismissViewController];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  v7 = [v6 modalPresentationStyle];

  if (v7 != 7)
  {
    width = 0.0;
  }

  v8 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [v8 setPreferredContentSize:{width, height}];

  v9.receiver = self;
  v9.super_class = _UIDocumentPickerRemoteViewController;
  [(UIViewController *)&v9 setPreferredContentSize:width, height];
}

- (void)_stitchFileCreationAtURL:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [v5 _stitchFileCreationAtURL:v4];
}

- (void)_tintColorDidChangeToColor:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 _setTintColor:v4];
}

- (_UIDocumentPickerRemoteViewControllerContaining)publicController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicController);

  return WeakRetained;
}

@end