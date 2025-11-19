@interface UIDocumentPickerViewController
- (BOOL)_forPickingDownloadsFolder;
- (BOOL)shouldShowFileExtensions;
- (UIDocumentPickerViewController)initForExportingURLs:(NSArray *)urls asCopy:(BOOL)asCopy;
- (UIDocumentPickerViewController)initForOpeningContentTypes:(NSArray *)contentTypes asCopy:(BOOL)asCopy;
- (UIDocumentPickerViewController)initWithCoder:(NSCoder *)coder;
- (UIDocumentPickerViewController)initWithDocumentTypes:(NSArray *)allowedUTIs inMode:(UIDocumentPickerMode)mode;
- (UIDocumentPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIDocumentPickerViewController)initWithURL:(NSURL *)url inMode:(UIDocumentPickerMode)mode;
- (UIDocumentPickerViewController)initWithURLs:(NSArray *)urls inMode:(UIDocumentPickerMode)mode;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_initForImportingDocumentsWithConversionRules:(id)a3;
- (id)delegate;
- (unint64_t)pickerUserInterfaceStyle;
- (void)_callDelegateWithSelectedURLsAndDismiss:(id)a3;
- (void)_commonInitWithDocumentTypes:(void *)a1;
- (void)_consumeSandboxExtensionForURL:(id)a3;
- (void)_didTapCancel;
- (void)_setChildViewController:(id)a3;
- (void)_setForPickingDownloadsFolder:(BOOL)a3;
- (void)_setIsContentManaged:(BOOL)a3;
- (void)_tellDelegateDocumentPickerWasCancelled;
- (void)dealloc;
- (void)documentBrowser:(id)a3 didPickDocumentURLs:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setAllowsMultipleSelection:(BOOL)allowsMultipleSelection;
- (void)setPickerUserInterfaceStyle:(unint64_t)a3;
- (void)setShouldShowFileExtensions:(BOOL)shouldShowFileExtensions;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIDocumentPickerViewController

- (UIDocumentPickerViewController)initWithDocumentTypes:(NSArray *)allowedUTIs inMode:(UIDocumentPickerMode)mode
{
  v7 = allowedUTIs;
  if (mode >= UIDocumentPickerModeExportToService)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:115 description:{@"%s can only be called with mode Import or Open", "-[UIDocumentPickerViewController initWithDocumentTypes:inMode:]"}];
  }

  if ([(NSArray *)v7 count]== 1)
  {
    v8 = MEMORY[0x1E6982C40];
    v9 = [(NSArray *)v7 firstObject];
    v10 = [v8 typeWithIdentifier:v9];
    v11 = [v10 isEqual:*MEMORY[0x1E6982DC8]];

    if (mode != UIDocumentPickerModeOpen)
    {
      if (v11)
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:118 description:{@"%s folder import is not supported, use open", "-[UIDocumentPickerViewController initWithDocumentTypes:inMode:]"}];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = UIDocumentPickerViewController;
  v12 = [(UIViewController *)&v17 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    [(UIDocumentPickerViewController *)v12 setDocumentPickerMode:mode];
    [(UIDocumentPickerViewController *)v13 _commonInitWithDocumentTypes:v7];
  }

  return v13;
}

- (void)_commonInitWithDocumentTypes:(void *)a1
{
  v22 = a2;
  [a1 _setAutomaticallyDismissesAfterCompletion:1];
  [a1 setDocumentTypes:v22];
  v3 = [a1 documentPickerMode];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_17;
      }

      if ([v22 count] == 1)
      {
        v4 = MEMORY[0x1E6982C40];
        v5 = [v22 firstObject];
        v6 = [v4 typeWithIdentifier:v5];
        v7 = [v6 isEqual:*MEMORY[0x1E6982DC8]];

        if (v7)
        {
          v8 = [getDOCConfigurationClass() configurationForFolderPicking];
LABEL_15:
          v10 = v8;
          [a1 setConfiguration:v8];
          goto LABEL_16;
        }
      }

      DOCConfigurationClass = getDOCConfigurationClass();
      v15 = v22;
      v16 = 1;
    }

    else
    {
      DOCConfigurationClass = getDOCConfigurationClass();
      v15 = v22;
      v16 = 0;
    }

    v8 = [DOCConfigurationClass configurationForImportingDocumentsWithContentTypes:v15 mode:v16];
    goto LABEL_15;
  }

  if (v3 == 2)
  {
    v17 = getDOCConfigurationClass();
    v10 = [a1 uploadURLs];
    v11 = v17;
    v12 = v10;
    v13 = 2;
  }

  else
  {
    if (v3 != 3)
    {
      goto LABEL_17;
    }

    v9 = getDOCConfigurationClass();
    v10 = [a1 uploadURLs];
    v11 = v9;
    v12 = v10;
    v13 = 3;
  }

  v18 = [v11 configurationForExportingDocumentsToURLs:v12 mode:v13];
  [a1 setConfiguration:v18];

LABEL_16:
LABEL_17:
  v19 = [a1 configuration];
  [v19 setForPickingDocuments:1];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v20 = +[UIDevice currentDevice];
    v21 = [v20 userInterfaceIdiom] != 0;

    [a1 setModalPresentationStyle:v21];
  }
}

- (UIDocumentPickerViewController)initForOpeningContentTypes:(NSArray *)contentTypes asCopy:(BOOL)asCopy
{
  v4 = asCopy;
  v28 = *MEMORY[0x1E69E9840];
  v7 = contentTypes;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v23 + 1) + 8 * v13) identifier];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v8 count] == 1)
  {
    v15 = [v8 firstObject];
    v16 = UTTypeEqual(v15, *MEMORY[0x1E69637D0]);

    if (v16 && v4)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:149 description:{@"%s folder import is not supported, use asCopy:false", "-[UIDocumentPickerViewController initForOpeningContentTypes:asCopy:]"}];
    }
  }

  v22.receiver = self;
  v22.super_class = UIDocumentPickerViewController;
  v18 = [(UIViewController *)&v22 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    [(UIDocumentPickerViewController *)v18 setDocumentPickerMode:!v4];
    [(UIDocumentPickerViewController *)v19 _commonInitWithDocumentTypes:v8];
  }

  return v19;
}

- (UIDocumentPickerViewController)initWithCoder:(NSCoder *)coder
{
  v6.receiver = self;
  v6.super_class = UIDocumentPickerViewController;
  v3 = [(UIViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(UIDocumentPickerViewController *)v3 _setAutomaticallyDismissesAfterCompletion:1];
  }

  return v4;
}

- (UIDocumentPickerViewController)initWithURL:(NSURL *)url inMode:(UIDocumentPickerMode)mode
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = url;
  v8 = v7;
  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:175 description:{@"%s can only be called with mode Export or Move", "-[UIDocumentPickerViewController initWithURL:inMode:]"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:176 description:{@"%s must be called with a valid URL", "-[UIDocumentPickerViewController initWithURL:inMode:]"}];

LABEL_3:
  v9 = [(NSURL *)v8 lastPathComponent];

  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:177 description:{@"%s must be called with a URL pointing to a file", "-[UIDocumentPickerViewController initWithURL:inMode:]"}];
  }

  v24 = 0;
  v10 = *MEMORY[0x1E695DC30];
  v23 = 0;
  v11 = [(NSURL *)v8 getPromisedItemResourceValue:&v24 forKey:v10 error:&v23];
  v12 = v24;
  v13 = v23;
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:181 description:{@"%s must be called with a URL pointing to an existing file: %@", "-[UIDocumentPickerViewController initWithURL:inMode:]", v13}];
  }

  v22.receiver = self;
  v22.super_class = UIDocumentPickerViewController;
  v14 = [(UIViewController *)&v22 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(UIDocumentPickerViewController *)v14 setDocumentPickerMode:mode];
    v25[0] = v8;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(UIDocumentPickerViewController *)v15 setUploadURLs:v16];

    [(UIDocumentPickerViewController *)v15 _commonInitWithDocumentTypes:?];
  }

  return v15;
}

- (UIDocumentPickerViewController)initWithURLs:(NSArray *)urls inMode:(UIDocumentPickerMode)mode
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = urls;
  v6 = v5;
  v27 = mode;
  if ((mode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:196 description:{@"%s can only be called with mode Export or Move", "-[UIDocumentPickerViewController initWithURLs:inMode:]"}];

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_22:
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:197 description:{@"%s must be called with a valid URL", "-[UIDocumentPickerViewController initWithURLs:inMode:]"}];

    goto LABEL_3;
  }

  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v6;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = v8;
  v10 = *v34;
  v11 = *MEMORY[0x1E695DC30];
  do
  {
    v12 = 0;
    do
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v33 + 1) + 8 * v12);
      v14 = [v13 startAccessingSecurityScopedResource];
      v15 = [v13 lastPathComponent];

      if (!v15)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:202 description:{@"%s must be called with a URL pointing to a file", "-[UIDocumentPickerViewController initWithURLs:inMode:]"}];
      }

      v31 = 0;
      v32 = 0;
      v16 = [v13 getPromisedItemResourceValue:&v32 forKey:v11 error:&v31];
      v17 = v32;
      v18 = v31;
      if (v16)
      {
        if (!v14)
        {
          goto LABEL_13;
        }

LABEL_12:
        [v13 stopAccessingSecurityScopedResource];
        goto LABEL_13;
      }

      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:206 description:{@"%s must be called with a URL pointing to an existing file: %@", "-[UIDocumentPickerViewController initWithURLs:inMode:]", v18}];

      if (v14)
      {
        goto LABEL_12;
      }

LABEL_13:

      ++v12;
    }

    while (v9 != v12);
    v21 = [(NSArray *)v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    v9 = v21;
  }

  while (v21);
LABEL_18:

  v30.receiver = self;
  v30.super_class = UIDocumentPickerViewController;
  v22 = [(UIViewController *)&v30 initWithNibName:0 bundle:0];
  v23 = v22;
  if (v22)
  {
    [(UIDocumentPickerViewController *)v22 setDocumentPickerMode:v27];
    [(UIDocumentPickerViewController *)v23 setUploadURLs:v7];
    [(UIDocumentPickerViewController *)v23 _commonInitWithDocumentTypes:?];
  }

  return v23;
}

- (UIDocumentPickerViewController)initForExportingURLs:(NSArray *)urls asCopy:(BOOL)asCopy
{
  v4 = asCopy;
  v38 = *MEMORY[0x1E69E9840];
  v5 = urls;
  v6 = v5;
  v7 = 2;
  if (!v4)
  {
    v7 = 3;
  }

  v27 = v7;
  if (!v5)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:230 description:{@"%s must be called with a valid URL", "-[UIDocumentPickerViewController initForExportingURLs:asCopy:]"}];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v6;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    v12 = *MEMORY[0x1E695DC30];
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = [v14 startAccessingSecurityScopedResource];
        v16 = [v14 lastPathComponent];

        if (!v16)
        {
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          [v20 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:235 description:{@"%s must be called with a URL pointing to a file", "-[UIDocumentPickerViewController initForExportingURLs:asCopy:]"}];
        }

        v31 = 0;
        v32 = 0;
        v17 = [v14 getPromisedItemResourceValue:&v32 forKey:v12 error:&v31];
        v18 = v32;
        v19 = v31;
        if (v17)
        {
          if (!v15)
          {
            goto LABEL_15;
          }

LABEL_14:
          [v14 stopAccessingSecurityScopedResource];
          goto LABEL_15;
        }

        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:239 description:{@"%s must be called with a URL pointing to an existing file: %@", "-[UIDocumentPickerViewController initForExportingURLs:asCopy:]", v19}];

        if (v15)
        {
          goto LABEL_14;
        }

LABEL_15:

        ++v13;
      }

      while (v10 != v13);
      v22 = [(NSArray *)v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v10 = v22;
    }

    while (v22);
  }

  v30.receiver = self;
  v30.super_class = UIDocumentPickerViewController;
  v23 = [(UIViewController *)&v30 initWithNibName:0 bundle:0];
  v24 = v23;
  if (v23)
  {
    [(UIDocumentPickerViewController *)v23 setDocumentPickerMode:v27];
    [(UIDocumentPickerViewController *)v24 setUploadURLs:v8];
    [(UIDocumentPickerViewController *)v24 _commonInitWithDocumentTypes:?];
  }

  return v24;
}

- (id)_initForImportingDocumentsWithConversionRules:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIDocumentPickerViewController;
  v5 = [(UIViewController *)&v12 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(UIDocumentPickerViewController *)v5 setDocumentPickerMode:0];
    [(UIDocumentPickerViewController *)v6 _setAutomaticallyDismissesAfterCompletion:1];
    v7 = [getDOCConfigurationClass() configurationForImportingDocumentsWithConversionRules:v4];
    [(UIDocumentPickerViewController *)v6 setConfiguration:v7];

    v8 = [(UIDocumentPickerViewController *)v6 configuration];
    [v8 setForPickingDocuments:1];

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v9 = +[UIDevice currentDevice];
      v10 = [v9 userInterfaceIdiom] != 0;

      [(UIViewController *)v6 setModalPresentationStyle:v10];
    }
  }

  return v6;
}

- (void)setAllowsMultipleSelection:(BOOL)allowsMultipleSelection
{
  v3 = allowsMultipleSelection;
  self->_allowsMultipleSelection = allowsMultipleSelection;
  v4 = [(UIDocumentPickerViewController *)self _childViewController];
  [v4 setAllowsPickingMultipleItems:v3];
}

- (BOOL)shouldShowFileExtensions
{
  v2 = [(UIDocumentPickerViewController *)self _childViewController];
  v3 = [v2 shouldShowFileExtensions];

  return v3;
}

- (void)setShouldShowFileExtensions:(BOOL)shouldShowFileExtensions
{
  v3 = shouldShowFileExtensions;
  v4 = [(UIDocumentPickerViewController *)self _childViewController];
  [v4 setShouldShowFileExtensions:v3];
}

- (unint64_t)pickerUserInterfaceStyle
{
  v2 = [(UIDocumentPickerViewController *)self _childViewController];
  v3 = [v2 browserUserInterfaceStyle];

  return v3 == 1;
}

- (void)setPickerUserInterfaceStyle:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3 == 1;
  }

  v4 = [(UIDocumentPickerViewController *)self _childViewController];
  [v4 setBrowserUserInterfaceStyle:v3];
}

- (void)documentBrowser:(id)a3 didPickDocumentURLs:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || ![v7 count])
  {
    v9 = _UIDocumentLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = objc_opt_class();
      v13 = v16;
      _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%@ : didPickDocumentURLs called with nil or 0 URLS", buf, 0xCu);
    }

    v10 = [(UIViewController *)self presentingViewController];
    if (v10 && (v11 = v10, v12 = [(UIDocumentPickerViewController *)self _automaticallyDismissesAfterCompletion], v11, v12))
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __70__UIDocumentPickerViewController_documentBrowser_didPickDocumentURLs___block_invoke;
      v14[3] = &unk_1E70F3590;
      v14[4] = self;
      [(UIViewController *)self dismissViewControllerAnimated:1 completion:v14];
    }

    else
    {
      [(UIDocumentPickerViewController *)self _tellDelegateDocumentPickerWasCancelled];
    }
  }

  if ([v8 count])
  {
    [(UIDocumentPickerViewController *)self _callDelegateWithSelectedURLsAndDismiss:v8];
  }
}

- (UIDocumentPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_initWithDocumentTypes_inMode_);
  v12 = NSStringFromSelector(sel_initWithURL_inMode_);
  v13 = [v9 stringWithFormat:@"You cannot initialize a %@ except by the %@ and %@ initializers.", v10, v11, v12];
  v14 = [v7 exceptionWithName:v8 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)_setIsContentManaged:(BOOL)a3
{
  v3 = a3;
  self->_isContentManaged = a3;
  v4 = [(UIDocumentPickerViewController *)self configuration];
  _UIShimSetIsContentManaged(v4, v3);
}

- (void)_setForPickingDownloadsFolder:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIDocumentPickerViewController *)self configuration];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(UIDocumentPickerViewController *)self configuration];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v8 setValue:v7 forKey:@"forPickingDownloadsFolder"];
  }
}

- (BOOL)_forPickingDownloadsFolder
{
  v3 = [(UIDocumentPickerViewController *)self configuration];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(UIDocumentPickerViewController *)self configuration];
  v6 = [v5 valueForKey:@"forPickingDownloadsFolder"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)viewDidLoad
{
  v17[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = UIDocumentPickerViewController;
  [(UIViewController *)&v11 viewDidLoad];
  if (!self->_childViewController)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v3 = qword_1ED499230;
    v16 = qword_1ED499230;
    if (!qword_1ED499230)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getUIDocumentBrowserViewControllerClass_block_invoke;
      v12[3] = &unk_1E70F2F20;
      v12[4] = &v13;
      __getUIDocumentBrowserViewControllerClass_block_invoke(v12);
      v3 = v14[3];
    }

    v4 = v3;
    _Block_object_dispose(&v13, 8);
    v5 = [v3 alloc];
    v6 = [(UIDocumentPickerViewController *)self configuration];
    v7 = [v5 initWithConfiguration:v6];

    [v7 setAllowsDocumentCreation:0];
    [v7 setDelegate:self];
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:sel__didTapCancel];
    [v7 setAllowsPickingMultipleItems:self->_allowsMultipleSelection];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v7 setAdditionalTrailingNavigationBarButtonItems:v9];

    [(UIDocumentPickerViewController *)self _setChildViewController:v7];
    v10 = [(UIViewController *)self presentationController];
    [v10 setDelegate:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = UIDocumentPickerViewController;
  [(UIViewController *)&v7 viewWillAppear:a3];
  v4 = [(UIDocumentPickerViewController *)self directoryURL];

  if (v4)
  {
    v5 = [(UIDocumentPickerViewController *)self _childViewController];
    v6 = [(UIDocumentPickerViewController *)self directoryURL];
    [v5 revealDocumentAtURL:v6 importIfNeeded:0 completion:&__block_literal_global_173];
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_securityScopedURLs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) stopAccessingSecurityScopedResource];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  securityScopedURLs = self->_securityScopedURLs;
  self->_securityScopedURLs = 0;

  [(UIDocumentPickerViewController *)self setDelegate:0];
  v9.receiver = self;
  v9.super_class = UIDocumentPickerViewController;
  [(UIViewController *)&v9 dealloc];
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_1EFF5EDB0])
  {
    v3 = [(UIViewController *)self->_childViewController _containedRemoteViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setChildViewController:(id)a3
{
  v5 = a3;
  if (self->_childViewController)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"UIDocumentPickerViewController.m" lineNumber:607 description:{@"%s: remote view controller can only be set once", "-[UIDocumentPickerViewController _setChildViewController:]"}];

    childViewController = self->_childViewController;
  }

  else
  {
    childViewController = 0;
  }

  self->_childViewController = v5;
  v7 = v5;

  [(UIViewController *)self->_childViewController beginAppearanceTransition:1 animated:0];
  [(UIViewController *)self addChildViewController:self->_childViewController];
  v8 = [(UIViewController *)self->_childViewController view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(UIViewController *)self view];
  v10 = [(UIViewController *)self->_childViewController view];
  [v9 addSubview:v10];

  v11 = [(UIViewController *)self view];
  v12 = MEMORY[0x1E69977A0];
  v13 = [(UIViewController *)self view];
  v14 = [(UIViewController *)self->_childViewController view];
  v15 = [v12 constraintWithItem:v13 attribute:7 relatedBy:0 toItem:v14 attribute:7 multiplier:1.0 constant:0.0];
  [v11 addConstraint:v15];

  v16 = [(UIViewController *)self view];
  v17 = MEMORY[0x1E69977A0];
  v18 = [(UIViewController *)self view];
  v19 = [(UIViewController *)self->_childViewController view];
  v20 = [v17 constraintWithItem:v18 attribute:8 relatedBy:0 toItem:v19 attribute:8 multiplier:1.0 constant:0.0];
  [v16 addConstraint:v20];

  v21 = [(UIViewController *)self view];
  v22 = MEMORY[0x1E69977A0];
  v23 = [(UIViewController *)self view];
  v24 = [(UIViewController *)self->_childViewController view];
  v25 = [v22 constraintWithItem:v23 attribute:1 relatedBy:0 toItem:v24 attribute:1 multiplier:1.0 constant:0.0];
  [v21 addConstraint:v25];

  v26 = [(UIViewController *)self view];
  v27 = MEMORY[0x1E69977A0];
  v28 = [(UIViewController *)self view];
  v29 = [(UIViewController *)self->_childViewController view];
  v30 = [v27 constraintWithItem:v28 attribute:3 relatedBy:0 toItem:v29 attribute:3 multiplier:1.0 constant:0.0];
  [v26 addConstraint:v30];

  [(UIViewController *)self->_childViewController didMoveToParentViewController:self];
  [(UIViewController *)self->_childViewController endAppearanceTransition];
  [(UIViewController *)self->_childViewController preferredContentSize];
  v32 = v31;
  v34 = v33;

  [(UIViewController *)self setPreferredContentSize:v32, v34];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = UIDocumentPickerViewController;
  v4 = a3;
  [(UIViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(UIViewController *)self setPreferredContentSize:v6, v8];
}

- (void)_tellDelegateDocumentPickerWasCancelled
{
  v4 = [(UIDocumentPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 documentPickerWasCancelled:self];
  }

  v3 = [(UIDocumentPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 documentPickerWasCancelled:self completion:&__block_literal_global_124_0];
  }
}

- (void)_callDelegateWithSelectedURLsAndDismiss:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIViewController *)self presentingViewController];
  if ((dyld_program_sdk_at_least() & 1) == 0 && [(UIDocumentPickerViewController *)self documentPickerMode]== UIDocumentPickerModeOpen)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          [(UIDocumentPickerViewController *)self _consumeSandboxExtensionForURL:v11];
          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }
  }

  if (!dyld_program_sdk_at_least())
  {
    v14 = [(UIDocumentPickerViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    v16 = [(UIDocumentPickerViewController *)self delegate];
    v17 = v16;
    if (v15)
    {
      [v16 documentPicker:self didPickDocumentsAtURLs:v4];
    }

    else
    {
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
LABEL_20:
        [v5 dismissViewControllerAnimated:1 completion:0];
        goto LABEL_26;
      }

      v17 = [(UIDocumentPickerViewController *)self delegate];
      v19 = [v4 firstObject];
      [v17 documentPicker:self didPickDocumentAtURL:v19];
    }

    goto LABEL_20;
  }

  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__UIDocumentPickerViewController__callDelegateWithSelectedURLsAndDismiss___block_invoke;
    aBlock[3] = &unk_1E70F35B8;
    aBlock[4] = self;
    v25 = v4;
    v13 = _Block_copy(aBlock);
    if ([(UIDocumentPickerViewController *)self _automaticallyDismissesAfterCompletion])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __74__UIDocumentPickerViewController__callDelegateWithSelectedURLsAndDismiss___block_invoke_2;
      v22[3] = &unk_1E70F0F78;
      v23 = v13;
      [v5 dismissViewControllerAnimated:1 completion:v22];
    }

    else
    {
      v13[2](v13);
    }
  }

  else
  {
    v20 = [(UIDocumentPickerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v21 = [v4 firstObject];
      [v20 documentPicker:self didPickDocumentAtURL:v21 completion:&__block_literal_global_132_0];
    }
  }

LABEL_26:
}

void __74__UIDocumentPickerViewController__callDelegateWithSelectedURLsAndDismiss___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) delegate];
  v8 = v4;
  if (v3)
  {
    [v4 documentPicker:*(a1 + 32) didPickDocumentsAtURLs:*(a1 + 40)];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v8 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) firstObject];
    [v8 documentPicker:v6 didPickDocumentAtURL:v7];
  }
}

- (void)_didTapCancel
{
  v3 = [(UIViewController *)self presentingViewController];
  if (v3 && (v4 = v3, v5 = [(UIDocumentPickerViewController *)self _automaticallyDismissesAfterCompletion], v4, v5))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__UIDocumentPickerViewController__didTapCancel__block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [(UIViewController *)self dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {

    [(UIDocumentPickerViewController *)self _tellDelegateDocumentPickerWasCancelled];
  }
}

- (void)_consumeSandboxExtensionForURL:(id)a3
{
  v8 = a3;
  securityScopedURLs = self->_securityScopedURLs;
  if (!securityScopedURLs)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = self->_securityScopedURLs;
    self->_securityScopedURLs = v5;

    securityScopedURLs = self->_securityScopedURLs;
  }

  if ([(NSMutableArray *)securityScopedURLs count]>= 0xA)
  {
    do
    {
      v7 = [(NSMutableArray *)self->_securityScopedURLs firstObject];
      [v7 stopAccessingSecurityScopedResource];

      [(NSMutableArray *)self->_securityScopedURLs removeObjectAtIndex:0];
    }

    while ([(NSMutableArray *)self->_securityScopedURLs count]> 9);
  }

  if ([v8 startAccessingSecurityScopedResource])
  {
    [(NSMutableArray *)self->_securityScopedURLs addObject:v8];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end