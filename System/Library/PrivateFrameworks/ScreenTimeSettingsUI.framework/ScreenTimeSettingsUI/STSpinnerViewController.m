@interface STSpinnerViewController
- (STSpinnerViewController)initWithCoder:(id)a3;
- (STSpinnerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_commonInit;
- (void)viewDidLoad;
@end

@implementation STSpinnerViewController

- (STSpinnerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = STSpinnerViewController;
  v4 = [(STSpinnerViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(STSpinnerViewController *)v4 _commonInit];
  }

  return v5;
}

- (STSpinnerViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = STSpinnerViewController;
  v3 = [(STSpinnerViewController *)&v6 initWithCoder:a3];
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
  v3 = [MEMORY[0x277D75348] whiteColor];
  v4 = [(STSpinnerViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(STSpinnerViewController *)self view];
  [v5 addSubview:self->_spinnerView];

  v6 = MEMORY[0x277CCAAD0];
  v7 = [(UIActivityIndicatorView *)self->_spinnerView centerXAnchor];
  v8 = [(STSpinnerViewController *)self view];
  v9 = [v8 centerXAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v18[0] = v10;
  v11 = [(UIActivityIndicatorView *)self->_spinnerView centerYAnchor];
  v12 = [(STSpinnerViewController *)self view];
  v13 = [v12 centerYAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
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