@interface PMOtpauthQRCodeScannerViewController
- (PMOtpauthQRCodeScannerViewControllerDelegate)delegate;
- (int64_t)_avCaptureVideoOrientationFromUIDeviceOrientation:(int64_t)orientation;
- (void)_configureCaptureSession;
- (void)_dismiss:(id)_dismiss;
- (void)_updatePreviewLayerOrientation;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PMOtpauthQRCodeScannerViewController

- (void)viewDidLoad
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = PMOtpauthQRCodeScannerViewController;
  [(PMOtpauthQRCodeScannerViewController *)&v25 viewDidLoad];
  view = [(PMOtpauthQRCodeScannerViewController *)self view];
  [view setOpaque:1];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  viewfinderView = self->_viewfinderView;
  self->_viewfinderView = v4;

  [(UIView *)self->_viewfinderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_viewfinderView];
  v19 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIView *)self->_viewfinderView topAnchor];
  topAnchor2 = [view topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v22;
  rightAnchor = [(UIView *)self->_viewfinderView rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v26[1] = v18;
  bottomAnchor = [(UIView *)self->_viewfinderView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[2] = v8;
  leftAnchor = [(UIView *)self->_viewfinderView leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v26[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v19 activateConstraints:v12];

  [(PMOtpauthQRCodeScannerViewController *)self _configureCaptureSession];
  v13 = [MEMORY[0x277CE5B68] layerWithSession:self->_captureSession];
  previewLayer = self->_previewLayer;
  self->_previewLayer = v13;

  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setVideoGravity:*MEMORY[0x277CE5DD8]];
  layer = [(UIView *)self->_viewfinderView layer];
  [layer bounds];
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setFrame:?];

  [(PMOtpauthQRCodeScannerViewController *)self _updatePreviewLayerOrientation];
  layer2 = [(UIView *)self->_viewfinderView layer];
  [layer2 addSublayer:self->_previewLayer];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PMOtpauthQRCodeScannerViewController;
  [(PMOtpauthQRCodeScannerViewController *)&v4 viewDidLayoutSubviews];
  layer = [(UIView *)self->_viewfinderView layer];
  [layer bounds];
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = PMOtpauthQRCodeScannerViewController;
  [(PMOtpauthQRCodeScannerViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(PMOtpauthQRCodeScannerViewController *)self _updatePreviewLayerOrientation];
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  firstObject = [objects firstObject];
  type = [firstObject type];
  v8 = *MEMORY[0x277CE5A80];

  if (type == v8)
  {
    stringValue = [firstObject stringValue];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:stringValue relativeToURL:0];
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained QRCodeScannerViewController:self didScanQRCodeWithURLValue:v10];
      }
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PMOtpauthQRCodeScannerViewController captureOutput:stringValue didOutputMetadataObjects:v12 fromConnection:?];
      }
    }
  }
}

- (void)_dismiss:(id)_dismiss
{
  navigationController = [(PMOtpauthQRCodeScannerViewController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_configureCaptureSession
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v6 = 138412290;
  v7 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_21C6E5000, selfCopy, OS_LOG_TYPE_ERROR, "Unable to create input for QR code capture device. %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __64__PMOtpauthQRCodeScannerViewController__configureCaptureSession__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__PMOtpauthQRCodeScannerViewController__configureCaptureSession__block_invoke_2;
    block[3] = &unk_27831C9D8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_updatePreviewLayerOrientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  -[AVCaptureVideoPreviewLayer setOrientation:](self->_previewLayer, "setOrientation:", -[PMOtpauthQRCodeScannerViewController _avCaptureVideoOrientationFromUIDeviceOrientation:](self, "_avCaptureVideoOrientationFromUIDeviceOrientation:", [currentDevice orientation]));
}

- (int64_t)_avCaptureVideoOrientationFromUIDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return orientation;
  }
}

- (PMOtpauthQRCodeScannerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)captureOutput:(uint64_t)a1 didOutputMetadataObjects:(NSObject *)a2 fromConnection:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_21C6E5000, a2, OS_LOG_TYPE_DEBUG, "QR code does not contain a valid URL. %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end