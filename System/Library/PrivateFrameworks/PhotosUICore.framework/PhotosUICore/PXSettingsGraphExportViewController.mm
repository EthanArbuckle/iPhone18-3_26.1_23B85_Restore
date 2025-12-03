@interface PXSettingsGraphExportViewController
- (void)_exportGraph;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PXSettingsGraphExportViewController

- (void)_exportGraph
{
  if ([getMFMailComposeViewControllerClass() canSendMail])
  {
    v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Privacy Warning" message:@"By sending this email preferredStyle:{you agree on sharing your photos metadata, and all its associated calendar, contact and social events", 1}];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__PXSettingsGraphExportViewController__exportGraph__block_invoke;
    v7[3] = &unk_1E7749600;
    v7[4] = self;
    v4 = [MEMORY[0x1E69DC648] actionWithTitle:@"Agree" style:0 handler:v7];
    [v3 addAction:v4];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Email" message:@"Can't send email preferredStyle:{do you have an account setup?", 1}];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PXSettingsGraphExportViewController__exportGraph__block_invoke_3;
  v6[3] = &unk_1E7749600;
  v6[4] = self;
  v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:v6];
  [v3 addAction:v5];
  [(PXSettingsGraphExportViewController *)self presentViewController:v3 animated:1 completion:0];
}

void __51__PXSettingsGraphExportViewController__exportGraph__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v16 = 0;
  v3 = [v2 exportGraphForPurpose:@"default" error:&v16];
  v4 = v16;

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v9 = objc_alloc_init(getMFMailComposeViewControllerClass());
    [v9 setMailComposeDelegate:*(a1 + 32)];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PhotosGraph] Graph Export"];
    [v9 setSubject:v11];

    [v9 setToRecipients:&unk_1F190FA48];
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
    if (v12)
    {
      v13 = [v3 lastPathComponent];
      [v9 addAttachmentData:v12 mimeType:@"application/octet-stream" fileName:v13];

      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot attach graph at path %@", v3];
      NSLog(&cfstr_Error_1.isa, v14);
    }

    [v9 setMessageBody:v14 isHTML:0];
    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v6 = MEMORY[0x1E69DC650];
    v7 = [v4 localizedDescription];
    v8 = [@"Can't send email the graph failed to export. Error:{"stringByAppendingString:", v7} "];
    v9 = [v6 alertControllerWithTitle:@"Failed to export graph" message:v8 preferredStyle:1];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__PXSettingsGraphExportViewController__exportGraph__block_invoke_2;
    v15[3] = &unk_1E7749600;
    v15[4] = *(a1 + 32);
    v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:v15];
    [v9 addAction:v10];
    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
  }
}

void __51__PXSettingsGraphExportViewController__exportGraph__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void __51__PXSettingsGraphExportViewController__exportGraph__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PXSettingsGraphExportViewController_mailComposeController_didFinishWithResult_error___block_invoke;
  v5[3] = &unk_1E774C648;
  v5[4] = self;
  [(PXSettingsGraphExportViewController *)self dismissViewControllerAnimated:1 completion:v5, error];
}

void __87__PXSettingsGraphExportViewController_mailComposeController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXSettingsGraphExportViewController;
  [(PXSettingsGraphExportViewController *)&v4 viewDidAppear:appear];
  if (self->_exportGraphOnViewDidAppear)
  {
    self->_exportGraphOnViewDidAppear = 0;
    [(PXSettingsGraphExportViewController *)self _exportGraph];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PXSettingsGraphExportViewController;
  [(PXSettingsGraphExportViewController *)&v5 viewDidLoad];
  self->_exportGraphOnViewDidAppear = 1;
  [(PXSettingsGraphExportViewController *)self setTitle:@"Export Graph"];
  view = [(PXSettingsGraphExportViewController *)self view];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [view setBackgroundColor:whiteColor];
}

@end