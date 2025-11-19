@interface VSLoadingViewController_iOS
+ (NSString)defaultLoadingTitle;
+ (id)signingOutTitle;
- (NSString)loadingTitle;
- (VSLoadingViewControllerDelegate)delegate;
- (VSLoadingViewController_iOS)initWithCoder:(id)a3;
- (VSLoadingViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_cancelButtonPressed:(id)a3;
- (void)setLoadingTitle:(id)a3;
- (void)updateAnimating;
- (void)viewDidLoad;
@end

@implementation VSLoadingViewController_iOS

- (VSLoadingViewController_iOS)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSLoadingViewController_iOS;
  v3 = [(VSLoadingViewController_iOS *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit_4(v3);
  }

  return v4;
}

- (VSLoadingViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = VSLoadingViewController_iOS;
  v4 = [(VSLoadingViewController_iOS *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    commonInit_4(v4);
  }

  return v5;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = VSLoadingViewController_iOS;
  [(VSLoadingViewController_iOS *)&v30 viewDidLoad];
  v3 = [(VSLoadingViewController_iOS *)self view];
  v4 = [MEMORY[0x277D75348] groupTableViewBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(VSLoadingViewController_iOS *)self loadingIndicator];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setHidesWhenStopped:1];
  [(VSLoadingViewController_iOS *)self updateAnimating];
  [v3 addSubview:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [MEMORY[0x277D759A0] mainScreen];
  v8 = [v7 traitCollection];

  v9 = 0.0;
  if ([v8 userInterfaceIdiom] == 1)
  {
    v10 = [(VSLoadingViewController_iOS *)self view];
    v11 = [v10 safeAreaLayoutGuide];
    [v11 layoutFrame];
    v9 = v12 / 6.5;
  }

  v13 = [v5 centerXAnchor];
  v14 = [v3 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:v9];
  [v6 addObject:v15];

  v16 = [v5 centerYAnchor];
  v17 = [v3 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v6 addObject:v18];

  v19 = [(VSLoadingViewController_iOS *)self label];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v19];
  [objc_opt_class() layoutSpacing];
  v21 = v20;
  v22 = [v5 centerXAnchor];
  v23 = [v19 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v6 addObject:v24];

  v25 = [MEMORY[0x277CCAAD0] constraintWithItem:v19 attribute:3 relatedBy:0 toItem:v5 attribute:4 multiplier:1.0 constant:v21];
  [v6 addObject:v25];

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  if ([(VSLoadingViewController_iOS *)self isCancellationAllowed])
  {
    v26 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v27 = [v26 localizedStringForKey:@"CANCEL_TITLE" value:0 table:0];

    v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v27 style:0 target:self action:sel__cancelButtonPressed_];
    v29 = [(VSLoadingViewController_iOS *)self navigationItem];
    [v29 setLeftBarButtonItem:v28];
  }
}

- (void)updateAnimating
{
  v3 = [(VSLoadingViewController_iOS *)self isAnimating];
  v4 = [(VSLoadingViewController_iOS *)self loadingIndicator];
  v5 = v4;
  if (v3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }

  v6 = [(VSLoadingViewController_iOS *)self label];
  [v6 setHidden:{-[VSLoadingViewController_iOS isAnimating](self, "isAnimating") ^ 1}];
}

- (void)setLoadingTitle:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_class() defaultLoadingTitle];
  }

  v6 = v5;
  v7 = [(VSLoadingViewController_iOS *)self label];
  v8 = [v6 uppercaseString];
  [v7 setText:v8];
}

- (NSString)loadingTitle
{
  v2 = [(VSLoadingViewController_iOS *)self label];
  v3 = [v2 text];

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The textOrNil parameter must not be nil."];
  }

  return v3;
}

+ (NSString)defaultLoadingTitle
{
  v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v3 = [v2 localizedStringForKey:@"LOADING_TITLE_NO_ELLIPSIS" value:0 table:0];

  return v3;
}

+ (id)signingOutTitle
{
  v2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v3 = [v2 localizedStringForKey:@"SIGNING_OUT_TITLE" value:0 table:0];

  return v3;
}

- (void)_cancelButtonPressed:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[VSLoadingViewController_iOS _cancelButtonPressed:]";
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", &v7, 0xCu);
  }

  v5 = [(VSLoadingViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 loadingViewControllerDidCancel:self];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (VSLoadingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end