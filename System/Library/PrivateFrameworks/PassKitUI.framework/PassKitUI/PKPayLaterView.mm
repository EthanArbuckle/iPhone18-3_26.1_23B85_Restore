@interface PKPayLaterView
+ (void)showSpinnerView:(BOOL)view spinnerView:(id)spinnerView showWebView:(BOOL)webView webView:(id)a6 animate:(BOOL)animate completion:(id)completion;
- (CGSize)intrinsicContentSize;
- (PKPayLaterView)initWithAmount:(NSDecimalNumber *)amount currencyCode:(NSString *)currencyCode;
- (id)_configuration;
- (id)_javaScriptQueryForUpdatedConfigurationProperty:(unint64_t)property configuration:(id)configuration;
- (id)_webViewConfiguration;
- (void)_recalculateSizeWithCompletion:(id)completion;
- (void)_registerForUserInterfaceStyleChanges;
- (void)_reloadViewContentsForProperty:(unint64_t)property completion:(id)completion;
- (void)_setupWebView:(id)view completion:(id)completion;
- (void)clearWebViewCache;
- (void)didMoveToWindow;
- (void)setAction:(PKPayLaterAction)action;
- (void)setAmount:(NSDecimalNumber *)amount;
- (void)setCurrencyCode:(NSString *)currencyCode;
- (void)setDisplayStyle:(PKPayLaterDisplayStyle)displayStyle;
- (void)setEnvironmentType:(unint64_t)type;
- (void)setTheme:(unint64_t)theme;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewDidClose:(id)close;
@end

@implementation PKPayLaterView

- (PKPayLaterView)initWithAmount:(NSDecimalNumber *)amount currencyCode:(NSString *)currencyCode
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = amount;
  v8 = currencyCode;
  v25.receiver = self;
  v25.super_class = PKPayLaterView;
  v9 = [(PKPayLaterView *)&v25 init];
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Creating PKPayLaterView with amount %@ and currencyCode %@", buf, 0x16u);
    }

    mEMORY[0x1E69B8B38] = [MEMORY[0x1E69B8B38] sharedInstance];
    v24 = v7;
    utilities = v9->_utilities;
    v9->_utilities = mEMORY[0x1E69B8B38];

    [(PKPayLaterView *)v9 _registerForUserInterfaceStyleChanges];
    v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v9->_spinner;
    v9->_spinner = v13;

    [(UIActivityIndicatorView *)v9->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v9->_spinner startAnimating];
    [(UIActivityIndicatorView *)v9->_spinner sizeToFit];
    [(PKPayLaterView *)v9 addSubview:v9->_spinner];
    [PKPayLaterView showSpinnerView:1 spinnerView:v9->_spinner showWebView:0 webView:v9->_webView animate:0 completion:0];
    objc_storeStrong(&v9->_amount, amount);
    objc_storeStrong(&v9->_currencyCode, currencyCode);
    v9->_displayStyle = 0;
    v9->_action = 0;
    v9->_theme = 0;
    v9->_environmentType = 0;
    v15 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIActivityIndicatorView *)v9->_spinner centerXAnchor];
    centerXAnchor2 = [(PKPayLaterView *)v9 centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v26[0] = v18;
    centerYAnchor = [(UIActivityIndicatorView *)v9->_spinner centerYAnchor];
    centerYAnchor2 = [(PKPayLaterView *)v9 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v26[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    [v15 activateConstraints:v22];

    v7 = v24;
  }

  return v9;
}

- (void)setAmount:(NSDecimalNumber *)amount
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = amount;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_amount, amount);
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Did update PKPayLaterView amount to %@", &v7, 0xCu);
    }

    [(PKPayLaterView *)self _reloadViewContentsForProperty:1 completion:0];
  }
}

- (void)setCurrencyCode:(NSString *)currencyCode
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = currencyCode;
  v6 = self->_currencyCode;
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    if (v7 && v8)
    {
      v10 = [(NSString *)v7 isEqualToString:v8];

      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_currencyCode, currencyCode);
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Did update PKPayLaterView currencyCode to %@", &v12, 0xCu);
    }

    [(PKPayLaterView *)self _reloadViewContentsForProperty:2 completion:0];
  }

LABEL_11:
}

- (void)setDisplayStyle:(PKPayLaterDisplayStyle)displayStyle
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_displayStyle != displayStyle)
  {
    self->_displayStyle = displayStyle;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PKPayLaterDisplayStyleToString();
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Did update PKPayLaterView displayStyle to %@", &v6, 0xCu);
    }

    [(PKPayLaterView *)self _reloadViewContentsForProperty:16 completion:0];
  }
}

- (void)setAction:(PKPayLaterAction)action
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_action != action)
  {
    self->_action = action;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PKPayLaterActionToString();
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Did update PKPayLaterView action to %@", &v6, 0xCu);
    }

    [(PKPayLaterView *)self _reloadViewContentsForProperty:64 completion:0];
  }
}

- (void)setTheme:(unint64_t)theme
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_theme != theme)
  {
    self->_theme = theme;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PKPayLaterThemeToString();
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Did update PKPayLaterView theme to %@", &v6, 0xCu);
    }

    [(PKPayLaterView *)self _reloadViewContentsForProperty:32 completion:0];
  }
}

- (void)setEnvironmentType:(unint64_t)type
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_environmentType != type)
  {
    self->_environmentType = type;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PKPayLaterEnvironmentTypeToString();
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Did update PKPayLaterView environmentType to %@", &v6, 0xCu);
    }

    [(PKPayLaterView *)self _reloadViewContentsForProperty:128 completion:0];
  }
}

- (void)_reloadViewContentsForProperty:(unint64_t)property completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  window = [(PKPayLaterView *)self window];

  if (window)
  {
    _configuration = [(PKPayLaterView *)self _configuration];
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PKPayLaterMerchandisingConfigurationPropertyToString();
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = _configuration;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPayLaterView reloading for property %@ and configuration %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke;
    aBlock[3] = &unk_1E8026EB0;
    objc_copyWeak(&v17, buf);
    v16 = completionCopy;
    v11 = _Block_copy(aBlock);
    objc_copyWeak(v14, buf);
    v13 = v11;
    v14[1] = property;
    v12 = _configuration;
    PKPayLaterValidateConfiguration();

    objc_destroyWeak(v14);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained && ([*(WeakRetained + 63) payLaterView:WeakRetained didUpdateViewWithInvalidProperties:v6], (v8[424] & 1) != 0))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke_2;
    v10[3] = &unk_1E8020C68;
    objc_copyWeak(&v13, (a1 + 40));
    v14 = v5 == 0;
    v12 = *(a1 + 32);
    v11 = v5;
    [v8 _recalculateSizeWithCompletion:v10];

    objc_destroyWeak(&v13);
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v5);
    }
  }
}

void __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[52];
    v5 = *(a1 + 56);
    v6 = WeakRetained[51];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke_3;
    v7[3] = &unk_1E8010E20;
    v9 = *(a1 + 40);
    v8 = *(a1 + 32);
    [PKPayLaterView showSpinnerView:0 spinnerView:v4 showWebView:v5 webView:v6 animate:1 completion:v7];
  }
}

uint64_t __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if (v5)
  {
    v9 = *(*(a1 + 48) + 16);
LABEL_5:
    v9();
    goto LABEL_13;
  }

  v10 = [WeakRetained _javaScriptQueryForUpdatedConfigurationProperty:*(a1 + 64) configuration:*(a1 + 32)];
  if ([v10 length] && *(*(a1 + 40) + 408))
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKPayLaterView evaluating javascript query %@", buf, 0xCu);
    }

    v12 = v8[51];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke_19;
    v13[3] = &unk_1E8026ED8;
    v14 = *(a1 + 48);
    [v12 evaluateJavaScript:v10 completionHandler:v13];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_13:
}

void __60__PKPayLaterView__reloadViewContentsForProperty_completion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Javascript query evaluation response %@, error: %@", buf, 0x16u);
  }

  if (v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BBBC8];
    v10 = *MEMORY[0x1E696AA08];
    v13[0] = *MEMORY[0x1E696A578];
    v13[1] = v10;
    v14[0] = @"Error updating view with configuration";
    v14[1] = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v12 = [v8 errorWithDomain:v9 code:1 userInfo:v11];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)clearWebViewCache
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPayLaterView clearing website data store cache", buf, 2u);
  }

  defaultDataStore = [MEMORY[0x1E69853B8] defaultDataStore];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6985440], *MEMORY[0x1E6985458], 0}];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  [defaultDataStore removeDataOfTypes:v5 modifiedSince:v6 completionHandler:&__block_literal_global_257];

  [(PKPayLaterMerchandisingUtilities *)self->_utilities clearWebRequestCache];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = PKPayLaterView;
  [(PKPayLaterView *)&v7 didMoveToWindow];
  window = [(PKPayLaterView *)self window];

  if (window)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __33__PKPayLaterView_didMoveToWindow__block_invoke;
    v4[3] = &unk_1E8011338;
    objc_copyWeak(&v5, &location);
    [(PKPayLaterView *)self _reloadViewContentsForProperty:255 completion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __33__PKPayLaterView_didMoveToWindow__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_alloc(MEMORY[0x1E69853A0]);
    v6 = [WeakRetained _webViewConfiguration];
    v7 = [v5 initWithFrame:v6 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v8 = WeakRetained[51];
    WeakRetained[51] = v7;

    [WeakRetained[51] setUIDelegate:WeakRetained];
    [WeakRetained[51] setTranslatesAutoresizingMaskIntoConstraints:0];
    [WeakRetained[51] setNavigationDelegate:WeakRetained];
    v9 = WeakRetained[51];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__PKPayLaterView_didMoveToWindow__block_invoke_2;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, (a1 + 32));
    [WeakRetained _setupWebView:v9 completion:v10];
    objc_destroyWeak(&v11);
  }
}

void __33__PKPayLaterView_didMoveToWindow__block_invoke_2(uint64_t a1)
{
  v17[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addSubview:WeakRetained[51]];
    v12 = MEMORY[0x1E696ACD8];
    v16 = [v2[51] topAnchor];
    v15 = [v2 topAnchor];
    v14 = [v16 constraintEqualToAnchor:v15];
    v17[0] = v14;
    v13 = [v2[51] leadingAnchor];
    v3 = [v2 leadingAnchor];
    v4 = [v13 constraintEqualToAnchor:v3];
    v17[1] = v4;
    v5 = [v2[51] bottomAnchor];
    v6 = [v2 bottomAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v17[2] = v7;
    v8 = [v2[51] trailingAnchor];
    v9 = [v2 trailingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v17[3] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    [v12 activateConstraints:v11];

    [v2 setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  if (self->_didFinishInitialViewLoad)
  {
    [(WKWebView *)self->_webView alpha];
    if (v3 > 0.0)
    {
      p_size = &self->_size;
LABEL_9:
      width = p_size->width;
      height = p_size->height;
      goto LABEL_10;
    }

    [(UIActivityIndicatorView *)self->_spinner alpha];
    if (v10 <= 0.0)
    {
      p_size = MEMORY[0x1E695F060];
      goto LABEL_9;
    }

    spinner = self->_spinner;
  }

  else
  {
    spinner = self->_spinner;
  }

  [(UIActivityIndicatorView *)spinner frame];
  width = v6;
  height = v8;
LABEL_10:
  result.height = height;
  result.width = width;
  return result;
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterView finished loading", buf, 2u);
  }

  objc_initWeak(buf, self);
  self->_didFinishInitialViewLoad = 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PKPayLaterView_webView_didFinishNavigation___block_invoke;
  v9[3] = &unk_1E8010998;
  objc_copyWeak(&v10, buf);
  [(PKPayLaterView *)self _recalculateSizeWithCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __46__PKPayLaterView_webView_didFinishNavigation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [PKPayLaterView showSpinnerView:0 spinnerView:WeakRetained[52] showWebView:1 webView:WeakRetained[51] animate:1 completion:0];
    WeakRetained = v2;
  }
}

- (void)webViewDidClose:(id)close
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPayLaterView did close web view", v4, 2u);
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  utilities = self->_utilities;
  environmentType = self->_environmentType;
  actionCopy = action;
  v11 = [(PKPayLaterMerchandisingUtilities *)utilities merchandisingBaseURLForEnviornmentType:environmentType];
  request = [actionCopy request];

  v13 = [request URL];

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v13;
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKPayLaterView deciding policy for action: %@", &v22, 0xCu);
  }

  host = [v13 host];
  host2 = [v11 host];
  defaultWorkspace = host;
  v18 = host2;
  v19 = v18;
  if (defaultWorkspace == v18)
  {

    v21 = 1;
LABEL_12:

    goto LABEL_14;
  }

  if (!defaultWorkspace || !v18)
  {

    goto LABEL_10;
  }

  v20 = [defaultWorkspace isEqualToString:v18];

  if ((v20 & 1) == 0)
  {
LABEL_10:
    if (!v13)
    {
      v21 = 0;
      goto LABEL_14;
    }

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openURL:v13 withOptions:0];
    v21 = 0;
    goto LABEL_12;
  }

  v21 = 1;
LABEL_14:
  handlerCopy[2](handlerCopy, v21);
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  v28 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  name = [messageCopy name];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = name;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPayLaterView received script message with name %@", &v26, 0xCu);
  }

  v8 = name;
  v9 = v8;
  if (v8 == @"applePayDetails" || v8 && (v10 = [(__CFString *)v8 isEqualToString:@"applePayDetails"], v9, v10))
  {
    body = [messageCopy body];
    if (body)
    {
      v12 = *MEMORY[0x1E69BC050];
      v13 = v9;
      v14 = v12;
      v15 = v14;
      if (v13 == v14)
      {

LABEL_16:
        v17 = body;
        if (v17 != @"show-modal")
        {
          v18 = v17;
          v19 = [(__CFString *)v17 isEqualToString:@"show-modal"];

          if (!v19)
          {
            goto LABEL_28;
          }
        }

        v20 = [PKPayLaterMerchandisingModalViewController alloc];
        _configuration = [(PKPayLaterView *)self _configuration];
        v13 = [(PKPayLaterMerchandisingModalViewController *)v20 initWithConfiguration:_configuration];

        v22 = [[PKNavigationController alloc] initWithRootViewController:v13];
        v23 = PKUIKeyWindow();
        v24 = v23;
        if (v23)
        {
          rootViewController = [v23 rootViewController];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 138412290;
            v27 = rootViewController;
            _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPayLaterView presenting modal view controller with rootVC %@", &v26, 0xCu);
          }

          [rootViewController presentViewController:v22 animated:1 completion:0];
        }

        else
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPayLaterView cannot find window to present modal view controller", &v26, 2u);
          }

          rootViewController = v7;
        }

        goto LABEL_27;
      }

      if (v13 && v14)
      {
        v16 = [(PKPayLaterMerchandisingModalViewController *)v13 isEqualToString:v14];

        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPayLaterView received script message with a nil message body", &v26, 2u);
      }

      v13 = v7;
    }

LABEL_27:

LABEL_28:
  }
}

- (id)_javaScriptQueryForUpdatedConfigurationProperty:(unint64_t)property configuration:(id)configuration
{
  configurationCopy = configuration;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (property)
  {
    v8 = 1;
    v9 = 1;
    do
    {
      if ((v9 & property) != 0)
      {
        v10 = [configurationCopy stringValueForProperty:v9];
        v11 = PKPayLaterMerchandisingConfigurationPropertyToString();
        v12 = [(PKPayLaterMerchandisingUtilities *)self->_utilities generateJavaScriptQueryForUpdatedProperty:v11 newValue:v10];
        [v7 safelyAddObject:v12];
      }

      v9 = 1 << v8++;
    }

    while (v9 <= property);
  }

  v13 = [v7 componentsJoinedByString:@" "];

  return v13;
}

- (void)_registerForUserInterfaceStyleChanges
{
  v8[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKPayLaterView__registerForUserInterfaceStyleChanges__block_invoke;
  v5[3] = &unk_1E8026F28;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v4 = [(PKPayLaterView *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__PKPayLaterView__registerForUserInterfaceStyleChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = [v5 userInterfaceStyle];
  if (v8 != v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v7;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKPayLaterView did change trait collection to %ld", &v12, 0xCu);
      }

      if (v7 >= 3)
      {
        v11 = *(*(a1 + 32) + 520);
      }

      else
      {
        v11 = v7;
      }

      [WeakRetained setTheme:v11];
    }
  }
}

+ (void)showSpinnerView:(BOOL)view spinnerView:(id)spinnerView showWebView:(BOOL)webView webView:(id)a6 animate:(BOOL)animate completion:(id)completion
{
  animateCopy = animate;
  webViewCopy = webView;
  viewCopy = view;
  spinnerViewCopy = spinnerView;
  v14 = a6;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKPayLaterView_showSpinnerView_spinnerView_showWebView_webView_animate_completion___block_invoke;
  aBlock[3] = &unk_1E8026F50;
  v16 = v14;
  v29 = v16;
  v31 = webViewCopy;
  v17 = spinnerViewCopy;
  v30 = v17;
  v32 = viewCopy;
  v18 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __85__PKPayLaterView_showSpinnerView_spinnerView_showWebView_webView_animate_completion___block_invoke_2;
  v26[3] = &unk_1E8010B50;
  v19 = completionCopy;
  v27 = v19;
  v20 = _Block_copy(v26);
  if (animateCopy)
  {
    v21 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __85__PKPayLaterView_showSpinnerView_spinnerView_showWebView_webView_animate_completion___block_invoke_3;
    v24[3] = &unk_1E8010B50;
    v25 = v18;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__PKPayLaterView_showSpinnerView_spinnerView_showWebView_webView_animate_completion___block_invoke_4;
    v22[3] = &unk_1E8010AD8;
    v23 = v20;
    [v21 pkui_animateUsingOptions:4 animations:v24 completion:v22];
  }

  else
  {
    v18[2](v18);
    v20[2](v20);
  }
}

uint64_t __85__PKPayLaterView_showSpinnerView_spinnerView_showWebView_webView_animate_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);

  return [v2 setAlpha:v3];
}

uint64_t __85__PKPayLaterView_showSpinnerView_spinnerView_showWebView_webView_animate_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __85__PKPayLaterView_showSpinnerView_spinnerView_showWebView_webView_animate_completion___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)_webViewConfiguration
{
  v3 = *MEMORY[0x1E69BC050];
  v4 = objc_alloc_init(MEMORY[0x1E6985350]);
  [v4 addScriptMessageHandler:self name:v3];
  v5 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v6 = objc_alloc_init(MEMORY[0x1E6985340]);
  [v5 setProcessPool:v6];

  [v5 setApplicationNameForUserAgent:v3];
  v7 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v5 setPreferences:v7];

  [v5 setUserContentController:v4];
  defaultWebpagePreferences = [v5 defaultWebpagePreferences];
  [defaultWebpagePreferences setAllowsContentJavaScript:1];

  return v5;
}

- (void)_setupWebView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v8 = [(PKPayLaterMerchandisingUtilities *)self->_utilities merchandisingBaseURLForEnviornmentType:self->_environmentType];
  utilities = self->_utilities;
  _configuration = [(PKPayLaterView *)self _configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__PKPayLaterView__setupWebView_completion___block_invoke;
  v13[3] = &unk_1E80132D8;
  v14 = viewCopy;
  v15 = v8;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = viewCopy;
  [(PKPayLaterMerchandisingUtilities *)utilities merchandisingWidgetHTMLWithConfiguration:_configuration completion:v13];
}

void __43__PKPayLaterView__setupWebView_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PKPayLaterView__setupWebView_completion___block_invoke_2;
  v6[3] = &unk_1E8011D78;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __43__PKPayLaterView__setupWebView_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setOpaque:0];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  [*(a1 + 32) setAllowsLinkPreview:0];
  v4 = [*(a1 + 32) loadHTMLString:*(a1 + 40) baseURL:*(a1 + 48)];
  v8 = [*(a1 + 32) scrollView];
  [v8 setScrollEnabled:0];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:v5];

  v6 = [v8 pinchGestureRecognizer];
  [v6 setEnabled:0];

  [v8 setShowsHorizontalScrollIndicator:0];
  [v8 setShowsVerticalScrollIndicator:0];
  [v8 setMultipleTouchEnabled:0];
  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

- (void)_recalculateSizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3010000000;
  v19[3] = &unk_1BE347799;
  size = self->_size;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke;
  v17[3] = &unk_1E8019220;
  v17[4] = self;
  [v5 addOperation:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_64;
  v15[3] = &unk_1E801D128;
  v15[4] = self;
  objc_copyWeak(&v16, &location);
  v15[5] = v19;
  [v5 addOperation:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_69;
  v13[3] = &unk_1E801D128;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  v13[5] = v19;
  [v5 addOperation:v13];
  null = [MEMORY[0x1E695DFB0] null];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_75;
  v9[3] = &unk_1E8026F78;
  objc_copyWeak(&v12, &location);
  v7 = completionCopy;
  v10 = v7;
  v11 = v19;
  v8 = [v5 evaluateWithInput:null completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
  _Block_object_dispose(v19, 8);
}

void __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 408);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_2;
  v11[3] = &unk_1E801D0D8;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 evaluateJavaScript:@"document.readyState" completionHandler:v11];
}

void __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a2 stringValue];
  v4 = v3;
  if (v3 != @"complete" && v3)
  {
    [(__CFString *)v3 caseInsensitiveCompare:@"complete"];
  }

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPayLaterView readyState: %@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 408);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_2_68;
  v14[3] = &unk_1E801D100;
  objc_copyWeak(&v18, (a1 + 48));
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v13 = *(a1 + 40);
  v15 = v12;
  v17 = v13;
  [v10 evaluateJavaScript:@"document.querySelector('apple-pay-merchandising').getBoundingClientRect().height" completionHandler:v14];

  objc_destroyWeak(&v18);
}

void __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_2_68(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterView encountered error getting height %@", &v12, 0xCu);
      }
    }

    else
    {
      [v5 floatValue];
      *(*(*(a1 + 48) + 8) + 40) = fmin(v9, 350.0);
      v8 = PKLogFacilityTypeGetObject();
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v11 = WeakRetained[55];
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterView recalcuated height to %f from old height %f", &v12, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_69(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 408);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_2_73;
  v14[3] = &unk_1E801D100;
  objc_copyWeak(&v18, (a1 + 48));
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v13 = *(a1 + 40);
  v15 = v12;
  v17 = v13;
  [v10 evaluateJavaScript:@"document.querySelector('apple-pay-merchandising').getBoundingClientRect().width" completionHandler:v14];

  objc_destroyWeak(&v18);
}

void __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_2_73(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterView encountered error getting width %@", &v12, 0xCu);
      }
    }

    else
    {
      [v5 floatValue];
      *(*(*(a1 + 48) + 8) + 32) = v9;
      v8 = PKLogFacilityTypeGetObject();
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 48) + 8) + 32);
      v11 = WeakRetained[54];
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterView recalcuated width to %f from old width %f", &v12, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_75(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v5 isCanceled])
    {
      v7 = *(WeakRetained + 56) + 1;
      *(WeakRetained + 56) = v7;
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v21 = 25;
        v22 = 2048;
        v23 = v7;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterView WKWebView document wasn't ready to load. Trying again in %ld miliseconds. Retry count %ld", buf, 0x16u);
      }

      v9 = dispatch_time(0, 25000000);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __49__PKPayLaterView__recalculateSizeWithCompletion___block_invoke_76;
      v18[3] = &unk_1E8010DD0;
      v18[4] = WeakRetained;
      v19 = *(a1 + 32);
      dispatch_after(v9, MEMORY[0x1E69E96A0], v18);
    }

    else
    {
      v10 = *(*(a1 + 40) + 8);
      v11 = *(WeakRetained + 54);
      v12 = *(WeakRetained + 55);
      if (*(v10 + 32) != v11 || *(v10 + 40) != v12)
      {
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v25.width = v11;
          v25.height = v12;
          v15 = NSStringFromCGSize(v25);
          v16 = NSStringFromCGSize(*(*(*(a1 + 40) + 8) + 32));
          *buf = 138412546;
          v21 = v15;
          v22 = 2112;
          v23 = v16;
          _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKPayLaterView did update size from %@ to %@", buf, 0x16u);
        }

        *(WeakRetained + 27) = *(*(*(a1 + 40) + 8) + 32);
        [WeakRetained invalidateIntrinsicContentSize];
        [*(WeakRetained + 58) payLaterViewDidUpdateHeight:WeakRetained];
      }

      v17 = *(a1 + 32);
      if (v17)
      {
        (*(v17 + 16))();
      }
    }
  }
}

- (id)_configuration
{
  v3 = objc_alloc(MEMORY[0x1E69B8B30]);
  amount = [(PKPayLaterView *)self amount];
  currencyCode = [(PKPayLaterView *)self currencyCode];
  v6 = [v3 initWithAmount:amount currency:currencyCode displayStyle:-[PKPayLaterView displayStyle](self action:"displayStyle") theme:-[PKPayLaterView action](self environmentType:{"action"), -[PKPayLaterView theme](self, "theme"), -[PKPayLaterView environmentType](self, "environmentType")}];

  return v6;
}

@end