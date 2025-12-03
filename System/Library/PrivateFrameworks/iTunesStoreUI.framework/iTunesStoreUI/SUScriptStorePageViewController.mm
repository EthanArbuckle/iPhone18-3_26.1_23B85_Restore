@interface SUScriptStorePageViewController
+ (BOOL)copyURLStrings:(id *)strings forValue:(id)value;
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (BOOL)_isSegmentedControlValid:(id)valid;
- (BOOL)doubleTapEnabled;
- (BOOL)flashesScrollIndicators;
- (BOOL)scrollingEnabled;
- (BOOL)shouldInvalidateForLowMemory;
- (BOOL)shouldLoadProgressively;
- (BOOL)showsBackgroundShadow;
- (NSNumber)timeoutInterval;
- (NSString)userInfo;
- (SUScriptSegmentedControl)segmentedControl;
- (SUScriptStorePageViewController)initWithURLStrings:(id)strings;
- (id)URLs;
- (id)_copyURLsFromURLStrings:(id)strings;
- (id)_pathForWebArchiveWithIdentifier:(id)identifier inDirectory:(id)directory;
- (id)_storePageViewController;
- (id)alwaysDispatchesScrollEvents;
- (id)inputViewObeysDOMFocus;
- (id)loadWebArchiveWithIdentifier:(id)identifier fromDirectory:(id)directory;
- (id)loadingTextColor;
- (id)loadingTextShadowColor;
- (id)loadsWhenHidden;
- (id)newNativeViewController;
- (id)placeholderBackgroundStyle;
- (id)rootObject;
- (id)saveWebArchiveWithIdentifier:(id)identifier toDirectory:(id)directory;
- (id)scriptAttributeKeys;
- (id)shouldShowFormAccessory;
- (id)showsHorizontalScrollIndicator;
- (id)showsVerticalScrollIndicator;
- (int64_t)loadingIndicatorStyle;
- (void)_setURLs:(id)ls;
- (void)_setValue:(id)value forScriptPropertyKey:(id)key;
- (void)applyURLStrings:(id)strings toViewController:(id)controller;
- (void)reloadWithCallback:(id)callback;
- (void)setAlwaysDispatchesScrollEvents:(id)events;
- (void)setInputViewObeysDOMFocus:(id)focus;
- (void)setLoadingTextColor:(id)color;
- (void)setLoadingTextShadowColor:(id)color;
- (void)setLoadsWhenHidden:(id)hidden;
- (void)setNativeViewController:(id)controller;
- (void)setPlaceholderBackgroundStyle:(id)style;
- (void)setSegmentedControl:(id)control;
- (void)setShouldShowFormAccessory:(id)accessory;
- (void)setShowsHorizontalScrollIndicator:(id)indicator;
- (void)setShowsVerticalScrollIndicator:(id)indicator;
- (void)setTimeoutInterval:(id)interval;
- (void)setURLs:(id)ls;
- (void)setUserInfo:(id)info;
@end

@implementation SUScriptStorePageViewController

- (SUScriptStorePageViewController)initWithURLStrings:(id)strings
{
  stringsCopy = strings;
  v9.receiver = self;
  v9.super_class = SUScriptStorePageViewController;
  v5 = [(SUScriptObject *)&v9 init];
  if (v5)
  {
    v6 = [stringsCopy copy];
    initialURLStrings = v5->_initialURLStrings;
    v5->_initialURLStrings = v6;
  }

  return v5;
}

+ (BOOL)copyURLStrings:(id *)strings forValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (SUURLValidator(valueCopy))
    {
      v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{valueCopy, 0}];
      goto LABEL_11;
    }

LABEL_8:
    v7 = 0;
    v6 = 0;
    if (!strings)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [valueCopy copyArrayValueWithValidator:SUURLValidator context:0];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (valueCopy)
    {
      goto LABEL_8;
    }

    v6 = 0;
  }

LABEL_11:
  v7 = 1;
  if (strings)
  {
LABEL_12:
    v6 = v6;
    *strings = v6;
  }

LABEL_13:

  return v7;
}

- (void)applyURLStrings:(id)strings toViewController:(id)controller
{
  controllerCopy = controller;
  v6 = [(SUScriptStorePageViewController *)self _copyURLsFromURLStrings:strings];
  uRLRequestProperties = [controllerCopy URLRequestProperties];
  v8 = [uRLRequestProperties mutableCopy];

  if ([v6 count] >= 2)
  {
    [v8 setAllowedRetryCount:0];
  }

  isViewLoaded = [controllerCopy isViewLoaded];
  [v8 setURLs:v6];
  if (isViewLoaded)
  {
    [controllerCopy performSelector:sel_reloadWithURLRequestProperties_ withObject:v8 afterDelay:0.0];
  }

  else
  {
    [controllerCopy setURLRequestProperties:v8];
  }
}

- (id)newNativeViewController
{
  viewControllerFactory = [(SUScriptObject *)self viewControllerFactory];
  v4 = viewControllerFactory;
  if (viewControllerFactory)
  {
    v5 = [viewControllerFactory newStorePageViewControllerWithSection:0];
  }

  else
  {
    v5 = [(SUViewController *)[SUStorePageViewController alloc] initWithSection:0];
  }

  v6 = v5;
  initialURLStrings = self->_initialURLStrings;
  if (initialURLStrings)
  {
    [(SUScriptStorePageViewController *)self applyURLStrings:initialURLStrings toViewController:v5];
  }

  clientInterface = [(SUScriptObject *)self clientInterface];
  [(SUViewController *)v6 setClientInterface:clientInterface];

  return v6;
}

- (void)setNativeViewController:(id)controller
{
  if (controller)
  {
    v4 = [(SUScriptNativeObject *)SUScriptStorePageNativeObject objectWithNativeObject:?];
    [(SUScriptObject *)self setNativeObject:v4];
  }

  else
  {

    [(SUScriptObject *)self setNativeObject:?];
  }
}

- (id)loadWebArchiveWithIdentifier:(id)identifier fromDirectory:(id)directory
{
  identifierCopy = identifier;
  directoryCopy = directory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    directoryCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!directoryCopy || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v10 = identifierCopy;
    v11 = directoryCopy;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  if (*(v13 + 24))
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *v7;
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __78__SUScriptStorePageViewController_loadWebArchiveWithIdentifier_fromDirectory___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _pathForWebArchiveWithIdentifier:*(a1 + 40) inDirectory:*(a1 + 48)];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 launchedToTest];

  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v25 = 0;
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v2 options:0 error:&v25];
    v7 = v25;
    if (v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E69E2F30]) initWithData:v6];
      if (v8)
      {
        v9 = [*(a1 + 32) _storePageViewController];
        v10 = [v8 mainResource];
        v11 = [v10 URL];
        [v9 reloadWithStorePage:v8 ofType:1 forURL:v11];

        *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_26:

        goto LABEL_27;
      }

      v14 = [MEMORY[0x1E69D4938] sharedConfig];
      v18 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v19 = v18 | 2;
      }

      else
      {
        v19 = v18;
      }

      v20 = [v14 OSLogObject];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v19 &= 2u;
      }

      if (!v19)
      {
        goto LABEL_24;
      }

      v21 = objc_opt_class();
      v26 = 138412546;
      v27 = v21;
      v28 = 2112;
      v29 = v2;
      v22 = v21;
      LODWORD(v24) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (v23)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v26, v24}];
        free(v23);
        SSFileLog();
LABEL_24:
      }
    }

    else
    {
      v8 = [MEMORY[0x1E69D4938] sharedConfig];
      v12 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v8 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v15 = objc_opt_class();
        v26 = 138412802;
        v27 = v15;
        v28 = 2112;
        v29 = v2;
        v30 = 2112;
        v31 = v7;
        v16 = v15;
        LODWORD(v24) = 32;
        v17 = _os_log_send_and_compose_impl();

        if (!v17)
        {
          goto LABEL_26;
        }

        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v26, v24}];
        free(v17);
        SSFileLog();
      }
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (void)reloadWithCallback:(id)callback
{
  callbackCopy = callback;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    callbackCopy = 0;
  }

  v4 = callbackCopy;
  WebThreadRunOnMainThread();
}

void __54__SUScriptStorePageViewController_reloadWithCallback___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 40) _storePageViewController];
  v4 = [v3 URLRequestProperties];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SUScriptStorePageViewController_reloadWithCallback___block_invoke_2;
  v7[3] = &unk_1E81658D8;
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  [v3 _reloadWithURLRequestProperties:v4 completionBlock:v7];
}

uint64_t __54__SUScriptStorePageViewController_reloadWithCallback___block_invoke_2(uint64_t a1, int a2)
{
  [*(a1 + 32) setThisObject:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695E4C0];
  if (a2)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:*v5];
  [v4 callWithArguments:v6];

  v7 = *(a1 + 32);

  return [v7 setThisObject:0];
}

- (id)saveWebArchiveWithIdentifier:(id)identifier toDirectory:(id)directory
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  directoryCopy = directory;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    directoryCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!directoryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [(SUScriptStorePageViewController *)self _pathForWebArchiveWithIdentifier:identifierCopy inDirectory:directoryCopy];
      if (v8)
      {
        v27[1] = MEMORY[0x1E69E9820];
        v27[2] = 3221225472;
        v27[3] = __76__SUScriptStorePageViewController_saveWebArchiveWithIdentifier_toDirectory___block_invoke;
        v27[4] = &unk_1E8164320;
        v27[5] = &v28;
        WebThreadRunOnMainThread();
      }

      if (*(v29 + 24) != 1)
      {
        goto LABEL_21;
      }

      webFrame = [(SUScriptObject *)self webFrame];
      dataSource = [webFrame dataSource];
      webArchive = [dataSource webArchive];

      data = [webArchive data];
      v27[0] = 0;
      v12 = [data writeToFile:v8 options:0 error:v27];
      v13 = v27[0];
      *(v29 + 24) = v12;

      if (v29[3])
      {
LABEL_20:

LABEL_21:
        goto LABEL_23;
      }

      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      shouldLogToDisk = [mEMORY[0x1E69D4938] shouldLogToDisk];
      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      v18 = oSLogObject;
      if (shouldLogToDisk)
      {
        shouldLog |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog &= 2u;
      }

      if (shouldLog)
      {
        v19 = objc_opt_class();
        v32 = 138412802;
        v33 = v19;
        v34 = 2112;
        v35 = v8;
        v36 = 2112;
        v37 = v13;
        v20 = v19;
        LODWORD(v25) = 32;
        v21 = _os_log_send_and_compose_impl();

        if (!v21)
        {
LABEL_19:

          goto LABEL_20;
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v32, v25}];
        free(v21);
        SSFileLog();
      }

      goto LABEL_19;
    }
  }

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
LABEL_23:
  if (*(v29 + 24))
  {
    v22 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v22 = MEMORY[0x1E695E4C0];
  }

  v23 = *v22;
  _Block_object_dispose(&v28, 8);

  return v23;
}

void __76__SUScriptStorePageViewController_saveWebArchiveWithIdentifier_toDirectory___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  *(*(*(a1 + 32) + 8) + 24) = [v2 launchedToTest];
}

void __80__SUScriptStorePageViewController_setScrollEdgeInsetsWithTop_left_bottom_right___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setScrollContentInsets:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [v3 setScriptProperties:v2];
}

- (id)alwaysDispatchesScrollEvents
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __63__SUScriptStorePageViewController_alwaysDispatchesScrollEvents__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 alwaysDispatchesScrollEvents];
}

- (BOOL)doubleTapEnabled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __51__SUScriptStorePageViewController_doubleTapEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 isDoubleTapEnabled];
}

- (BOOL)flashesScrollIndicators
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __58__SUScriptStorePageViewController_flashesScrollIndicators__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 flashesScrollIndicators];
}

- (id)inputViewObeysDOMFocus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __57__SUScriptStorePageViewController_inputViewObeysDOMFocus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 inputViewObeysDOMFocus];
}

- (int64_t)loadingIndicatorStyle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __56__SUScriptStorePageViewController_loadingIndicatorStyle__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 loadingIndicatorStyle];
}

- (id)loadsWhenHidden
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __50__SUScriptStorePageViewController_loadsWhenHidden__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  *(*(*(a1 + 40) + 8) + 24) = [v2 loadsWhenHidden];
}

- (id)loadingTextColor
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__13;
  v8 = __Block_byref_object_dispose__13;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __51__SUScriptStorePageViewController_loadingTextColor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v10 = [v2 copyScriptProperties];

  v3 = [v10 loadingTextColor];
  if (v3)
  {
    v4 = [SUScriptColor alloc];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [*(*(*(a1 + 40) + 8) + 40) initWithUIColor:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)loadingTextShadowColor
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__13;
  v8 = __Block_byref_object_dispose__13;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __57__SUScriptStorePageViewController_loadingTextShadowColor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v10 = [v2 copyScriptProperties];

  v3 = [v10 loadingTextShadowColor];
  if (v3)
  {
    v4 = [SUScriptColor alloc];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [*(*(*(a1 + 40) + 8) + 40) initWithUIColor:v3];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)placeholderBackgroundStyle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__13;
  v8 = __Block_byref_object_dispose__13;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __61__SUScriptStorePageViewController_placeholderBackgroundStyle__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v7 = [v2 copyScriptProperties];

  v3 = [v7 placeholderBackgroundGradient];
  if (v3)
  {
    v4 = [[SUScriptGradient alloc] initWithGradient:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)rootObject
{
  webFrame = [(SUScriptObject *)self webFrame];
  webView = [webFrame webView];
  windowScriptObject = [webView windowScriptObject];

  if (windowScriptObject)
  {
    null = windowScriptObject;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v6 = null;

  return v6;
}

- (BOOL)scrollingEnabled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __51__SUScriptStorePageViewController_scrollingEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 isScrollingDisabled] ^ 1;
}

- (SUScriptSegmentedControl)segmentedControl
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __51__SUScriptStorePageViewController_segmentedControl__block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) _storePageViewController];
  v2 = [v10 sectionGroup];
  if (v2)
  {
    v3 = [[SUScriptSegmentedControl alloc] initWithPageSectionGroup:v2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = MEMORY[0x1E696AD98];
    v8 = [v10 sectionSegmentedControl];
    v9 = [v7 numberWithInteger:{objc_msgSend(v8, "selectedItemIndex")}];
    [v6 setSelectedIndex:v9];

    [*(a1 + 32) checkInScriptObject:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (void)setAlwaysDispatchesScrollEvents:(id)events
{
  eventsCopy = events;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    eventsCopy = 0;
  }

  else if (eventsCopy && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_5;
  }

  eventsCopy = eventsCopy;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __67__SUScriptStorePageViewController_setAlwaysDispatchesScrollEvents___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setAlwaysDispatchesScrollEvents:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  [v3 setScriptProperties:v2];
}

void __55__SUScriptStorePageViewController_setDoubleTapEnabled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setDoubleTapEnabled:*(a1 + 40)];
  [v3 setScriptProperties:v2];
}

void __62__SUScriptStorePageViewController_setFlashesScrollIndicators___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setFlashesScrollIndicators:*(a1 + 40)];
  [v3 setScriptProperties:v2];
}

- (void)setInputViewObeysDOMFocus:(id)focus
{
  focusCopy = focus;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    focusCopy = 0;
  }

  else if (focusCopy && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_5;
  }

  focusCopy = focusCopy;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __61__SUScriptStorePageViewController_setInputViewObeysDOMFocus___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setInputViewObeysDOMFocus:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  [v3 setScriptProperties:v2];
}

void __60__SUScriptStorePageViewController_setLoadingIndicatorStyle___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setLoadingIndicatorStyle:*(a1 + 40)];
  [v3 setScriptProperties:v2];
}

- (void)setLoadingTextColor:(id)color
{
  v3 = [(SUScriptViewController *)self newScriptColorWithValue:color];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __55__SUScriptStorePageViewController_setLoadingTextColor___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _storePageViewController];
  v2 = [v4 copyScriptProperties];
  v3 = [*(a1 + 40) nativeColor];
  [v2 setLoadingTextColor:v3];

  [v4 setScriptProperties:v2];
}

- (void)setLoadingTextShadowColor:(id)color
{
  v3 = [(SUScriptViewController *)self newScriptColorWithValue:color];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __61__SUScriptStorePageViewController_setLoadingTextShadowColor___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _storePageViewController];
  v2 = [v4 copyScriptProperties];
  v3 = [*(a1 + 40) nativeColor];
  [v2 setLoadingTextShadowColor:v3];

  [v4 setScriptProperties:v2];
}

- (void)setLoadsWhenHidden:(id)hidden
{
  hiddenCopy = hidden;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    hiddenCopy = 0;
  }

  else if (hiddenCopy && (objc_opt_respondsToSelector() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_5;
  }

  hiddenCopy = hiddenCopy;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __54__SUScriptStorePageViewController_setLoadsWhenHidden___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  [v2 setLoadsWhenHidden:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
}

- (void)setPlaceholderBackgroundStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    styleCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SUScriptColor alloc] initWithStyleString:styleCopy];

    styleCopy = v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyNativeGradient = [(SUScriptColor *)styleCopy copyNativeGradient];
    if (!styleCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      copyNativeGradient = [[SUGradient alloc] initWithType:0];
      nativeColor = [(SUScriptColor *)styleCopy nativeColor];
      -[SUGradient addColorStopWithOffset:color:](copyNativeGradient, "addColorStopWithOffset:color:", [nativeColor CGColor], 0.0);

      if (!styleCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      copyNativeGradient = 0;
      if (!styleCopy)
      {
LABEL_15:
        v7 = copyNativeGradient;
        WebThreadRunOnMainThread();

        goto LABEL_16;
      }
    }
  }

  if (copyNativeGradient)
  {
    goto LABEL_15;
  }

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
LABEL_16:
}

void __65__SUScriptStorePageViewController_setPlaceholderBackgroundStyle___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setPlaceholderBackgroundGradient:*(a1 + 40)];
  [v3 setScriptProperties:v2];
}

void __55__SUScriptStorePageViewController_setScrollingEnabled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setScrollingDisabled:(*(a1 + 40) & 1) == 0];
  [v3 setScriptProperties:v2];
}

- (void)setSegmentedControl:(id)control
{
  controlCopy = control;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    controlCopy = 0;
  }

  else if (controlCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      goto LABEL_5;
    }

    [(SUScriptStorePageViewController *)self _isSegmentedControlValid:controlCopy];
  }

  controlCopy = controlCopy;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __55__SUScriptStorePageViewController_setSegmentedControl___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = *(a1 + 40);
  v6 = v2;
  if (!v3)
  {
    v4 = objc_alloc_init(SUPageSectionGroup);
LABEL_6:
    [v6 reloadForSectionsWithGroup:v4];
    goto LABEL_8;
  }

  if (*(a1 + 48))
  {
    v4 = [v3 newPageSectionGroup];
    if ([*(a1 + 40) nativeSelectedIndex] == -1)
    {
      v5 = [v6 sectionSegmentedControl];
      -[SUPageSectionGroup setDefaultSectionIndex:](v4, "setDefaultSectionIndex:", [v5 selectedItemIndex]);
    }

    goto LABEL_6;
  }

  v4 = [v3 nativeSegmentedControl];
  [v6 _setSegmentedControl:v4];
LABEL_8:
}

void __67__SUScriptStorePageViewController_setShouldInvalidateForLowMemory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  [v2 setShouldInvalidateForMemoryPurge:*(a1 + 40)];
}

void __62__SUScriptStorePageViewController_setShouldLoadProgressively___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setShouldLoadProgressively:*(a1 + 40)];
  [v3 setScriptProperties:v2];
}

- (void)setShouldShowFormAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (objc_opt_respondsToSelector())
  {
    v4 = accessoryCopy;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __62__SUScriptStorePageViewController_setShouldShowFormAccessory___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setShouldShowFormAccessory:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  [v3 setScriptProperties:v2];
}

void __60__SUScriptStorePageViewController_setShowsBackgroundShadow___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setShowsBackgroundShadow:*(a1 + 40)];
  [v3 setScriptProperties:v2];
}

- (void)setShowsHorizontalScrollIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (objc_opt_respondsToSelector())
  {
    v4 = indicatorCopy;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __69__SUScriptStorePageViewController_setShowsHorizontalScrollIndicator___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setShowsHorizontalScrollIndicator:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  [v3 setScriptProperties:v2];
}

- (void)setShowsVerticalScrollIndicator:(id)indicator
{
  indicatorCopy = indicator;
  if (objc_opt_respondsToSelector())
  {
    v4 = indicatorCopy;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __67__SUScriptStorePageViewController_setShowsVerticalScrollIndicator___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _storePageViewController];
  v2 = [v3 copyScriptProperties];
  [v2 setShowsVerticalScrollIndicator:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  [v3 setScriptProperties:v2];
}

- (void)setTimeoutInterval:(id)interval
{
  intervalCopy = interval;
  if (objc_opt_respondsToSelector())
  {
    v4 = intervalCopy;
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __54__SUScriptStorePageViewController_setTimeoutInterval___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _storePageViewController];
  v2 = [v4 URLRequestProperties];
  v3 = [v2 mutableCopy];

  [*(a1 + 40) doubleValue];
  [v3 setTimeoutInterval:?];
  [v4 setURLRequestProperties:v3];
}

- (void)setURLs:(id)ls
{
  lsCopy = ls;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    lsCopy = 0;
  }

  v8 = 0;
  v5 = [objc_opt_class() copyURLStrings:&v8 forValue:lsCopy];
  v6 = v8;
  if (v5)
  {
    webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];
    [webThreadMainThreadBatchProxy _setURLs:v6];
  }
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    infoCopy = 0;
  }

  else if (infoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      goto LABEL_5;
    }
  }

  infoCopy = infoCopy;
  WebThreadRunOnMainThread();

LABEL_5:
}

void __47__SUScriptStorePageViewController_setUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  [v2 setScriptUserInfo:*(a1 + 40)];
}

- (BOOL)shouldLoadProgressively
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __58__SUScriptStorePageViewController_shouldLoadProgressively__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 shouldLoadProgressively];
}

- (BOOL)shouldInvalidateForLowMemory
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __63__SUScriptStorePageViewController_shouldInvalidateForLowMemory__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  *(*(*(a1 + 40) + 8) + 24) = [v2 shouldInvalidateForMemoryPurge];
}

- (id)shouldShowFormAccessory
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __58__SUScriptStorePageViewController_shouldShowFormAccessory__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 shouldShowFormAccessory];
}

- (BOOL)showsBackgroundShadow
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __56__SUScriptStorePageViewController_showsBackgroundShadow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 showsBackgroundShadow];
}

- (id)showsHorizontalScrollIndicator
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __65__SUScriptStorePageViewController_showsHorizontalScrollIndicator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 showsHorizontalScrollIndicator];
}

- (id)showsVerticalScrollIndicator
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __63__SUScriptStorePageViewController_showsVerticalScrollIndicator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePageViewController];
  v3 = [v2 copyScriptProperties];

  *(*(*(a1 + 40) + 8) + 24) = [v3 showsVerticalScrollIndicator];
}

- (NSNumber)timeoutInterval
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __50__SUScriptStorePageViewController_timeoutInterval__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _storePageViewController];
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  v3 = [v7 URLRequestProperties];
  [v3 timeoutInterval];
  v4 = [v2 initWithDouble:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)URLs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __39__SUScriptStorePageViewController_URLs__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _storePageViewController];
  v2 = [v6 URLRequestProperties];
  v3 = [v2 URLs];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSString)userInfo
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__13;
  v8 = __Block_byref_object_dispose__13;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __43__SUScriptStorePageViewController_userInfo__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _storePageViewController];
  v2 = [v5 scriptUserInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setURLs:(id)ls
{
  lsCopy = ls;
  _storePageViewController = [(SUScriptStorePageViewController *)self _storePageViewController];
  [(SUScriptStorePageViewController *)self applyURLStrings:lsCopy toViewController:_storePageViewController];
}

- (id)_copyURLsFromURLStrings:(id)strings
{
  v19 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x1E695DFF8]);
        v12 = [v11 initWithString:{v10, v14}];
        if (v12)
        {
          [v4 addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_isSegmentedControlValid:(id)valid
{
  v16 = *MEMORY[0x1E69E9840];
  [valid segments];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        newPageSection = [*(*(&v11 + 1) + 8 * i) newPageSection];

        if (!newPageSection)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (id)_pathForWebArchiveWithIdentifier:(id)identifier inDirectory:(id)directory
{
  identifierCopy = identifier;
  directoryCopy = directory;
  if (!directoryCopy)
  {
    directoryCopy = NSTemporaryDirectory();
  }

  if ([MEMORY[0x1E696AC08] ensureDirectoryExists:directoryCopy])
  {
    v7 = [identifierCopy stringByAppendingPathExtension:@"webarchive"];
    v8 = [directoryCopy stringByAppendingPathComponent:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setValue:(id)value forScriptPropertyKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  _storePageViewController = [(SUScriptStorePageViewController *)self _storePageViewController];
  copyScriptProperties = [_storePageViewController copyScriptProperties];
  [copyScriptProperties setValue:valueCopy forKey:keyCopy];

  [_storePageViewController setScriptProperties:copyScriptProperties];
}

- (id)_storePageViewController
{
  nativeViewController = [(SUScriptViewController *)self nativeViewController];
  if (nativeViewController)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parentViewController = [nativeViewController parentViewController];

      nativeViewController = parentViewController;
    }

    while (parentViewController);
  }

  return nativeViewController;
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_21 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptStorePageViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2(selector, &__SelectorMapping_16, 4);
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptStorePageViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptStorePageViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_21 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_16 = sel_loadWebArchiveWithIdentifier_fromDirectory_;
    unk_1EBF3AB90 = @"loadWebArchive";
    qword_1EBF3AB98 = sel_reloadWithCallback_;
    unk_1EBF3ABA0 = @"reload";
    qword_1EBF3ABA8 = sel_saveWebArchiveWithIdentifier_toDirectory_;
    unk_1EBF3ABB0 = @"saveWebArchive";
    qword_1EBF3ABB8 = sel_setScrollEdgeInsetsWithTop_left_bottom_right_;
    unk_1EBF3ABC0 = @"setScrollEdgeInsets";
    __KeyMapping_21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"alwaysDispatchesScrollEvents", @"doubleTapEnabled", @"doubleTapEnabled", @"flashesScrollIndicators", @"flashesScrollIndicators", @"inputViewObeysDOMFocus", @"inputViewObeysDOMFocus", @"loadingIndicatorStyle", @"loadingIndicatorStyle", @"loadingTextColor", @"loadingTextColor", @"loadingTextShadowColor", @"loadingTextShadowColor", @"loadsWhenHidden", @"loadsWhenHidden", @"placeholderBackgroundStyle", @"placeholderBackgroundStyle", @"rootObject", @"rootObject", @"scrollingEnabled", @"scrollingEnabled", @"segmentedControl", @"segmentedControl", @"shouldInvalidateForLowMemory", @"shouldInvalidateForLowMemory", @"shouldLoadProgressively", @"shouldLoadProgressively", @"shouldShowFormAccessory", @"shouldShowFormAccessory", @"showsBackgroundShadow", @"showsBackgroundShadow", @"showsHorizontalScrollIndicator", @"showsHorizontalScrollIndicator", @"showsVerticalScrollIndicator", @"showsVerticalScrollIndicator", @"timeoutInterval", @"timeoutInterval", @"urls", @"URLs", @"userInfo", @"userInfo", @"INDICATOR_STYLE_GRAY", @"indicatorStyleGray", @"INDICATOR_STYLE_WHITE", @"indicatorStyleWhite", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end