@interface PMOtpauthQRCodeScannerViewController
- (PMOtpauthQRCodeScannerViewControllerDelegate)delegate;
- (int64_t)_avCaptureVideoOrientationFromUIDeviceOrientation:(int64_t)a3;
- (void)_configureCaptureSession;
- (void)_dismiss:(id)a3;
- (void)_updatePreviewLayerOrientation;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PMOtpauthQRCodeScannerViewController

- (void)viewDidLoad
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = PMOtpauthQRCodeScannerViewController;
  [(PMOtpauthQRCodeScannerViewController *)&v25 viewDidLoad];
  v3 = [(PMOtpauthQRCodeScannerViewController *)self view];
  [v3 setOpaque:1];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  viewfinderView = self->_viewfinderView;
  self->_viewfinderView = v4;

  [(UIView *)self->_viewfinderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_viewfinderView];
  v19 = MEMORY[0x277CCAAD0];
  v24 = [(UIView *)self->_viewfinderView topAnchor];
  v23 = [v3 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v26[0] = v22;
  v21 = [(UIView *)self->_viewfinderView rightAnchor];
  v20 = [v3 rightAnchor];
  v18 = [v21 constraintEqualToAnchor:v20];
  v26[1] = v18;
  v6 = [(UIView *)self->_viewfinderView bottomAnchor];
  v7 = [v3 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v26[2] = v8;
  v9 = [(UIView *)self->_viewfinderView leftAnchor];
  v10 = [v3 leftAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v26[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v19 activateConstraints:v12];

  [(PMOtpauthQRCodeScannerViewController *)self _configureCaptureSession];
  v13 = [MEMORY[0x277CE5B68] layerWithSession:self->_captureSession];
  previewLayer = self->_previewLayer;
  self->_previewLayer = v13;

  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setVideoGravity:*MEMORY[0x277CE5DD8]];
  v15 = [(UIView *)self->_viewfinderView layer];
  [v15 bounds];
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setFrame:?];

  [(PMOtpauthQRCodeScannerViewController *)self _updatePreviewLayerOrientation];
  v16 = [(UIView *)self->_viewfinderView layer];
  [v16 addSublayer:self->_previewLayer];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PMOtpauthQRCodeScannerViewController;
  [(PMOtpauthQRCodeScannerViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(UIView *)self->_viewfinderView layer];
  [v3 bounds];
  [(AVCaptureVideoPreviewLayer *)self->_previewLayer setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = PMOtpauthQRCodeScannerViewController;
  [(PMOtpauthQRCodeScannerViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(PMOtpauthQRCodeScannerViewController *)self _updatePreviewLayerOrientation];
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v6 = [a4 firstObject];
  v7 = [v6 type];
  v8 = *MEMORY[0x277CE5A80];

  if (v7 == v8)
  {
    v9 = [v6 stringValue];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9 relativeToURL:0];
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
        [PMOtpauthQRCodeScannerViewController captureOutput:v9 didOutputMetadataObjects:v12 fromConnection:?];
      }
    }
  }
}

- (void)_dismiss:(id)a3
{
  v4 = [(PMOtpauthQRCodeScannerViewController *)self navigationController];
  v3 = [v4 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_configureCaptureSession
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_21C6E5000, v3, OS_LOG_TYPE_ERROR, "Unable to create input for QR code capture device. %@", &v6, 0xCu);

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
  v3 = [MEMORY[0x277D75418] currentDevice];
  -[AVCaptureVideoPreviewLayer setOrientation:](self->_previewLayer, "setOrientation:", -[PMOtpauthQRCodeScannerViewController _avCaptureVideoOrientationFromUIDeviceOrientation:](self, "_avCaptureVideoOrientationFromUIDeviceOrientation:", [v3 orientation]));
}

- (int64_t)_avCaptureVideoOrientationFromUIDeviceOrientation:(int64_t)a3
{
  if ((a3 - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
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