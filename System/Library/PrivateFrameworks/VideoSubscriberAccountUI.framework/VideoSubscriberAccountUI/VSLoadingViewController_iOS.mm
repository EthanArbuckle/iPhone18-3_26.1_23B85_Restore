@interface VSLoadingViewController_iOS
+ (NSString)defaultLoadingTitle;
+ (id)signingOutTitle;
- (NSString)loadingTitle;
- (VSLoadingViewControllerDelegate)delegate;
- (VSLoadingViewController_iOS)initWithCoder:(id)coder;
- (VSLoadingViewController_iOS)initWithNibName:(id)name bundle:(id)bundle;
- (void)_cancelButtonPressed:(id)pressed;
- (void)setLoadingTitle:(id)title;
- (void)updateAnimating;
- (void)viewDidLoad;
@end

@implementation VSLoadingViewController_iOS

- (VSLoadingViewController_iOS)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VSLoadingViewController_iOS;
  v3 = [(VSLoadingViewController_iOS *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_4(v3);
  }

  return v4;
}

- (VSLoadingViewController_iOS)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = VSLoadingViewController_iOS;
  v4 = [(VSLoadingViewController_iOS *)&v7 initWithNibName:name bundle:bundle];
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
  view = [(VSLoadingViewController_iOS *)self view];
  groupTableViewBackgroundColor = [MEMORY[0x277D75348] groupTableViewBackgroundColor];
  [view setBackgroundColor:groupTableViewBackgroundColor];

  loadingIndicator = [(VSLoadingViewController_iOS *)self loadingIndicator];
  [loadingIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [loadingIndicator setHidesWhenStopped:1];
  [(VSLoadingViewController_iOS *)self updateAnimating];
  [view addSubview:loadingIndicator];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];

  v9 = 0.0;
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    view2 = [(VSLoadingViewController_iOS *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v9 = v12 / 6.5;
  }

  centerXAnchor = [loadingIndicator centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:v9];
  [v6 addObject:v15];

  centerYAnchor = [loadingIndicator centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v6 addObject:v18];

  label = [(VSLoadingViewController_iOS *)self label];
  [label setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:label];
  [objc_opt_class() layoutSpacing];
  v21 = v20;
  centerXAnchor3 = [loadingIndicator centerXAnchor];
  centerXAnchor4 = [label centerXAnchor];
  v24 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v6 addObject:v24];

  v25 = [MEMORY[0x277CCAAD0] constraintWithItem:label attribute:3 relatedBy:0 toItem:loadingIndicator attribute:4 multiplier:1.0 constant:v21];
  [v6 addObject:v25];

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  if ([(VSLoadingViewController_iOS *)self isCancellationAllowed])
  {
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v27 = [vs_frameworkBundle localizedStringForKey:@"CANCEL_TITLE" value:0 table:0];

    v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v27 style:0 target:self action:sel__cancelButtonPressed_];
    navigationItem = [(VSLoadingViewController_iOS *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v28];
  }
}

- (void)updateAnimating
{
  isAnimating = [(VSLoadingViewController_iOS *)self isAnimating];
  loadingIndicator = [(VSLoadingViewController_iOS *)self loadingIndicator];
  v5 = loadingIndicator;
  if (isAnimating)
  {
    [loadingIndicator startAnimating];
  }

  else
  {
    [loadingIndicator stopAnimating];
  }

  label = [(VSLoadingViewController_iOS *)self label];
  [label setHidden:{-[VSLoadingViewController_iOS isAnimating](self, "isAnimating") ^ 1}];
}

- (void)setLoadingTitle:(id)title
{
  titleCopy = title;
  v9 = titleCopy;
  if (titleCopy)
  {
    defaultLoadingTitle = titleCopy;
  }

  else
  {
    defaultLoadingTitle = [objc_opt_class() defaultLoadingTitle];
  }

  v6 = defaultLoadingTitle;
  label = [(VSLoadingViewController_iOS *)self label];
  uppercaseString = [v6 uppercaseString];
  [label setText:uppercaseString];
}

- (NSString)loadingTitle
{
  label = [(VSLoadingViewController_iOS *)self label];
  text = [label text];

  if (!text)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The textOrNil parameter must not be nil."];
  }

  return text;
}

+ (NSString)defaultLoadingTitle
{
  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v3 = [vs_frameworkBundle localizedStringForKey:@"LOADING_TITLE_NO_ELLIPSIS" value:0 table:0];

  return v3;
}

+ (id)signingOutTitle
{
  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v3 = [vs_frameworkBundle localizedStringForKey:@"SIGNING_OUT_TITLE" value:0 table:0];

  return v3;
}

- (void)_cancelButtonPressed:(id)pressed
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[VSLoadingViewController_iOS _cancelButtonPressed:]";
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", &v7, 0xCu);
  }

  delegate = [(VSLoadingViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate loadingViewControllerDidCancel:self];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (VSLoadingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end