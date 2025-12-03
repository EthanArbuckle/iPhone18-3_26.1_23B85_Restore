@interface PXVisualDiagnosticsViewController
- (void)_handleActionBarButtonItem:(id)item;
- (void)_handleTapToRadarButton:(id)button;
- (void)_updateDocumentView;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)setDocument:(id)document;
- (void)viewDidLoad;
@end

@implementation PXVisualDiagnosticsViewController

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  document = [(PXVisualDiagnosticsViewController *)self document];
  documentURL = [document documentURL];
  [containerCopy addAttachment:documentURL];
}

- (void)_handleActionBarButtonItem:(id)item
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PXVisualDiagnosticsViewController__handleActionBarButtonItem___block_invoke;
  aBlock[3] = &unk_1E774C5F8;
  v22 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  document = [(PXVisualDiagnosticsViewController *)self document];
  documentURL = [document documentURL];
  v6[2](v6, documentURL);

  v9 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:v5 applicationActivities:0];
  [(PXVisualDiagnosticsViewController *)self presentViewController:v9 animated:1 completion:0];
  view = [(PXVisualDiagnosticsViewController *)self view];
  [view bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [view safeAreaInsets];
  v18 = v17;
  popoverPresentationController = [v9 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  popoverPresentationController2 = [v9 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];
}

uint64_t __64__PXVisualDiagnosticsViewController__handleActionBarButtonItem___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)_handleTapToRadarButton:(id)button
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
  document = [(PXVisualDiagnosticsViewController *)self document];
  documentView = [(PXVisualDiagnosticsViewController *)self documentView];
  [documentView setDocument:document];
}

- (void)setDocument:(id)document
{
  v4 = [document copy];
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
  view = [(PXVisualDiagnosticsViewController *)self view];
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
  [view bounds];
  v7 = [v6 initWithFrame:?];
  documentView = self->_documentView;
  self->_documentView = v7;

  [(PDFView *)self->_documentView setAutoresizingMask:18];
  [view addSubview:self->_documentView];
  [(PXVisualDiagnosticsViewController *)self _updateDocumentView];
  [(PXVisualDiagnosticsViewController *)self setTitle:@"Visual Diagnostics"];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDoneBarButtonItem_];
  navigationItem = [(PXVisualDiagnosticsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v9];

  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__handleActionBarButtonItem_];
  v20[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  navigationItem2 = [(PXVisualDiagnosticsViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItems:v12];
}

@end