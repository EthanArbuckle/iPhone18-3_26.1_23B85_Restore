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
  initAsProxCard = [[VPScannerView alloc] initAsProxCard];
  scannerView = self->_scannerView;
  self->_scannerView = initAsProxCard;

  view = [(VPScannerProxCardViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:1];

  [(VPScannerView *)self->_scannerView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(VPScannerProxCardViewController *)self view];
  [view2 addSubview:self->_scannerView];

  v18 = MEMORY[0x277CCAAD0];
  topAnchor = [(VPScannerView *)self->_scannerView topAnchor];
  view3 = [(VPScannerProxCardViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v22 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
  v27[0] = v22;
  bottomAnchor = [(VPScannerView *)self->_scannerView bottomAnchor];
  view4 = [(VPScannerProxCardViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v17 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v27[1] = v17;
  leftAnchor = [(VPScannerView *)self->_scannerView leftAnchor];
  view5 = [(VPScannerProxCardViewController *)self view];
  leftAnchor2 = [view5 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v27[2] = v9;
  rightAnchor = [(VPScannerView *)self->_scannerView rightAnchor];
  view6 = [(VPScannerProxCardViewController *)self view];
  rightAnchor2 = [view6 rightAnchor];
  v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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