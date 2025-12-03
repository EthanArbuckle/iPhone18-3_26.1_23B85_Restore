@interface DADiagnosticsRemoteHostViewController
- (void)viewServiceDidFinishWithReason:(unint64_t)reason;
@end

@implementation DADiagnosticsRemoteHostViewController

- (void)viewServiceDidFinishWithReason:(unint64_t)reason
{
  if (![(DADiagnosticsRemoteHostViewController *)self finished])
  {
    [(DADiagnosticsRemoteHostViewController *)self setFinished:1];
    delegate = [(DADiagnosticsRemoteViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__DADiagnosticsRemoteHostViewController_viewServiceDidFinishWithReason___block_invoke;
      block[3] = &unk_27A66EE30;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __72__DADiagnosticsRemoteHostViewController_viewServiceDidFinishWithReason___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 didTerminateWithError:0];
}

@end