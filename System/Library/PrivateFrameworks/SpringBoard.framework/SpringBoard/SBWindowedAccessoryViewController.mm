@interface SBWindowedAccessoryViewController
- (SBWindowedAccessoryViewControllerDelegate)delegate;
- (void)forceDetachWindowedAcessoryButtonTapped:(id)tapped;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation SBWindowedAccessoryViewController

- (void)loadView
{
  v3 = objc_alloc_init(SBWindowedAccessoryView);
  windowedAccessoryView = self->_windowedAccessoryView;
  self->_windowedAccessoryView = v3;

  [(SBWindowedAccessoryView *)self->_windowedAccessoryView setDelegate:self];
  v5 = self->_windowedAccessoryView;

  [(SBWindowedAccessoryViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SBWindowedAccessoryViewController;
  [(SBWindowedAccessoryViewController *)&v2 viewDidLoad];
}

- (void)forceDetachWindowedAcessoryButtonTapped:(id)tapped
{
  delegate = [(SBWindowedAccessoryViewController *)self delegate];
  [delegate windowedAccessoryViewControllerForceDetachButtonTapped:self];
}

- (SBWindowedAccessoryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end