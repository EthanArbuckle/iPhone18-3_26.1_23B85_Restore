@interface PXMemoriesInlineProblemReportViewController
- (PXMemoriesInlineProblemReportViewController)initWithMemory:(id)memory features:(id)features;
- (void)_showMailComposeWindow;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXMemoriesInlineProblemReportViewController

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  controllerCopy = controller;
  [(PXMemoriesInlineProblemReportViewController *)self setDidDismissMailWindow:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PXMemoriesInlineProblemReportViewController_mailComposeController_didFinishWithResult_error___block_invoke;
  v7[3] = &unk_1E774C648;
  v7[4] = self;
  [controllerCopy dismissViewControllerAnimated:0 completion:v7];
}

- (void)_showMailComposeWindow
{
  reportCaptureInProgressActivityIndicator = [(PXMemoriesInlineProblemReportViewController *)self reportCaptureInProgressActivityIndicator];
  [reportCaptureInProgressActivityIndicator startAnimating];

  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v4, block);
}

void __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke(uint64_t a1)
{
  v2 = [PXMemoriesInlineProblemReporter alloc];
  v3 = [*(a1 + 32) memory];
  v4 = [*(a1 + 32) features];
  v5 = [(PXMemoriesInlineProblemReporter *)v2 initWithMemory:v3 features:v4];

  v6 = [(PXMemoriesInlineProblemReporter *)v5 feedbackMailViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke_2;
  v9[3] = &unk_1E774C620;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setMailComposeDelegate:*(a1 + 40)];
    [*(a1 + 32) setModalTransitionStyle:2];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke_3;
    v10[3] = &unk_1E774C648;
    v10[4] = v3;
    [v3 presentViewController:v4 animated:1 completion:v10];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Unable to create E-Mail" message:@"You need to set up at least one account in Mail in order to report the issue." preferredStyle:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke_4;
    v9[3] = &unk_1E7749600;
    v9[4] = *(a1 + 40);
    v6 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:1 handler:v9];
    [v5 addAction:v6];
    v7 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke_5;
    v8[3] = &unk_1E774C648;
    v8[4] = v7;
    [v7 presentViewController:v5 animated:1 completion:v8];
  }
}

void __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) reportCaptureInProgressActivityIndicator];
  [v1 stopAnimating];
}

void __69__PXMemoriesInlineProblemReportViewController__showMailComposeWindow__block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) reportCaptureInProgressActivityIndicator];
  [v1 stopAnimating];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXMemoriesInlineProblemReportViewController;
  [(PXMemoriesInlineProblemReportViewController *)&v4 viewWillAppear:appear];
  if (![(PXMemoriesInlineProblemReportViewController *)self didDismissMailWindow])
  {
    [(PXMemoriesInlineProblemReportViewController *)self _showMailComposeWindow];
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PXMemoriesInlineProblemReportViewController;
  [(PXMemoriesInlineProblemReportViewController *)&v13 viewDidLoad];
  view = [(PXMemoriesInlineProblemReportViewController *)self view];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [view setBackgroundColor:whiteColor];

  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:2];
  v7 = PXLocalizedStringFromTable(@"Capturing Data.\nPlease wait…", @"PhotosUICore");
  [v6 setText:v7];

  [view addSubview:v6];
  v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v8];
  v9 = _NSDictionaryOfVariableBindings(&cfstr_ProgresslabelA.isa, v6, v8, 0);
  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[activityIndicator]-4-[progressLabel]" options:512 metrics:0 views:v9];
  [view addConstraints:v10];

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v6 attribute:10 relatedBy:0 toItem:view attribute:10 multiplier:1.0 constant:0.0];
  [view addConstraint:v11];

  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:v6 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
  [view addConstraint:v12];

  [(PXMemoriesInlineProblemReportViewController *)self setReportCaptureInProgressLabel:v6];
  [(PXMemoriesInlineProblemReportViewController *)self setReportCaptureInProgressActivityIndicator:v8];
}

- (PXMemoriesInlineProblemReportViewController)initWithMemory:(id)memory features:(id)features
{
  memoryCopy = memory;
  featuresCopy = features;
  v9 = [(PXMemoriesInlineProblemReportViewController *)self initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memory, memory);
    objc_storeStrong(&v10->_features, features);
  }

  return v10;
}

@end