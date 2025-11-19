@interface STActivityIndicatingWebView
- (STActivityIndicatingWebView)initWithConfiguration:(id)a3;
- (void)didChangeUserInterfaceStyle;
- (void)hostActivityIndicatorInView:(id)a3;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation STActivityIndicatingWebView

- (STActivityIndicatingWebView)initWithConfiguration:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STActivityIndicatingWebView;
  v5 = [(STActivityIndicatingWebView *)&v17 initWithFrame:v4 configuration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
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
  v3 = [(STActivityIndicatingWebView *)self superview];

  if (v3)
  {
    v6 = [(STActivityIndicatingWebView *)self traitCollection];
    if ([v6 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v4 = ;
    v5 = [(STActivityIndicatingWebView *)self superview];
    [v5 setBackgroundColor:v4];
  }
}

- (void)hostActivityIndicatorInView:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STActivityIndicatingWebView *)self activityView];
  v6 = [v5 superview];

  if (!v6)
  {
    v7 = [(STActivityIndicatingWebView *)self activityView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(STActivityIndicatingWebView *)self activityView];
    [v4 addSubview:v8];

    v18 = MEMORY[0x277CCAAD0];
    v19 = [(STActivityIndicatingWebView *)self activityView];
    v9 = [v19 centerXAnchor];
    v10 = [v4 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v20[0] = v11;
    v12 = [(STActivityIndicatingWebView *)self activityView];
    v13 = [v12 centerYAnchor];
    v14 = [v4 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v18 activateConstraints:v16];

    [(STActivityIndicatingWebView *)self setAlpha:0.0];
    v17 = [(STActivityIndicatingWebView *)self activityView];
    [v17 startAnimating];
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = [(STActivityIndicatingWebView *)self activityView:a3];
  [v5 stopAnimating];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__STActivityIndicatingWebView_webView_didFinishNavigation___block_invoke;
  v6[3] = &unk_279B7C998;
  v6[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.25];
}

@end