@interface WSWebSheetViewController
- (void)dismissViewController:(int64_t)a3;
- (void)handleProbeResult:(int64_t)a3 completionHandler:(id)a4;
- (void)loadView;
@end

@implementation WSWebSheetViewController

- (void)loadView
{
  NSLog(&cfstr_Loadview.isa, a2);
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [[WSWebSheetView alloc] initWithFrame:self webSheetViewController:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), v5, v7];
  [(WSWebSheetViewController *)self setView:v8];
}

- (void)dismissViewController:(int64_t)a3
{
  v5 = [(WSWebSheetViewController *)self webSheetView];
  v6 = [v5 delegate];

  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__WSWebSheetViewController_dismissViewController___block_invoke;
    v7[3] = &unk_279EAFE58;
    v7[4] = self;
    v7[5] = a3;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __50__WSWebSheetViewController_dismissViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webSheetView];
  [v2 dismissWebSheetWithCaptiveWebSheetResult:*(a1 + 40)];
}

- (void)handleProbeResult:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WSWebSheetViewController_handleProbeResult_completionHandler___block_invoke;
  block[3] = &unk_279EAFFF8;
  v9 = v6;
  v10 = a3;
  block[4] = self;
  v7 = v6;
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