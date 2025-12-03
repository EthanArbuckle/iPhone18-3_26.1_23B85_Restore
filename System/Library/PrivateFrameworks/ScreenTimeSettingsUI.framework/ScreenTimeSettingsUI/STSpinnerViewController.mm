@interface STSpinnerViewController
- (STSpinnerViewController)initWithCoder:(id)coder;
- (STSpinnerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_commonInit;
- (void)viewDidLoad;
@end

@implementation STSpinnerViewController

- (STSpinnerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = STSpinnerViewController;
  v4 = [(STSpinnerViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(STSpinnerViewController *)v4 _commonInit];
  }

  return v5;
}

- (STSpinnerViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = STSpinnerViewController;
  v3 = [(STSpinnerViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(STSpinnerViewController *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinnerView = self->_spinnerView;
  self->_spinnerView = v3;

  [(UIActivityIndicatorView *)self->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_spinnerView;

  [(UIActivityIndicatorView *)v5 startAnimating];
}

- (void)viewDidLoad
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = STSpinnerViewController;
  [(STSpinnerViewController *)&v17 viewDidLoad];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  view = [(STSpinnerViewController *)self view];
  [view setBackgroundColor:whiteColor];

  view2 = [(STSpinnerViewController *)self view];
  [view2 addSubview:self->_spinnerView];

  v6 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIActivityIndicatorView *)self->_spinnerView centerXAnchor];
  view3 = [(STSpinnerViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18[0] = v10;
  centerYAnchor = [(UIActivityIndicatorView *)self->_spinnerView centerYAnchor];
  view4 = [(STSpinnerViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v6 activateConstraints:v15];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STSpinnerViewController.viewDidLoad", v16, 2u);
  }
}

@end