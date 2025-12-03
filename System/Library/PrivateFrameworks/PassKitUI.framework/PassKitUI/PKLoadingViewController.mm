@interface PKLoadingViewController
- (PKLoadingViewController)initWithDelegate:(id)delegate;
- (void)_cancelButtonTapped:(id)tapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKLoadingViewController

- (PKLoadingViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = PKLoadingViewController;
  v5 = [(PKLoadingViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    navigationItem = [(PKLoadingViewController *)v6 navigationItem];
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v6 action:sel__cancelButtonTapped_];
    [navigationItem setLeftBarButtonItem:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v9 configureWithTransparentBackground];
    [navigationItem setStandardAppearance:v9];
  }

  return v6;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PKLoadingViewController;
  [(PKLoadingViewController *)&v14 viewDidLoad];
  view = [(PKLoadingViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v5;

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  [view addSubview:self->_spinner];
  v7 = objc_alloc(MEMORY[0x1E69DCC10]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  loadingLabel = self->_loadingLabel;
  self->_loadingLabel = v8;

  v10 = self->_loadingLabel;
  v11 = PKLocalizedString(&cfstr_Loading_1.isa);
  [(UILabel *)v10 setText:v11];

  v12 = self->_loadingLabel;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v12 setTextColor:labelColor];

  [view addSubview:self->_loadingLabel];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = PKLoadingViewController;
  [(PKLoadingViewController *)&v18 viewDidLayoutSubviews];
  view = [(PKLoadingViewController *)self view];
  [view bounds];
  [(UIActivityIndicatorView *)self->_spinner frame];
  [view center];
  UIRectCenteredAboutPoint();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIActivityIndicatorView *)self->_spinner setFrame:?];
  [(UILabel *)self->_loadingLabel sizeToFit];
  [(UILabel *)self->_loadingLabel frame];
  UIRectCenteredXInRect();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  [(UILabel *)self->_loadingLabel setFrame:v13, CGRectGetMaxY(v19) + 10.0, v15, v17];
}

- (void)_cancelButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained loadingViewControllerDidCancel:self];
}

@end