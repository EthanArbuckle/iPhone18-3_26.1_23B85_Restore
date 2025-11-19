@interface UIDocumentInteractionController
+ (UIDocumentInteractionController)interactionControllerWithURL:(NSURL *)url;
+ (id)_archiveDecompressQueue;
- (BOOL)__presentPreviewAnimated:(BOOL)a3;
- (BOOL)_canPreviewDecompressedArchive;
- (BOOL)_canSaveToCameraRollForType;
- (BOOL)_delegateCanPerformAction:(SEL)a3;
- (BOOL)_delegateExistsAndImplementsRequiredMethods:(id *)a3;
- (BOOL)_delegatePerformAction:(SEL)a3;
- (BOOL)_documentNeedsHelpDecompressingArchiveForPreview;
- (BOOL)_isFilenameValidForDecompressing:(id)a3 allowsPreviewingArchive:(BOOL)a4;
- (BOOL)_isImage;
- (BOOL)_isPackageArchive:(id)a3;
- (BOOL)_isValidURL:(id)a3;
- (BOOL)_presentOpenInMenuAnimated:(BOOL)a3 willPresentBlock:(id)a4;
- (BOOL)_presentOptionsMenuAnimated:(BOOL)a3 willPresentBlock:(id)a4;
- (BOOL)_setupForOpenInMenu;
- (BOOL)_setupForOptionsMenu;
- (BOOL)_setupPreviewController;
- (BOOL)_shouldAutoDecompressIfArchive;
- (BOOL)_shouldAutoDecompressIfArchiveForPreview;
- (BOOL)_shouldIncludeActivityForLegacyDelegatingWithAction:(SEL)a3;
- (BOOL)_shouldIncludePreviewActivity;
- (BOOL)_shouldReturnDefaultApplication;
- (BOOL)isArchive;
- (BOOL)presentOpenInMenuFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
- (BOOL)presentOpenInMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated;
- (BOOL)presentOptionsMenuFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
- (BOOL)presentOptionsMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated;
- (BOOL)presentPreviewAnimated:(BOOL)animated;
- (BOOL)previewController:(id)a3 canEditItem:(id)a4;
- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5;
- (NSArray)gestureRecognizers;
- (NSArray)icons;
- (NSString)UTI;
- (NSString)name;
- (NSURL)URL;
- (QLPreviewController)previewController;
- (UIDocumentInteractionController)initWithURL:(id)a3;
- (_UIDICPreviewItem)previewControllerItem;
- (id)__decompressArchiveAndSetupPayload:(id)a3 completion:(id)a4;
- (id)_appOpeningDocumentProxy;
- (id)_decompressedArchiveDocumentURL;
- (id)_defaultApplication;
- (id)_documentProxy;
- (id)_documentProxyWithIsContentManaged:(BOOL)a3 usingURL:(id)a4;
- (id)_newActivityIfNecessaryForLegacyActionDelegatingWithAction:(SEL)a3;
- (id)_newPreviewActivity;
- (id)_pathsInArchive:(id)a3;
- (id)_preferredApplicationForDocumentOpening;
- (id)_preparedActivityViewControllerWithItems:(id)a3 activities:(id)a4 options:(unint64_t)a5;
- (id)additionalActivitiesTypesForPreviewController:(id)a3;
- (id)delegate;
- (id)dismissActionsForPreviewController:(id)a3;
- (id)excludedActivityTypesForPreviewController:(id)a3;
- (id)extractSubitemFromArchive:(id)a3 completion:(id)a4;
- (id)physicalURL;
- (id)presentingNavigationController;
- (id)previewController:(id)a3 transitionImageForPreviewItem:(id)a4 contentRect:(CGRect *)a5;
- (void)__openUsingDefaultCopyMechanismToTransferDocumentToApplication:(id)a3;
- (void)__openUsingInPlaceMechanismToTransferDocumentToApplication:(id)a3;
- (void)__performLaunchServiceDocumentOpenWithApplication:(id)a3 launchServiceOptions:(id)a4;
- (void)_clearPreviousPresentationContext;
- (void)_decompressArchiveAndSetupPayload:(id)a3;
- (void)_dismissEverythingWithExtremePrejudiceAnimated:(BOOL)a3;
- (void)_fixupFileExtensionIfNeeded;
- (void)_invalidate;
- (void)_invokeDelegateDidFinishOpenWithApplicationIdentifier:(id)a3;
- (void)_invokeDelegateWillBeginOpenWithApplicationIdentifier:(id)a3;
- (void)_openDocumentWithApplication:(id)a3;
- (void)_presentOptionsMenu:(id)a3;
- (void)_presentPreview:(id)a3;
- (void)_setDecompressedArchiveDocumentURL:(id)a3;
- (void)_setupPreviewController;
- (void)_updateURLIsContentManaged;
- (void)activityViewController:(id)a3 didFinishPerformingActivityType:(id)a4 completed:(BOOL)a5 items:(id)a6 error:(id)a7;
- (void)activityViewController:(id)a3 didFinishPresentingActivityType:(id)a4;
- (void)dealloc;
- (void)dismissMenuAnimated:(BOOL)animated;
- (void)dismissPreviewAnimated:(BOOL)animated;
- (void)markupAction:(id)a3;
- (void)openDocumentWithDefaultApplication;
- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4;
- (void)popoverController:(id)a3 animationCompleted:(int64_t)a4;
- (void)previewControllerDidDismiss:(id)a3;
- (void)setDelegate:(id)delegate;
- (void)setIsContentManaged:(BOOL)a3;
- (void)setName:(NSString *)name;
- (void)setPreviewURLOverride:(id)a3;
- (void)setShouldUnzipDocument:(BOOL)a3;
- (void)setURL:(NSURL *)URL;
- (void)setUTI:(NSString *)UTI;
@end

@implementation UIDocumentInteractionController

+ (UIDocumentInteractionController)interactionControllerWithURL:(NSURL *)url
{
  v4 = url;
  v5 = [[a1 alloc] initWithURL:v4];

  return v5;
}

- (UIDocumentInteractionController)initWithURL:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UIDocumentInteractionController;
  v5 = [(UIDocumentInteractionController *)&v15 init];
  if (v5)
  {
    -[UIDocumentInteractionController setIsContentManaged:](v5, "setIsContentManaged:", [v4 ui_isContentManaged]);
    [(UIDocumentInteractionController *)v5 setURL:v4];
    v5->_shouldDecompressArchiveIfNecessary = 0;
    v5->_excludeDotFilesFromArchiveListings = 1;
    decompressedArchiveDocumentURL = v5->_decompressedArchiveDocumentURL;
    v5->_decompressedArchiveDocumentURL = 0;

    objc_initWeak(&location, v5);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = [MEMORY[0x1E696ADC8] mainQueue];
    v9 = *MEMORY[0x1E69DDBB8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__UIDocumentInteractionController_initWithURL___block_invoke;
    v12[3] = &unk_1E71FAFC0;
    objc_copyWeak(&v13, &location);
    v10 = [v7 addObserverForName:v9 object:0 queue:v8 usingBlock:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __47__UIDocumentInteractionController_initWithURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissMenuAnimated:0];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(UIPopoverController *)self->_popoverController setDelegate:0];
  [(QLPreviewController *)self->_previewController setDelegate:0];
  [(_UIDICActivityViewController *)self->_activityViewController setDocumentInteractionActivityDelegate:0];
  if (self->_tmpURLToDeleteOnDealloc)
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      tmpURLToDeleteOnDealloc = self->_tmpURLToDeleteOnDealloc;
      *buf = 138412290;
      v8 = tmpURLToDeleteOnDealloc;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up temporary URL: %@", buf, 0xCu);
    }

    v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
    [v5 removeItemAtURL:self->_tmpURLToDeleteOnDealloc error:0];
  }

  v6.receiver = self;
  v6.super_class = UIDocumentInteractionController;
  [(UIDocumentInteractionController *)&v6 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!v4 || WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFFFD | v6);
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFFFB | v7);
    if (objc_opt_respondsToSelector())
    {
      v8 = 0x20000;
    }

    else
    {
      v8 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFDFFFF | v8);
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFFF7 | v9);
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFFEF | v10);
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFFDF | v11);
    if (objc_opt_respondsToSelector())
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFFBF | v12);
    if (objc_opt_respondsToSelector())
    {
      v13 = 128;
    }

    else
    {
      v13 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFF7F | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFEFF | v14);
    if (objc_opt_respondsToSelector())
    {
      v15 = 512;
    }

    else
    {
      v15 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFDFF | v15);
    if (objc_opt_respondsToSelector())
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFFBFF | v16);
    if (objc_opt_respondsToSelector())
    {
      v17 = 2048;
    }

    else
    {
      v17 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFF7FF | v17);
    v18 = objc_opt_respondsToSelector();
    documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
    if (v18)
    {
      v20 = 4096;
    }

    else
    {
      v20 = 0;
    }

    self->_documentInteractionControllerFlags = (*&documentInteractionControllerFlags & 0xFFFFEFFF | v20);
    if (*&documentInteractionControllerFlags & 0x800) != 0 || (v18)
    {
      v21 = share_sheet_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [UIDocumentInteractionController setDelegate:v21];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = 0x2000;
    }

    else
    {
      v22 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFDFFF | v22);
    if (objc_opt_respondsToSelector())
    {
      v23 = 0x4000;
    }

    else
    {
      v23 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFFBFFF | v23);
    if (objc_opt_respondsToSelector())
    {
      v24 = 0x8000;
    }

    else
    {
      v24 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFF7FFF | v24);
    if (objc_opt_respondsToSelector())
    {
      v25 = 0x10000;
    }

    else
    {
      v25 = 0;
    }

    self->_documentInteractionControllerFlags = (*&self->_documentInteractionControllerFlags & 0xFFFEFFFF | v25);
  }
}

- (void)setIsContentManaged:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "setIsContentManaged: %i", v6, 8u);
  }

  self->_isContentManaged = v3;
  [(UIDocumentInteractionController *)self _updateURLIsContentManaged];
}

- (void)_updateURLIsContentManaged
{
  v3 = [(UIDocumentInteractionController *)self URL];
  [v3 ui_setIsContentManaged:self->_isContentManaged];
}

- (void)setURL:(NSURL *)URL
{
  v9 = URL;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(UIDocumentInteractionController *)v4 previewControllerItem];
  v6 = [v5 previewItemURL];
  v7 = [(NSURL *)v9 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(UIDocumentInteractionController *)v4 previewControllerItem];
    [v8 setPreviewItemURL:v9];

    [(UIDocumentInteractionController *)v4 _invalidate];
    [(UIDocumentInteractionController *)v4 _updateURLIsContentManaged];
  }

  objc_sync_exit(v4);
}

- (NSURL)URL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UIDocumentInteractionController *)v2 previewControllerItem];
  v4 = [v3 previewItemURL];

  objc_sync_exit(v2);

  return v4;
}

- (void)setUTI:(NSString *)UTI
{
  v9 = UTI;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(UIDocumentInteractionController *)v4 previewControllerItem];
  v6 = [v5 previewItemContentType];
  v7 = [(NSString *)v9 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(UIDocumentInteractionController *)v4 previewControllerItem];
    [v8 setPreviewItemContentType:v9];

    [(UIDocumentInteractionController *)v4 _invalidate];
  }

  objc_sync_exit(v4);
}

- (NSString)UTI
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UIDocumentInteractionController *)v2 previewControllerItem];
  v4 = [v3 _primitive_previewItemContentType];

  if (!v4)
  {
    v5 = [(UIDocumentInteractionController *)v2 name];
    if (v5)
    {
      v6 = [(UIDocumentInteractionController *)v2 URL];
      if (v2->_shouldDecompressArchiveIfNecessary && [(UIDocumentInteractionController *)v2 _isFilenameValidForDecompressing:v5 allowsPreviewingArchive:0])
      {
        v7 = [v6 path];
        v8 = [v7 stringByDeletingPathExtension];

        v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];

        v6 = v9;
      }

      v4 = [UIDocumentInteractionController _UTIForFileURL:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)setName:(NSString *)name
{
  v9 = name;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(UIDocumentInteractionController *)v4 previewControllerItem];
  v6 = [v5 previewItemTitle];
  v7 = [(NSString *)v9 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(UIDocumentInteractionController *)v4 previewControllerItem];
    [v8 setPreviewItemTitle:v9];

    [(UIDocumentInteractionController *)v4 _invalidate];
  }

  objc_sync_exit(v4);
}

- (NSString)name
{
  v3 = [(UIDocumentInteractionController *)self URL];
  v4 = [v3 path];
  v5 = [v4 lastPathComponent];

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(UIDocumentInteractionController *)v6 previewControllerItem];
  v8 = [v7 previewItemTitle];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  objc_sync_exit(v6);

  return v11;
}

- (NSArray)icons
{
  v12[1] = *MEMORY[0x1E69E9840];
  icons = self->_icons;
  if (!icons)
  {
    v4 = [(UIDocumentInteractionController *)self _documentProxy];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 typeIdentifier];
      if ([(__CFString *)v6 length]&& (UTTypeConformsTo(v6, *MEMORY[0x1E69636D8]) || UTTypeConformsTo(v6, *MEMORY[0x1E69636E0])))
      {
        if (passKitIconsIfIsPassKitDocument_onceToken != -1)
        {
          [UIDocumentInteractionController icons];
        }

        v12[0] = passKitIconsIfIsPassKitDocument_genericPassIcon;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      }

      else
      {
        v7 = 0;
      }

      if (![(NSArray *)v7 count])
      {
        v8 = iconsToIncludeInIconArrayForDocumentProxy(v5);

        v7 = v8;
      }
    }

    else
    {
      v7 = 0;
    }

    if (![(NSArray *)v7 count])
    {
      if (genericDocumentIcons_onceToken != -1)
      {
        [UIDocumentInteractionController icons];
      }

      v9 = genericDocumentIcons_icons;

      v7 = v9;
    }

    v10 = self->_icons;
    self->_icons = v7;

    icons = self->_icons;
  }

  return icons;
}

- (BOOL)_isImage
{
  v3 = [(UIDocumentInteractionController *)self UTI];
  LODWORD(v4) = UTTypeConformsTo(v3, *MEMORY[0x1E69637F8]);
  if (v4)
  {
    v4 = CGImageSourceCreateWithURL([(UIDocumentInteractionController *)self URL], 0);
    if (v4)
    {
      CFRelease(v4);
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (NSArray)gestureRecognizers
{
  gestureRecognizers = self->_gestureRecognizers;
  if (!gestureRecognizers)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__presentPreview_];
    [(NSArray *)v4 addObject:v5];
    v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__presentOptionsMenu_];
    [(NSArray *)v4 addObject:v6];
    v7 = self->_gestureRecognizers;
    self->_gestureRecognizers = v4;

    gestureRecognizers = self->_gestureRecognizers;
  }

  return gestureRecognizers;
}

- (void)_invalidate
{
  previewController = self->_previewController;
  self->_previewController = 0;

  icons = self->_icons;
  self->_icons = 0;
}

- (id)_documentProxy
{
  isContentManaged = self->_isContentManaged;
  v4 = [(UIDocumentInteractionController *)self URL];
  v5 = [(UIDocumentInteractionController *)self _documentProxyWithIsContentManaged:isContentManaged usingURL:v4];

  return v5;
}

- (id)_documentProxyWithIsContentManaged:(BOOL)a3 usingURL:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIDocumentInteractionController *)self delegate];
  v8 = [(UIDocumentInteractionController *)self name];
  if (v8)
  {
    if ([(UIDocumentInteractionController *)self _shouldAutoDecompressIfArchive])
    {
      v9 = [v8 stringByDeletingPathExtension];

      v8 = v9;
    }

    v10 = [(UIDocumentInteractionController *)self UTI];
    v11 = [(UIDocumentInteractionController *)self previewControllerItem];
    if (![(UIDocumentInteractionController *)self _shouldAutoDecompressIfArchive])
    {
      v12 = [v11 previewItemTitle];
      if (v12)
      {
      }

      else
      {
        v16 = [v11 _primitive_previewItemContentType];

        if (v6 && !v16)
        {
          v13 = [MEMORY[0x1E6963658] documentProxyForURL:v6 isContentManaged:v4 sourceAuditToken:0];
          goto LABEL_8;
        }
      }
    }

    v13 = [MEMORY[0x1E6963658] documentProxyForName:v8 type:v10 MIMEType:0 isContentManaged:v4 sourceAuditToken:0];
LABEL_8:
    v14 = v13;

    goto LABEL_10;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)_delegateExistsAndImplementsRequiredMethods:(id *)a3
{
  v5 = [(UIDocumentInteractionController *)self delegate];
  if (v5)
  {
    if (*&self->_documentInteractionControllerFlags)
    {
      v7 = 1;
      goto LABEL_8;
    }

    v6 = @"UIDocumentInteractionController delegate must implement documentInteractionControllerViewControllerForPreview: to allow preview";
  }

  else
  {
    v6 = @"UIDocumentInteractionController has no delegate.  A delegate is required and must implement documentInteractionControllerViewControllerForPreview: to allow preview.";
  }

  v7 = 0;
  if (a3)
  {
    *a3 = v6;
  }

LABEL_8:

  return v7;
}

- (void)setPreviewURLOverride:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(UIDocumentInteractionController *)v4 previewControllerItem];
  v6 = [v5 previewItemURLOverride];
  v7 = [v9 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(UIDocumentInteractionController *)v4 previewControllerItem];
    [v8 setPreviewItemURLOverride:v9];

    [(UIDocumentInteractionController *)v4 _invalidate];
  }

  objc_sync_exit(v4);
}

- (BOOL)_shouldReturnDefaultApplication
{
  v20[5] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69637F8];
  v20[0] = *MEMORY[0x1E6963870];
  v20[1] = v3;
  v4 = *MEMORY[0x1E69638E0];
  v20[2] = *MEMORY[0x1E6963748];
  v20[3] = v4;
  v20[4] = *MEMORY[0x1E6963858];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];
  v6 = [(UIDocumentInteractionController *)self UTI];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (UTTypeConformsTo(v6, *(*(&v15 + 1) + 8 * i)))
        {
          v13 = [(UIDocumentInteractionController *)self previewControllerItem];
          v12 = _UIQLCanPreviewItem(v13) ^ 1;

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v12) = 1;
LABEL_11:

  return v12;
}

- (id)_defaultApplication
{
  if ([(UIDocumentInteractionController *)self _shouldReturnDefaultApplication])
  {
    v3 = [(UIDocumentInteractionController *)self _preferredApplicationForDocumentOpening];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_dismissEverythingWithExtremePrejudiceAnimated:(BOOL)a3
{
  v3 = a3;
  if ((_UIAppUseModernRotationAndPresentationBehaviors() & 1) != 0 || ([MEMORY[0x1E69DC938] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, (v6 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    v7 = [(UIDocumentInteractionController *)self activityViewController];
    [v7 dismissViewControllerAnimated:v3 completion:0];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__UIDocumentInteractionController__dismissEverythingWithExtremePrejudiceAnimated___block_invoke;
    block[3] = &unk_1E71F9908;
    block[4] = self;
    v9 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __82__UIDocumentInteractionController__dismissEverythingWithExtremePrejudiceAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) popoverController];
  [v2 dismissPopoverAnimated:*(a1 + 40)];
}

- (BOOL)isArchive
{
  v3 = [(UIDocumentInteractionController *)self URL];
  v4 = [v3 path];
  v5 = [v4 lastPathComponent];
  if ([(UIDocumentInteractionController *)self _isFilenameValidForDecompressing:v5 allowsPreviewingArchive:1])
  {
    v6 = [(UIDocumentInteractionController *)self URL];
    v7 = ![(UIDocumentInteractionController *)self _isPackageArchive:v6];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)extractSubitemFromArchive:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__UIDocumentInteractionController_extractSubitemFromArchive_completion___block_invoke;
  v10[3] = &unk_1E71FAFE8;
  v11 = v6;
  v7 = v6;
  v8 = [(UIDocumentInteractionController *)self __decompressArchiveAndSetupPayload:a3 completion:v10];

  return v8;
}

- (QLPreviewController)previewController
{
  previewController = self->_previewController;
  if (!previewController)
  {
    v4 = objc_alloc_init(_UIQLPreviewControllerClass());
    v5 = self->_previewController;
    self->_previewController = v4;

    [(QLPreviewController *)self->_previewController setDelegate:self];
    previewController = self->_previewController;
  }

  return previewController;
}

- (_UIDICPreviewItem)previewControllerItem
{
  previewControllerItem = self->_previewControllerItem;
  if (!previewControllerItem)
  {
    v4 = objc_alloc_init(_UIDICPreviewItem);
    v5 = self->_previewControllerItem;
    self->_previewControllerItem = v4;

    previewControllerItem = self->_previewControllerItem;
  }

  return previewControllerItem;
}

- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5
{
  *a5 = self->_presentView;
  x = self->_presentRect.origin.x;
  y = self->_presentRect.origin.y;
  width = self->_presentRect.size.width;
  height = self->_presentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)previewControllerDidDismiss:(id)a3
{
  if ((*(self + 108) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained documentInteractionControllerDidEndPreview:self];
  }

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;

  previewController = self->_previewController;
  self->_previewController = 0;
}

- (id)previewController:(id)a3 transitionImageForPreviewItem:(id)a4 contentRect:(CGRect *)a5
{
  if ((*(&self->_documentInteractionControllerFlags + 2) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained documentInteractionControllerTransitionImageForPreview:self contentRect:a5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)previewController:(id)a3 canEditItem:(id)a4
{
  v5 = a3;
  if ([(UIDocumentInteractionController *)self previewsPresentWithMarkup])
  {
    v6 = [(UIDocumentInteractionController *)self dismissActionsForPreviewController:v5];
    v7 = [v6 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dismissActionsForPreviewController:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(UIDocumentInteractionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIDocumentInteractionController *)self delegate];
    v7 = [v6 documentInteractionControllerMarkupDismissActions:self];

    v8 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = _UIQLDismissActionClass();
          v15 = [v13 title];
          v16 = [v13 image];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __70__UIDocumentInteractionController_dismissActionsForPreviewController___block_invoke;
          v21[3] = &unk_1E71FB010;
          v21[4] = v13;
          v17 = [(objc_class *)v14 actionWithTitle:v15 image:v16 handler:v21];

          [v8 addObject:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    if ([v8 count])
    {
      v18 = v8;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __70__UIDocumentInteractionController_dismissActionsForPreviewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [*(a1 + 32) completionHandler];

  if (v5)
  {
    v21 = a1;
    v6 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          v13 = [MEMORY[0x1E695DF90] dictionary];
          v14 = [v12 editedFileURL];

          if (v14)
          {
            v15 = [v12 editedFileURL];
            [v13 setObject:v15 forKeyedSubscript:@"UIDocumentInteractionControllerResultModifiedURL"];
          }

          v16 = [v12 item];
          v17 = [v16 previewItemURL];

          if (v17)
          {
            v18 = [v12 item];
            v19 = [v18 previewItemURL];
            [v13 setObject:v19 forKeyedSubscript:@"UIDocumentInteractionControllerResultOriginalURL"];
          }

          [v6 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v20 = [*(v21 + 32) completionHandler];
    (v20)[2](v20, *(v21 + 32), v6);

    v4 = v22;
  }
}

- (void)markupAction:(id)a3
{
  v4 = [(UIDocumentInteractionController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [(UIDocumentInteractionController *)self delegate];
    previewController = self->_previewController;
    v7 = [(QLPreviewController *)previewController currentPreviewItem];
    v8 = [v7 previewItemURL];
    [v9 previewController:previewController willMarkUpAtURL:v8];
  }
}

- (id)excludedActivityTypesForPreviewController:(id)a3
{
  if ((*(&self->_documentInteractionControllerFlags + 1) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v3 = [WeakRetained excludedActivityTypesForDocumentInteractionController:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)additionalActivitiesTypesForPreviewController:(id)a3
{
  if ((*(&self->_documentInteractionControllerFlags + 1) & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v3 = [WeakRetained additionalActivitiesForDocumentInteractionController:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_canPreviewDecompressedArchive
{
  v3 = [(UIDocumentInteractionController *)self URL];
  v4 = [v3 path];

  if ([(UIDocumentInteractionController *)self _isFilenameValidForDecompressing:v4 allowsPreviewingArchive:0])
  {
    v5 = [v4 stringByDeletingPathExtension];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = [(UIDocumentInteractionController *)self previewControllerItem];
  v8 = [v7 _primitive_previewItemContentType];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v8 = _UIQLPreviewUTIForURLAndMimeType(v9, 0);
  }

  v10 = _UIQLCanPreviewContentWithUTI(v8);

  return v10;
}

- (void)_clearPreviousPresentationContext
{
  presentView = self->_presentView;
  self->_presentView = 0;

  presentItem = self->_presentItem;
  self->_presentItem = 0;
}

- (BOOL)_presentOptionsMenuAnimated:(BOOL)a3 willPresentBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(UIDocumentInteractionController *)self _clearPreviousPresentationContext];
  if ([(UIDocumentInteractionController *)self _shouldAutoDecompressIfArchive])
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__UIDocumentInteractionController__presentOptionsMenuAnimated_willPresentBlock___block_invoke;
    v8[3] = &unk_1E71FB038;
    objc_copyWeak(&v10, &location);
    v9 = v6;
    v11 = v4;
    [(UIDocumentInteractionController *)self _decompressArchiveAndSetupPayload:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else if ([(UIDocumentInteractionController *)self _setupForOptionsMenu])
  {
    (*(v6 + 2))(v6, self);
    _UIDocumentInteractionControllerPresentPopoverOrShowActivityViewController(self, v4);
  }

  return 1;
}

void __80__UIDocumentInteractionController__presentOptionsMenuAnimated_willPresentBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v7 = WeakRetained;
    v6 = [WeakRetained _setupForOptionsMenu];
    v5 = v7;
    if (v6)
    {
      (*(*(a1 + 32) + 16))();
      _UIDocumentInteractionControllerPresentPopoverOrShowActivityViewController(v7, *(a1 + 48));
      v5 = v7;
    }
  }
}

- (BOOL)presentOptionsMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated
{
  v5 = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = view;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__UIDocumentInteractionController_presentOptionsMenuFromRect_inView_animated___block_invoke;
  v14[3] = &unk_1E71FB060;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v15 = v11;
  v12 = v11;
  LOBYTE(v5) = [(UIDocumentInteractionController *)self _presentOptionsMenuAnimated:v5 willPresentBlock:v14];

  return v5;
}

__n128 __78__UIDocumentInteractionController_presentOptionsMenuFromRect_inView_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v2;
  objc_storeStrong((a2 + 72), *(a1 + 32));
  return result;
}

- (BOOL)presentOptionsMenuFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
  v4 = animated;
  v6 = item;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__UIDocumentInteractionController_presentOptionsMenuFromBarButtonItem_animated___block_invoke;
  v9[3] = &unk_1E71FB088;
  v10 = v6;
  v7 = v6;
  LOBYTE(v4) = [(UIDocumentInteractionController *)self _presentOptionsMenuAnimated:v4 willPresentBlock:v9];

  return v4;
}

- (id)presentingNavigationController
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentingViewController = self->_presentingViewController;
  }

  else
  {
    presentingViewController = 0;
  }

  return presentingViewController;
}

- (BOOL)presentPreviewAnimated:(BOOL)animated
{
  v3 = animated;
  v5 = [(UIDocumentInteractionController *)self previewController];
  [v5 setAdditionalRightBarButtonItems:MEMORY[0x1E695E0F0]];

  return [(UIDocumentInteractionController *)self __presentPreviewAnimated:v3];
}

- (BOOL)__presentPreviewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIDocumentInteractionController *)self _setupPreviewController];
  if (v5)
  {
    v6 = [(UIDocumentInteractionController *)self previewController];
    _UIShimSetIsContentManaged(v6, [(UIDocumentInteractionController *)self isContentManaged]);

    v7 = [(UIDocumentInteractionController *)self previewController];
    v8 = [(UIDocumentInteractionController *)self previewControllerItem];
    [v7 presentPreviewItem:v8 onViewController:self->_presentingViewController withDelegate:self animated:v3];
  }

  return v5;
}

- (BOOL)_presentOpenInMenuAnimated:(BOOL)a3 willPresentBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(UIDocumentInteractionController *)self _clearPreviousPresentationContext];
  if ([(UIDocumentInteractionController *)self _shouldAutoDecompressIfArchive])
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__UIDocumentInteractionController__presentOpenInMenuAnimated_willPresentBlock___block_invoke;
    v8[3] = &unk_1E71FB038;
    objc_copyWeak(&v10, &location);
    v9 = v6;
    v11 = v4;
    [(UIDocumentInteractionController *)self _decompressArchiveAndSetupPayload:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else if ([(UIDocumentInteractionController *)self _setupForOpenInMenu])
  {
    (*(v6 + 2))(v6, self);
    _UIDocumentInteractionControllerPresentPopoverOrShowActivityViewController(self, v4);
  }

  return 1;
}

void __79__UIDocumentInteractionController__presentOpenInMenuAnimated_willPresentBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v7 = WeakRetained;
    v6 = [WeakRetained _setupForOpenInMenu];
    v5 = v7;
    if (v6)
    {
      (*(*(a1 + 32) + 16))();
      _UIDocumentInteractionControllerPresentPopoverOrShowActivityViewController(v7, *(a1 + 48));
      v5 = v7;
    }
  }
}

- (BOOL)presentOpenInMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated
{
  v5 = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = view;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__UIDocumentInteractionController_presentOpenInMenuFromRect_inView_animated___block_invoke;
  v14[3] = &unk_1E71FB060;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v15 = v11;
  v12 = v11;
  LOBYTE(v5) = [(UIDocumentInteractionController *)self _presentOpenInMenuAnimated:v5 willPresentBlock:v14];

  return v5;
}

__n128 __77__UIDocumentInteractionController_presentOpenInMenuFromRect_inView_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v2;
  objc_storeStrong((a2 + 72), *(a1 + 32));
  return result;
}

- (BOOL)presentOpenInMenuFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
  v4 = animated;
  v6 = item;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UIDocumentInteractionController_presentOpenInMenuFromBarButtonItem_animated___block_invoke;
  v9[3] = &unk_1E71FB088;
  v10 = v6;
  v7 = v6;
  LOBYTE(v4) = [(UIDocumentInteractionController *)self _presentOpenInMenuAnimated:v4 willPresentBlock:v9];

  return v4;
}

- (void)dismissPreviewAnimated:(BOOL)animated
{
  v3 = animated;
  v4 = [(UIDocumentInteractionController *)self previewController];
  [v4 dismissModalViewControllerAnimated:v3];
}

- (void)dismissMenuAnimated:(BOOL)animated
{
  v3 = animated;
  if (![(_UIDICActivityViewController *)self->_activityViewController isPerformingActivity])
  {

    [(UIDocumentInteractionController *)self _dismissEverythingWithExtremePrejudiceAnimated:v3];
  }
}

- (void)_presentPreview:(id)a3
{
  v5 = a3;
  if (![(UIDocumentInteractionController *)self presentPreviewAnimated:1])
  {
    v4 = [v5 view];
    [v4 bounds];
    [(UIDocumentInteractionController *)self presentOptionsMenuFromRect:v4 inView:1 animated:?];
  }
}

- (void)_presentOptionsMenu:(id)a3
{
  v5 = a3;
  if ([v5 state] == 1)
  {
    v4 = [v5 view];
    [v4 bounds];
    [(UIDocumentInteractionController *)self presentOptionsMenuFromRect:v4 inView:1 animated:?];
  }
}

- (void)openDocumentWithDefaultApplication
{
  v3 = [(UIDocumentInteractionController *)self _preferredApplicationForDocumentOpening];
  [(UIDocumentInteractionController *)self _openDocumentWithApplication:v3];
}

- (void)_openDocumentWithApplication:(id)a3
{
  v4 = a3;
  v5 = [(UIDocumentInteractionController *)self URL];
  CanOpenInPlaceByReferenceOriginalFile = _UIApplicationCanOpenInPlaceByReferenceOriginalFile(v4, v5);

  v7 = [(UIDocumentInteractionController *)self _shouldAutoDecompressIfArchive];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__UIDocumentInteractionController__openDocumentWithApplication___block_invoke;
  v13[3] = &unk_1E71FB0B0;
  objc_copyWeak(&v15, &location);
  v16 = CanOpenInPlaceByReferenceOriginalFile;
  v8 = v4;
  v14 = v8;
  v9 = MEMORY[0x18CFF58E0](v13);
  v10 = v9;
  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__UIDocumentInteractionController__openDocumentWithApplication___block_invoke_2;
    v11[3] = &unk_1E71FAFE8;
    v12 = v9;
    [(UIDocumentInteractionController *)self _decompressArchiveAndSetupPayload:v11];
  }

  else
  {
    v9[2](v9);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __64__UIDocumentInteractionController__openDocumentWithApplication___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    [WeakRetained __openUsingInPlaceMechanismToTransferDocumentToApplication:v3];
  }

  else
  {
    [WeakRetained __openUsingDefaultCopyMechanismToTransferDocumentToApplication:v3];
  }
}

- (void)__openUsingDefaultCopyMechanismToTransferDocumentToApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationIdentifier];
  [(UIDocumentInteractionController *)self _invokeDelegateWillBeginOpenWithApplicationIdentifier:v5];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(UIDocumentInteractionController *)self URL];
  v8 = _UIApplicationCanOpenInPlaceByCopyingFromOriginalFile(v4, v7);

  if (v8)
  {
    v9 = [(UIDocumentInteractionController *)self URL];
    v13 = 0;
    v10 = [v9 ui_bookmarkForExportWithError:&v13];
    v11 = v13;
    [v6 setValue:v10 forKey:*MEMORY[0x1E6963568]];

    [v6 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69635A0]];
    [(UIDocumentInteractionController *)self __performLaunchServiceDocumentOpenWithApplication:v4 launchServiceOptions:v6];
    v12 = [v4 applicationIdentifier];
    [(UIDocumentInteractionController *)self _invokeDelegateDidFinishOpenWithApplicationIdentifier:v12];
  }

  else
  {
    [(UIDocumentInteractionController *)self __performLaunchServiceDocumentOpenWithApplication:v4 launchServiceOptions:v6];
  }
}

- (void)__openUsingInPlaceMechanismToTransferDocumentToApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationIdentifier];
  [(UIDocumentInteractionController *)self _invokeDelegateWillBeginOpenWithApplicationIdentifier:v5];
  v6 = [(UIDocumentInteractionController *)self URL];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__UIDocumentInteractionController___openUsingInPlaceMechanismToTransferDocumentToApplication___block_invoke;
  v10[3] = &unk_1E71FB0D8;
  v10[4] = self;
  v11 = v4;
  v12 = v5;
  v7 = softLinkFPExtendBookmarkForDocumentURL;
  v8 = v5;
  v9 = v4;
  v7(v6, v8, v10);
}

void __94__UIDocumentInteractionController___openUsingInPlaceMechanismToTransferDocumentToApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__UIDocumentInteractionController___openUsingInPlaceMechanismToTransferDocumentToApplication___block_invoke_2;
  v8[3] = &unk_1E71FAB10;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v8);
}

void __94__UIDocumentInteractionController___openUsingInPlaceMechanismToTransferDocumentToApplication___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setValue:*(a1 + 32) forKey:*MEMORY[0x1E6963568]];
  [v2 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69635A0]];
  [*(a1 + 40) __performLaunchServiceDocumentOpenWithApplication:*(a1 + 48) launchServiceOptions:v2];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__UIDocumentInteractionController___openUsingInPlaceMechanismToTransferDocumentToApplication___block_invoke_3;
  v3[3] = &unk_1E71F91A0;
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)__performLaunchServiceDocumentOpenWithApplication:(id)a3 launchServiceOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIDocumentInteractionController *)self annotation];
  v9 = [v6 applicationIdentifier];
  v10 = [(UIDocumentInteractionController *)self URL];
  decompressedArchiveDocumentURL = self->_decompressedArchiveDocumentURL;
  if (decompressedArchiveDocumentURL)
  {
    v12 = decompressedArchiveDocumentURL;
LABEL_5:
    v15 = v12;

    v10 = v15;
    goto LABEL_6;
  }

  v13 = [(UIDocumentInteractionController *)self URL];
  v14 = _UIApplicationCanOpenInPlaceByCopyingFromOriginalFile(v6, v13);

  if (v14)
  {
    v12 = [(UIDocumentInteractionController *)self physicalURL];
    goto LABEL_5;
  }

LABEL_6:
  v16 = _UIActivityDefaultOpenApplicationLaunchServiceOptions();
  v17 = [v16 mutableCopy];

  [v17 addEntriesFromDictionary:v7];
  memset(v20, 0, sizeof(v20));
  _SharingUIAuditTokenForCurrentProcess(v20);
  v18 = [MEMORY[0x1E6963608] defaultWorkspace];
  v19 = [v18 operationToOpenResource:v10 usingApplication:v9 uniqueDocumentIdentifier:self->_uniqueIdentifier isContentManaged:self->_isContentManaged sourceAuditToken:v20 userInfo:v8 options:v17 delegate:self];

  objc_setAssociatedObject(v19, "_UIDICLaunchApplicationOperationTargetApplicationIdentifierProperty", v9, 0x303);
  [v19 start];
}

- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__UIDocumentInteractionController_openResourceOperation_didFinishCopyingResource___block_invoke;
  v7[3] = &unk_1E71F91A0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __82__UIDocumentInteractionController_openResourceOperation_didFinishCopyingResource___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 109) & 4) != 0)
  {
    v3 = objc_getAssociatedObject(*(a1 + 40), "_UIDICLaunchApplicationOperationTargetApplicationIdentifierProperty");
    [*(a1 + 32) _invokeDelegateDidFinishOpenWithApplicationIdentifier:v3];
  }
}

- (id)_preferredApplicationForDocumentOpening
{
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v2 = [(UIDocumentInteractionController *)self _appOpeningDocumentProxy];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v15[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__UIDocumentInteractionController__preferredApplicationForDocumentOpening__block_invoke;
  v8[3] = &unk_1E71FB100;
  v8[4] = &v9;
  _UIEnumerateApplicationsInPreferredOrderForOpeningDocument(v2, v5, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_appOpeningDocumentProxy
{
  v3 = [(UIDocumentInteractionController *)self URL];

  if (v3)
  {
    v4 = [(UIDocumentInteractionController *)self physicalURL];
    v5 = [(UIDocumentInteractionController *)self _documentProxyWithIsContentManaged:self->_isContentManaged usingURL:v4];
  }

  else
  {
    v5 = [(UIDocumentInteractionController *)self _documentProxy];
  }

  return v5;
}

- (id)physicalURL
{
  v3 = [(UIDocumentInteractionController *)self URL];
  v4 = [(UIDocumentInteractionController *)self URL];
  v5 = _CFURLPromiseCopyPhysicalURL();

  v6 = [(UIDocumentInteractionController *)self URL];
  LOBYTE(v4) = [v6 isEqual:v5];

  if ((v4 & 1) == 0 && v5)
  {
    v7 = v5;

    v3 = v7;
  }

  return v3;
}

- (void)_invokeDelegateWillBeginOpenWithApplicationIdentifier:(id)a3
{
  if ((*(&self->_documentInteractionControllerFlags + 1) & 2) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained documentInteractionController:self willBeginSendingToApplication:v5];
  }
}

- (void)_invokeDelegateDidFinishOpenWithApplicationIdentifier:(id)a3
{
  if ((*(&self->_documentInteractionControllerFlags + 1) & 4) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained documentInteractionController:self didEndSendingToApplication:v5];
  }
}

- (id)_preparedActivityViewControllerWithItems:(id)a3 activities:(id)a4 options:(unint64_t)a5
{
  isContentManaged = self->_isContentManaged;
  v9 = a4;
  v10 = a3;
  v11 = [[_UIDICActivityViewController alloc] initWithActivityItems:v10 applicationActivities:v9 options:isContentManaged | a5];

  [(_UIDICActivityViewController *)v11 setDocumentInteractionActivityDelegate:self];
  [(UIDocumentInteractionController *)self setActivityViewController:v11];

  return v11;
}

- (BOOL)_setupForOptionsMenu
{
  v39[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  [(UIDocumentInteractionController *)self _fixupFileExtensionIfNeeded];
  if ([(UIDocumentInteractionController *)self _shouldIncludePreviewActivity])
  {
    v4 = [(UIDocumentInteractionController *)self _newPreviewActivity];
    [v3 addObject:v4];
  }

  if ((*(&self->_documentInteractionControllerFlags + 1) & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained additionalActivitiesForDocumentInteractionController:self];

    if ([v6 count])
    {
      [v3 addObjectsFromArray:v6];
    }
  }

  v7 = 0;
  v39[0] = sel_print_;
  v39[1] = sel_copy_;
  v39[2] = sel_saveToCameraRoll_;
  do
  {
    v8 = [(UIDocumentInteractionController *)self _newActivityIfNecessaryForLegacyActionDelegatingWithAction:v39[v7]];
    if (v8)
    {
      [v3 addObject:v8];
    }

    ++v7;
  }

  while (v7 != 3);
  objc_initWeak(&v35, self);
  v9 = [_UIDICActivityItemProvider alloc];
  v10 = [(UIDocumentInteractionController *)self URL];
  v11 = [(_UIDICActivityItemProvider *)v9 initWithPlaceholderItem:v10 documentInteractionController:self];

  v12 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
  if ((*(&self->_documentInteractionControllerFlags + 1) & 0x80) != 0)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    v13 = [v14 activityItemForDocumentInteractionController:self];

    if (v13)
    {
      v15 = share_sheet_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v13;
        _os_log_impl(&dword_18B359000, v15, OS_LOG_TYPE_DEFAULT, "delegateProvidedActivityItem: %@", buf, 0xCu);
      }

      [v12 removeAllObjects];
      [v12 addObject:v13];
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*(&self->_documentInteractionControllerFlags + 2) & 1) != 0 && (v16 = objc_loadWeakRetained(&self->_delegate), [v16 printInfoForDocumentInteractionController:self], v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
  {
    [v12 addObject:v17];
  }

  else
  {
    v18 = [MEMORY[0x1E69C5A10] printInfo];
    v19 = [(UIDocumentInteractionController *)self name];
    [v18 setJobName:v19];

    [v18 setOutputType:{-[UIDocumentInteractionController _isImage](self, "_isImage")}];
    [v12 addObject:v18];

    v17 = 0;
  }

  v20 = [(UIDocumentInteractionController *)self _preparedActivityViewControllerWithItems:v12 activities:v3 options:0];
  v21 = [MEMORY[0x1E695DF70] array];
  if ((*(&self->_documentInteractionControllerFlags + 1) & 0x20) != 0)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    v23 = [v22 excludedActivityTypesForDocumentInteractionController:self];
    [v21 addObjectsFromArray:v23];
  }

  if ([(UIDocumentInteractionController *)self _delegateImplementsLegacyActions])
  {
    v36[0] = @"com.apple.UIKit.activity.SaveToCameraRoll";
    v36[1] = @"com.apple.UIKit.activity.Print";
    v36[2] = @"com.apple.UIKit.activity.CopyToPasteboard";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    [v21 addObjectsFromArray:v24];
  }

  v25 = share_sheet_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v21;
    _os_log_impl(&dword_18B359000, v25, OS_LOG_TYPE_DEFAULT, "excludedActivityTypes: %@", buf, 0xCu);
  }

  [v20 setExcludedActivityTypes:v21];
  if ((_UIAppUseModernRotationAndPresentationBehaviors() & 1) == 0)
  {
    v26 = [MEMORY[0x1E69DC938] currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if ((v27 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(UIPopoverController *)self->_popoverController dismissPopoverAnimated:1];
      v28 = objc_alloc(MEMORY[0x1E69DCDD8]);
      v29 = [(UIDocumentInteractionController *)self activityViewController];
      v30 = [v28 initWithContentViewController:v29];
      popoverController = self->_popoverController;
      self->_popoverController = v30;

      [(UIPopoverController *)self->_popoverController setDelegate:self];
    }
  }

  documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
  if ((*&documentInteractionControllerFlags & 0x20) != 0)
  {
    v33 = objc_loadWeakRetained(&self->_delegate);
    [v33 documentInteractionControllerWillPresentOptionsMenu:self];

    documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
  }

  self->_documentInteractionControllerFlags = (*&documentInteractionControllerFlags & 0xFFF3FFFF | 0x40000);

  objc_destroyWeak(&v35);
  return 1;
}

- (BOOL)_setupForOpenInMenu
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  [(UIDocumentInteractionController *)self _fixupFileExtensionIfNeeded];
  v4 = [_UIDICActivityItemProvider alloc];
  v5 = [(UIDocumentInteractionController *)self URL];
  v6 = [(_UIDICActivityItemProvider *)v4 initWithPlaceholderItem:v5 documentInteractionController:self];

  v20[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v8 = [(UIDocumentInteractionController *)self _preparedActivityViewControllerWithItems:v7 activities:v3 options:2];

  if ((*(&self->_documentInteractionControllerFlags + 1) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [WeakRetained excludedActivityTypesForDocumentInteractionController:self];
    [v8 setExcludedActivityTypes:v10];
  }

  if ((_UIAppUseModernRotationAndPresentationBehaviors() & 1) == 0)
  {
    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(UIPopoverController *)self->_popoverController dismissPopoverAnimated:1];
      v13 = objc_alloc(MEMORY[0x1E69DCDD8]);
      v14 = [(UIDocumentInteractionController *)self activityViewController];
      v15 = [v13 initWithContentViewController:v14];
      popoverController = self->_popoverController;
      self->_popoverController = v15;

      [(UIPopoverController *)self->_popoverController setDelegate:self];
    }
  }

  documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
  if ((*&documentInteractionControllerFlags & 0x80) != 0)
  {
    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 documentInteractionControllerWillPresentOpenInMenu:self];

    documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
  }

  self->_documentInteractionControllerFlags = (*&documentInteractionControllerFlags & 0xFFF3FFFF | 0x80000);

  return 1;
}

- (BOOL)_setupPreviewController
{
  [(UIDocumentInteractionController *)self _fixupFileExtensionIfNeeded];
  v3 = [(UIDocumentInteractionController *)self previewControllerItem];
  v4 = _UIQLCanPreviewItem(v3);

  if (v4)
  {
    v29 = 0;
    v5 = [(UIDocumentInteractionController *)self _delegateExistsAndImplementsRequiredMethods:&v29];
    v6 = v29;
    v7 = v6;
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [WeakRetained documentInteractionControllerViewControllerForPreview:self];
      presentingViewController = self->_presentingViewController;
      self->_presentingViewController = v9;

      presentView = self->_presentView;
      self->_presentView = 0;

      if ((*&self->_documentInteractionControllerFlags & 4) != 0)
      {
        v12 = objc_loadWeakRetained(&self->_delegate);
        v13 = [v12 documentInteractionControllerViewForPreview:self];
        v14 = self->_presentView;
        self->_presentView = v13;
      }

      v15 = *(MEMORY[0x1E695F058] + 16);
      self->_presentRect.origin = *MEMORY[0x1E695F058];
      self->_presentRect.size = v15;
      v16 = self->_presentView;
      if (v16)
      {
        if ((*&self->_documentInteractionControllerFlags & 2) != 0)
        {
          v22 = objc_loadWeakRetained(&self->_delegate);
          [v22 documentInteractionControllerRectForPreview:self];
          self->_presentRect.origin.x = v23;
          self->_presentRect.origin.y = v24;
          self->_presentRect.size.width = v25;
          self->_presentRect.size.height = v26;
        }

        else
        {
          [(UIView *)v16 bounds];
          self->_presentRect.origin.x = v17;
          self->_presentRect.origin.y = v18;
          self->_presentRect.size.width = v19;
          self->_presentRect.size.height = v20;
        }
      }

      presentItem = self->_presentItem;
      self->_presentItem = 0;

      if ((*&self->_documentInteractionControllerFlags & 8) == 0)
      {
        LOBYTE(v5) = 1;
        goto LABEL_18;
      }

      v21 = objc_loadWeakRetained(&self->_delegate);
      [v21 documentInteractionControllerWillBeginPreview:self];
    }

    else
    {
      if (!v6)
      {
        LOBYTE(v5) = 0;
LABEL_18:

        return v5;
      }

      v21 = share_sheet_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(UIDocumentInteractionController *)v7 _setupPreviewController];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (BOOL)_shouldIncludePreviewActivity
{
  if ((*&self->_documentInteractionControllerFlags & 1) == 0)
  {
    return 0;
  }

  v3 = [(UIDocumentInteractionController *)self previewControllerItem];
  v4 = _UIQLCanPreviewItem(v3);

  return v4;
}

- (id)_newPreviewActivity
{
  objc_initWeak(&location, self);
  v2 = +[_UIDICActionActivity newPreviewActionActivity];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__UIDocumentInteractionController__newPreviewActivity__block_invoke;
  v4[3] = &unk_1E71FB128;
  objc_copyWeak(&v5, &location);
  [v2 setActivityFinishedPerformingHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  return v2;
}

void __54__UIDocumentInteractionController__newPreviewActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentPreviewAnimated:1];
}

- (BOOL)_shouldIncludeActivityForLegacyDelegatingWithAction:(SEL)a3
{
  v5 = [(UIDocumentInteractionController *)self _delegateImplementsLegacyActions];
  if (v5)
  {

    LOBYTE(v5) = [(UIDocumentInteractionController *)self _delegateCanPerformAction:a3];
  }

  return v5;
}

- (id)_newActivityIfNecessaryForLegacyActionDelegatingWithAction:(SEL)a3
{
  if ([(UIDocumentInteractionController *)self _shouldIncludeActivityForLegacyDelegatingWithAction:?])
  {
    if (sel_print_ == a3)
    {
      v6 = +[_UIDICActionActivity newLegacyDelegationActionActivityForPrint];
    }

    else if (sel_copy_ == a3)
    {
      v6 = +[_UIDICActionActivity newLegacyDelegationActionActivityForCopy];
    }

    else
    {
      if (sel_saveToCameraRoll_ != a3)
      {
        v5 = 0;
LABEL_11:
        objc_initWeak(&location, self);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __94__UIDocumentInteractionController__newActivityIfNecessaryForLegacyActionDelegatingWithAction___block_invoke;
        v8[3] = &unk_1E71FB150;
        objc_copyWeak(v9, &location);
        v9[1] = a3;
        [v5 setActivityPerformingHandler:v8];
        objc_destroyWeak(v9);
        objc_destroyWeak(&location);
        return v5;
      }

      v6 = +[_UIDICActionActivity newLegacyDelegationActionActivityForSaveToCameraRoll];
    }

    v5 = v6;
    goto LABEL_11;
  }

  return 0;
}

uint64_t __94__UIDocumentInteractionController__newActivityIfNecessaryForLegacyActionDelegatingWithAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _delegatePerformAction:*(a1 + 40)];

  return v3;
}

- (void)setShouldUnzipDocument:(BOOL)a3
{
  if (self->_shouldDecompressArchiveIfNecessary != a3)
  {
    self->_shouldDecompressArchiveIfNecessary = a3;
    [(UIDocumentInteractionController *)self _invalidate];
  }
}

+ (id)_archiveDecompressQueue
{
  if (_archiveDecompressQueue_onceToken != -1)
  {
    +[UIDocumentInteractionController _archiveDecompressQueue];
  }

  v3 = _archiveDecompressQueue_theQueue;

  return v3;
}

uint64_t __58__UIDocumentInteractionController__archiveDecompressQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _archiveDecompressQueue_theQueue;
  _archiveDecompressQueue_theQueue = v0;

  [_archiveDecompressQueue_theQueue setMaxConcurrentOperationCount:1];
  v2 = _archiveDecompressQueue_theQueue;

  return [v2 setName:@"com.apple.archiveDecompressQueue"];
}

- (id)_pathsInArchive:(id)a3
{
  v4 = a3;
  v5 = [(UIDocumentInteractionController *)self URL];
  v6 = [(UIDocumentInteractionController *)self _archiveExtractionOptions];
  v7 = MEMORY[0x1E696AAE0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__UIDocumentInteractionController__pathsInArchive___block_invoke;
  v13[3] = &unk_1E71FA140;
  v14 = v5;
  v15 = v4;
  v16 = v6;
  v8 = v4;
  v9 = v5;
  v10 = [v7 blockOperationWithBlock:v13];
  v11 = +[UIDocumentInteractionController _archiveDecompressQueue];
  [v11 addOperation:v10];

  return v10;
}

- (id)__decompressArchiveAndSetupPayload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIDocumentInteractionController *)self URL];
  v9 = [(UIDocumentInteractionController *)self _archiveExtractionOptions];
  v10 = MEMORY[0x1E696AAE0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__UIDocumentInteractionController___decompressArchiveAndSetupPayload_completion___block_invoke;
  v17[3] = &unk_1E71FB178;
  v18 = v8;
  v19 = v6;
  v20 = self;
  v21 = v7;
  v22 = v9;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  v14 = [v10 blockOperationWithBlock:v17];
  v15 = +[UIDocumentInteractionController _archiveDecompressQueue];
  [v15 addOperation:v14];

  return v14;
}

void __81__UIDocumentInteractionController___decompressArchiveAndSetupPayload_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) _customExtactionRootURL];
  _UIDICArchiveExtractArchiveSubpathToRoot(v2, v3, v4, *(a1 + 56), *(a1 + 64));
}

- (void)_decompressArchiveAndSetupPayload:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__5;
  v11[4] = __Block_byref_object_dispose__5;
  v5 = self;
  v12 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__UIDocumentInteractionController__decompressArchiveAndSetupPayload___block_invoke;
  v8[3] = &unk_1E71FB1C8;
  v10 = v11;
  v6 = v4;
  v9 = v6;
  v7 = [(UIDocumentInteractionController *)v5 __decompressArchiveAndSetupPayload:0 completion:v8];

  _Block_object_dispose(v11, 8);
}

void __69__UIDocumentInteractionController__decompressArchiveAndSetupPayload___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    [*(*(*(a1 + 40) + 8) + 40) setURL:v7];
    v10 = [*(*(*(a1 + 40) + 8) + 40) previewControllerItem];
    [v10 setURLToDeleteOnDealloc:v8];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__UIDocumentInteractionController__decompressArchiveAndSetupPayload___block_invoke_2;
  v15[3] = &unk_1E71FB1A0;
  v11 = *(a1 + 32);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

- (void)_setDecompressedArchiveDocumentURL:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_decompressedArchiveDocumentURL != v6)
  {
    objc_storeStrong(&v5->_decompressedArchiveDocumentURL, a3);
  }

  objc_sync_exit(v5);
}

- (id)_decompressedArchiveDocumentURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_decompressedArchiveDocumentURL;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_shouldAutoDecompressIfArchive
{
  if (!self->_shouldDecompressArchiveIfNecessary)
  {
    return 0;
  }

  v2 = self;
  v3 = [(UIDocumentInteractionController *)self URL];
  v4 = [v3 lastPathComponent];
  LOBYTE(v2) = [(UIDocumentInteractionController *)v2 _isFilenameValidForDecompressing:v4 allowsPreviewingArchive:0];

  return v2;
}

- (BOOL)_shouldAutoDecompressIfArchiveForPreview
{
  if (!self->_shouldDecompressArchiveIfNecessary)
  {
    return 0;
  }

  v2 = self;
  v3 = [(UIDocumentInteractionController *)self URL];
  v4 = [v3 lastPathComponent];
  LOBYTE(v2) = [(UIDocumentInteractionController *)v2 _isFilenameValidForDecompressing:v4 allowsPreviewingArchive:1];

  return v2;
}

- (BOOL)_documentNeedsHelpDecompressingArchiveForPreview
{
  v2 = [(UIDocumentInteractionController *)self URL];
  v3 = _UIQLPreviewNeedsHelpDecompressingURL(v2);

  return v3;
}

- (BOOL)_isPackageArchive:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];
  v7 = [v6 pathExtension];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v8 = [(UIDocumentInteractionController *)self _isFilenameValidForDecompressing:v5 allowsPreviewingArchive:0];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 && ([(__CFString *)v7 isEqualToString:&stru_1EFE999E0]& 1) == 0)
  {
    v10 = *MEMORY[0x1E6963710];
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v7, *MEMORY[0x1E69637A8]);
    v12 = PreferredIdentifierForTag;
    if (PreferredIdentifierForTag)
    {
      v13 = UTTypeConformsTo(PreferredIdentifierForTag, *MEMORY[0x1E6963868]) != 0;
      *(v23 + 24) = v13;
      CFRelease(v12);
    }

    if (*(v23 + 24) == 1)
    {
      v14 = UTTypeCreatePreferredIdentifierForTag(v10, v7, 0);
      v15 = v14;
      if (v14)
      {
        if (!UTTypeConformsTo(v14, *MEMORY[0x1E6963868]))
        {
          *(v23 + 24) = 0;
          v16 = [(UIDocumentInteractionController *)self _archiveExtractionOptions];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __53__UIDocumentInteractionController__isPackageArchive___block_invoke;
          v19[3] = &unk_1E71FB1F0;
          v20 = v7;
          v21 = &v22;
          _UIDICArchiveEnumerateFilePaths(v4, v19, v16);
        }

        CFRelease(v15);
      }
    }
  }

  v17 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v17;
}

void __53__UIDocumentInteractionController__isPackageArchive___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) stringByDeletingLastPathComponent];
        v9 = [v8 pathExtension];
        v10 = [v9 isEqualToString:*(a1 + 32)];

        if (v10)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)_isFilenameValidForDecompressing:(id)a3 allowsPreviewingArchive:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 pathExtension];
  if (_UIIsArchiveExtension(v7))
  {
    v8 = _UIStringByDeletingArchiveExtensions(v6);
    v9 = [v8 pathExtension];
    v10 = [(UIDocumentInteractionController *)self previewControllerItem];
    v11 = [v10 previewItemContentType];

    if (!a4 && UTTypeConformsTo(v11, *MEMORY[0x1E6963740]) && ([v9 isEqualToString:&stru_1EFE999E0] & 1) != 0)
    {
      v12 = 0;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 1;
      if (!v11)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    CFRelease(v11);
    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)_isValidURL:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 path];

  LOBYTE(v4) = [v5 isWritableFileAtPath:v6];
  return v4;
}

- (BOOL)_canSaveToCameraRollForType
{
  v2 = [(UIDocumentInteractionController *)self UTI];
  if (!UTTypeConformsTo(v2, *MEMORY[0x1E6963850]))
  {
    v3 = UTTypeConformsTo(v2, *MEMORY[0x1E69637F8]) != 0;
    if (!v2)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v3 = 1;
  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

  return v3;
}

- (BOOL)_delegateCanPerformAction:(SEL)a3
{
  if ((*(&self->_documentInteractionControllerFlags + 1) & 8) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a3) = [WeakRetained documentInteractionController:self canPerformAction:a3];

  return a3;
}

- (BOOL)_delegatePerformAction:(SEL)a3
{
  if ((*(&self->_documentInteractionControllerFlags + 1) & 0x10) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a3) = [WeakRetained documentInteractionController:self performAction:a3];

  return a3;
}

- (void)popoverController:(id)a3 animationCompleted:(int64_t)a4
{
  v6 = [(UIDocumentInteractionController *)self delegate];
  if (a4 == 1)
  {
    v10 = v6;
    v7 = self;
    documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
    if ((*&documentInteractionControllerFlags & 0x80000) != 0)
    {
      if ((*&documentInteractionControllerFlags & 0x100) != 0)
      {
        [v10 documentInteractionControllerDidDismissOpenInMenu:self];
        documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
      }

      v9 = *&documentInteractionControllerFlags & 0xFFF7FFFF;
      v6 = v10;
    }

    else
    {
      v6 = v10;
      if ((*&documentInteractionControllerFlags & 0x40000) == 0)
      {
        goto LABEL_11;
      }

      if ((*&documentInteractionControllerFlags & 0x40) != 0)
      {
        [v10 documentInteractionControllerDidDismissOptionsMenu:self];
        v6 = v10;
        documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
      }

      v9 = *&documentInteractionControllerFlags & 0xFFFBFFFF;
    }

    self->_documentInteractionControllerFlags = v9;
  }

LABEL_11:
}

- (void)activityViewController:(id)a3 didFinishPresentingActivityType:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
  if ((*&documentInteractionControllerFlags & 0x80000) != 0)
  {
    if ((*&documentInteractionControllerFlags & 0x100) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained documentInteractionControllerDidDismissOpenInMenu:self];

      documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
    }

    v10 = *&documentInteractionControllerFlags & 0xFFF7FFFF;
  }

  else
  {
    if ((*&documentInteractionControllerFlags & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    if ((*&documentInteractionControllerFlags & 0x40) != 0)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 documentInteractionControllerDidDismissOptionsMenu:self];

      documentInteractionControllerFlags = self->_documentInteractionControllerFlags;
    }

    v10 = *&documentInteractionControllerFlags & 0xFFFBFFFF;
  }

  self->_documentInteractionControllerFlags = v10;
LABEL_10:
}

- (void)activityViewController:(id)a3 didFinishPerformingActivityType:(id)a4 completed:(BOOL)a5 items:(id)a6 error:(id)a7
{
  completionWithItemsHandler = self->_completionWithItemsHandler;
  if (completionWithItemsHandler)
  {
    completionWithItemsHandler[2](completionWithItemsHandler, a4, a5, a6, a7);
    v9 = self->_completionWithItemsHandler;
    self->_completionWithItemsHandler = 0;
  }
}

- (void)_fixupFileExtensionIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_18B359000, a3, OS_LOG_TYPE_ERROR, "ERROR: Couldn't create temporary folder at: %@. Error: %@", &v6, 0x16u);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setupPreviewController
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "ERROR: %@", &v2, 0xCu);
}

@end