@interface WSWebSheetViewController
- (void)dismissViewController:(int64_t)controller;
- (void)handleProbeResult:(int64_t)result completionHandler:(id)handler;
- (void)loadView;
@end

@implementation WSWebSheetViewController

- (void)loadView
{
  NSLog(&cfstr_Loadview.isa, a2);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;

  v8 = [[WSWebSheetView alloc] initWithFrame:self webSheetViewController:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), v5, v7];
  [(WSWebSheetViewController *)self setView:v8];
}

- (void)dismissViewController:(int64_t)controller
{
  webSheetView = [(WSWebSheetViewController *)self webSheetView];
  delegate = [webSheetView delegate];

  if (delegate)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__WSWebSheetViewController_dismissViewController___block_invoke;
    v7[3] = &unk_279EAFE58;
    v7[4] = self;
    v7[5] = controller;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __50__WSWebSheetViewController_dismissViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webSheetView];
  [v2 dismissWebSheetWithCaptiveWebSheetResult:*(a1 + 40)];
}

- (void)handleProbeResult:(int64_t)result completionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WSWebSheetViewController_handleProbeResult_completionHandler___block_invoke;
  block[3] = &unk_279EAFFF8;
  v9 = handlerCopy;
  resultCopy = result;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __64__WSWebSheetViewController_handleProbeResult_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webSheetView];
  [v2 handleProbeResult:*(a1 + 48)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end