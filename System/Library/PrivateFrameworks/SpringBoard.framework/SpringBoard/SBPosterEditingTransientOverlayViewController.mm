@interface SBPosterEditingTransientOverlayViewController
- (SBPosterEditingTransientOverlayViewController)initWithEditingRequest:(id)request;
- (SBPosterEditingTransientOverlayViewControllerDelegate)delegate;
- (id)keyboardFocusTarget;
- (void)_notifyDelegateOfDidDismissWithResponse:(id)response;
- (void)_notifyDelegateOfWillDismissWithResponse:(id)response;
- (void)getRotationContentSettings:(id *)settings forWindow:(id)window;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBPosterEditingTransientOverlayViewController

- (SBPosterEditingTransientOverlayViewController)initWithEditingRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = SBPosterEditingTransientOverlayViewController;
  v6 = [(SBPosterEditingTransientOverlayViewController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editingRequest, request);
    v8 = objc_alloc(MEMORY[0x277D3EAF8]);
    entryPoint = [requestCopy entryPoint];
    v10 = [v8 initWithEntryPoint:entryPoint];
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
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [(SBPosterEditingTransientOverlayViewController *)self bs_addChildViewController:self->_remoteViewController withSuperview:contentView];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBPosterEditingTransientOverlayViewController;
  [(SBPosterEditingTransientOverlayViewController *)&v5 viewWillDisappear:disappear];
  if (self->_synthesizeDelegateCallbacksFromAppearanceTransitions)
  {
    cancel = [MEMORY[0x277D3EAF0] cancel];
    [(SBPosterEditingTransientOverlayViewController *)self _notifyDelegateOfWillDismissWithResponse:cancel];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBPosterEditingTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidDisappear:disappear];
  if (self->_synthesizeDelegateCallbacksFromAppearanceTransitions)
  {
    cancel = [MEMORY[0x277D3EAF0] cancel];
    [(SBPosterEditingTransientOverlayViewController *)self _notifyDelegateOfDidDismissWithResponse:cancel];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBPosterEditingTransientOverlayViewController;
  windowCopy = window;
  [(SBTransientOverlayViewController *)&v6 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  [windowCopy setClipsToBounds:{0, v6.receiver, v6.super_class}];
}

- (id)keyboardFocusTarget
{
  if (!self->_keyboardFocusTarget && (objc_opt_respondsToSelector() & 1) != 0)
  {
    scene = [(PRUISModalRemoteViewController *)self->_remoteViewController scene];
    if (scene)
    {
      v4 = [SBKeyboardFocusTarget targetForFBScene:scene];
      keyboardFocusTarget = self->_keyboardFocusTarget;
      self->_keyboardFocusTarget = v4;
    }
  }

  v6 = self->_keyboardFocusTarget;

  return v6;
}

- (void)getRotationContentSettings:(id *)settings forWindow:(id)window
{
  if (settings)
  {
    settings->var6 = 0;
  }
}

- (void)_notifyDelegateOfWillDismissWithResponse:(id)response
{
  if ((*(self + 1440) & 1) == 0)
  {
    *(self + 1440) |= 1u;
    responseCopy = response;
    delegate = [(SBPosterEditingTransientOverlayViewController *)self delegate];
    [delegate posterEditingTransientOverlayViewController:self willDismissWithResponse:responseCopy];
  }
}

- (void)_notifyDelegateOfDidDismissWithResponse:(id)response
{
  if ((*(self + 1440) & 2) == 0)
  {
    *(self + 1440) |= 2u;
    responseCopy = response;
    delegate = [(SBPosterEditingTransientOverlayViewController *)self delegate];
    [delegate posterEditingTransientOverlayViewController:self didDismissWithResponse:responseCopy];
  }
}

- (SBPosterEditingTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end