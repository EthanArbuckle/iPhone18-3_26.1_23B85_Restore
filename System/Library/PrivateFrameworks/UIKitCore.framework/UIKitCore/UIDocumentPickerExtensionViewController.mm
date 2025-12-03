@interface UIDocumentPickerExtensionViewController
+ (id)_exportedInterface;
- (void)_prepareWithExtensionInfo:(id)info completionHandler:(id)handler;
- (void)_setTintColor:(id)color;
- (void)_setUploadURL:(id)l;
- (void)_setUploadURLWrapper:(id)wrapper;
- (void)dismissGrantingAccessToURL:(NSURL *)url;
@end

@implementation UIDocumentPickerExtensionViewController

- (void)dismissGrantingAccessToURL:(NSURL *)url
{
  v5 = url;
  v22 = v5;
  if (v5)
  {
    if (![(NSURL *)v5 isFileURL])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentPickerExtensionViewController.m" lineNumber:44 description:@"Can only grant access to file URLs"];
    }

    documentStorageURL = [(UIDocumentPickerExtensionViewController *)self documentStorageURL];

    if (documentStorageURL)
    {
      absoluteString = [(NSURL *)v22 absoluteString];
      documentStorageURL2 = [(UIDocumentPickerExtensionViewController *)self documentStorageURL];
      absoluteString2 = [documentStorageURL2 absoluteString];
      v10 = [absoluteString hasPrefix:absoluteString2];

      if ((v10 & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        documentStorageURL3 = [(UIDocumentPickerExtensionViewController *)self documentStorageURL];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerExtensionViewController.m" lineNumber:47 description:{@"%@ dismissed with a URL (%@) not contained in its documentStorageURL (%@)", self, v22, documentStorageURL3}];
      }
    }

    if ([(UIDocumentPickerExtensionViewController *)self documentPickerMode]== UIDocumentPickerModeMoveToService || [(UIDocumentPickerExtensionViewController *)self documentPickerMode]== UIDocumentPickerModeExportToService)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [(NSURL *)v22 path];
      v13 = [defaultManager fileExistsAtPath:path isDirectory:0];

      if ((v13 & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerExtensionViewController.m" lineNumber:52 description:{@"%@ was dismissed with a nonexistent URL (%@) in Move or Export mode", self, v22}];
      }
    }

    v15 = (self->_documentPickerMode & 0xFFFFFFFFFFFFFFFDLL) != 1;
    navigationController = [(UIViewController *)self navigationController];
    _remoteViewControllerProxy = [navigationController _remoteViewControllerProxy];
    v18 = [_UIDocumentPickerNSURLWrapper wrapperWithURL:v22 createSandboxIfNoneAttached:v15];
    [_remoteViewControllerProxy _didSelectURLWrapper:v18];
  }

  else
  {
    navigationController = [(UIViewController *)self navigationController];
    _remoteViewControllerProxy = [navigationController _remoteViewControllerProxy];
    [_remoteViewControllerProxy _dismissViewController];
  }
}

- (void)_setTintColor:(id)color
{
  colorCopy = color;
  view = [(UIViewController *)self view];
  [view setTintColor:colorCopy];
}

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF88398];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel__prepareWithExtensionInfo_completionHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)_setUploadURLWrapper:(id)wrapper
{
  v4 = [wrapper url];
  [(UIDocumentPickerExtensionViewController *)self _setUploadURL:v4];
}

- (void)_setUploadURL:(id)l
{
  lCopy = l;
  if (([lCopy isEqual:self->_originalURL] & 1) == 0)
  {
    [(NSURL *)self->_originalURL stopAccessingSecurityScopedResource];
    v4 = [lCopy copy];
    originalURL = self->_originalURL;
    self->_originalURL = v4;

    [(NSURL *)self->_originalURL startAccessingSecurityScopedResource];
  }
}

- (void)_prepareWithExtensionInfo:(id)info completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  infoCopy = info;
  v9 = [infoCopy objectForKey:@"documentGroup"];
  v10 = [infoCopy objectForKey:@"documentStorageURL"];
  [(UIDocumentPickerExtensionViewController *)self _setDocumentStorageURL:v10];

  v11 = [infoCopy objectForKey:@"providerIdentifier"];
  [(UIDocumentPickerExtensionViewController *)self _setProviderIdentifier:v11];

  v12 = [infoCopy objectForKey:@"localizedName"];

  navigationItem = [(UIViewController *)self navigationItem];
  [navigationItem setTitle:v12];

  if (v9)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:v9];

    if (!v15)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentPickerExtensionViewController.m" lineNumber:122 description:{@"Could not access the group container with identifier %@. Is the necessary entitlement set?", v9}];
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v17 = CheckSandboxAccess(v15);
    if (has_internal_diagnostics)
    {
      if (!v17)
      {
        v32 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v35 = v15;
          _os_log_fault_impl(&dword_188A29000, v32, OS_LOG_TYPE_FAULT, "No access to group container %@, even though we just got it from NSFileManager.", buf, 0xCu);
        }
      }
    }

    else if (!v17)
    {
      v33 = *(__UILogGetCategoryCachedImpl("Assert", &_prepareWithExtensionInfo_completionHandler____s_category) + 8);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v15;
        _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "No access to group container %@, even though we just got it from NSFileManager.", buf, 0xCu);
      }
    }
  }

  documentStorageURL = [(UIDocumentPickerExtensionViewController *)self documentStorageURL];

  if (documentStorageURL)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    documentStorageURL2 = [(UIDocumentPickerExtensionViewController *)self documentStorageURL];
    path = [documentStorageURL2 path];
    [defaultManager2 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];
  }

  if ([(UIDocumentPickerExtensionViewController *)self documentPickerMode]== UIDocumentPickerModeMoveToService || [(UIDocumentPickerExtensionViewController *)self documentPickerMode]== UIDocumentPickerModeOpen)
  {
    documentStorageURL3 = [(UIDocumentPickerExtensionViewController *)self documentStorageURL];

    if (!documentStorageURL3)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerExtensionViewController.m" lineNumber:136 description:@"documentStorageURL is nil in Open or Move mode."];
    }

    documentStorageURL4 = [(UIDocumentPickerExtensionViewController *)self documentStorageURL];
    v24 = CheckSandboxAccess(documentStorageURL4);

    if (!v24)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      documentStorageURL5 = [(UIDocumentPickerExtensionViewController *)self documentStorageURL];
      v27 = documentStorageURL5;
      if (v9)
      {
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v29 = [defaultManager3 containerURLForSecurityApplicationGroupIdentifier:v9];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerExtensionViewController.m" lineNumber:142 description:{@"No access to documentStorageURL %@; group container is at %@.", v27, v29}];
      }

      else
      {
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerExtensionViewController.m" lineNumber:147 description:{@"No access to documentStorageURL %@; no NSExtensionFileProviderDocumentGroup found.", documentStorageURL5}];
      }
    }
  }

  [(UIDocumentPickerExtensionViewController *)self prepareForPresentationInMode:[(UIDocumentPickerExtensionViewController *)self documentPickerMode]];
  [(UIViewController *)self view];

  handlerCopy[2](handlerCopy, _UIApplicationLinkedOnVersion);
}

@end