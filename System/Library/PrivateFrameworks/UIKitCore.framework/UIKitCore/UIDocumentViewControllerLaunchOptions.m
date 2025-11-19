@interface UIDocumentViewControllerLaunchOptions
+ (id)createDocumentActionWithIntent:(id)a3;
- (BOOL)_isDocumentViewControllerConsideredRootViewController;
- (UIView)documentTargetView;
- (id)_documentUnavailableConfiguration;
- (id)defaultBrowserViewController;
- (id)initWithDocumentViewController:(void *)a1;
- (void)_dismissBrowserViewController;
- (void)_documentCloseStateDidChange;
- (void)_documentDidChange;
- (void)_documentProgressStateDidChange;
- (void)_prepareBrowserViewController:(id)a3;
- (void)_presentAlertForDocumentAtURL:(id)a3 error:(id)a4 isImport:(BOOL)a5;
- (void)_presentBrowserViewController;
- (void)_replaceDocumentWithDocumentAtURL:(id)a3 isImport:(BOOL)a4;
- (void)_setNeedsUpdateDocumentUnavailableConfiguration;
- (void)_setOverridePasteActionUTTypes:(id)a3;
- (void)_setPrimaryMenu:(id)a3;
- (void)_setSecondaryMenu:(id)a3;
- (void)_setTintColor:(id)a3;
- (void)documentLandingBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentLandingBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4;
- (void)documentLandingBrowserDidEndDocumentCreation:(id)a3 importedURL:(id)a4 canceled:(BOOL)a5 error:(id)a6;
- (void)documentLandingBrowserWillStartDocumentCreation:(id)a3;
- (void)setBackground:(id)a3;
- (void)setBackgroundAccessoryView:(id)a3;
- (void)setBrowserViewController:(id)a3;
- (void)setDocumentTargetView:(id)a3;
- (void)setForegroundAccessoryView:(id)a3;
- (void)setPrimaryAction:(id)a3;
- (void)setSecondaryAction:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation UIDocumentViewControllerLaunchOptions

- (id)initWithDocumentViewController:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v17.receiver = a1;
  v17.super_class = UIDocumentViewControllerLaunchOptions;
  v3 = objc_msgSendSuper2(&v17, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(v3 + 18, a2);
    v5 = [(UIDocumentViewControllerLaunchOptions *)v4 defaultBrowserViewController];
    v6 = v4[7];
    v4[7] = v5;

    v7 = [UIApp _localizedApplicationName];
    v8 = v4[8];
    v4[8] = v7;

    v9 = [(UIDocumentViewControllerLaunchOptions *)v4 defaultBrowserViewController];
    if ([v9 allowsDocumentCreation])
    {
      v10 = [UIDocumentViewControllerLaunchOptions createDocumentActionWithIntent:@"UIDocumentCreationIntentDefault"];
    }

    else
    {
      v10 = 0;
    }

    v11 = v4[9];
    v4[9] = v10;

    v12 = +[UIBackgroundConfiguration clearConfiguration];
    v13 = v4[13];
    v4[13] = v12;

    v14 = +[UIColor tintColor];
    v15 = v4[3];
    v4[3] = v14;
  }

  return v4;
}

- (id)defaultBrowserViewController
{
  v2 = a1 + 14;
  v3 = a1[14];
  if (!v3)
  {
    v4 = +[_UIApplicationInfoParser mainBundleInfoParser];
    v5 = [v4 viewerRoleDocumentUTTypes];

    v6 = +[_UIApplicationInfoParser mainBundleInfoParser];
    v7 = [v6 editorRoleDocumentUTTypes];

    v8 = [v5 arrayByAddingObjectsFromArray:v7];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v9 = qword_1ED4A22F8;
    v16 = qword_1ED4A22F8;
    if (!qword_1ED4A22F8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getUIDocumentBrowserViewControllerClass_block_invoke_2;
      v12[3] = &unk_1E70F2F20;
      v12[4] = &v13;
      __getUIDocumentBrowserViewControllerClass_block_invoke_2(v12);
      v9 = v14[3];
    }

    v10 = v9;
    _Block_object_dispose(&v13, 8);
    v3 = [[v9 alloc] initForOpeningContentTypes:v8];
    [v3 setAllowsDocumentCreation:{objc_msgSend(v7, "count") != 0}];
    [a1 _prepareBrowserViewController:v3];
    objc_storeStrong(v2, v3);
  }

  return v3;
}

- (void)setBrowserViewController:(id)a3
{
  browserViewController = self->_browserViewController;
  p_browserViewController = &self->_browserViewController;
  if (browserViewController != a3)
  {
    objc_storeStrong(p_browserViewController, a3);
    [(UIDocumentViewControllerLaunchOptions *)self _prepareBrowserViewController:a3];

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setTitle:(id)a3
{
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v5 = [a3 copy];
    title = self->_title;
    self->_title = v5;

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setPrimaryAction:(id)a3
{
  if (self->_primaryAction != a3)
  {
    v5 = [a3 copy];
    primaryAction = self->_primaryAction;
    self->_primaryAction = v5;

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setSecondaryAction:(id)a3
{
  if (self->_secondaryAction != a3)
  {
    v5 = [a3 copy];
    secondaryAction = self->_secondaryAction;
    self->_secondaryAction = v5;

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setDocumentTargetView:(id)a3
{
  documentTargetView = self->_documentTargetView;
  p_documentTargetView = &self->_documentTargetView;
  if (documentTargetView != a3)
  {
    objc_storeStrong(p_documentTargetView, a3);
    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }

  *&self->_flags |= 2u;
}

- (UIView)documentTargetView
{
  if ((*&self->_flags & 2) != 0)
  {
    v3 = self->_documentTargetView;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->__documentViewController);
    v3 = [WeakRetained viewIfLoaded];
  }

  return v3;
}

- (void)setBackground:(id)a3
{
  p_background = &self->_background;
  if (([(UIBackgroundConfiguration *)self->_background _isEqualToConfiguration:a3]& 1) == 0)
  {
    objc_storeStrong(p_background, a3);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setForegroundAccessoryView:(id)a3
{
  foregroundAccessoryView = self->_foregroundAccessoryView;
  p_foregroundAccessoryView = &self->_foregroundAccessoryView;
  if (foregroundAccessoryView != a3)
  {
    objc_storeStrong(p_foregroundAccessoryView, a3);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setBackgroundAccessoryView:(id)a3
{
  backgroundAccessoryView = self->_backgroundAccessoryView;
  p_backgroundAccessoryView = &self->_backgroundAccessoryView;
  if (backgroundAccessoryView != a3)
  {
    objc_storeStrong(p_backgroundAccessoryView, a3);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_setTintColor:(id)a3
{
  tintColor = self->_tintColor;
  p_tintColor = &self->_tintColor;
  if (tintColor != a3)
  {
    objc_storeStrong(p_tintColor, a3);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_setPrimaryMenu:(id)a3
{
  primaryMenu = self->_primaryMenu;
  p_primaryMenu = &self->_primaryMenu;
  if (primaryMenu != a3)
  {
    objc_storeStrong(p_primaryMenu, a3);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_setSecondaryMenu:(id)a3
{
  secondaryMenu = self->_secondaryMenu;
  p_secondaryMenu = &self->_secondaryMenu;
  if (secondaryMenu != a3)
  {
    objc_storeStrong(p_secondaryMenu, a3);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_setOverridePasteActionUTTypes:(id)a3
{
  if (self->_overridePasteActionUTTypes != a3)
  {
    v5 = [a3 copy];
    overridePasteActionUTTypes = self->_overridePasteActionUTTypes;
    self->_overridePasteActionUTTypes = v5;

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

+ (id)createDocumentActionWithIntent:(id)a3
{
  if (![a3 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:200 description:@"UIDocumentCreationIntent should have a non-zero length"];
  }

  v6 = _UILocalizedString(@"com.apple.documents.create.action", @"The title of the button that creates a new document.", @"Create Document");
  v7 = [@"com.apple.documents.action.create.document." stringByAppendingString:a3];
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:v7 handler:&__block_literal_global_617];

  return v8;
}

- (void)_setNeedsUpdateDocumentUnavailableConfiguration
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->__documentViewController);
  }

  v2 = self;
  [(UIDocumentViewController *)self _setNeedsUpdateDocumentUnavailableConfiguration];
}

- (void)_documentDidChange
{
  if (a1)
  {
    v9 = a1[7];
    if ([v9 isViewLoaded])
    {
      [v9 _endTransitionCoordinatorSession];
    }

    WeakRetained = objc_loadWeakRetained(a1 + 18);
    v3 = [WeakRetained document];

    if (v3)
    {
      v4 = [v3 fileURL];
      objc_storeStrong(a1 + 15, v4);
      if ([v9 isViewLoaded])
      {
        [v9 _beginTransitionCoordinatorSessionForDocumentURL:v4];
      }

      if ((_UIDocumentViewControllerWantsUIPDocumentLanding() & 1) == 0 && ([v3 documentState] & 1) == 0)
      {
        [a1 _dismissBrowserViewController];
      }
    }

    v5 = a1[16];
    if (v5)
    {
      v6 = [v3 fileURL];
      v7 = [v6 isEqual:v5];

      if ((v7 & 1) == 0)
      {
        v8 = a1[16];
        a1[16] = 0;
      }
    }
  }
}

- (void)_documentCloseStateDidChange
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 18);
    v3 = [WeakRetained document];

    if ((_UIDocumentViewControllerWantsUIPDocumentLanding() & 1) == 0 && ([v3 documentState] & 1) == 0)
    {
      [a1 _dismissBrowserViewController];
    }

    [a1 _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_documentProgressStateDidChange
{
  if (a1)
  {
    v7 = *(a1 + 56);
    if ([v7 isViewLoaded])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 144));
      v3 = [WeakRetained document];

      v4 = [v3 fileURL];
      v5 = [v7 transitionControllerForDocumentAtURL:v4];

      v6 = [v3 progress];
      [v5 setLoadingProgress:v6];
    }
  }
}

- (void)documentLandingBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v6 = [a3 delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    v8 = [a4 firstObject];
    [(UIDocumentViewControllerLaunchOptions *)self _replaceDocumentWithDocumentAtURL:v8 isImport:0];
  }
}

- (void)documentLandingBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = [a3 contentTypesForRecentDocuments];
  v8 = MEMORY[0x1E695DFD8];
  v9 = +[_UIApplicationInfoParser mainBundleInfoParser];
  v10 = [v9 editorRoleDocumentUTTypes];
  v11 = [v8 setWithArray:v10];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v13)
  {
LABEL_9:

LABEL_17:
    if ([v12 count])
    {
      v34 = *(__UILogGetCategoryCachedImpl("UIDocument", &_MergedGlobals_1330) + 8);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v35 = "Unable to create document. The UIDocumentBrowserViewController supports no content types that have a UIDocument subclass with an editor role defined in the Info.plist's CFBundleDocumentTypes dictionary.";
LABEL_22:
        _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
      }
    }

    else
    {
      v34 = *(__UILogGetCategoryCachedImpl("UIDocument", &qword_1ED4A22E8) + 8);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v35 = "Unable to create document. Ensure a UIDocument subclass with an editor role is defined in the Info.plist's CFBundleDocumentTypes dictionary.";
        goto LABEL_22;
      }
    }

    (*(a4 + 2))(a4, 0, 0);
    goto LABEL_24;
  }

  v14 = v13;
  v15 = *v43;
LABEL_3:
  v16 = 0;
  while (1)
  {
    if (*v43 != v15)
    {
      objc_enumerationMutation(v12);
    }

    v17 = *(*(&v42 + 1) + 8 * v16);
    if ([v11 containsObject:v17])
    {
      break;
    }

    if (v14 == ++v16)
    {
      v14 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v14)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }
  }

  v18 = v17;

  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = +[_UIApplicationInfoParser mainBundleInfoParser];
  v20 = [v19 utTypeToDocumentClassMap];

  v21 = [v20 objectForKeyedSubscript:v18];
  if (!v21 || ([v21 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:307 description:{@"Expected UIDocument subclass for %@. Received: %@", v18, v21}];
  }

  v22 = [a3 activeDocumentCreationIntent];
  v23 = [v22 isEqualToString:@"UIDocumentCreationIntentDefault"];

  if ((v23 & 1) == 0)
  {
    v24 = *(__UILogGetCategoryCachedImpl("UIDocument", &qword_1ED4A22F0) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = [a3 activeDocumentCreationIntent];
      *buf = 138412546;
      v47 = @"UIDocumentCreationIntentDefault";
      v48 = 2112;
      v49 = v26;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "UIDocumentBrowserViewController requested the creation of a document with an app-defined intent. Falling back to creating a document for %@. To control the document created for %@, implement [UIDocumentBrowserViewControllerDelegate documentBrowser:didRequestDocumentCreationWithHandler:].", buf, 0x16u);
    }
  }

  v27 = [MEMORY[0x1E696AC08] defaultManager];
  v28 = [v27 temporaryDirectory];

  v29 = _UILocalizedString(@"com.apple.documents.untitled.document", @"The default title of a new document.", @"Untitled");
  v30 = [v28 URLByAppendingPathComponent:v29 conformingToType:v18];

  v31 = [[v21 alloc] initWithFileURL:v30];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __102__UIDocumentViewControllerLaunchOptions_documentLandingBrowser_didRequestDocumentCreationWithHandler___block_invoke;
  v38[3] = &unk_1E7105F98;
  v40 = v30;
  v41 = a4;
  v39 = v31;
  v32 = v30;
  v33 = v31;
  [v33 saveToURL:v32 forSaveOperation:0 completionHandler:v38];

LABEL_24:
}

void __102__UIDocumentViewControllerLaunchOptions_documentLandingBrowser_didRequestDocumentCreationWithHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __102__UIDocumentViewControllerLaunchOptions_documentLandingBrowser_didRequestDocumentCreationWithHandler___block_invoke_2;
    v7[3] = &unk_1E7107E48;
    v6 = *(a1 + 40);
    v4 = v6;
    v8 = v6;
    [v3 closeWithCompletionHandler:v7];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

uint64_t __102__UIDocumentViewControllerLaunchOptions_documentLandingBrowser_didRequestDocumentCreationWithHandler___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, *(a1 + 32), 2);
  }

  else
  {
    return (*(v3 + 16))(v3, 0, 0);
  }
}

- (void)documentLandingBrowserWillStartDocumentCreation:(id)a3
{
  flags = self->_flags;
  if ((flags & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:345 description:@"UIKit internal inconsistency: attempted to begin document creation session whilst an existing session is active"];

    flags = self->_flags;
  }

  *&self->_flags = flags | 4;
  v6 = [a3 activeDocumentCreationIntent];
  objc_storeStrong(&self->_documentCreationIntent, v6);

  [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
}

- (void)documentLandingBrowserDidEndDocumentCreation:(id)a3 importedURL:(id)a4 canceled:(BOOL)a5 error:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  *&self->_flags &= ~4u;
  if (a6)
  {
    v10 = *(__UILogGetCategoryCachedImpl("UIDocument", &documentLandingBrowserDidEndDocumentCreation_importedURL_canceled_error____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = a6;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Failed to create document. Error: %@", &v15, 0xCu);
    }

    v11 = [a3 delegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      [(UIDocumentViewControllerLaunchOptions *)self _presentAlertForDocumentAtURL:a4 error:a6 isImport:1];
    }
  }

  objc_storeStrong(&self->_createdDocumentURL, a4);
  [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  if (a4)
  {
    v13 = [a3 delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      [(UIDocumentViewControllerLaunchOptions *)self _replaceDocumentWithDocumentAtURL:a4 isImport:1];
    }
  }
}

- (void)_replaceDocumentWithDocumentAtURL:(id)a3 isImport:(BOOL)a4
{
  v4 = a4;
  v10 = 0;
  v7 = [UIDocument _documentWithContentsOfFileURL:a3 error:&v10];
  v8 = v10;
  if (v7)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->__documentViewController);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained setDocument:v7];
  }

  else
  {
    [(UIDocumentViewControllerLaunchOptions *)self _presentAlertForDocumentAtURL:a3 error:v8 isImport:v4];
  }
}

- (void)_presentAlertForDocumentAtURL:(id)a3 error:(id)a4 isImport:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (a3)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v7 path];
    v7 = [v9 displayNameAtPath:v10];
  }

  if (v5)
  {
    v31 = _UILocalizedString(@"com.apple.documents.error.import.title", @"The title of an alert presented when a document could not be imported.", @"Unable to Import Document");
    if (v7)
    {
      _UILocalizedFormat(@"com.apple.documents.error.import.message", @"The message of an alert presented when a document could not be imported.", @"The document “%@” could not be imported.", v11, v12, v13, v14, v15, v7);
      v21 = LABEL_8:;
      goto LABEL_10;
    }
  }

  else
  {
    v31 = _UILocalizedString(@"com.apple.documents.error.open.title", @"The title of an alert presented when a document could not be opened.", @"Unable to Open Document");
    if (v7)
    {
      _UILocalizedFormat(@"com.apple.documents.error.open.message", @"The message of an alert presented when a document could not be opened.", @"The document “%@” could not be opened.", v16, v17, v18, v19, v20, v7);
      goto LABEL_8;
    }
  }

  v21 = 0;
LABEL_10:
  v22 = [a4 localizedFailureReason];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = [a4 localizedDescription];
  }

  v25 = v24;

  if (v21 && [v25 length])
  {
    v26 = [v21 stringByAppendingFormat:@" %@", v25];
  }

  else
  {
    v26 = v25;
  }

  v27 = v26;

  v28 = [UIAlertController alertControllerWithTitle:v31 message:v27 preferredStyle:1];
  v29 = _UILocalizedString(@"OK", @"Dismiss button of an alert when opening a document failed", @"OK");
  v30 = [UIAlertAction actionWithTitle:v29 style:1 handler:0];
  [v28 addAction:v30];

  if (self)
  {
    self = objc_loadWeakRetained(&self->__documentViewController);
  }

  [(UIDocumentViewControllerLaunchOptions *)self presentViewController:v28 animated:1 completion:0];
}

- (id)_documentUnavailableConfiguration
{
  if (!a1)
  {
    v4 = 0;
    goto LABEL_34;
  }

  v2 = [_UIDocumentUnavailableConfiguration alloc];
  v3 = [a1 browserViewController];
  v4 = [(_UIDocumentUnavailableConfiguration *)v2 initWithBrowserViewController:v3];

  v6 = [a1 title];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, v6, 80);
  }

  v8 = [a1 primaryAction];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v7, v8, 88);
  }

  v10 = [a1 secondaryAction];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v9, v10, 96);
  }

  v11 = [a1 documentTargetView];
  [(UITabBarControllerSidebar *)v4 set_activeTransaction:v11];

  v12 = [a1 background];
  [(_UISplitViewControllerAdaptiveColumn *)v4 setTogglePrimaryEdgeBarButtonItem:v12];

  v13 = [a1 foregroundAccessoryView];
  [(_UISplitViewControllerAdaptiveColumn *)v4 setToggleSecondaryEdgeBarButtonItem:v13];

  v14 = [a1 backgroundAccessoryView];
  [(_UISplitViewControllerAdaptiveColumn *)v4 setToggleSecondaryOnlyBarButtonItem:v14];

  v15 = [a1 _tintColor];
  [(_UIDocumentUnavailableConfiguration *)v4 set_tintColor:v15];

  v17 = [a1 _primaryMenu];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v16, v17, 16);
  }

  v19 = [a1 _secondaryMenu];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v18, v19, 24);
  }

  if (![*(a1 + 48) count])
  {
    v28 = +[_UIApplicationInfoParser mainBundleInfoParser];
    v21 = [v28 editorRoleDocumentUTTypes];

    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = *(a1 + 48);
  if (v4)
  {
LABEL_14:
    objc_setProperty_nonatomic_copy(v4, v20, v21, 32);
  }

LABEL_15:

  [(UIBackgroundConfiguration *)v4 _setBackgroundColor:?];
  WeakRetained = objc_loadWeakRetained((a1 + 144));
  v23 = [WeakRetained document];

  if (v23)
  {
    if ([v23 documentState])
    {
      v24 = 9;
    }

    else
    {
      v24 = 1;
    }

    v25 = [v23 fileURL];
    v26 = [v25 isEqual:*(a1 + 128)];

    if (v26)
    {
      v27 = v24 | 4;
    }

    else
    {
      v27 = v24;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = *(a1 + 8);

  if (v4)
  {
    v4[6] = (v27 | (v29 >> 1) & 2);
  }

  [(_UICollectionLayoutListAttributes *)v4 setSeparatorVisualEffect:?];
  if (_UIDocumentViewControllerWantsUIPDocumentLanding())
  {
    v30 = objc_loadWeakRetained((a1 + 144));
    if (v30)
    {
      v31 = (v30[992] & 1) == 0;
      if (!v4)
      {
LABEL_31:

        goto LABEL_34;
      }
    }

    else
    {
      v31 = 1;
      if (!v4)
      {
        goto LABEL_31;
      }
    }

    *(v4 + 8) = v31;
    goto LABEL_31;
  }

  if (v4)
  {
    *(v4 + 8) = 0;
  }

LABEL_34:

  return v4;
}

- (void)_prepareBrowserViewController:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 documentLandingPresenter];

  if (v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [a3 documentLandingPresenter];
    [v13 handleFailureInMethod:a2 object:self file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:476 description:{@"Attempted to set browser view controller that is already associated with another launch options instance. Browser view controller: %@; Existing launch options: %@", a3, v14}];
  }

  [a3 setDocumentLandingPresenter:self];
  if (_UIDocumentViewControllerWantsUIPDocumentLanding())
  {
    if (objc_opt_respondsToSelector())
    {

      [a3 _didAttachToDocumentLaunchOptionsForUseInUIPDocumentLanding];
    }
  }

  else
  {
    v7 = [a3 configuration];
    [v7 setForPickingDocuments:1];

    v8 = [a3 configuration];
    [v8 setShouldHideCatalystHostWindow:0];

    v9 = [a3 additionalTrailingNavigationBarButtonItems];
    v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:sel__dismissBrowserViewController];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12 = [v9 arrayByAddingObjectsFromArray:v11];
    [a3 setAdditionalTrailingNavigationBarButtonItems:v12];
  }
}

- (void)_presentBrowserViewController
{
  if (a1)
  {
    v4 = [a1 browserViewController];
    v2 = [v4 presentingViewController];

    if (!v2)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 18);
      [WeakRetained presentViewController:v4 animated:1 completion:0];
    }
  }
}

- (void)_dismissBrowserViewController
{
  v5 = [(UIDocumentViewControllerLaunchOptions *)self browserViewController];
  v2 = [v5 presentingViewController];

  if (v2)
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
    v3 = [v5 activePresentationController];
    [v3 _sendDismissalsAsNeeded];
  }

  [v5 dismissViewControllerAnimated:1 completion:0];
  v4 = [v5 activePresentationController];
  [v4 _sendDismissalsAsNeeded];
}

- (BOOL)_isDocumentViewControllerConsideredRootViewController
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 144));
  v2 = [WeakRetained _window];
  v3 = [v2 rootViewController];

  if (v3 != WeakRetained)
  {
    v4 = [WeakRetained navigationController];
    v5 = [v2 rootViewController];
    v6 = v5;
    if (v5 == v4)
    {
      v8 = [v4 viewControllers];
      v9 = [v8 firstObject];

      if (v9 == WeakRetained)
      {
        v7 = 1;
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [WeakRetained parentViewController];
    v11 = [v2 rootViewController];
    if (v11 == v10)
    {
      v12 = [v10 childViewControllers];
      v7 = [v12 count] == 1;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_11;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

@end