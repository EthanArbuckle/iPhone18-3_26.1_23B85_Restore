@interface VPScannerProxCardViewController
- (void)start;
- (void)stop;
- (void)viewDidLoad;
@end

@implementation VPScannerProxCardViewController

- (void)viewDidLoad
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (gLogCategory_SPVC <= 30 && (gLogCategory_SPVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v26.receiver = self;
  v26.super_class = VPScannerProxCardViewController;
  [(VPScannerProxCardViewController *)&v26 viewDidLoad];
  v3 = [[VPScannerView alloc] initAsProxCard];
  scannerView = self->_scannerView;
  self->_scannerView = v3;

  v5 = [(VPScannerProxCardViewController *)self view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:1];

  [(VPScannerView *)self->_scannerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(VPScannerProxCardViewController *)self view];
  [v6 addSubview:self->_scannerView];

  v18 = MEMORY[0x277CCAAD0];
  v24 = [(VPScannerView *)self->_scannerView topAnchor];
  v25 = [(VPScannerProxCardViewController *)self view];
  v23 = [v25 topAnchor];
  v22 = [v24 constraintLessThanOrEqualToAnchor:v23];
  v27[0] = v22;
  v20 = [(VPScannerView *)self->_scannerView bottomAnchor];
  v21 = [(VPScannerProxCardViewController *)self view];
  v19 = [v21 bottomAnchor];
  v17 = [v20 constraintGreaterThanOrEqualToAnchor:v19];
  v27[1] = v17;
  v16 = [(VPScannerView *)self->_scannerView leftAnchor];
  v7 = [(VPScannerProxCardViewController *)self view];
  v8 = [v7 leftAnchor];
  v9 = [v16 constraintEqualToAnchor:v8];
  v27[2] = v9;
  v10 = [(VPScannerView *)self->_scannerView rightAnchor];
  v11 = [(VPScannerProxCardViewController *)self view];
  v12 = [v11 rightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v27[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  [v18 activateConstraints:v14];

  [(VPScannerView *)self->_scannerView setNeedsLayout];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  if (gLogCategory_SPVC <= 30 && (gLogCategory_SPVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__VPScannerProxCardViewController_start__block_invoke;
  v3[3] = &unk_279E320A0;
  v3[4] = self;
  [(VPScannerView *)self->_scannerView setScannedCodeHandler:v3];
  [(VPScannerView *)self->_scannerView start];
}

uint64_t __40__VPScannerProxCardViewController_start__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 992);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stop
{
  if (gLogCategory_SPVC <= 30 && (gLogCategory_SPVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(VPScannerView *)self->_scannerView setScannedCodeHandler:0];
  scannerView = self->_scannerView;

  [(VPScannerView *)scannerView stop];
}

@end