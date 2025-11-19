@interface SBPosterEditingTransientOverlayViewController
- (SBPosterEditingTransientOverlayViewController)initWithEditingRequest:(id)a3;
- (SBPosterEditingTransientOverlayViewControllerDelegate)delegate;
- (id)keyboardFocusTarget;
- (void)_notifyDelegateOfDidDismissWithResponse:(id)a3;
- (void)_notifyDelegateOfWillDismissWithResponse:(id)a3;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBPosterEditingTransientOverlayViewController

- (SBPosterEditingTransientOverlayViewController)initWithEditingRequest:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SBPosterEditingTransientOverlayViewController;
  v6 = [(SBPosterEditingTransientOverlayViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editingRequest, a3);
    v8 = objc_alloc(MEMORY[0x277D3EAF8]);
    v9 = [v5 entryPoint];
    v10 = [v8 initWithEntryPoint:v9];
    remoteViewController = v7->_remoteViewController;
    v7->_remoteViewController = v10;

    [(PRUISModalRemoteViewController *)v7->_remoteViewController setDelegate:v7];
    v7->_synthesizeDelegateCallbacksFromAppearanceTransitions = 1;
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SBPosterEditingTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v4 viewDidLoad];
  v3 = [(SBTransientOverlayViewController *)self contentView];
  [(SBPosterEditingTransientOverlayViewController *)self bs_addChildViewController:self->_remoteViewController withSuperview:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBPosterEditingTransientOverlayViewController;
  [(SBPosterEditingTransientOverlayViewController *)&v5 viewWillDisappear:a3];
  if (self->_synthesizeDelegateCallbacksFromAppearanceTransitions)
  {
    v4 = [MEMORY[0x277D3EAF0] cancel];
    [(SBPosterEditingTransientOverlayViewController *)self _notifyDelegateOfWillDismissWithResponse:v4];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBPosterEditingTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidDisappear:a3];
  if (self->_synthesizeDelegateCallbacksFromAppearanceTransitions)
  {
    v4 = [MEMORY[0x277D3EAF0] cancel];
    [(SBPosterEditingTransientOverlayViewController *)self _notifyDelegateOfDidDismissWithResponse:v4];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = SBPosterEditingTransientOverlayViewController;
  v5 = a3;
  [(SBTransientOverlayViewController *)&v6 viewDidMoveToWindow:v5 shouldAppearOrDisappear:v4];
  [v5 setClipsToBounds:{0, v6.receiver, v6.super_class}];
}

- (id)keyboardFocusTarget
{
  if (!self->_keyboardFocusTarget && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [(PRUISModalRemoteViewController *)self->_remoteViewController scene];
    if (v3)
    {
      v4 = [SBKeyboardFocusTarget targetForFBScene:v3];
      keyboardFocusTarget = self->_keyboardFocusTarget;
      self->_keyboardFocusTarget = v4;
    }
  }

  v6 = self->_keyboardFocusTarget;

  return v6;
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  if (a3)
  {
    a3->var6 = 0;
  }
}

- (void)_notifyDelegateOfWillDismissWithResponse:(id)a3
{
  if ((*(self + 1440) & 1) == 0)
  {
    *(self + 1440) |= 1u;
    v5 = a3;
    v6 = [(SBPosterEditingTransientOverlayViewController *)self delegate];
    [v6 posterEditingTransientOverlayViewController:self willDismissWithResponse:v5];
  }
}

- (void)_notifyDelegateOfDidDismissWithResponse:(id)a3
{
  if ((*(self + 1440) & 2) == 0)
  {
    *(self + 1440) |= 2u;
    v4 = a3;
    v5 = [(SBPosterEditingTransientOverlayViewController *)self delegate];
    [v5 posterEditingTransientOverlayViewController:self didDismissWithResponse:v4];
  }
}

- (SBPosterEditingTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end