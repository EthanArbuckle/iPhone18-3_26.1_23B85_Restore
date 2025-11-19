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
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = UIGlomojiLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UIGlomojiAnalyticsDispatcher] Disabled", buf, 2u);
    }

    v6 = 0;
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
    v6 = self;
  }

  return v6;
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
  v4 = [v3 updatedInputMode];
  [(UIGlomojiAnalyticsDispatcher *)self setUpdatedInputMode:v4];

  v5 = UIGlomojiLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
    v12 = [(UIGlomojiAnalyticsDispatcher *)self updatedInputMode];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UIGlomojiAnalyticsDispatcher] Glomoji Tap. old: %@, new: %@", &v13, 0x16u);
  }

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = [v6 _textInputSessionAnalytics];
  v8 = [(UIGlomojiAnalyticsDispatcher *)self glomojiType];
  v9 = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
  v10 = [(UIGlomojiAnalyticsDispatcher *)self updatedInputMode];
  [v7 didGlomojiTap:v8 originalInputMode:v9 newInputMode:v10];
}

- (void)didKBMenuAppear
{
  [(UIGlomojiAnalyticsDispatcher *)self setGlomojiType:[(UIGlomojiAnalyticsDispatcher *)self getGlomojiButtonTypeEnumValue]];
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v6 _textInputSessionAnalytics];
  v4 = [(UIGlomojiAnalyticsDispatcher *)self glomojiType];
  v5 = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
  [v3 didKBMenuAppear:v4 originalInputMode:v5];
}

- (void)didKBMenuInteraction
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = UIGlomojiLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(UIGlomojiAnalyticsDispatcher *)self KBMenuInteractionSource];
    v12 = [(UIGlomojiAnalyticsDispatcher *)self KBMenuSelectedAction];
    v13 = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
    v14 = [(UIGlomojiAnalyticsDispatcher *)self updatedInputMode];
    v15 = 134218754;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UIGlomojiAnalyticsDispatcher] Menu Interaction. source: %lu. action: %lu. old: %@, new: %@", &v15, 0x2Au);
  }

  v4 = +[UIKBAnalyticsDispatcher sharedInstance];
  v5 = [v4 updatedInputMode];
  [(UIGlomojiAnalyticsDispatcher *)self setUpdatedInputMode:v5];

  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = [v6 _textInputSessionAnalytics];
  v8 = [(UIGlomojiAnalyticsDispatcher *)self KBMenuInteractionSource];
  v9 = [(UIGlomojiAnalyticsDispatcher *)self KBMenuSelectedAction];
  v10 = [(UIGlomojiAnalyticsDispatcher *)self updatedInputMode];
  [v7 didKBMenuInteraction:v8 selectedAction:v9 newInputMode:v10];
}

- (void)didKBMenuDismiss
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = UIGlomojiLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UIGlomojiAnalyticsDispatcher *)self KBMenuDismissSource];
    v7 = [(UIGlomojiAnalyticsDispatcher *)self originalInputMode];
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "[UIGlomojiAnalyticsDispatcher] Menu Dismiss. source: %lu. old: %@", &v8, 0x16u);
  }

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 _textInputSessionAnalytics];
  [v5 didKBMenuDismiss:{-[UIGlomojiAnalyticsDispatcher KBMenuDismissSource](self, "KBMenuDismissSource")}];
}

- (unint64_t)getGlomojiButtonTypeEnumValue
{
  v2 = +[UIKBAnalyticsDispatcher sharedInstance];
  v3 = [v2 glomojiTitle];

  if ([v3 isEqualToString:@"globe"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"globe.badge.chevron.backward"))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"emoji.face.grinning"])
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
  v3 = [v2 currentInputMode];
  v4 = [v3 identifierWithLayouts];

  return v4;
}

@end