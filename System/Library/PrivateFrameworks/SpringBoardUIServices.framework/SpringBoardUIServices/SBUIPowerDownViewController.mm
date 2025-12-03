@interface SBUIPowerDownViewController
- (SBUIPowerDownViewControllerDelegate)powerDownDelegate;
- (void)loadView;
- (void)powerDownViewRequestCancel:(id)cancel;
- (void)powerDownViewRequestPowerDown:(id)down;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBUIPowerDownViewController

- (void)loadView
{
  v3 = [SBUIPowerDownView alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [(SBUIPowerDownView *)v3 initWithFrame:?];

  [(SBUIPowerDownView *)v5 setDelegate:self];
  [(SBUIPowerDownViewController *)self setView:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBUIPowerDownViewController;
  [(SBUIPowerDownViewController *)&v5 viewWillAppear:appear];
  _powerDownView = [(SBUIPowerDownViewController *)self _powerDownView];
  [_powerDownView showAnimated:0 completion:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBUIPowerDownViewController;
  [(SBUIPowerDownViewController *)&v5 viewWillDisappear:disappear];
  _powerDownView = [(SBUIPowerDownViewController *)self _powerDownView];
  [_powerDownView hideAnimated:0 completion:0];
}

- (void)powerDownViewRequestCancel:(id)cancel
{
  powerDownDelegate = [(SBUIPowerDownViewController *)self powerDownDelegate];
  [powerDownDelegate powerDownViewRequestCancel:self];
}

- (void)powerDownViewRequestPowerDown:(id)down
{
  powerDownDelegate = [(SBUIPowerDownViewController *)self powerDownDelegate];
  [powerDownDelegate powerDownViewRequestPowerDown:self];
}

- (SBUIPowerDownViewControllerDelegate)powerDownDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->powerDownDelegate);

  return WeakRetained;
}

@end