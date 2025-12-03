@interface PKPaymentDocumentSubmissionIDCaptureViewController
- (PKPaymentDocumentSubmissionIDCaptureViewController)initWithController:(id)controller context:(int64_t)context featureIdentifier:(unint64_t)identifier;
- (void)cameraReader:(id)reader didFailWithError:(id)error;
- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects;
- (void)dealloc;
- (void)loadView;
- (void)updateUIWithState:(int64_t)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPaymentDocumentSubmissionIDCaptureViewController

- (PKPaymentDocumentSubmissionIDCaptureViewController)initWithController:(id)controller context:(int64_t)context featureIdentifier:(unint64_t)identifier
{
  v21[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = PKPaymentDocumentSubmissionIDCaptureViewController;
  v10 = [(CRCameraReader *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_featureIdentifier = identifier;
    objc_storeStrong(&v10->_captureController, controller);
    if ([(PKPaymentDocumentSubmissionController *)v11->_captureController side])
    {
      v20 = *MEMORY[0x1E6999008];
      v12 = &v20;
    }

    else
    {
      v21[0] = *MEMORY[0x1E6999010];
      v12 = v21;
    }

    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [(CRCameraReader *)v11 setOutputObjectTypes:v13];

    if (identifier != 1)
    {
      goto LABEL_10;
    }

    selectedDocument = [controllerCopy selectedDocument];
    [selectedDocument preferredWidth];
    v16 = v15;

    if (PKPeerPaymentHighResIDVImage())
    {
      v17 = 2048;
    }

    else
    {
      v17 = v16;
      if (v16 < 1)
      {
LABEL_10:
        [(CRCameraReader *)v11 setDelegate:v11];
        [(CRCameraReader *)v11 setHidePlacementText:1];
        v11->_reachedTimeout = 0;
        v11->_context = context;
        goto LABEL_11;
      }
    }

    [(CRCameraReader *)v11 setOutputCapturedImageWidth:v17];
    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (void)dealloc
{
  timerTryAgain = self->_timerTryAgain;
  if (timerTryAgain)
  {
    [(NSTimer *)timerTryAgain invalidate];
  }

  v4.receiver = self;
  v4.super_class = PKPaymentDocumentSubmissionIDCaptureViewController;
  [(CRCameraReader *)&v4 dealloc];
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = PKPaymentDocumentSubmissionIDCaptureViewController;
  [(CRCameraReader *)&v15 loadView];
  view = [(PKPaymentDocumentSubmissionIDCaptureViewController *)self view];
  cameraView = self->_cameraView;
  self->_cameraView = view;

  [(UIView *)self->_cameraView setClipsToBounds:1];
  v5 = [PKCameraCaptureInstructionView alloc];
  v6 = [(PKCameraCaptureInstructionView *)v5 initWithFrame:self->_context context:0 primaryAction:0 primaryActionTitle:0 secondaryAction:0 secondaryActionTitle:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  cameraInstructionView = self->_cameraInstructionView;
  self->_cameraInstructionView = v6;

  v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
  cameraInstructionContainerView = self->_cameraInstructionContainerView;
  self->_cameraInstructionContainerView = v8;

  v10 = self->_cameraInstructionContainerView;
  v11 = PKProvisioningBackgroundColor();
  [(UIView *)v10 setBackgroundColor:v11];

  [(UIView *)self->_cameraInstructionContainerView addSubview:self->_cameraInstructionView];
  v12 = objc_alloc(MEMORY[0x1E69DD250]);
  [(UIView *)self->_cameraView frame];
  v13 = [v12 initWithFrame:?];
  v14 = self->_cameraView;
  [v13 bounds];
  [(UIView *)v14 setFrame:?];
  [v13 addSubview:self->_cameraView];
  [v13 addSubview:self->_cameraInstructionContainerView];
  [(PKPaymentDocumentSubmissionIDCaptureViewController *)self setView:v13];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PKPaymentDocumentSubmissionIDCaptureViewController;
  [(PKPaymentDocumentSubmissionIDCaptureViewController *)&v10 viewDidLoad];
  view = [(PKPaymentDocumentSubmissionIDCaptureViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];

  if (self->_featureIdentifier == 1)
  {
    navigationItem = [(PKPaymentDocumentSubmissionIDCaptureViewController *)self navigationItem];
    [navigationItem setBackBarButtonItem:0];
    buttonCancel = self->_buttonCancel;
    if (!buttonCancel)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
      v8 = self->_buttonCancel;
      self->_buttonCancel = v7;

      buttonCancel = self->_buttonCancel;
    }

    [navigationItem setLeftBarButtonItem:buttonCancel];
    navigationItem2 = [(PKPaymentDocumentSubmissionIDCaptureViewController *)self navigationItem];
    [navigationItem2 setHidesBackButton:1];
  }

  PKPaymentSetupApplyContextAppearance(self->_context, view);
}

- (void)viewDidLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = PKPaymentDocumentSubmissionIDCaptureViewController;
  [(CRCameraReader *)&v20 viewDidLayoutSubviews];
  view = [(PKPaymentDocumentSubmissionIDCaptureViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v12;
  v15 = v14;
  [(PKCameraCaptureInstructionView *)self->_cameraInstructionView sizeThatFits:v9, v11 - v14];
  memset(&slice, 0, sizeof(slice));
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v17 = v15 + v15 + v16 + fmax(v11 - (v13 + v15) - (v15 + v16) + -337.0, 0.0);
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  CGRectDivide(v21, &slice, &v18, v17, CGRectMaxYEdge);
  [(UIView *)self->_cameraView setFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
  [(UIView *)self->_cameraInstructionContainerView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  [(UIView *)self->_cameraInstructionContainerView bounds];
  v18 = v22;
  CGRectDivide(v22, &slice, &v18, v15, CGRectMaxYEdge);
  CGRectDivide(v18, &slice, &v18, 32.0, CGRectMinYEdge);
  [(PKCameraCaptureInstructionView *)self->_cameraInstructionView setFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
  [(UIView *)self->_cameraView setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PKPaymentDocumentSubmissionIDCaptureViewController;
  [(CRCameraReader *)&v7 viewWillAppear:appear];
  [(CRCameraReader *)self start];
  [(PKPaymentDocumentSubmissionController *)self->_captureController setDelegate:self];
  self->_reachedTimeout = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKPaymentDocumentSubmissionIDCaptureViewController_viewWillAppear___block_invoke;
  v6[3] = &unk_1E8018FF8;
  v6[4] = self;
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v6 block:10.0];
  timerTryAgain = self->_timerTryAgain;
  self->_timerTryAgain = v4;

  [(PKPaymentDocumentSubmissionIDCaptureViewController *)self updateUIWithState:[(PKPaymentDocumentSubmissionController *)self->_captureController state]];
}

uint64_t __69__PKPaymentDocumentSubmissionIDCaptureViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1568) = 1;
  v1 = *(a1 + 32);
  v2 = [v1[192] state];

  return [v1 updateUIWithState:v2];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKPaymentDocumentSubmissionIDCaptureViewController;
  [(PKPaymentDocumentSubmissionIDCaptureViewController *)&v9 viewDidAppear:appear];
  if (os_variant_has_internal_ui())
  {
    v4 = PKCIPInputFile();
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
      if ([v5 fileExistsAtPath:v4])
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithContentsOfFile:v4];
        v7 = PKLogFacilityTypeGetObject();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v8)
          {
            *buf = 138412290;
            v11 = v4;
            _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Using CIP capture image override at path: '%@'", buf, 0xCu);
          }

          [(PKPaymentDocumentSubmissionController *)self->_captureController capturedImage:v6];
        }

        else
        {
          if (v8)
          {
            *buf = 138412290;
            v11 = v4;
            _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Could not load data for file at path: '%@'", buf, 0xCu);
          }

          v6 = 0;
        }
      }

      else
      {
        v6 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v11 = v4;
          _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Warning: File does not exist at path: '%@'", buf, 0xCu);
        }
      }
    }
  }
}

- (void)updateUIWithState:(int64_t)state
{
  headerView = [(PKCameraCaptureInstructionView *)self->_cameraInstructionView headerView];
  if (state == 2)
  {
    [(CRCameraReader *)self setEnableAltIDCardScan:self->_reachedTimeout];
    preferredLanguage = [(PKPaymentDocumentSubmissionController *)self->_captureController preferredLanguage];
    [(PKPaymentDocumentSubmissionController *)self->_captureController side];
    titleLabel = [headerView titleLabel];
    v8 = PKLocalizedApplyFeatureString();
    [titleLabel setText:v8];

    subtitleLabel = [headerView subtitleLabel];
    v12 = PKLocalizedApplyFeatureString();
    [subtitleLabel setText:v12];
  }

  else
  {
    [(NSTimer *)self->_timerTryAgain invalidate];
    timerTryAgain = self->_timerTryAgain;
    self->_timerTryAgain = 0;

    self->_reachedTimeout = 0;
    nextViewController = [(PKPaymentDocumentSubmissionController *)self->_captureController nextViewController];
    preferredLanguage = nextViewController;
    if (nextViewController)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__PKPaymentDocumentSubmissionIDCaptureViewController_updateUIWithState___block_invoke;
      v15[3] = &unk_1E8010A10;
      v15[4] = self;
      v16 = nextViewController;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  context = self->_context;
  view = [(PKPaymentDocumentSubmissionIDCaptureViewController *)self view];
  PKPaymentSetupApplyContextAppearance(context, view);
}

void __72__PKPaymentDocumentSubmissionIDCaptureViewController_updateUIWithState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 pk_presentPaymentSetupViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [objectsCopy count];
  v6 = objectsCopy;
  if (v5)
  {
    firstObject = [objectsCopy firstObject];
    imageValue = [firstObject imageValue];
    if (imageValue)
    {
      PKAnalyticsSendEventForFeature();
      [(PKPaymentDocumentSubmissionController *)self->_captureController capturedImage:imageValue];
    }

    v6 = objectsCopy;
  }
}

- (void)cameraReader:(id)reader didFailWithError:(id)error
{
  captureController = self->_captureController;
  if (captureController)
  {
    [(PKPaymentDocumentSubmissionController *)captureController captureFailedWithError:error];
  }
}

@end