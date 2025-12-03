@interface TVRUILoadingView
- (TVRUILoadingView)initWithFrame:(CGRect)frame;
- (UIView)effectiveNoContentView;
- (void)_configureHierarchy;
- (void)_updateUIFromCurrentState;
- (void)didStartLoadingWithTimeout:(double)timeout;
- (void)loadingCompleteWithContent:(BOOL)content;
- (void)reset;
- (void)setNoContentText:(id)text;
@end

@implementation TVRUILoadingView

- (TVRUILoadingView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TVRUILoadingView;
  result = [(TVRUILoadingView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_transitionToActivityIndicatorTimeout = 1.5;
  }

  return result;
}

- (void)didStartLoadingWithTimeout:(double)timeout
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

  if (timeout > 0.0)
  {
    objc_initWeak(&location, self);
    v9 = dispatch_time(0, (timeout * 1000000000.0));
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

- (void)loadingCompleteWithContent:(BOOL)content
{
  contentCopy = content;
  [(TVRUILoadingView *)self setIsLoading:0];
  [(TVRUILoadingView *)self setIsLoaded:1];
  [(TVRUILoadingView *)self setHasContent:contentCopy];

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

- (void)setNoContentText:(id)text
{
  objc_storeStrong(&self->_noContentText, text);
  textCopy = text;
  noContentLabel = [(TVRUILoadingView *)self noContentLabel];
  [noContentLabel setText:textCopy];
}

- (void)_updateUIFromCurrentState
{
  if (![(TVRUILoadingView *)self didTimeoutWaitingForLoad])
  {
    loadingStartTime = [(TVRUILoadingView *)self loadingStartTime];
    if (loadingStartTime && [(TVRUILoadingView *)self isLoading]&& ![(TVRUILoadingView *)self hasContent])
    {
      isLoaded = [(TVRUILoadingView *)self isLoaded];

      if (!isLoaded)
      {
        v9 = [MEMORY[0x277CBEAA8] now];
        loadingStartTime2 = [(TVRUILoadingView *)self loadingStartTime];
        [v9 timeIntervalSinceDate:loadingStartTime2];
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
    isLoaded2 = [(TVRUILoadingView *)self isLoaded];
    activityIndicator = [(TVRUILoadingView *)self activityIndicator];
    [activityIndicator setHidden:isLoaded2];

    if (isLoaded2)
    {
      goto LABEL_12;
    }

    activityIndicator2 = [(TVRUILoadingView *)self activityIndicator];
    [activityIndicator2 startAnimating];
  }

  else
  {
    activityIndicator2 = [(TVRUILoadingView *)self activityIndicator];
    [activityIndicator2 setHidden:1];
  }

LABEL_12:
  if ([(TVRUILoadingView *)self isLoaded])
  {
    hasContent = [(TVRUILoadingView *)self hasContent];
  }

  else
  {
    hasContent = 1;
  }

  effectiveNoContentView = [(TVRUILoadingView *)self effectiveNoContentView];
  [effectiveNoContentView setHidden:hasContent];
}

- (void)_configureHierarchy
{
  v46 = *MEMORY[0x277D85DE8];
  [(TVRUILoadingView *)self setUserInteractionEnabled:0];
  selfCopy = self;
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [(UILabel *)v4 setFont:v5];

  [(UILabel *)v4 setAdjustsFontForContentSizeCategory:1];
  lightTextColor = [MEMORY[0x277D75348] lightTextColor];
  [(UILabel *)v4 setTextColor:lightTextColor];

  noContentText = [(TVRUILoadingView *)selfCopy noContentText];
  [(UILabel *)v4 setText:noContentText];

  noContentView = [(TVRUILoadingView *)selfCopy noContentView];
  v9 = noContentView;
  v37 = v4;
  if (noContentView)
  {
    v10 = noContentView;
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
        [(TVRUILoadingView *)selfCopy addSubview:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v15);
  }

  v30 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v11 centerXAnchor];
  centerXAnchor2 = [(TVRUILoadingView *)selfCopy centerXAnchor];
  v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v42[0] = v34;
  centerYAnchor = [v11 centerYAnchor];
  centerYAnchor2 = [(TVRUILoadingView *)selfCopy centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v42[1] = v19;
  centerXAnchor3 = [(UIActivityIndicatorView *)v12 centerXAnchor];
  centerXAnchor4 = [(TVRUILoadingView *)selfCopy centerXAnchor];
  v22 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v42[2] = v22;
  centerYAnchor3 = [(UIActivityIndicatorView *)v12 centerYAnchor];
  [(TVRUILoadingView *)selfCopy centerYAnchor];
  v24 = v33 = v11;
  v25 = [centerYAnchor3 constraintEqualToAnchor:v24];
  v42[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v30 activateConstraints:v26];

  noContentLabel = selfCopy->_noContentLabel;
  selfCopy->_noContentLabel = v37;
  v28 = v37;

  activityIndicator = selfCopy->_activityIndicator;
  selfCopy->_activityIndicator = v12;

  [(TVRUILoadingView *)selfCopy _updateUIFromCurrentState];
}

- (UIView)effectiveNoContentView
{
  noContentView = [(TVRUILoadingView *)self noContentView];
  v4 = noContentView;
  if (noContentView)
  {
    noContentLabel = noContentView;
  }

  else
  {
    noContentLabel = [(TVRUILoadingView *)self noContentLabel];
  }

  v6 = noContentLabel;

  return v6;
}

@end