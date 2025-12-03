@interface SBBiometricMonitorViewController
- (void)loadView;
@end

@implementation SBBiometricMonitorViewController

- (void)loadView
{
  v4 = objc_alloc_init(SBBiometricMonitorView);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SBBiometricMonitorView *)v4 setBackgroundColor:clearColor];

  [(SBBiometricMonitorViewController *)self setView:v4];
}

@end