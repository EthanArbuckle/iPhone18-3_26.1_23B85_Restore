@interface UIDocumentViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (UIBarButtonItemGroup)undoRedoItemGroup;
- (UIDocumentViewController)initWithDocument:(UIDocument *)document;
- (UIDocumentViewControllerLaunchOptions)launchOptions;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (dispatch_queue_t)documentBackgroundQueue;
- (id)documentMovedPopover;
- (id)undoManager;
- (void)_closeDocumentIfNecessary:(id)a3 completionHandler:(id)a4;
- (void)_documentDidMoveToWritableLocation:(id)a3;
- (void)_documentDidOpen;
- (void)_documentStateChanged:(id)a3;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
- (void)_localizedNameChanged:(id)a3;
- (void)_performDocumentUnavailableConfigurationUpdate;
- (void)_performOpenByClosingExistingDocument;
- (void)_registerDocumentAssociation;
- (void)_registerDocumentObservers;
- (void)_setNeedsUpdateDocumentUnavailableConfiguration;
- (void)_unregisterDocumentAssociation;
- (void)_unregisterDocumentObservers;
- (void)_updateIsPresentedFromDocumentBrowser;
- (void)_updateNavigationItem;
- (void)_updateUndoManagerBinding;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)open:(id)a3;
- (void)openDocumentWithCompletionHandler:(void *)completionHandler;
- (void)redo:(id)a3;
- (void)setDocument:(UIDocument *)document;
- (void)setLaunchOptions:(id)a3;
- (void)setView:(id)a3;
- (void)undo:(id)a3;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation UIDocumentViewController

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = self;
  UIDocumentViewController._intelligenceCollectContent(in:collector:)(v9, x, y, width, height);
}

- (UIDocumentViewController)initWithDocument:(UIDocument *)document
{
  v4 = [(UIViewController *)self initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(UIDocumentViewController *)v4 setDocument:document];
  }

  return v5;
}

- (void)setDocument:(UIDocument *)document
{
  if (self->_document != document)
  {
    [(UIDocumentViewController *)self _unregisterDocumentObservers];
    [(UIDocumentViewController *)self _unregisterDocumentAssociation];
    v5 = [(UIDocumentViewController *)self document];
    [(UIDocumentViewController *)self _closeDocumentIfNecessary:v5 completionHandler:0];

    *&self->_flags &= ~2u;
    objc_storeStrong(&self->_document, document);
    [(UIDocumentViewController *)self _registerDocumentObservers];
    [(UIDocumentViewController *)self _registerDocumentAssociation];
    [(UIDocumentViewController *)self _updateUndoManagerBinding];
    v6 = [(UIDocument *)document userActivity];
    [(UIViewController *)self setUserActivity:v6];

    v7 = [(UIDocumentViewController *)self launchOptions];
    [(UIDocumentViewControllerLaunchOptions *)v7 _documentDidChange];

    [(UIDocumentViewController *)self _updateNavigationItem];
    [(UIDocumentViewController *)self _setNeedsUpdateDocumentUnavailableConfiguration];
    v8 = [(UIViewController *)self _appearState];
    if (document)
    {
      if ((v8 - 1) <= 1)
      {

        [(UIDocumentViewController *)self openDocumentWithCompletionHandler:&__block_literal_global_6_8];
      }
    }
  }
}

- (void)_setNeedsUpdateDocumentUnavailableConfiguration
{
  if (a1)
  {
    if (qword_1ED49A470 != -1)
    {
      dispatch_once(&qword_1ED49A470, &__block_literal_global_287);
    }

    if (_MergedGlobals_27_1 == 1)
    {
      a1[992] |= 4u;
      v2 = [a1 view];
      [v2 setNeedsLayout];
    }

    else
    {

      [a1 setNeedsUpdateContentUnavailableConfiguration];
    }
  }
}

- (void)openDocumentWithCompletionHandler:(void *)completionHandler
{
  v5 = [(UIDocumentViewController *)self document];
  v6 = v5;
  if (!v5)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke;
    v16[3] = &unk_1E70F0F78;
    v16[4] = completionHandler;
    v8 = MEMORY[0x1E69E96A0];
    v9 = v16;
LABEL_6:
    dispatch_async(v8, v9);
    goto LABEL_7;
  }

  if ([v5 documentState] != 1)
  {
    [(UIDocumentViewController *)self _documentDidOpen];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E70F0F78;
    block[4] = completionHandler;
    v8 = MEMORY[0x1E69E96A0];
    v9 = block;
    goto LABEL_6;
  }

  objc_initWeak(&location, self);
  v7 = [(UIDocumentViewController *)self documentBackgroundQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_1E710B188;
  v11 = v6;
  objc_copyWeak(&v13, &location);
  v12 = completionHandler;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
LABEL_7:
}

uint64_t __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (dispatch_queue_t)documentBackgroundQueue
{
  if (a1)
  {
    v2 = *(a1 + 1016);
    if (!v2)
    {
      v2 = dispatch_queue_create("com.apple.uikit.documentviewcontroller", 0);
      objc_storeStrong((a1 + 1016), v2);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke_4;
  v5[3] = &unk_1E710B160;
  objc_copyWeak(&v8, (a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 openWithCompletionHandler:v5];

  objc_destroyWeak(&v8);
}

void __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke_4(uint64_t a1, char a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke_5;
  v5[3] = &unk_1E710B138;
  v9 = a2;
  objc_copyWeak(&v8, (a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v8);
}

uint64_t __62__UIDocumentViewController_openDocumentWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [WeakRetained document];
    v4 = *(a1 + 32);

    if (v3 == v4)
    {
      [WeakRetained _documentDidOpen];
    }

    else
    {
      [WeakRetained _closeDocumentIfNecessary:*(a1 + 32) completionHandler:0];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_documentDidOpen
{
  if ((*&self->_flags & 2) == 0)
  {
    *&self->_flags |= 2u;
    [(UIDocumentViewController *)self documentDidOpen];
  }
}

- (void)_closeDocumentIfNecessary:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = [(UIDocumentViewController *)&self->super.super.super.isa documentMovedPopover];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 presentingViewController];

    if (v9)
    {
      [v8 dismissViewControllerAnimated:1 completion:0];
    }
  }

  if (a3 && [a3 documentState] != 1)
  {
    objc_getAssociatedObject(a3, &_UIDocumentAssociatedDocumentViewControllers);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v24 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (*(*(&v21 + 1) + 8 * v14) != self)
          {
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke_2;
            v20[3] = &unk_1E70F0F78;
            v20[4] = a4;
            dispatch_async(MEMORY[0x1E69E96A0], v20);
            v16 = v10;
            goto LABEL_17;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v15 = [(UIDocumentViewController *)self documentBackgroundQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke_3;
    v17[3] = &unk_1E70FCE28;
    v17[4] = a3;
    v18 = v15;
    v19 = a4;
    v16 = v15;
    dispatch_async(v16, v17);

LABEL_17:
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke;
    block[3] = &unk_1E70F0F78;
    block[4] = a4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)documentMovedPopover
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 132);
    v1 = vars8;
  }

  return WeakRetained;
}

uint64_t __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke_3(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke_4;
  v5[3] = &unk_1E710B1B0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 closeWithCompletionHandler:v5];
}

void __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke_4(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke_5;
  block[3] = &unk_1E70FD0C8;
  v6 = a2;
  v5 = *(a1 + 40);
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __72__UIDocumentViewController__closeDocumentIfNecessary_completionHandler___block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = *(__UILogGetCategoryCachedImpl("UIDocument", &_UIInternalPreference_ForceDocumentViewControllerDocumentLanding_block_invoke___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = MEMORY[0x1E696AEC0];
        v5 = v3;
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = [v4 stringWithFormat:@"<%@: %p>", v7, v5];
      }

      else
      {
        v8 = @"(nil)";
      }

      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Unable to close document. Reference to this document will be dropped but the document remains open. This might cause state to be lost. Document: %@", buf, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [(UIDocumentViewController *)self document];
  if (self)
  {
    v5 = *&self->_flags & 1;
  }

  else
  {
    v5 = 0;
  }

  if (qword_1ED49A470 != -1)
  {
    dispatch_once(&qword_1ED49A470, &__block_literal_global_287);
  }

  v6 = 0;
  if (((_MergedGlobals_27_1 | v5) & 1) == 0 && !v4)
  {
    v6 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v7 = [UIImage systemImageNamed:@"doc"];
    [v6 setImage:v7];

    v8 = _UILocalizedString(@"com.apple.documents.empty.title", @"The title of the message showing in a document view controller if there's no document loaded.", @"No Document");
    [v6 setText:v8];

    v9 = _UILocalizedString(@"com.apple.documents.empty.message", @"The message showing in a document view controller if there's no document loaded. The button label mentioned in the message should equal the localization key com.apple.documents.backaction", @"Select a document by tapping the “Documents” button.");
    [v6 setSecondaryText:v9];

    v10 = +[UIColor systemBackgroundColor];
    v11 = [v6 background];
    [v11 setBackgroundColor:v10];

    v12 = [(UIViewController *)self navigationController];
    v13 = v12;
    if (!v12 || [v12 isNavigationBarHidden])
    {
      v14 = _UILocalizedString(@"com.apple.documents.backaction", @"The title of the back button in a document based app that leads back to the document view controller.", @"Documents");
      v15 = [v6 button];
      [v15 setTitle:v14];

      objc_initWeak(&location, self);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __76__UIDocumentViewController_updateContentUnavailableConfigurationUsingState___block_invoke;
      v21 = &unk_1E70F7450;
      objc_copyWeak(&v22, &location);
      v16 = [UIAction actionWithHandler:&v18];
      v17 = [v6 buttonProperties];
      [v17 setPrimaryAction:v16];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  [(UIViewController *)self setContentUnavailableConfiguration:v6];
}

void __76__UIDocumentViewController_updateContentUnavailableConfigurationUsingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained open:0];
}

- (void)_performDocumentUnavailableConfigurationUpdate
{
  if ((*&self->_flags & 4) != 0)
  {
    *&self->_flags &= ~4u;
    v9 = [(UIDocumentViewController *)self launchOptions];
    v4 = [(UIDocumentViewControllerLaunchOptions *)v9 _documentUnavailableConfiguration];
    v5 = self->_launchViewController;
    if (!v5)
    {
      if (qword_1ED49A470 != -1)
      {
        dispatch_once(&qword_1ED49A470, &__block_literal_global_287);
      }

      if (_MergedGlobals_27_1 != 1 || (*(&self->super._viewControllerFlags + 4) & 0x80) != 0)
      {
        v5 = 0;
      }

      else
      {
        v6 = [_UIDocumentLaunchViewController alloc];
        v7 = [(UIDocumentViewController *)self launchOptions];
        v8 = [(UIDocumentViewControllerLaunchOptions *)v7 _documentUnavailableConfiguration];
        v5 = [(_UIDocumentLaunchViewController *)v6 initWithConfiguration:v8];

        [(UIViewController *)self addChildViewController:v5];
        [(_UIDocumentLaunchViewController *)v5 didMoveToParentViewController:self];
        objc_storeStrong(&self->_launchViewController, v5);
      }
    }

    [(_UIDocumentLaunchViewController *)v5 setConfiguration:v4];
  }
}

- (UIDocumentViewControllerLaunchOptions)launchOptions
{
  v3 = self->_launchOptions;
  if (!v3)
  {
    if ((*(&self->super._viewControllerFlags + 4) & 0x80) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = [[UIDocumentViewControllerLaunchOptions alloc] initWithDocumentViewController:?];
      launchOptions = self->_launchOptions;
      self->_launchOptions = v3;
    }
  }

  return v3;
}

- (void)setLaunchOptions:(id)a3
{
  launchOptions = self->_launchOptions;
  if (launchOptions != a3 && (*(&self->super._viewControllerFlags + 4) & 0x80) == 0)
  {
    if (launchOptions)
    {
      objc_storeWeak(&launchOptions->__documentViewController, 0);
    }

    objc_storeStrong(&self->_launchOptions, a3);
    if (a3)
    {
      objc_storeWeak(a3 + 18, self);
    }

    [(UIDocumentViewController *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)_registerDocumentObservers
{
  v6 = [(UIDocumentViewController *)self document];
  self->_lastKnownState = [v6 documentState];
  if (v6)
  {
    [v6 addObserver:self forKeyPath:@"undoManager" options:1 context:&unk_1ED49A46A];
    [v6 addObserver:self forKeyPath:@"fileURL" options:1 context:&unk_1ED49A46C];
    [v6 addObserver:self forKeyPath:@"userActivity" options:1 context:&unk_1ED49A46E];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__documentStateChanged_ name:@"UIDocumentStateChangedNotification" object:v6];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__localizedNameChanged_ name:@"UIDocumentLocalizedNameChangedNotification" object:v6];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__documentDidMoveToWritableLocation_ name:@"UIDocumentDidMoveToWritableLocationNotification" object:v6];
  }
}

- (void)_unregisterDocumentObservers
{
  v3 = [(UIDocumentViewController *)self document];
  if (v3)
  {
    v7 = v3;
    [v3 removeObserver:self forKeyPath:@"undoManager" context:&unk_1ED49A46A];
    [v7 removeObserver:self forKeyPath:@"fileURL" context:&unk_1ED49A46C];
    [v7 removeObserver:self forKeyPath:@"userActivity" context:&unk_1ED49A46E];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:@"UIDocumentStateChangedNotification" object:v7];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:@"UIDocumentLocalizedNameChangedNotification" object:v7];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:@"UIDocumentDidMoveToWritableLocationNotification" object:v7];

    v3 = v7;
  }
}

- (void)_documentStateChanged:(id)a3
{
  v5 = [(UIDocumentViewController *)self document];
  v6 = [a3 object];

  if (v6 != v5)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Received a document state did change notification from a document not associated with this view controller.", buf, 2u);
      }
    }

    else
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &_documentStateChanged____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Received a document state did change notification from a document not associated with this view controller.", v15, 2u);
      }
    }
  }

  v7 = [a3 object];

  if (v7 == v5)
  {
    v8 = [v5 documentState];
    if (self)
    {
      lastKnownState = self->_lastKnownState;
    }

    else
    {
      LOBYTE(lastKnownState) = 0;
    }

    self->_lastKnownState = v8;
    v10 = lastKnownState ^ v8;
    v11 = [(UIDocumentViewController *)self launchOptions];
    v12 = v11;
    if (v10)
    {
      [(UIDocumentViewControllerLaunchOptions *)v11 _documentCloseStateDidChange];
    }

    if ((v10 & 0x10) != 0)
    {
      [(UIDocumentViewControllerLaunchOptions *)v12 _documentProgressStateDidChange];
    }
  }
}

- (void)_localizedNameChanged:(id)a3
{
  v5 = [(UIDocumentViewController *)self document];
  v6 = [a3 object];

  if (v6 != v5)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Received a localization name did change notification from a document not associated with this view controller.", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_localizedNameChanged____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Received a localization name did change notification from a document not associated with this view controller.", v10, 2u);
      }
    }
  }

  v7 = [a3 object];

  if (v7 == v5)
  {
    [(UIDocumentViewController *)self _updateNavigationItem];
  }
}

- (void)_documentDidMoveToWritableLocation:(id)a3
{
  v5 = [(UIDocumentViewController *)self document];
  v6 = [a3 object];

  if (v6 != v5)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v29 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v29, OS_LOG_TYPE_FAULT, "Received a document did move to writable location notification from a document not associated with this view controller.", buf, 2u);
      }
    }

    else
    {
      v28 = *(__UILogGetCategoryCachedImpl("Assert", &_documentDidMoveToWritableLocation____s_category) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Received a document did move to writable location notification from a document not associated with this view controller.", v30, 2u);
      }
    }
  }

  v7 = [a3 object];

  if (v7 == v5)
  {
    v8 = [(UIViewController *)self navigationItem];
    v9 = [v8 _navigationBar];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [(UIViewController *)self navigationController];
      v11 = [v12 navigationBar];
    }

    v13 = [v11 topItem];
    v14 = [v13 _stackEntry];
    v15 = [v14 activeLayout];
    v16 = v15;
    if (v15)
    {
      v17 = *(v15 + 128);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v18 layout];
    v20 = [v19 titleControl];

    if (v20)
    {
      v21 = [(UIDocumentViewController *)&self->super.super.super.isa documentMovedPopover];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 presentingViewController];

        if (v23)
        {
          [v22 dismissViewControllerAnimated:1 completion:0];
        }
      }

      v24 = [_UIDocumentMovedPopoverViewController alloc];
      v25 = [v5 fileURL];
      v26 = [(_UIDocumentMovedPopoverViewController *)v24 initWithFileURL:v25];

      [(UIViewController *)v26 setModalPresentationStyle:7];
      v27 = [(UIViewController *)v26 popoverPresentationController];
      [v27 _setAllowDismissalTapsToPassThrough:1];
      [v27 setPermittedArrowDirections:1];
      [v27 setSourceView:v20];
      [v27 setDelegate:v26];
      [(UIViewController *)self presentViewController:v26 animated:1 completion:0];
      if (self)
      {
        objc_storeWeak(&self->_documentMovedPopover, v26);
      }
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__UIDocumentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
  aBlock[3] = &unk_1E70F8DC8;
  objc_copyWeak(v9, &location);
  v9[1] = a6;
  v7 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v7[2](v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __75__UIDocumentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  if (v3 == &unk_1ED49A46A)
  {
    v6 = WeakRetained;
    [WeakRetained _updateUndoManagerBinding];
  }

  else
  {
    if (v3 == &unk_1ED49A46C)
    {
      v6 = WeakRetained;
      v4 = [WeakRetained launchOptions];
      [(UIDocumentViewControllerLaunchOptions *)v4 _documentDidChange];
    }

    else
    {
      if (v3 != &unk_1ED49A46E)
      {
        goto LABEL_9;
      }

      v6 = WeakRetained;
      v4 = [WeakRetained document];
      v5 = [v4 userActivity];
      [v6 setUserActivity:v5];
    }
  }

  WeakRetained = v6;
LABEL_9:
}

- (void)_registerDocumentAssociation
{
  v3 = [(UIDocumentViewController *)self document];
  if (v3)
  {
    object = v3;
    v4 = objc_getAssociatedObject(v3, &_UIDocumentAssociatedDocumentViewControllers);
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
      objc_setAssociatedObject(object, &_UIDocumentAssociatedDocumentViewControllers, v4, 1);
    }

    [v4 addObject:self];

    v3 = object;
  }
}

- (void)_unregisterDocumentAssociation
{
  v3 = [(UIDocumentViewController *)self document];
  if (v3)
  {
    v5 = v3;
    v4 = objc_getAssociatedObject(v3, &_UIDocumentAssociatedDocumentViewControllers);
    [v4 removeObject:self];

    v3 = v5;
  }
}

- (void)_updateNavigationItem
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIDocumentViewController *)self document];
  v4 = [(UIViewController *)self navigationItem];
  [v4 setStyle:2];
  [v4 setLargeTitleDisplayMode:2];
  [v4 setTitleMenuProvider:&__block_literal_global_65_2];
  if (v3)
  {
    v5 = [v3 localizedName];
    [v4 setTitle:v5];

    [v4 setRenameDelegate:v3];
    v6 = objc_alloc(MEMORY[0x1E696ACA0]);
    v7 = [v3 fileURL];
    v8 = [v6 initWithContentsOfURL:v7];

    v9 = [v3 localizedName];
    [v8 setSuggestedName:v9];

    v10 = [UIDocumentProperties alloc];
    v11 = [v3 fileURL];
    v12 = [(UIDocumentProperties *)v10 initWithURL:v11];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __49__UIDocumentViewController__updateNavigationItem__block_invoke_2;
    v29[3] = &unk_1E710B1F8;
    v13 = v8;
    v30 = v13;
    [(UIDocumentProperties *)v12 setDragItemsProvider:v29];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __49__UIDocumentViewController__updateNavigationItem__block_invoke_3;
    v27[3] = &unk_1E710B220;
    v28 = v13;
    v14 = v13;
    [(UIDocumentProperties *)v12 setActivityViewControllerProvider:v27];
    [v4 setDocumentProperties:v12];
  }

  if (*&self->_flags)
  {
    goto LABEL_7;
  }

  if (qword_1ED49A470 != -1)
  {
    dispatch_once(&qword_1ED49A470, &__block_literal_global_287);
  }

  if (_MergedGlobals_27_1)
  {
LABEL_7:
    objc_initWeak(&location, self);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __49__UIDocumentViewController__updateNavigationItem__block_invoke_4;
    v24 = &unk_1E70F7450;
    objc_copyWeak(&v25, &location);
    v15 = [UIAction actionWithHandler:&v21];
    [v4 setBackAction:{v15, v21, v22, v23, v24}];

    [v4 setLeadingItemGroups:MEMORY[0x1E695E0F0]];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    [v4 setBackAction:0];
    v16 = [UIBarButtonItem alloc];
    v17 = _UILocalizedString(@"com.apple.documents.backaction", @"The title of the back button in a document based app that leads back to the document view controller.", @"Documents");
    v18 = [(UIBarButtonItem *)v16 initWithTitle:v17 image:0 target:self action:sel_open_ menu:0];
    v19 = [(UIBarButtonItem *)v18 creatingFixedGroup];
    v31[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    [v4 setLeadingItemGroups:v20];
  }

  [(UIDocumentViewController *)self navigationItemDidUpdate];
}

id __49__UIDocumentViewController__updateNavigationItem__block_invoke_2(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [[UIDragItem alloc] initWithItemProvider:*(a1 + 32)];
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

id __49__UIDocumentViewController__updateNavigationItem__block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v6[0] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 initWithActivityItems:v3 applicationActivities:0];

  return v4;
}

void __49__UIDocumentViewController__updateNavigationItem__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performOpenByClosingExistingDocument];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v7 = [(UIDocumentViewController *)self document];
  v8 = v7;
  if (sel_undo_ == a3)
  {
    if (v7)
    {
      v10 = [v7 undoManager];
      if (![v10 canUndo])
      {
LABEL_10:
        v9 = 0;
        goto LABEL_11;
      }

LABEL_7:
      v9 = ([v8 documentState] & 8) == 0;
LABEL_11:

      goto LABEL_18;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_18;
  }

  if (sel_redo_ == a3)
  {
    if (v7)
    {
      v10 = [v7 undoManager];
      if (![v10 canRedo])
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (sel_open_ == a3)
  {
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      if (qword_1ED49A470 != -1)
      {
        dispatch_once(&qword_1ED49A470, &__block_literal_global_287);
      }

      v9 = _MergedGlobals_27_1 ^ 1;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIDocumentViewController;
    v9 = [(UIViewController *)&v12 canPerformAction:a3 withSender:a4];
  }

LABEL_18:

  return v9 & 1;
}

- (void)undo:(id)a3
{
  v4 = [(UIDocumentViewController *)self document];
  v3 = [v4 undoManager];
  [v3 undo];
}

- (void)redo:(id)a3
{
  v4 = [(UIDocumentViewController *)self document];
  v3 = [v4 undoManager];
  [v3 redo];
}

- (void)open:(id)a3
{
  if (qword_1ED49A470 != -1)
  {
    dispatch_once(&qword_1ED49A470, &__block_literal_global_287);
  }

  if (_MergedGlobals_27_1 == 1)
  {
    v4 = [(UIViewController *)self _window];
    v5 = [v4 windowScene];
    v6 = [v5 _enhancedWindowingEnabled];

    if (v6 && [UIApp supportsMultipleScenes] && (-[UIDocumentViewController launchOptions](self, "launchOptions"), v7 = objc_claimAutoreleasedReturnValue(), isDocumentViewControllerConsideredRootView = -[UIDocumentViewControllerLaunchOptions _isDocumentViewControllerConsideredRootViewController](v7), v7, isDocumentViewControllerConsideredRootView))
    {
      objc_initWeak(&location, self);
      v9 = UIApp;
      v10 = +[UISceneSessionActivationRequest request];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __33__UIDocumentViewController_open___block_invoke;
      v12[3] = &unk_1E7106800;
      objc_copyWeak(&v13, &location);
      [v9 activateSceneSessionForRequest:v10 errorHandler:v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {

      [(UIDocumentViewController *)self _performOpenByClosingExistingDocument];
    }
  }

  else
  {
    v11 = [(UIDocumentViewController *)self launchOptions];
    [(UIDocumentViewControllerLaunchOptions *)v11 _presentBrowserViewController];
  }
}

void __33__UIDocumentViewController_open___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _performOpenByClosingExistingDocument];
    WeakRetained = v2;
  }
}

- (void)_performOpenByClosingExistingDocument
{
  v3 = [(UIDocumentViewController *)self document];
  v4 = *&self->_flags & 1;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__UIDocumentViewController__performOpenByClosingExistingDocument__block_invoke;
  v6[3] = &unk_1E710B248;
  objc_copyWeak(&v8, &location);
  v5 = v3;
  v7 = v5;
  v9 = v4;
  [(UIDocumentViewController *)self _closeDocumentIfNecessary:v5 completionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__UIDocumentViewController__performOpenByClosingExistingDocument__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained document];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    if (*(a1 + 48) == 1)
    {
      [WeakRetained dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [WeakRetained setDocument:0];
    }
  }
}

- (id)undoManager
{
  v2 = [(UIDocumentViewController *)self document];
  v3 = [v2 undoManager];

  return v3;
}

- (UIBarButtonItemGroup)undoRedoItemGroup
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = self->_undoRedoItemGroup;
  if (!v3)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = _UILocalizedString(@"Undo", @"Undo bar button item title", @"Undo");
    v6 = [UIImage systemImageNamed:@"arrow.uturn.backward"];
    v7 = [(UIBarButtonItem *)v4 initWithTitle:v5 image:v6 target:self action:sel_undo_ menu:0];

    v8 = [UIBarButtonItem alloc];
    v9 = _UILocalizedString(@"Redo", @"Redo bar button item title", @"Redo");
    v10 = [UIImage systemImageNamed:@"arrow.uturn.forward"];
    v11 = [(UIBarButtonItem *)v8 initWithTitle:v9 image:v10 target:self action:sel_redo_ menu:0];

    v14[0] = v7;
    v14[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v3 = [UIBarButtonItemGroup optionalGroupWithCustomizationIdentifier:@"com.apple.undoredo" inDefaultCustomization:1 representativeItem:0 items:v12];

    objc_storeStrong(&self->_undoRedoItemGroup, v3);
  }

  return v3;
}

- (void)_updateUndoManagerBinding
{
  if (self)
  {
    undoManagerBinding = self->_undoManagerBinding;
  }

  else
  {
    undoManagerBinding = 0;
  }

  v4 = undoManagerBinding;
  [(_UIBarButtonItemActionBinding *)v4 stopMonitoring];
  v5 = self->_undoManagerBinding;
  self->_undoManagerBinding = 0;

  v6 = [(UIDocumentViewController *)self document];
  v7 = [v6 undoManager];
  if (v7)
  {
    v8 = [_UIBarButtonItemActionBinding alloc];
    v9 = [(UIDocumentViewController *)self undoRedoItemGroup];
    v10 = [v9 barButtonItems];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __53__UIDocumentViewController__updateUndoManagerBinding__block_invoke;
    v15 = &unk_1E710B270;
    v16 = v7;
    v17 = v6;
    v11 = [(_UIBarButtonItemActionBinding *)v8 initWithBarButtonItems:v10 registerObservers:&v12 unregisterObservers:&__block_literal_global_110];

    objc_storeStrong(&self->_undoManagerBinding, v11);
    [(_UIBarButtonItemActionBinding *)v11 startMonitoring:v12];

    v4 = v11;
  }
}

void __53__UIDocumentViewController__updateUndoManagerBinding__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:a2 selector:a3 name:*MEMORY[0x1E696AA40] object:*(a1 + 32)];
  [v6 addObserver:a2 selector:a3 name:*MEMORY[0x1E696AA28] object:*(a1 + 32)];
  [v6 addObserver:a2 selector:a3 name:*MEMORY[0x1E696AA48] object:*(a1 + 32)];
  [v6 addObserver:a2 selector:a3 name:*MEMORY[0x1E696AA30] object:*(a1 + 32)];
  [v6 addObserver:a2 selector:a3 name:*MEMORY[0x1E696AA18] object:*(a1 + 32)];
  [v6 addObserver:a2 selector:a3 name:@"UIDocumentStateChangedNotification" object:*(a1 + 40)];
}

void __53__UIDocumentViewController__updateUndoManagerBinding__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:a2];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = UIDocumentViewController;
  [(UIViewController *)&v5 loadView];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(UIViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(UIDocumentViewController *)self _updateNavigationItem];
}

- (void)setView:(id)a3
{
  v5 = [(UIViewController *)self viewIfLoaded];
  v6.receiver = self;
  v6.super_class = UIDocumentViewController;
  [(UIViewController *)&v6 setView:a3];
  if (v5 != a3)
  {
    [(UIDocumentViewController *)self _setNeedsUpdateDocumentUnavailableConfiguration];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UIDocumentViewController;
  [(UIViewController *)&v5 viewIsAppearing:a3];
  [(UIDocumentViewController *)self _updateIsPresentedFromDocumentBrowser];
  v4 = [(UIDocumentViewController *)self document];

  if (v4)
  {
    [(UIDocumentViewController *)self openDocumentWithCompletionHandler:&__block_literal_global_118];
  }

  else
  {
    if (qword_1ED49A470 != -1)
    {
      dispatch_once(&qword_1ED49A470, &__block_literal_global_287);
    }

    if ((_MergedGlobals_27_1 & 1) == 0 && (*&self->_flags & 1) == 0)
    {
      [(UIDocumentViewController *)self open:0];
    }
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIDocumentViewController;
  [(UIViewController *)&v6 didMoveToParentViewController:?];
  [(UIDocumentViewController *)self _updateIsPresentedFromDocumentBrowser];
  if (!a3)
  {
    v5 = [(UIDocumentViewController *)self document];
    [v5 autosaveWithCompletionHandler:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIDocumentViewController;
  [(UIViewController *)&v3 viewWillLayoutSubviews];
  [(UIDocumentViewController *)self _performDocumentUnavailableConfigurationUpdate];
}

- (void)_updateIsPresentedFromDocumentBrowser
{
  v2 = self;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = qword_1ED49A478;
  v15 = qword_1ED49A478;
  if (!qword_1ED49A478)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getUIDocumentBrowserViewControllerClass_block_invoke_0;
    v11[3] = &unk_1E70F2F20;
    v11[4] = &v12;
    __getUIDocumentBrowserViewControllerClass_block_invoke_0(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  v5 = v2;
  while (1)
  {
    v6 = [v5 presentingViewController];
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }
    }

    v7 = [v5 parentViewController];

    v5 = v7;
    if (!v7)
    {
      p_flags = &v2->_flags;
      flags = v2->_flags;
      if ((flags & 1) == 0)
      {
        goto LABEL_12;
      }

      v10 = 0;
      goto LABEL_11;
    }
  }

  p_flags = &v2->_flags;
  flags = v2->_flags;
  if (flags)
  {
    goto LABEL_12;
  }

  v10 = 1;
LABEL_11:
  *p_flags = flags & 0xFE | v10;
  [(UIDocumentViewController *)v2 _updateNavigationItem];
  [(UIDocumentViewController *)v2 _setNeedsUpdateDocumentUnavailableConfiguration];
LABEL_12:
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v7 = [(UIViewController *)self navigationController];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *a4 = 1;
    [v7 _contentOverlayInsets];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = UIDocumentViewController;
    [(UIViewController *)&v20 _edgeInsetsForChildViewController:a3 insetsAreAbsolute:a4];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)dealloc
{
  [(_UIDocumentLaunchViewController *)self->_launchViewController willMoveToParentViewController:0];
  [(UIViewController *)self->_launchViewController removeFromParentViewController];
  [(UIDocumentViewController *)self _unregisterDocumentObservers];
  [(UIDocumentViewController *)self _unregisterDocumentAssociation];
  v3 = [(UIDocumentViewController *)self document];
  [(UIDocumentViewController *)self _closeDocumentIfNecessary:v3 completionHandler:0];

  v4.receiver = self;
  v4.super_class = UIDocumentViewController;
  [(UIViewController *)&v4 dealloc];
}

@end