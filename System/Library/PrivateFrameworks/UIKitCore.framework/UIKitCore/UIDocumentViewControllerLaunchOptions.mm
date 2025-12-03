@interface UIDocumentViewControllerLaunchOptions
+ (id)createDocumentActionWithIntent:(id)intent;
- (BOOL)_isDocumentViewControllerConsideredRootViewController;
- (UIView)documentTargetView;
- (id)_documentUnavailableConfiguration;
- (id)defaultBrowserViewController;
- (id)initWithDocumentViewController:(void *)controller;
- (void)_dismissBrowserViewController;
- (void)_documentCloseStateDidChange;
- (void)_documentDidChange;
- (void)_documentProgressStateDidChange;
- (void)_prepareBrowserViewController:(id)controller;
- (void)_presentAlertForDocumentAtURL:(id)l error:(id)error isImport:(BOOL)import;
- (void)_presentBrowserViewController;
- (void)_replaceDocumentWithDocumentAtURL:(id)l isImport:(BOOL)import;
- (void)_setNeedsUpdateDocumentUnavailableConfiguration;
- (void)_setOverridePasteActionUTTypes:(id)types;
- (void)_setPrimaryMenu:(id)menu;
- (void)_setSecondaryMenu:(id)menu;
- (void)_setTintColor:(id)color;
- (void)documentLandingBrowser:(id)browser didPickDocumentsAtURLs:(id)ls;
- (void)documentLandingBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler;
- (void)documentLandingBrowserDidEndDocumentCreation:(id)creation importedURL:(id)l canceled:(BOOL)canceled error:(id)error;
- (void)documentLandingBrowserWillStartDocumentCreation:(id)creation;
- (void)setBackground:(id)background;
- (void)setBackgroundAccessoryView:(id)view;
- (void)setBrowserViewController:(id)controller;
- (void)setDocumentTargetView:(id)view;
- (void)setForegroundAccessoryView:(id)view;
- (void)setPrimaryAction:(id)action;
- (void)setSecondaryAction:(id)action;
- (void)setTitle:(id)title;
@end

@implementation UIDocumentViewControllerLaunchOptions

- (id)initWithDocumentViewController:(void *)controller
{
  if (!controller)
  {
    return 0;
  }

  v17.receiver = controller;
  v17.super_class = UIDocumentViewControllerLaunchOptions;
  v3 = objc_msgSendSuper2(&v17, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(v3 + 18, a2);
    defaultBrowserViewController = [(UIDocumentViewControllerLaunchOptions *)v4 defaultBrowserViewController];
    v6 = v4[7];
    v4[7] = defaultBrowserViewController;

    _localizedApplicationName = [UIApp _localizedApplicationName];
    v8 = v4[8];
    v4[8] = _localizedApplicationName;

    defaultBrowserViewController2 = [(UIDocumentViewControllerLaunchOptions *)v4 defaultBrowserViewController];
    if ([defaultBrowserViewController2 allowsDocumentCreation])
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
  v2 = self + 14;
  v3 = self[14];
  if (!v3)
  {
    v4 = +[_UIApplicationInfoParser mainBundleInfoParser];
    viewerRoleDocumentUTTypes = [v4 viewerRoleDocumentUTTypes];

    v6 = +[_UIApplicationInfoParser mainBundleInfoParser];
    editorRoleDocumentUTTypes = [v6 editorRoleDocumentUTTypes];

    v8 = [viewerRoleDocumentUTTypes arrayByAddingObjectsFromArray:editorRoleDocumentUTTypes];
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
    [v3 setAllowsDocumentCreation:{objc_msgSend(editorRoleDocumentUTTypes, "count") != 0}];
    [self _prepareBrowserViewController:v3];
    objc_storeStrong(v2, v3);
  }

  return v3;
}

- (void)setBrowserViewController:(id)controller
{
  browserViewController = self->_browserViewController;
  p_browserViewController = &self->_browserViewController;
  if (browserViewController != controller)
  {
    objc_storeStrong(p_browserViewController, controller);
    [(UIDocumentViewControllerLaunchOptions *)self _prepareBrowserViewController:controller];

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setTitle:(id)title
{
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v5 = [title copy];
    title = self->_title;
    self->_title = v5;

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setPrimaryAction:(id)action
{
  if (self->_primaryAction != action)
  {
    v5 = [action copy];
    primaryAction = self->_primaryAction;
    self->_primaryAction = v5;

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setSecondaryAction:(id)action
{
  if (self->_secondaryAction != action)
  {
    v5 = [action copy];
    secondaryAction = self->_secondaryAction;
    self->_secondaryAction = v5;

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setDocumentTargetView:(id)view
{
  documentTargetView = self->_documentTargetView;
  p_documentTargetView = &self->_documentTargetView;
  if (documentTargetView != view)
  {
    objc_storeStrong(p_documentTargetView, view);
    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }

  *&self->_flags |= 2u;
}

- (UIView)documentTargetView
{
  if ((*&self->_flags & 2) != 0)
  {
    viewIfLoaded = self->_documentTargetView;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->__documentViewController);
    viewIfLoaded = [WeakRetained viewIfLoaded];
  }

  return viewIfLoaded;
}

- (void)setBackground:(id)background
{
  p_background = &self->_background;
  if (([(UIBackgroundConfiguration *)self->_background _isEqualToConfiguration:background]& 1) == 0)
  {
    objc_storeStrong(p_background, background);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setForegroundAccessoryView:(id)view
{
  foregroundAccessoryView = self->_foregroundAccessoryView;
  p_foregroundAccessoryView = &self->_foregroundAccessoryView;
  if (foregroundAccessoryView != view)
  {
    objc_storeStrong(p_foregroundAccessoryView, view);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)setBackgroundAccessoryView:(id)view
{
  backgroundAccessoryView = self->_backgroundAccessoryView;
  p_backgroundAccessoryView = &self->_backgroundAccessoryView;
  if (backgroundAccessoryView != view)
  {
    objc_storeStrong(p_backgroundAccessoryView, view);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_setTintColor:(id)color
{
  tintColor = self->_tintColor;
  p_tintColor = &self->_tintColor;
  if (tintColor != color)
  {
    objc_storeStrong(p_tintColor, color);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_setPrimaryMenu:(id)menu
{
  primaryMenu = self->_primaryMenu;
  p_primaryMenu = &self->_primaryMenu;
  if (primaryMenu != menu)
  {
    objc_storeStrong(p_primaryMenu, menu);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_setSecondaryMenu:(id)menu
{
  secondaryMenu = self->_secondaryMenu;
  p_secondaryMenu = &self->_secondaryMenu;
  if (secondaryMenu != menu)
  {
    objc_storeStrong(p_secondaryMenu, menu);

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_setOverridePasteActionUTTypes:(id)types
{
  if (self->_overridePasteActionUTTypes != types)
  {
    v5 = [types copy];
    overridePasteActionUTTypes = self->_overridePasteActionUTTypes;
    self->_overridePasteActionUTTypes = v5;

    [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

+ (id)createDocumentActionWithIntent:(id)intent
{
  if (![intent length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:200 description:@"UIDocumentCreationIntent should have a non-zero length"];
  }

  v6 = _UILocalizedString(@"com.apple.documents.create.action", @"The title of the button that creates a new document.", @"Create Document");
  v7 = [@"com.apple.documents.action.create.document." stringByAppendingString:intent];
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:v7 handler:&__block_literal_global_617];

  return v8;
}

- (void)_setNeedsUpdateDocumentUnavailableConfiguration
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->__documentViewController);
  }

  selfCopy = self;
  [(UIDocumentViewController *)self _setNeedsUpdateDocumentUnavailableConfiguration];
}

- (void)_documentDidChange
{
  if (self)
  {
    v9 = self[7];
    if ([v9 isViewLoaded])
    {
      [v9 _endTransitionCoordinatorSession];
    }

    WeakRetained = objc_loadWeakRetained(self + 18);
    document = [WeakRetained document];

    if (document)
    {
      fileURL = [document fileURL];
      objc_storeStrong(self + 15, fileURL);
      if ([v9 isViewLoaded])
      {
        [v9 _beginTransitionCoordinatorSessionForDocumentURL:fileURL];
      }

      if ((_UIDocumentViewControllerWantsUIPDocumentLanding() & 1) == 0 && ([document documentState] & 1) == 0)
      {
        [self _dismissBrowserViewController];
      }
    }

    v5 = self[16];
    if (v5)
    {
      fileURL2 = [document fileURL];
      v7 = [fileURL2 isEqual:v5];

      if ((v7 & 1) == 0)
      {
        v8 = self[16];
        self[16] = 0;
      }
    }
  }
}

- (void)_documentCloseStateDidChange
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 18);
    document = [WeakRetained document];

    if ((_UIDocumentViewControllerWantsUIPDocumentLanding() & 1) == 0 && ([document documentState] & 1) == 0)
    {
      [self _dismissBrowserViewController];
    }

    [self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_documentProgressStateDidChange
{
  if (self)
  {
    v7 = *(self + 56);
    if ([v7 isViewLoaded])
    {
      WeakRetained = objc_loadWeakRetained((self + 144));
      document = [WeakRetained document];

      fileURL = [document fileURL];
      v5 = [v7 transitionControllerForDocumentAtURL:fileURL];

      progress = [document progress];
      [v5 setLoadingProgress:progress];
    }
  }
}

- (void)documentLandingBrowser:(id)browser didPickDocumentsAtURLs:(id)ls
{
  delegate = [browser delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    firstObject = [ls firstObject];
    [(UIDocumentViewControllerLaunchOptions *)self _replaceDocumentWithDocumentAtURL:firstObject isImport:0];
  }
}

- (void)documentLandingBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  contentTypesForRecentDocuments = [browser contentTypesForRecentDocuments];
  v8 = MEMORY[0x1E695DFD8];
  v9 = +[_UIApplicationInfoParser mainBundleInfoParser];
  editorRoleDocumentUTTypes = [v9 editorRoleDocumentUTTypes];
  v11 = [v8 setWithArray:editorRoleDocumentUTTypes];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = contentTypesForRecentDocuments;
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

    (*(handler + 2))(handler, 0, 0);
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
  utTypeToDocumentClassMap = [v19 utTypeToDocumentClassMap];

  v21 = [utTypeToDocumentClassMap objectForKeyedSubscript:v18];
  if (!v21 || ([v21 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:307 description:{@"Expected UIDocument subclass for %@. Received: %@", v18, v21}];
  }

  activeDocumentCreationIntent = [browser activeDocumentCreationIntent];
  v23 = [activeDocumentCreationIntent isEqualToString:@"UIDocumentCreationIntentDefault"];

  if ((v23 & 1) == 0)
  {
    v24 = *(__UILogGetCategoryCachedImpl("UIDocument", &qword_1ED4A22F0) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      activeDocumentCreationIntent2 = [browser activeDocumentCreationIntent];
      *buf = 138412546;
      v47 = @"UIDocumentCreationIntentDefault";
      v48 = 2112;
      v49 = activeDocumentCreationIntent2;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "UIDocumentBrowserViewController requested the creation of a document with an app-defined intent. Falling back to creating a document for %@. To control the document created for %@, implement [UIDocumentBrowserViewControllerDelegate documentBrowser:didRequestDocumentCreationWithHandler:].", buf, 0x16u);
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  v29 = _UILocalizedString(@"com.apple.documents.untitled.document", @"The default title of a new document.", @"Untitled");
  v30 = [temporaryDirectory URLByAppendingPathComponent:v29 conformingToType:v18];

  v31 = [[v21 alloc] initWithFileURL:v30];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __102__UIDocumentViewControllerLaunchOptions_documentLandingBrowser_didRequestDocumentCreationWithHandler___block_invoke;
  v38[3] = &unk_1E7105F98;
  v40 = v30;
  handlerCopy = handler;
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

- (void)documentLandingBrowserWillStartDocumentCreation:(id)creation
{
  flags = self->_flags;
  if ((flags & 4) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:345 description:@"UIKit internal inconsistency: attempted to begin document creation session whilst an existing session is active"];

    flags = self->_flags;
  }

  *&self->_flags = flags | 4;
  activeDocumentCreationIntent = [creation activeDocumentCreationIntent];
  objc_storeStrong(&self->_documentCreationIntent, activeDocumentCreationIntent);

  [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
}

- (void)documentLandingBrowserDidEndDocumentCreation:(id)creation importedURL:(id)l canceled:(BOOL)canceled error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  *&self->_flags &= ~4u;
  if (error)
  {
    v10 = *(__UILogGetCategoryCachedImpl("UIDocument", &documentLandingBrowserDidEndDocumentCreation_importedURL_canceled_error____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      errorCopy = error;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Failed to create document. Error: %@", &v15, 0xCu);
    }

    delegate = [creation delegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      [(UIDocumentViewControllerLaunchOptions *)self _presentAlertForDocumentAtURL:l error:error isImport:1];
    }
  }

  objc_storeStrong(&self->_createdDocumentURL, l);
  [(UIDocumentViewControllerLaunchOptions *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  if (l)
  {
    delegate2 = [creation delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      [(UIDocumentViewControllerLaunchOptions *)self _replaceDocumentWithDocumentAtURL:l isImport:1];
    }
  }
}

- (void)_replaceDocumentWithDocumentAtURL:(id)l isImport:(BOOL)import
{
  importCopy = import;
  v10 = 0;
  v7 = [UIDocument _documentWithContentsOfFileURL:l error:&v10];
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
    [(UIDocumentViewControllerLaunchOptions *)self _presentAlertForDocumentAtURL:l error:v8 isImport:importCopy];
  }
}

- (void)_presentAlertForDocumentAtURL:(id)l error:(id)error isImport:(BOOL)import
{
  importCopy = import;
  lCopy = l;
  if (l)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    lCopy = [defaultManager displayNameAtPath:path];
  }

  if (importCopy)
  {
    v31 = _UILocalizedString(@"com.apple.documents.error.import.title", @"The title of an alert presented when a document could not be imported.", @"Unable to Import Document");
    if (lCopy)
    {
      _UILocalizedFormat(@"com.apple.documents.error.import.message", @"The message of an alert presented when a document could not be imported.", @"The document “%@” could not be imported.", v11, v12, v13, v14, v15, lCopy);
      v21 = LABEL_8:;
      goto LABEL_10;
    }
  }

  else
  {
    v31 = _UILocalizedString(@"com.apple.documents.error.open.title", @"The title of an alert presented when a document could not be opened.", @"Unable to Open Document");
    if (lCopy)
    {
      _UILocalizedFormat(@"com.apple.documents.error.open.message", @"The message of an alert presented when a document could not be opened.", @"The document “%@” could not be opened.", v16, v17, v18, v19, v20, lCopy);
      goto LABEL_8;
    }
  }

  v21 = 0;
LABEL_10:
  localizedFailureReason = [error localizedFailureReason];
  v23 = localizedFailureReason;
  if (localizedFailureReason)
  {
    localizedDescription = localizedFailureReason;
  }

  else
  {
    localizedDescription = [error localizedDescription];
  }

  v25 = localizedDescription;

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
  if (!self)
  {
    v4 = 0;
    goto LABEL_34;
  }

  v2 = [_UIDocumentUnavailableConfiguration alloc];
  browserViewController = [self browserViewController];
  v4 = [(_UIDocumentUnavailableConfiguration *)v2 initWithBrowserViewController:browserViewController];

  title = [self title];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, title, 80);
  }

  primaryAction = [self primaryAction];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v7, primaryAction, 88);
  }

  secondaryAction = [self secondaryAction];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v9, secondaryAction, 96);
  }

  documentTargetView = [self documentTargetView];
  [(UITabBarControllerSidebar *)v4 set_activeTransaction:documentTargetView];

  background = [self background];
  [(_UISplitViewControllerAdaptiveColumn *)v4 setTogglePrimaryEdgeBarButtonItem:background];

  foregroundAccessoryView = [self foregroundAccessoryView];
  [(_UISplitViewControllerAdaptiveColumn *)v4 setToggleSecondaryEdgeBarButtonItem:foregroundAccessoryView];

  backgroundAccessoryView = [self backgroundAccessoryView];
  [(_UISplitViewControllerAdaptiveColumn *)v4 setToggleSecondaryOnlyBarButtonItem:backgroundAccessoryView];

  _tintColor = [self _tintColor];
  [(_UIDocumentUnavailableConfiguration *)v4 set_tintColor:_tintColor];

  _primaryMenu = [self _primaryMenu];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v16, _primaryMenu, 16);
  }

  _secondaryMenu = [self _secondaryMenu];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v18, _secondaryMenu, 24);
  }

  if (![*(self + 48) count])
  {
    v28 = +[_UIApplicationInfoParser mainBundleInfoParser];
    editorRoleDocumentUTTypes = [v28 editorRoleDocumentUTTypes];

    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  editorRoleDocumentUTTypes = *(self + 48);
  if (v4)
  {
LABEL_14:
    objc_setProperty_nonatomic_copy(v4, v20, editorRoleDocumentUTTypes, 32);
  }

LABEL_15:

  [(UIBackgroundConfiguration *)v4 _setBackgroundColor:?];
  WeakRetained = objc_loadWeakRetained((self + 144));
  document = [WeakRetained document];

  if (document)
  {
    if ([document documentState])
    {
      v24 = 9;
    }

    else
    {
      v24 = 1;
    }

    fileURL = [document fileURL];
    v26 = [fileURL isEqual:*(self + 128)];

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

  v29 = *(self + 8);

  if (v4)
  {
    v4[6] = (v27 | (v29 >> 1) & 2);
  }

  [(_UICollectionLayoutListAttributes *)v4 setSeparatorVisualEffect:?];
  if (_UIDocumentViewControllerWantsUIPDocumentLanding())
  {
    v30 = objc_loadWeakRetained((self + 144));
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

- (void)_prepareBrowserViewController:(id)controller
{
  v15[1] = *MEMORY[0x1E69E9840];
  documentLandingPresenter = [controller documentLandingPresenter];

  if (documentLandingPresenter)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    documentLandingPresenter2 = [controller documentLandingPresenter];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentViewControllerLaunchOptions.m" lineNumber:476 description:{@"Attempted to set browser view controller that is already associated with another launch options instance. Browser view controller: %@; Existing launch options: %@", controller, documentLandingPresenter2}];
  }

  [controller setDocumentLandingPresenter:self];
  if (_UIDocumentViewControllerWantsUIPDocumentLanding())
  {
    if (objc_opt_respondsToSelector())
    {

      [controller _didAttachToDocumentLaunchOptionsForUseInUIPDocumentLanding];
    }
  }

  else
  {
    configuration = [controller configuration];
    [configuration setForPickingDocuments:1];

    configuration2 = [controller configuration];
    [configuration2 setShouldHideCatalystHostWindow:0];

    additionalTrailingNavigationBarButtonItems = [controller additionalTrailingNavigationBarButtonItems];
    v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:sel__dismissBrowserViewController];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12 = [additionalTrailingNavigationBarButtonItems arrayByAddingObjectsFromArray:v11];
    [controller setAdditionalTrailingNavigationBarButtonItems:v12];
  }
}

- (void)_presentBrowserViewController
{
  if (self)
  {
    browserViewController = [self browserViewController];
    presentingViewController = [browserViewController presentingViewController];

    if (!presentingViewController)
    {
      WeakRetained = objc_loadWeakRetained(self + 18);
      [WeakRetained presentViewController:browserViewController animated:1 completion:0];
    }
  }
}

- (void)_dismissBrowserViewController
{
  browserViewController = [(UIDocumentViewControllerLaunchOptions *)self browserViewController];
  presentingViewController = [browserViewController presentingViewController];

  if (presentingViewController)
  {
    [browserViewController dismissViewControllerAnimated:1 completion:0];
    activePresentationController = [browserViewController activePresentationController];
    [activePresentationController _sendDismissalsAsNeeded];
  }

  [browserViewController dismissViewControllerAnimated:1 completion:0];
  activePresentationController2 = [browserViewController activePresentationController];
  [activePresentationController2 _sendDismissalsAsNeeded];
}

- (BOOL)_isDocumentViewControllerConsideredRootViewController
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 144));
  _window = [WeakRetained _window];
  rootViewController = [_window rootViewController];

  if (rootViewController != WeakRetained)
  {
    navigationController = [WeakRetained navigationController];
    rootViewController2 = [_window rootViewController];
    v6 = rootViewController2;
    if (rootViewController2 == navigationController)
    {
      viewControllers = [navigationController viewControllers];
      firstObject = [viewControllers firstObject];

      if (firstObject == WeakRetained)
      {
        v7 = 1;
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    parentViewController = [WeakRetained parentViewController];
    rootViewController3 = [_window rootViewController];
    if (rootViewController3 == parentViewController)
    {
      childViewControllers = [parentViewController childViewControllers];
      v7 = [childViewControllers count] == 1;
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