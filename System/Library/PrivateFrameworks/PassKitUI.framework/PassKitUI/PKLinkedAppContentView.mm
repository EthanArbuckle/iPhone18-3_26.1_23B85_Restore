@interface PKLinkedAppContentView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKLinkedAppContentView)initWithCoder:(id)a3;
- (PKLinkedAppContentView)initWithFrame:(CGRect)a3;
- (PKLinkedAppContentView)initWithLinkedApplication:(id)a3;
- (PKLinkedAppViewDelegate)delegate;
- (id)_presentingViewController;
- (void)_cleanupViews;
- (void)_configureAppLockUpIfNecessary;
- (void)_layoutLoadingView;
- (void)_layoutLockupView;
- (void)_layoutNotAvailableView;
- (void)appLockupViewTapped;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)a3;
- (void)setLoadingText:(id)a3;
@end

@implementation PKLinkedAppContentView

- (PKLinkedAppContentView)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return [(PKLinkedAppContentView *)self init];
}

- (PKLinkedAppContentView)initWithFrame:(CGRect)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"This class is not NSCoding compliant", a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];

  return [(PKLinkedAppContentView *)self init];
}

- (PKLinkedAppContentView)initWithLinkedApplication:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKLinkedAppContentView;
  v5 = [(PKLinkedAppContentView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = v4;
    if (!v4)
    {
      v6 = [[PKLinkedApplication alloc] initWithStoreIDs:0 defaultLaunchURL:0];
    }

    objc_storeStrong(&v5->_linkedApplication, v6);
    if (!v4)
    {
    }

    [(PKLinkedApplication *)v5->_linkedApplication addObserver:v5];
    v7 = objc_alloc_init(MEMORY[0x1E698B3C8]);
    lockupView = v5->_lockupView;
    v5->_lockupView = v7;

    [(ASCLockupView *)v5->_lockupView setDelegate:v5];
    [(ASCLockupView *)v5->_lockupView setShowsPlaceholderContent:0];
    [(ASCLockupView *)v5->_lockupView setAutomaticallyPresentsProductDetails:0];
    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel_appLockupViewTapped];
    [(ASCLockupView *)v5->_lockupView addGestureRecognizer:v9];
    [(PKLinkedAppContentView *)v5 _configureAppLockUpIfNecessary];
  }

  return v5;
}

- (void)dealloc
{
  [(PKLinkedApplication *)self->_linkedApplication removeObserver:self];
  v3.receiver = self;
  v3.super_class = PKLinkedAppContentView;
  [(PKLinkedAppContentView *)&v3 dealloc];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PKLinkedAppContentView;
  [(PKLinkedAppContentView *)&v4 didMoveToWindow];
  v3 = [(PKLinkedAppContentView *)self window];

  if (v3)
  {
    [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  }
}

- (CGSize)intrinsicContentSize
{
  [(ASCLockupView *)self->_lockupView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(ASCLockupView *)self->_lockupView sizeThatFits:a3.width + -28.0, 1.79769313e308];
  v5 = v4 + 24.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKLinkedAppContentView;
  [(PKLinkedAppContentView *)&v4 layoutSubviews];
  v3 = [(PKLinkedApplication *)self->_linkedApplication state];
  switch(v3)
  {
    case 2:
      [(PKLinkedAppContentView *)self _layoutNotAvailableView];
      break;
    case 1:
      [(PKLinkedAppContentView *)self _layoutLockupView];
      break;
    case 0:
      [(PKLinkedAppContentView *)self _layoutLoadingView];
      break;
  }
}

- (void)_layoutLoadingView
{
  [(PKLinkedAppContentView *)self _cleanupViews];
  p_activityIndicator = &self->_activityIndicator;
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v6 = *p_activityIndicator;
    *p_activityIndicator = v5;

    [*p_activityIndicator sizeToFit];
    [*p_activityIndicator startAnimating];
    activityIndicator = *p_activityIndicator;
  }

  [(PKLinkedAppContentView *)self addSubview:activityIndicator];
  v7 = PKLocalizedString(&cfstr_Loading_1.isa);
  [(PKLinkedAppContentView *)self setLoadingText:v7];

  p_loadingLabel = &self->_loadingLabel;
  [(PKLinkedAppContentView *)self addSubview:self->_loadingLabel];
  [*p_activityIndicator frame];
  [(UILabel *)self->_loadingLabel frame];
  [*p_activityIndicator frame];
  v10 = v9;
  [(UILabel *)self->_loadingLabel frame];
  if (v10 <= v11)
  {
    v12 = &self->_loadingLabel;
  }

  else
  {
    v12 = &self->_activityIndicator;
  }

  [*v12 frame];
  [(PKLinkedAppContentView *)self bounds];
  UIRectCenteredIntegralRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  memset(&slice, 0, sizeof(slice));
  [*p_activityIndicator frame];
  v22 = v21;
  v32.origin.x = v14;
  v32.origin.y = v16;
  v32.size.width = v18;
  v32.size.height = v20;
  CGRectDivide(v32, &slice, &remainder, v22, CGRectMinXEdge);
  [(UILabel *)*p_loadingLabel frame];
  v24 = v23;
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  CGRectDivide(v33, &remainder, &v29, v24, CGRectMaxXEdge);
  UIRectCenteredYInRect();
  remainder.origin.x = v25;
  remainder.origin.y = v26;
  remainder.size.width = v27;
  remainder.size.height = v28;
  [*p_activityIndicator setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
  [(UILabel *)*p_loadingLabel setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
}

- (void)_layoutNotAvailableView
{
  [(PKLinkedAppContentView *)self _cleanupViews];
  v3 = PKLocalizedString(&cfstr_NotAvailable.isa);
  [(PKLinkedAppContentView *)self setLoadingText:v3];

  [(UILabel *)self->_loadingLabel setTextAlignment:1];
  [(PKLinkedAppContentView *)self addSubview:self->_loadingLabel];
  [(PKLinkedAppContentView *)self bounds];
  UIRectInset();
  [(UILabel *)self->_loadingLabel sizeThatFits:v4, v5];
  UIRectCenteredIntegralRect();
  loadingLabel = self->_loadingLabel;

  [(UILabel *)loadingLabel setFrame:?];
}

- (void)_layoutLockupView
{
  [(PKLinkedAppContentView *)self _cleanupViews];
  [(PKLinkedAppContentView *)self addSubview:self->_lockupView];
  [(PKLinkedAppContentView *)self _configureAppLockUpIfNecessary];
  [(PKLinkedAppContentView *)self bounds];
  v6 = CGRectInset(v5, 14.0, 12.0);
  [(ASCLockupView *)self->_lockupView sizeThatFits:v6.size.width, 1.79769313e308];
  lockupView = self->_lockupView;
  PKSizeAlignedInRect();

  [(ASCLockupView *)lockupView setFrame:?];
}

- (void)_cleanupViews
{
  [(UILabel *)self->_loadingLabel removeFromSuperview];
  [(UIActivityIndicatorView *)self->_activityIndicator removeFromSuperview];
  lockupView = self->_lockupView;

  [(ASCLockupView *)lockupView removeFromSuperview];
}

- (void)_configureAppLockUpIfNecessary
{
  v3 = [(PKLinkedApplication *)self->_linkedApplication isInstalled];
  v4 = v3;
  v5 = !v3;
  wasInstalledWhenLastConfigured = self->_wasInstalledWhenLastConfigured;
  v7 = [(ASCLockupView *)self->_lockupView request];

  if (v7)
  {
    v8 = wasInstalledWhenLastConfigured == v5;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    self->_wasInstalledWhenLastConfigured = v4;
    [(ASCLockupView *)self->_lockupView setLockup:0];
    [(ASCLockupView *)self->_lockupView setRequest:0];
    v9 = [(PKLinkedApplication *)self->_linkedApplication storeIdentifier];
    v10 = v9;
    if (v9)
    {
      v11 = _PKCreateASCLookupRequestForStoreID(v9, 0);
      [(ASCLockupView *)self->_lockupView setRequest:v11];
    }

    v12 = [(PKLinkedApplication *)self->_linkedApplication systemAppBundleIdentifiers];
    v13 = [v12 firstObject];

    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (!v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"Wallet App Lookup"];
      v16 = *MEMORY[0x1E698B350];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __56__PKLinkedAppContentView__configureAppLockUpIfNecessary__block_invoke;
      v17[3] = &unk_1E8020A38;
      v17[4] = self;
      [v15 _lockupRequestForBundleID:v13 withContext:v16 completionBlock:v17];
    }
  }
}

uint64_t __56__PKLinkedAppContentView__configureAppLockUpIfNecessary__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 408) setRequest:a2];
  }

  return result;
}

- (void)setLoadingText:(id)a3
{
  v4 = a3;
  loadingLabel = self->_loadingLabel;
  v13 = v4;
  if (!loadingLabel)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v8 = self->_loadingLabel;
    self->_loadingLabel = v7;

    v9 = self->_loadingLabel;
    v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC40]);
    [(UILabel *)v9 setFont:v10];

    [(UILabel *)self->_loadingLabel setNumberOfLines:3];
    v11 = self->_loadingLabel;
    v12 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UILabel *)v11 setTextColor:v12];

    v4 = v13;
    loadingLabel = self->_loadingLabel;
  }

  [(UILabel *)loadingLabel setText:v4];
  [(UILabel *)self->_loadingLabel sizeToFit];
}

- (void)appLockupViewTapped
{
  v3 = [(PKLinkedApplication *)self->_linkedApplication customProductPageIdentifier];

  if (v3)
  {
    linkedApplication = self->_linkedApplication;
    v6 = [(PKLinkedAppContentView *)self _presentingViewController];
    [(PKLinkedApplication *)linkedApplication openApplication:v6];
  }

  else
  {
    lockupView = self->_lockupView;

    [(ASCLockupView *)lockupView presentProductDetailsViewController];
  }
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  v5 = a3;
  if (![v5 state])
  {
    v4 = [(PKLinkedAppContentView *)self window];

    if (v4)
    {
      [v5 reloadApplicationStateIfNecessary];
    }
  }

  [(PKLinkedAppContentView *)self _configureAppLockUpIfNecessary];
  [(PKLinkedAppContentView *)self setNeedsLayout];
  [(PKLinkedAppContentView *)self lockupViewDidInvalidateIntrinsicContentSize:self->_lockupView];
}

- (id)_presentingViewController
{
  v2 = [(UIView *)self pkui_viewControllerFromResponderChain];
  v3 = [v2 pkui_frontMostViewController];

  return v3;
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: failed to load app with error: %@", &v6, 0xCu);
  }
}

- (void)lockupViewDidInvalidateIntrinsicContentSize:(id)a3
{
  if ([(PKLinkedApplication *)self->_linkedApplication state]== 1)
  {
    [(ASCLockupView *)self->_lockupView intrinsicContentSize];
    width = self->_previousIntrinsicContentSize.width;
    height = self->_previousIntrinsicContentSize.height;
    self->_previousIntrinsicContentSize.width = v7;
    self->_previousIntrinsicContentSize.height = v4;
    if (width != v7 || height != v4)
    {
      [(PKLinkedAppContentView *)self setNeedsLayout];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained appViewContentSizeChanged:self];
    }
  }
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  if (self->_lockupView == v4)
  {
    v5 = [(PKLinkedApplication *)self->_linkedApplication defaultLaunchURL];
    if (!v5 || ![(PKLinkedApplication *)self->_linkedApplication isInstalled])
    {
      goto LABEL_6;
    }

    v6 = [(PKLinkedApplication *)self->_linkedApplication state];

    if (v6 == 1)
    {
      v7 = MEMORY[0x1E698B3E0];
      v8 = PKLocalizedString(&cfstr_OpenButton.isa);
      v5 = [v7 textMetadataWithTitle:v8 subtitle:0];

      objc_initWeak(&location, self);
      v9 = objc_alloc(MEMORY[0x1E698B3A8]);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __53__PKLinkedAppContentView_lockupViewDidFinishRequest___block_invoke;
      v16 = &unk_1E8010998;
      objc_copyWeak(&v17, &location);
      v10 = [v9 initWithMetadata:v5 action:&v13];
      v11 = [(ASCLockupView *)v4 lockup:v13];
      v12 = [v11 lockupWithOffer:v10];
      [(ASCLockupView *)v4 setLockup:v12];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
LABEL_6:
    }
  }
}

void __53__PKLinkedAppContentView_lockupViewDidFinishRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[57];
    v4 = WeakRetained;
    v3 = [WeakRetained _presentingViewController];
    [v2 openApplication:v3];

    WeakRetained = v4;
  }
}

- (PKLinkedAppViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end