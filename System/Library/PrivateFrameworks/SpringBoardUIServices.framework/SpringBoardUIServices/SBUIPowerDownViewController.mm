@interface SBUIPowerDownViewController
- (SBUIPowerDownViewControllerDelegate)powerDownDelegate;
- (void)loadView;
- (void)powerDownViewRequestCancel:(id)a3;
- (void)powerDownViewRequestPowerDown:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBUIPowerDownViewController

- (void)loadView
{
  v3 = [SBUIPowerDownView alloc];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [(SBUIPowerDownView *)v3 initWithFrame:?];

  [(SBUIPowerDownView *)v5 setDelegate:self];
  [(SBUIPowerDownViewController *)self setView:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBUIPowerDownViewController;
  [(SBUIPowerDownViewController *)&v5 viewWillAppear:a3];
  v4 = [(SBUIPowerDownViewController *)self _powerDownView];
  [v4 showAnimated:0 completion:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBUIPowerDownViewController;
  [(SBUIPowerDownViewController *)&v5 viewWillDisappear:a3];
  v4 = [(SBUIPowerDownViewController *)self _powerDownView];
  [v4 hideAnimated:0 completion:0];
}

- (void)powerDownViewRequestCancel:(id)a3
{
  v4 = [(SBUIPowerDownViewController *)self powerDownDelegate];
  [v4 powerDownViewRequestCancel:self];
}

- (void)powerDownViewRequestPowerDown:(id)a3
{
  v4 = [(SBUIPowerDownViewController *)self powerDownDelegate];
  [v4 powerDownViewRequestPowerDown:self];
}

- (SBUIPowerDownViewControllerDelegate)powerDownDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->powerDownDelegate);

  return WeakRetained;
}

@end