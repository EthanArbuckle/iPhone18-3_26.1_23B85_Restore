@interface UIStatusBar_Placeholder
+ (double)_heightForStyle:(int64_t)style orientation:(int64_t)orientation forStatusBarFrame:(BOOL)frame inWindow:(id)window isAzulBLinked:(BOOL)linked;
- (id)_initWithFrame:(CGRect)frame showForegroundView:(BOOL)view wantsServer:(BOOL)server inProcessStateProvider:(id)provider;
- (int64_t)currentStyle;
- (void)_requestStyle:(int64_t)style partStyles:(id)styles legibilityStyle:(int64_t)legibilityStyle foregroundColor:(id)color animationParameters:(id)parameters forced:(BOOL)forced;
- (void)_setHidden:(BOOL)hidden animationParameters:(id)parameters;
- (void)setForegroundColor:(id)color animationParameters:(id)parameters;
- (void)setLegibilityStyle:(int64_t)style animationParameters:(id)parameters;
- (void)setStyleRequest:(id)request animationParameters:(id)parameters;
@end

@implementation UIStatusBar_Placeholder

- (id)_initWithFrame:(CGRect)frame showForegroundView:(BOOL)view wantsServer:(BOOL)server inProcessStateProvider:(id)provider
{
  v12.receiver = self;
  v12.super_class = UIStatusBar_Placeholder;
  v6 = [(UIStatusBar_Base *)&v12 _initWithFrame:0 showForegroundView:0 wantsServer:0 inProcessStateProvider:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v6)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v7 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v9 = _UIInternalPreference_UIStatusBarPlaceholderHasColor;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UIStatusBarPlaceholderHasColor)
      {
        while (v7 >= v9)
        {
          _UIInternalPreferenceSync(v7, &_UIInternalPreference_UIStatusBarPlaceholderHasColor, @"UIStatusBarPlaceholderHasColor", _UIInternalPreferenceUpdateBool);
          v9 = _UIInternalPreference_UIStatusBarPlaceholderHasColor;
          if (v7 == _UIInternalPreference_UIStatusBarPlaceholderHasColor)
          {
            return v6;
          }
        }

        if (byte_1EA95E6FC)
        {
          v10 = +[UIColor systemGreenColor];
          v11 = [v10 colorWithAlphaComponent:0.5];
          [v6 setBackgroundColor:v11];
        }
      }
    }
  }

  return v6;
}

+ (double)_heightForStyle:(int64_t)style orientation:(int64_t)orientation forStatusBarFrame:(BOOL)frame inWindow:(id)window isAzulBLinked:(BOOL)linked
{
  v8 = __UIStatusBarManagerForWindow(window);
  v9 = v8;
  if (v8)
  {
    [v8 defaultStatusBarHeightInOrientation:orientation];
    v11 = v10;
  }

  else
  {
    v12 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v12 userInterfaceIdiom];

    v11 = 20.0;
    if (!userInterfaceIdiom)
    {
      if (+[UIDevice _hasHomeButton])
      {
        v14 = 20.0;
      }

      else
      {
        v14 = 44.0;
      }

      if ((orientation - 3) >= 2)
      {
        v11 = v14;
      }

      else
      {
        v11 = 0.0;
      }
    }
  }

  return v11;
}

- (void)_requestStyle:(int64_t)style partStyles:(id)styles legibilityStyle:(int64_t)legibilityStyle foregroundColor:(id)color animationParameters:(id)parameters forced:(BOOL)forced
{
  v8 = *(__UILogGetCategoryCachedImpl("StatusBar", &_requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Changing the style on the status bar instance directly is not supported anymore, please update your app.", v9, 2u);
  }
}

- (void)setStyleRequest:(id)request animationParameters:(id)parameters
{
  v11.receiver = self;
  v11.super_class = UIStatusBar_Placeholder;
  parametersCopy = parameters;
  requestCopy = request;
  [(UIStatusBar_Base *)&v11 setStyleRequest:requestCopy animationParameters:parametersCopy];
  style = [requestCopy style];
  legibilityStyle = [requestCopy legibilityStyle];
  foregroundColor = [requestCopy foregroundColor];

  [(UIStatusBar_Placeholder *)self _requestStyle:style partStyles:0 legibilityStyle:legibilityStyle foregroundColor:foregroundColor animationParameters:parametersCopy forced:0];
}

- (void)setForegroundColor:(id)color animationParameters:(id)parameters
{
  v8.receiver = self;
  v8.super_class = UIStatusBar_Placeholder;
  parametersCopy = parameters;
  colorCopy = color;
  [(UIStatusBar_Base *)&v8 setForegroundColor:colorCopy animationParameters:parametersCopy];
  [(UIStatusBar_Placeholder *)self _requestStyle:[(UIStatusBar_Base *)self _requestStyle:v8.receiver] partStyles:0 legibilityStyle:[(UIStatusBar_Base *)self legibilityStyle] foregroundColor:colorCopy animationParameters:parametersCopy forced:0];
}

- (void)setLegibilityStyle:(int64_t)style animationParameters:(id)parameters
{
  v9.receiver = self;
  v9.super_class = UIStatusBar_Placeholder;
  parametersCopy = parameters;
  [(UIStatusBar_Base *)&v9 setLegibilityStyle:style animationParameters:parametersCopy];
  v7 = [(UIStatusBar_Base *)self _requestStyle:v9.receiver];
  foregroundColor = [(UIStatusBar_Base *)self foregroundColor];
  [(UIStatusBar_Placeholder *)self _requestStyle:v7 partStyles:0 legibilityStyle:style foregroundColor:foregroundColor animationParameters:parametersCopy forced:0];
}

- (int64_t)currentStyle
{
  v2 = _UIStatusBarManagerForNoWindow();
  statusBarStyle = [v2 statusBarStyle];

  return statusBarStyle;
}

- (void)_setHidden:(BOOL)hidden animationParameters:(id)parameters
{
  v6.receiver = self;
  v6.super_class = UIStatusBar_Placeholder;
  [(UIStatusBar_Base *)&v6 _setHidden:hidden animationParameters:parameters];
  v4 = *(__UILogGetCategoryCachedImpl("StatusBar", &_setHidden_animationParameters____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Hiding the status bar instance directly is not supported anymore, please update your app.", v5, 2u);
  }
}

@end