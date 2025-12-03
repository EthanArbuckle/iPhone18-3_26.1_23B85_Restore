@interface PXCuratedLibraryShowAllActionPerformer
- (PXGLayout)layout;
- (void)performActionWithCompletionHandler:(id)handler;
@end

@implementation PXCuratedLibraryShowAllActionPerformer

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)performActionWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  layout = [(PXCuratedLibraryShowAllActionPerformer *)self layout];
  rootLayout = [layout rootLayout];
  v7 = [layout spriteReferenceForObjectReference:self];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v9 = [viewModel zoomLevelInDirection:1 fromZoomLevel:{-[PXCuratedLibraryActionPerformer actionZoomLevel](self, "actionZoomLevel")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v7)
    {
      v11 = @"missing showAllButtonSpriteReference";
      goto LABEL_10;
    }

    if ((v9 - 5) > 0xFFFFFFFFFFFFFFFBLL)
    {
      [rootLayout clearLastVisibleAreaAnchoringInformation];
      [rootLayout setLastHitSpriteReference:v7];
      viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__PXCuratedLibraryShowAllActionPerformer_performActionWithCompletionHandler___block_invoke;
      v17[3] = &unk_1E7737140;
      v18 = viewModel2;
      v19 = v9;
      v16 = viewModel2;
      [v16 performChanges:v17];

      v13 = 0;
      v11 = 0;
      v14 = 1;
      if (!handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected nextZoomLevel %li", v9];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected libraryLayout %@", rootLayout];
  }

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"unknown reason";
  }

LABEL_10:
  v12 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "%@ didn't perform because of %@", buf, 0x16u);
  }

  v13 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCuratedLibraryErrorDomain" code:1 debugDescription:{@"%@ didn't perform because of %@", self, v11}];
  v14 = 0;
  if (handlerCopy)
  {
LABEL_13:
    handlerCopy[2](handlerCopy, v14, v13);
  }

LABEL_14:
}

void __77__PXCuratedLibraryShowAllActionPerformer_performActionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  [a2 setZoomLevel:*(a1 + 40)];
  if (*(a1 + 40) == 4)
  {
    v3 = [*(a1 + 32) zoomablePhotosViewModel];
    [v3 performChanges:&__block_literal_global_91697];
  }
}

@end