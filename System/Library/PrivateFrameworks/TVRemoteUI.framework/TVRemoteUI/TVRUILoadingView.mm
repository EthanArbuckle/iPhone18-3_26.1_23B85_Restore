@interface TVRUILoadingView
- (TVRUILoadingView)initWithFrame:(CGRect)a3;
- (UIView)effectiveNoContentView;
- (void)_configureHierarchy;
- (void)_updateUIFromCurrentState;
- (void)didStartLoadingWithTimeout:(double)a3;
- (void)loadingCompleteWithContent:(BOOL)a3;
- (void)reset;
- (void)setNoContentText:(id)a3;
@end

@implementation TVRUILoadingView

- (TVRUILoadingView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = TVRUILoadingView;
  result = [(TVRUILoadingView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_transitionToActivityIndicatorTimeout = 1.5;
  }

  return result;
}

- (void)didStartLoadingWithTimeout:(double)a3
{
  if (![(TVRUILoadingView *)self didConfigureHierarchy])
  {
    [(TVRUILoadingView *)self _configureHierarchy];
    [(TVRUILoadingView *)self setDidConfigureHierarchy:1];
  }

  if (![(TVRUILoadingView *)self isLoaded])
  {
    [(TVRUILoadingView *)self setIsLoading:1];
    v5 = [MEMORY[0x277CBEAA8] now];
    [(TVRUILoadingView *)self setLoadingStartTime:v5];
  }

  [(TVRUILoadingView *)self _updateUIFromCurrentState];
  [(TVRUILoadingView *)self transitionToActivityIndicatorTimeout];
  if (v6 > 0.0)
  {
    [(TVRUILoadingView *)self transitionToActivityIndicatorTimeout];
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__TVRUILoadingView_didStartLoadingWithTimeout___block_invoke;
    block[3] = &unk_279D87C20;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }

  if (a3 > 0.0)
  {
    objc_initWeak(&location, self);
    v9 = dispatch_time(0, (a3 * 1000000000.0));
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__TVRUILoadingView_didStartLoadingWithTimeout___block_invoke_2;
    v10[3] = &unk_279D87F18;
    objc_copyWeak(&v11, &location);
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

uint64_t __47__TVRUILoadingView_didStartLoadingWithTimeout___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (([WeakRetained isLoaded] & 1) == 0)
    {
      [v3 loadingCompleteWithContent:0];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)loadingCompleteWithContent:(BOOL)a3
{
  v3 = a3;
  [(TVRUILoadingView *)self setIsLoading:0];
  [(TVRUILoadingView *)self setIsLoaded:1];
  [(TVRUILoadingView *)self setHasContent:v3];

  [(TVRUILoadingView *)self _updateUIFromCurrentState];
}

- (void)reset
{
  [(TVRUILoadingView *)self setIsLoading:0];
  [(TVRUILoadingView *)self setIsLoaded:0];
  [(TVRUILoadingView *)self setHasContent:0];
  [(TVRUILoadingView *)self setLoadingStartTime:0];
  [(TVRUILoadingView *)self setDidTimeoutWaitingForLoad:0];

  [(TVRUILoadingView *)self _updateUIFromCurrentState];
}

- (void)setNoContentText:(id)a3
{
  objc_storeStrong(&self->_noContentText, a3);
  v5 = a3;
  v6 = [(TVRUILoadingView *)self noContentLabel];
  [v6 setText:v5];
}

- (void)_updateUIFromCurrentState
{
  if (![(TVRUILoadingView *)self didTimeoutWaitingForLoad])
  {
    v3 = [(TVRUILoadingView *)self loadingStartTime];
    if (v3 && [(TVRUILoadingView *)self isLoading]&& ![(TVRUILoadingView *)self hasContent])
    {
      v8 = [(TVRUILoadingView *)self isLoaded];

      if (!v8)
      {
        v9 = [MEMORY[0x277CBEAA8] now];
        v10 = [(TVRUILoadingView *)self loadingStartTime];
        [v9 timeIntervalSinceDate:v10];
        v12 = v11;

        [(TVRUILoadingView *)self transitionToActivityIndicatorTimeout];
        if (v12 + 0.4 >= v13)
        {
          [(TVRUILoadingView *)self setDidTimeoutWaitingForLoad:1];
        }
      }
    }

    else
    {
    }
  }

  if ([(TVRUILoadingView *)self didTimeoutWaitingForLoad]&& [(TVRUILoadingView *)self isLoading])
  {
    v4 = [(TVRUILoadingView *)self isLoaded];
    v5 = [(TVRUILoadingView *)self activityIndicator];
    [v5 setHidden:v4];

    if (v4)
    {
      goto LABEL_12;
    }

    v6 = [(TVRUILoadingView *)self activityIndicator];
    [v6 startAnimating];
  }

  else
  {
    v6 = [(TVRUILoadingView *)self activityIndicator];
    [v6 setHidden:1];
  }

LABEL_12:
  if ([(TVRUILoadingView *)self isLoaded])
  {
    v7 = [(TVRUILoadingView *)self hasContent];
  }

  else
  {
    v7 = 1;
  }

  v14 = [(TVRUILoadingView *)self effectiveNoContentView];
  [v14 setHidden:v7];
}

- (void)_configureHierarchy
{
  v46 = *MEMORY[0x277D85DE8];
  [(TVRUILoadingView *)self setUserInteractionEnabled:0];
  v3 = self;
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [(UILabel *)v4 setFont:v5];

  [(UILabel *)v4 setAdjustsFontForContentSizeCategory:1];
  v6 = [MEMORY[0x277D75348] lightTextColor];
  [(UILabel *)v4 setTextColor:v6];

  v7 = [(TVRUILoadingView *)v3 noContentText];
  [(UILabel *)v4 setText:v7];

  v8 = [(TVRUILoadingView *)v3 noContentView];
  v9 = v8;
  v37 = v4;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;

  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v43 = v11;
  v44 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  v12 = v44;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:2];
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(TVRUILoadingView *)v3 addSubview:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v15);
  }

  v30 = MEMORY[0x277CCAAD0];
  v36 = [v11 centerXAnchor];
  v35 = [(TVRUILoadingView *)v3 centerXAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v42[0] = v34;
  v32 = [v11 centerYAnchor];
  v31 = [(TVRUILoadingView *)v3 centerYAnchor];
  v19 = [v32 constraintEqualToAnchor:v31];
  v42[1] = v19;
  v20 = [(UIActivityIndicatorView *)v12 centerXAnchor];
  v21 = [(TVRUILoadingView *)v3 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v42[2] = v22;
  v23 = [(UIActivityIndicatorView *)v12 centerYAnchor];
  [(TVRUILoadingView *)v3 centerYAnchor];
  v24 = v33 = v11;
  v25 = [v23 constraintEqualToAnchor:v24];
  v42[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v30 activateConstraints:v26];

  noContentLabel = v3->_noContentLabel;
  v3->_noContentLabel = v37;
  v28 = v37;

  activityIndicator = v3->_activityIndicator;
  v3->_activityIndicator = v12;

  [(TVRUILoadingView *)v3 _updateUIFromCurrentState];
}

- (UIView)effectiveNoContentView
{
  v3 = [(TVRUILoadingView *)self noContentView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(TVRUILoadingView *)self noContentLabel];
  }

  v6 = v5;

  return v6;
}

@end