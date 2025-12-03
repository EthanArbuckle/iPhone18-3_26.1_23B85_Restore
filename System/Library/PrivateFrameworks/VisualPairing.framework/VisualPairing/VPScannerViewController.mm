@interface VPScannerViewController
+ (id)instantiateViewController;
- (void)handleCancelButton:(id)button;
- (void)handlePairManuallyButton:(id)button;
- (void)viewDidLoad;
@end

@implementation VPScannerViewController

+ (id)instantiateViewController
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.VisualPairing"];
  v3 = [MEMORY[0x277D75AC8] storyboardWithName:@"VPScanner_iOS" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"ScannerProx"];

  return v4;
}

- (void)viewDidLoad
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = VPScannerViewController;
  [(VPScannerViewController *)&v10 viewDidLoad];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  horizontalSizeClass = [currentTraitCollection horizontalSizeClass];

  if (horizontalSizeClass != 1)
  {
    v5 = MEMORY[0x277CCAAD0];
    widthAnchor = [(UIView *)self->_containerView widthAnchor];
    v7 = [widthAnchor constraintLessThanOrEqualToConstant:400.0];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v5 activateConstraints:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __42__VPScannerViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1000);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleCancelButton:(id)button
{
  buttonCopy = button;
  if (gLogCategory_SVC <= 30 && (gLogCategory_SVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    eventHandler[2](eventHandler, 1);
  }
}

- (void)handlePairManuallyButton:(id)button
{
  buttonCopy = button;
  if (gLogCategory_SVC <= 30 && (gLogCategory_SVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    eventHandler[2](eventHandler, 2);
  }
}

@end