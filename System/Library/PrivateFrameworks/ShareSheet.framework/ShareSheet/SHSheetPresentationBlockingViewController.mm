@interface SHSheetPresentationBlockingViewController
- (SHSheetContentPresenter)presenter;
- (SHSheetPresentationBlockingViewControllerDelegate)delegate;
- (id)_createSystemCloseButton;
- (void)_handleClose;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation SHSheetPresentationBlockingViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(SHSheetPresentationBlockingViewController *)self setView:v3];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = SHSheetPresentationBlockingViewController;
  [(SHSheetPresentationBlockingViewController *)&v2 viewDidLayoutSubviews];
}

- (id)_createSystemCloseButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__handleClose];

  return v2;
}

- (void)_handleClose
{
  v2 = [(SHSheetPresentationBlockingViewController *)self delegate];
  [v2 handlePresentationBlockingViewControllerClose];
}

- (SHSheetPresentationBlockingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SHSheetContentPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end