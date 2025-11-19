@interface PXVisualDiagnosticsViewController
- (void)_handleActionBarButtonItem:(id)a3;
- (void)_handleTapToRadarButton:(id)a3;
- (void)_updateDocumentView;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)setDocument:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXVisualDiagnosticsViewController

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v6 = [(PXVisualDiagnosticsViewController *)self document];
  v5 = [v6 documentURL];
  [v4 addAttachment:v5];
}

- (void)_handleActionBarButtonItem:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PXVisualDiagnosticsViewController__handleActionBarButtonItem___block_invoke;
  aBlock[3] = &unk_1E774C5F8;
  v22 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = [(PXVisualDiagnosticsViewController *)self document];
  v8 = [v7 documentURL];
  v6[2](v6, v8);

  v9 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:v5 applicationActivities:0];
  [(PXVisualDiagnosticsViewController *)self presentViewController:v9 animated:1 completion:0];
  v10 = [(PXVisualDiagnosticsViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v10 safeAreaInsets];
  v18 = v17;
  v19 = [v9 popoverPresentationController];
  [v19 setSourceView:v10];

  v20 = [v9 popoverPresentationController];
  [v20 setSourceRect:{v12, v14, v16, v18}];
}

uint64_t __64__PXVisualDiagnosticsViewController__handleActionBarButtonItem___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)_handleTapToRadarButton:(id)a3
{
  v4 = objc_alloc_init(PXRadarConfiguration);
  [(PXRadarConfiguration *)v4 addDiagnosticProvider:self];
  [(PXRadarConfiguration *)v4 setComponent:1];
  [(PXRadarConfiguration *)v4 setKeywordIDs:&unk_1F190FD30];
  [(PXRadarConfiguration *)v4 setAttachmentsIncludeAnyUserAsset:0];
  PXFileRadarWithConfiguration(v4);
}

- (void)_updateDocumentView
{
  v4 = [(PXVisualDiagnosticsViewController *)self document];
  v3 = [(PXVisualDiagnosticsViewController *)self documentView];
  [v3 setDocument:v4];
}

- (void)setDocument:(id)a3
{
  v4 = [a3 copy];
  document = self->_document;
  self->_document = v4;

  [(PXVisualDiagnosticsViewController *)self _invalidateDocumentView];
}

- (void)viewDidLoad
{
  v20[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PXVisualDiagnosticsViewController;
  [(PXVisualDiagnosticsViewController *)&v14 viewDidLoad];
  v3 = [(PXVisualDiagnosticsViewController *)self view];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v4 = getPDFViewClass_softClass;
  v19 = getPDFViewClass_softClass;
  if (!getPDFViewClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getPDFViewClass_block_invoke;
    v15[3] = &unk_1E774BD00;
    v15[4] = &v16;
    __getPDFViewClass_block_invoke(v15);
    v4 = v17[3];
  }

  v5 = v4;
  _Block_object_dispose(&v16, 8);
  v6 = [v4 alloc];
  [v3 bounds];
  v7 = [v6 initWithFrame:?];
  documentView = self->_documentView;
  self->_documentView = v7;

  [(PDFView *)self->_documentView setAutoresizingMask:18];
  [v3 addSubview:self->_documentView];
  [(PXVisualDiagnosticsViewController *)self _updateDocumentView];
  [(PXVisualDiagnosticsViewController *)self setTitle:@"Visual Diagnostics"];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDoneBarButtonItem_];
  v10 = [(PXVisualDiagnosticsViewController *)self navigationItem];
  [v10 setLeftBarButtonItem:v9];

  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__handleActionBarButtonItem_];
  v20[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v13 = [(PXVisualDiagnosticsViewController *)self navigationItem];
  [v13 setRightBarButtonItems:v12];
}

@end