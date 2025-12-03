@interface _UIDocumentPickerRemoteViewController
+ (id)serviceViewControllerInterface;
- (_UIDocumentPickerRemoteViewControllerContaining)publicController;
- (void)_didSelectPicker;
- (void)_didSelectURLBookmark:(id)bookmark;
- (void)_didSelectURLWrapper:(id)wrapper;
- (void)_dismissViewController;
- (void)_dismissWithOption:(id)option;
- (void)_stitchFileCreationAtURL:(id)l;
- (void)_tintColorDidChangeToColor:(id)color;
- (void)invalidate;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
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
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy _documentPickerDidDismiss];

  [(_UIDocumentPickerRemoteViewController *)self setPublicController:0];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerRemoteViewController;
  [(UIViewController *)&v5 viewDidLoad];
  v3 = objc_alloc_init(_UIDocumentPickerRemoteViewControllerTintColorView);
  view = [(UIViewController *)self view];
  [view addSubview:v3];
}

- (void)_didSelectURLWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  publicController = [(_UIDocumentPickerRemoteViewController *)self publicController];
  v5 = [wrapperCopy url];

  [publicController _didSelectURL:v5];
}

- (void)_didSelectURLBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __63___UIDocumentPickerRemoteViewController__didSelectURLBookmark___block_invoke;
  v13 = &unk_1E7105650;
  selfCopy = self;
  v5 = bookmarkCopy;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _FPDocumentURLFromBookmarkableString(CFStringRef, void (^__strong)(CFURLRef, CFErrorRef))"}];
    [currentHandler handleFailureInFunction:v9 file:@"_UIDocumentPickerRemoteViewController.m" lineNumber:32 description:{@"%s", dlerror(), v10, v11, v12, v13, selfCopy}];

    __break(1u);
  }
}

- (void)_dismissViewController
{
  publicController = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [publicController _dismissViewController];
}

- (void)_didSelectPicker
{
  publicController = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [publicController _didSelectPicker];
}

- (void)_dismissWithOption:(id)option
{
  optionCopy = option;
  publicController = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [publicController _dismissWithOption:optionCopy];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerRemoteViewController;
  [(_UIRemoteViewController *)&v5 viewServiceDidTerminateWithError:error];
  publicController = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [publicController _dismissViewController];
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  publicController = [(_UIDocumentPickerRemoteViewController *)self publicController];
  modalPresentationStyle = [publicController modalPresentationStyle];

  if (modalPresentationStyle != 7)
  {
    width = 0.0;
  }

  publicController2 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [publicController2 setPreferredContentSize:{width, height}];

  v9.receiver = self;
  v9.super_class = _UIDocumentPickerRemoteViewController;
  [(UIViewController *)&v9 setPreferredContentSize:width, height];
}

- (void)_stitchFileCreationAtURL:(id)l
{
  lCopy = l;
  publicController = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [publicController _stitchFileCreationAtURL:lCopy];
}

- (void)_tintColorDidChangeToColor:(id)color
{
  colorCopy = color;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy _setTintColor:colorCopy];
}

- (_UIDocumentPickerRemoteViewControllerContaining)publicController
{
  WeakRetained = objc_loadWeakRetained(&self->_publicController);

  return WeakRetained;
}

@end