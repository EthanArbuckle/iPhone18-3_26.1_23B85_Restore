@interface UIGlomojiAnalyticsDispatcher
- (UIGlomojiAnalyticsDispatcher)init;
- (id)getInputMode;
- (unint64_t)getGlomojiButtonTypeEnumValue;
- (void)didGlomojiTap;
- (void)didKBMenuAction;
- (void)didKBMenuAppear;
- (void)didKBMenuDismiss;
- (void)didKBMenuInteraction;
@end

@implementation UIGlomojiAnalyticsDispatcher

- (UIGlomojiAnalyticsDispatcher)init
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v5 = UIGlomojiLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UIGlomojiAnalyticsDispatcher] Disabled", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIGlomojiAnalyticsDispatcher;
    v7 = [(UIGlomojiAnalyticsDispatcher *)&v12 init];
    v8 = v7;
    if (v7)
    {
      v7->_KBMenuAppeared = 0;
      v7->_glomojiType = 0;
      v7->_KBMenuInteractionSource = 0;
      originalInputMode = v7->_originalInputMode;
      v7->_KBMenuDismissSource = 0;
      v7->_originalInputMode = 0;

      updatedInputMode = v8->_updatedInputMode;
      v8->_updatedInputMode = 0;

      v8->_KBMenuSelectedAction = 0;
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)didKBMenuAction
{
  if ([(UIGlomojiAnalyticsDispatcher *)self KBMenuAppeared])
  {
    if ([(UIGlomojiAnalyticsDispatcher *)self KBMenuInteractionSource]&& [(UIGlomojiAnalyticsDispatcher *)self KBMenuSelectedAction])
    {
      [(UIGlomojiAnalyticsDispatcher *)self didKBMenuInteraction];
    }

    if ([(UIGlomojiAnalyticsDispatcher *)self KBMenuDismissSource])
    {
      [(UIGlomojiAnalyticsDispatcher *)self didKBMenuDismiss];
    }
  }

  [(UIGlomojiAnalyticsDispatcher *)self setKBMenuAppeared:0];
  [(UIGlomojiAnalyticsDispatcher *)self setKBMenuInteractionSource:0];

  [(UIGlomojiAnalyticsDispatcher *)self setKBMenuDismissSource:0];
}

- (void)didGlomojiTap
{
  v17 = *MEMORY[0x1E69E9840];
  [(UIGlomojiAnalyticsDispatcher *)self setGlomojiType:[(UIGlomojiAnalyticsDispatcher *)self getGlomojiButtonTypeEnumValue]];
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  updatedInputMode = [v3 updatedInputMode];
  [(UIGlomojiAnalyticsDispatcher *)self setUpdatedInputMode:updatedInputMode];

  v5 = UIGlomojiLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    originalInputMode = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
    updatedInputMode2 = [(UIGlomojiAnalyticsDispatcher *)self updatedInputMode];
    v13 = 138412546;
    v14 = originalInputMode;
    v15 = 2112;
    v16 = updatedInputMode2;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UIGlomojiAnalyticsDispatcher] Glomoji Tap. old: %@, new: %@", &v13, 0x16u);
  }

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [v6 _textInputSessionAnalytics];
  glomojiType = [(UIGlomojiAnalyticsDispatcher *)self glomojiType];
  originalInputMode2 = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
  updatedInputMode3 = [(UIGlomojiAnalyticsDispatcher *)self updatedInputMode];
  [_textInputSessionAnalytics didGlomojiTap:glomojiType originalInputMode:originalInputMode2 newInputMode:updatedInputMode3];
}

- (void)didKBMenuAppear
{
  [(UIGlomojiAnalyticsDispatcher *)self setGlomojiType:[(UIGlomojiAnalyticsDispatcher *)self getGlomojiButtonTypeEnumValue]];
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [v6 _textInputSessionAnalytics];
  glomojiType = [(UIGlomojiAnalyticsDispatcher *)self glomojiType];
  originalInputMode = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
  [_textInputSessionAnalytics didKBMenuAppear:glomojiType originalInputMode:originalInputMode];
}

- (void)didKBMenuInteraction
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = UIGlomojiLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    kBMenuInteractionSource = [(UIGlomojiAnalyticsDispatcher *)self KBMenuInteractionSource];
    kBMenuSelectedAction = [(UIGlomojiAnalyticsDispatcher *)self KBMenuSelectedAction];
    originalInputMode = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
    updatedInputMode = [(UIGlomojiAnalyticsDispatcher *)self updatedInputMode];
    v15 = 134218754;
    v16 = kBMenuInteractionSource;
    v17 = 2048;
    v18 = kBMenuSelectedAction;
    v19 = 2112;
    v20 = originalInputMode;
    v21 = 2112;
    v22 = updatedInputMode;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UIGlomojiAnalyticsDispatcher] Menu Interaction. source: %lu. action: %lu. old: %@, new: %@", &v15, 0x2Au);
  }

  v4 = +[UIKBAnalyticsDispatcher sharedInstance];
  updatedInputMode2 = [v4 updatedInputMode];
  [(UIGlomojiAnalyticsDispatcher *)self setUpdatedInputMode:updatedInputMode2];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [v6 _textInputSessionAnalytics];
  kBMenuInteractionSource2 = [(UIGlomojiAnalyticsDispatcher *)self KBMenuInteractionSource];
  kBMenuSelectedAction2 = [(UIGlomojiAnalyticsDispatcher *)self KBMenuSelectedAction];
  updatedInputMode3 = [(UIGlomojiAnalyticsDispatcher *)self updatedInputMode];
  [_textInputSessionAnalytics didKBMenuInteraction:kBMenuInteractionSource2 selectedAction:kBMenuSelectedAction2 newInputMode:updatedInputMode3];
}

- (void)didKBMenuDismiss
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = UIGlomojiLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    kBMenuDismissSource = [(UIGlomojiAnalyticsDispatcher *)self KBMenuDismissSource];
    originalInputMode = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
    v8 = 134218242;
    v9 = kBMenuDismissSource;
    v10 = 2112;
    v11 = originalInputMode;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UIGlomojiAnalyticsDispatcher] Menu Dismiss. source: %lu. old: %@", &v8, 0x16u);
  }

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [v4 _textInputSessionAnalytics];
  [_textInputSessionAnalytics didKBMenuDismiss:{-[UIGlomojiAnalyticsDispatcher KBMenuDismissSource](self, "KBMenuDismissSource")}];
}

- (unint64_t)getGlomojiButtonTypeEnumValue
{
  v2 = +[UIKBAnalyticsDispatcher sharedInstance];
  glomojiTitle = [v2 glomojiTitle];

  if ([glomojiTitle isEqualToString:@"globe"] & 1) != 0 || (objc_msgSend(glomojiTitle, "isEqualToString:", @"globe.badge.chevron.backward"))
  {
    v4 = 1;
  }

  else if ([glomojiTitle isEqualToString:@"emoji.face.grinning"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];
  identifierWithLayouts = [currentInputMode identifierWithLayouts];

  return identifierWithLayouts;
}

@end