@interface STActivityIndicatingWebView
- (STActivityIndicatingWebView)initWithConfiguration:(id)configuration;
- (void)didChangeUserInterfaceStyle;
- (void)hostActivityIndicatorInView:(id)view;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation STActivityIndicatingWebView

- (STActivityIndicatingWebView)initWithConfiguration:(id)configuration
{
  v18[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = STActivityIndicatingWebView;
  v5 = [(STActivityIndicatingWebView *)&v17 initWithFrame:configurationCopy configuration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  activityView = v5->_activityView;
  v5->_activityView = v6;

  objc_initWeak(&location, v5);
  v18[0] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53__STActivityIndicatingWebView_initWithConfiguration___block_invoke;
  v14 = &unk_279B7C970;
  objc_copyWeak(&v15, &location);
  v9 = [(STActivityIndicatingWebView *)v5 registerForTraitChanges:v8 withHandler:&v11];
  [(STActivityIndicatingWebView *)v5 setInterfaceStyleObservation:v9, v11, v12, v13, v14];

  [(STActivityIndicatingWebView *)v5 setNavigationDelegate:v5];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v5;
}

void __53__STActivityIndicatingWebView_initWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didChangeUserInterfaceStyle];
}

- (void)didChangeUserInterfaceStyle
{
  superview = [(STActivityIndicatingWebView *)self superview];

  if (superview)
  {
    traitCollection = [(STActivityIndicatingWebView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v4 = ;
    superview2 = [(STActivityIndicatingWebView *)self superview];
    [superview2 setBackgroundColor:v4];
  }
}

- (void)hostActivityIndicatorInView:(id)view
{
  v20[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  activityView = [(STActivityIndicatingWebView *)self activityView];
  superview = [activityView superview];

  if (!superview)
  {
    activityView2 = [(STActivityIndicatingWebView *)self activityView];
    [activityView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    activityView3 = [(STActivityIndicatingWebView *)self activityView];
    [viewCopy addSubview:activityView3];

    v18 = MEMORY[0x277CCAAD0];
    activityView4 = [(STActivityIndicatingWebView *)self activityView];
    centerXAnchor = [activityView4 centerXAnchor];
    centerXAnchor2 = [viewCopy centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v20[0] = v11;
    activityView5 = [(STActivityIndicatingWebView *)self activityView];
    centerYAnchor = [activityView5 centerYAnchor];
    centerYAnchor2 = [viewCopy centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v18 activateConstraints:v16];

    [(STActivityIndicatingWebView *)self setAlpha:0.0];
    activityView6 = [(STActivityIndicatingWebView *)self activityView];
    [activityView6 startAnimating];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v5 = [(STActivityIndicatingWebView *)self activityView:view];
  [v5 stopAnimating];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__STActivityIndicatingWebView_webView_didFinishNavigation___block_invoke;
  v6[3] = &unk_279B7C998;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.25];
}

@end