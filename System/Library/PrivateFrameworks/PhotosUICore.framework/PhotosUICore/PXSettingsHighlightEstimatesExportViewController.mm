@interface PXSettingsHighlightEstimatesExportViewController
- (void)_fetchHighlightEstimatesDictionary;
- (void)_sendEmail:(id)email;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PXSettingsHighlightEstimatesExportViewController

- (void)_sendEmail:(id)email
{
  if ([getMFMailComposeViewControllerClass_141480() canSendMail])
  {
    v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Privacy Warning" message:@"By sending this email preferredStyle:{you agree on sharing your photos metadata.", 1}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PXSettingsHighlightEstimatesExportViewController__sendEmail___block_invoke;
    v8[3] = &unk_1E7749600;
    v8[4] = self;
    v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"Agree" style:0 handler:v8];
    [v4 addAction:v5];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Email" message:@"Can't send email preferredStyle:{do you have an account setup?", 1}];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PXSettingsHighlightEstimatesExportViewController__sendEmail___block_invoke_258;
  v7[3] = &unk_1E7749600;
  v7[4] = self;
  v6 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:v7];
  [v4 addAction:v6];
  [(PXSettingsHighlightEstimatesExportViewController *)self presentViewController:v4 animated:1 completion:0];
}

void __63__PXSettingsHighlightEstimatesExportViewController__sendEmail___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getMFMailComposeViewControllerClass_141480());
  [v2 setMailComposeDelegate:*(a1 + 32)];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PhotosGraph] Library Estimates Export"];
  [v2 setSubject:v3];

  [v2 setToRecipients:&unk_1F1910E70];
  v4 = MEMORY[0x1E696ACC8];
  v5 = [*(a1 + 32) highlightEstimatesDictionary];
  v16 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v16];
  v7 = v16;

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to archive highlightEstimatesDictionary, error: %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v8 setDateFormat:@"YYYY-MM-dd"];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v8 stringFromDate:v9];

  v11 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 name];
    v14 = [v11 stringWithFormat:@"library-estimates-%@-%@.plist", v13, v10];

    [v2 addAttachmentData:v6 mimeType:@"application/octet-stream" fileName:v14];
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot attach library estimates data."];
    NSLog(&cfstr_Error_1.isa, v15);
  }

  [v2 setMessageBody:v15 isHTML:0];
  [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
}

void __63__PXSettingsHighlightEstimatesExportViewController__sendEmail___block_invoke_258(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)_fetchHighlightEstimatesDictionary
{
  textView = [(PXSettingsHighlightEstimatesExportViewController *)self textView];
  [textView setText:@"\nFetching library estimates.\nThis might take a while…"];

  objc_initWeak(&location, self);
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__PXSettingsHighlightEstimatesExportViewController__fetchHighlightEstimatesDictionary__block_invoke;
  v5[3] = &unk_1E773D0A0;
  objc_copyWeak(&v6, &location);
  [px_deprecated_appPhotoLibrary requestHighlightEstimatesWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __86__PXSettingsHighlightEstimatesExportViewController__fetchHighlightEstimatesDictionary__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&v10, (a1 + 32));
  v7;
  v9;
  v8;
  px_dispatch_on_main_queue();
}

void __86__PXSettingsHighlightEstimatesExportViewController__fetchHighlightEstimatesDictionary__block_invoke_2(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained textView];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    [v5 setHighlightEstimatesDictionary:v4];

    [v3 setText:*(a1 + 48)];
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Export" style:0 target:WeakRetained action:sel__sendEmail_];
    v8 = [WeakRetained navigationController];
    [v8 setToolbarHidden:0 animated:1];

    v10[0] = v6;
    v10[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    [WeakRetained setToolbarItems:v9 animated:1];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fetching library estimates failed due to error:\n\n%@", *(a1 + 40)];
    [v3 setText:v6];
  }
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __100__PXSettingsHighlightEstimatesExportViewController_mailComposeController_didFinishWithResult_error___block_invoke;
  v5[3] = &unk_1E774C648;
  v5[4] = self;
  [(PXSettingsHighlightEstimatesExportViewController *)self dismissViewControllerAnimated:1 completion:v5, error];
}

void __100__PXSettingsHighlightEstimatesExportViewController_mailComposeController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = PXSettingsHighlightEstimatesExportViewController;
  [(PXSettingsHighlightEstimatesExportViewController *)&v6 viewDidDisappear:?];
  navigationController = [(PXSettingsHighlightEstimatesExportViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXSettingsHighlightEstimatesExportViewController;
  [(PXSettingsHighlightEstimatesExportViewController *)&v4 viewDidAppear:appear];
  if ([(PXSettingsHighlightEstimatesExportViewController *)self exportHighlightEstimatesOnViewDidAppear])
  {
    [(PXSettingsHighlightEstimatesExportViewController *)self setExportHighlightEstimatesOnViewDidAppear:0];
    [(PXSettingsHighlightEstimatesExportViewController *)self _fetchHighlightEstimatesDictionary];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PXSettingsHighlightEstimatesExportViewController;
  [(PXSettingsHighlightEstimatesExportViewController *)&v7 viewDidLoad];
  [(PXSettingsHighlightEstimatesExportViewController *)self setExportHighlightEstimatesOnViewDidAppear:1];
  view = [(PXSettingsHighlightEstimatesExportViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD168]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  [v5 setAutoresizingMask:18];
  [v5 setEditable:0];
  [view addSubview:v5];
  [(PXSettingsHighlightEstimatesExportViewController *)self setTextView:v5];
  [(PXSettingsHighlightEstimatesExportViewController *)self setTitle:@"Export Library Estimates"];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [view setBackgroundColor:whiteColor];
}

@end