@interface SUScriptApplication
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)identifier;
- (NSString)version;
- (id)hostIdentifier;
- (id)iconBadgeNumber;
- (id)isRunningInStoreDemoMode;
- (id)screenHeight;
- (id)screenWidth;
- (id)scriptAttributeKeys;
- (id)statusBarHidden;
- (id)wasLaunchedFromLibrary;
- (int64_t)statusBarStyle;
- (void)exitStoreWithReason:(id)reason;
- (void)scrollIconToVisible:(id)visible shouldSuspend:(BOOL)suspend;
- (void)setIconBadgeNumber:(id)number;
- (void)setIdentifier:(id)identifier;
- (void)setStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation;
- (void)setStatusBarHidden:(id)hidden;
- (void)setStatusBarStyle:(int64_t)style animated:(BOOL)animated;
- (void)setVersion:(id)version;
@end

@implementation SUScriptApplication

- (void)exitStoreWithReason:(id)reason
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  WebThreadRunOnMainThread();
}

uint64_t __43__SUScriptApplication_exitStoreWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientInterface];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 2;
  }

  return [v2 _exitStoreWithReason:v4];
}

uint64_t __38__SUScriptApplication_returnToLibrary__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) clientInterface];

  return [v1 _returnToLibrary];
}

- (void)scrollIconToVisible:(id)visible shouldSuspend:(BOOL)suspend
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v4 = MEMORY[0x1E69E2F88];

    [v4 throwException:@"Invalid argument"];
  }
}

uint64_t __57__SUScriptApplication_scrollIconToVisible_shouldSuspend___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, 512);
  result = CFStringGetCString(*(a1 + 32), v4, 1024, 0x8000100u);
  if (result)
  {
    v3 = SBSSpringBoardServerPort();
    return MEMORY[0x1C6916360](v3, v4, *(a1 + 40));
  }

  return result;
}

- (void)setStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SUScriptApplication_setStatusBarHidden_withAnimation___block_invoke;
  block[3] = &unk_1E81660A0;
  hiddenCopy = hidden;
  block[4] = self;
  block[5] = animation;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __56__SUScriptApplication_setStatusBarHidden_withAnimation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientInterface];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);

  return [v2 _setStatusBarHidden:v3 withAnimation:v4];
}

- (void)setStatusBarStyle:(int64_t)style animated:(BOOL)animated
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SUScriptApplication_setStatusBarStyle_animated___block_invoke;
  block[3] = &unk_1E81660A0;
  block[4] = self;
  block[5] = style;
  animatedCopy = animated;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __50__SUScriptApplication_setStatusBarStyle_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientInterface];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _setStatusBarStyle:v3 animated:v4];
}

- (id)hostIdentifier
{
  result = [(SUClientInterface *)[(SUScriptObject *)self clientInterface] hostApplicationIdentifier];
  if (!result)
  {

    return +[SUClientInterface _defaultApplicationIdentifier];
  }

  return result;
}

- (id)iconBadgeNumber
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  WebThreadRunOnMainThread();
  v2 = v7[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  }

  v4 = v3;
  _Block_object_dispose(&v6, 8);
  return v4;
}

uint64_t __38__SUScriptApplication_iconBadgeNumber__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  result = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(v2, "applicationIconBadgeNumber")}];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (NSString)identifier
{
  result = [(SUClientInterface *)[(SUScriptObject *)self clientInterface] applicationIdentifier];
  if (!result)
  {

    return +[SUClientInterface _defaultApplicationIdentifier];
  }

  return result;
}

- (id)isRunningInStoreDemoMode
{
  isRunningInStoreDemoMode = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode];
  v3 = MEMORY[0x1E695E4D0];
  if (!isRunningInStoreDemoMode)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (id)screenHeight
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3010000000;
  v8 = &unk_1C23567C9;
  v9 = *MEMORY[0x1E695F060];
  WebThreadRunOnMainThread();
  v2 = v6[5];
  *&v2 = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __35__SUScriptApplication_screenHeight__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (id)screenWidth
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3010000000;
  v8 = &unk_1C23567C9;
  v9 = *MEMORY[0x1E695F060];
  WebThreadRunOnMainThread();
  v2 = v6[4];
  *&v2 = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __34__SUScriptApplication_screenWidth__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (void)setIconBadgeNumber:(id)number
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    numberCopy = 0;
LABEL_3:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__SUScriptApplication_setIconBadgeNumber___block_invoke;
    block[3] = &unk_1E8164348;
    block[4] = numberCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  numberCopy = 0;
  if (!number)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  v6 = objc_opt_respondsToSelector();
  numberCopy = number;
  if (v6)
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

uint64_t __42__SUScriptApplication_setIconBadgeNumber___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [*(a1 + 32) intValue];

  return [v2 setApplicationIconBadgeNumber:v3];
}

- (void)setIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"identifier"];

  [v3 throwException:v4];
}

- (void)setStatusBarHidden:(id)hidden
{
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [hidden BOOLValue];

    [(SUScriptApplication *)self setStatusBarHidden:bOOLValue withAnimation:0];
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

- (void)setVersion:(id)version
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"version"];

  [v3 throwException:v4];
}

- (id)statusBarHidden
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

uint64_t __38__SUScriptApplication_statusBarHidden__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int64_t)statusBarStyle
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

uint64_t __37__SUScriptApplication_statusBarStyle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (NSString)version
{
  result = [(SUClientInterface *)[(SUScriptObject *)self clientInterface] applicationVersion];
  if (!result)
  {

    return +[SUClientInterface _defaultApplicationVersion];
  }

  return result;
}

- (id)wasLaunchedFromLibrary
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

uint64_t __45__SUScriptApplication_wasLaunchedFromLibrary__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "clientInterface")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_44 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptApplication;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_35, 8);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptApplication;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptApplication;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_44 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_35 = sel_beginDelayingTerminate;
    *algn_1EBF3B1F8 = @"beginDelayingTerminate";
    qword_1EBF3B200 = sel_endDelayingTerminate;
    unk_1EBF3B208 = @"endDelayingTerminate";
    qword_1EBF3B210 = sel_exitStoreWithReason_;
    unk_1EBF3B218 = @"exitStore";
    qword_1EBF3B220 = sel_returnToLibrary;
    unk_1EBF3B228 = @"returnToLibrary";
    qword_1EBF3B230 = sel_scrollIconToVisible_shouldSuspend_;
    unk_1EBF3B238 = @"scrollIconToVisible";
    qword_1EBF3B240 = sel_setStatusBarHidden_withAnimation_;
    unk_1EBF3B248 = @"setStatusBarHidden";
    qword_1EBF3B250 = sel_setStatusBarStyle_animated_;
    unk_1EBF3B258 = @"setStatusBarStyle";
    qword_1EBF3B260 = sel_showNewsstand;
    unk_1EBF3B268 = @"showNewsstand";
    __KeyMapping_44 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"hostIdentifier", @"iconBadgeNumber", @"iconBadgeNumber", @"identifier", @"identifier", @"isDelayingTerminate", @"isDelayingTerminate", @"isRunningInStoreDemoMode", @"isRunningInStoreDemoMode", @"screenHeight", @"screenHeight", @"screenWidth", @"screenWidth", @"statusBarHidden", @"statusBarHidden", @"statusBarStyle", @"statusBarStyle", @"version", @"version", @"wasLaunchedFromLibrary", @"wasLaunchedFromLibrary", @"EXIT_STORE_REASON_BUTTON", @"exitStoreReasonButton", @"EXIT_STORE_REASON_DOWNLOAD_COMPLETE", @"exitStoreReasonDownloadComplete", @"EXIT_STORE_REASON_FATAL_ERROR", @"exitStoreReasonFatalError", @"EXIT_STORE_REASON_GOTO_MAIN_STORE", @"exitStoreReasonGotoMainStore", @"EXIT_STORE_REASON_OTHER", @"exitStoreReasonOther", @"EXIT_STORE_REASON_PURCHASE", @"exitStoreReasonPurchase", @"STATUS_BAR_ANIMATION_FADE", @"statusBarAnimationFade", @"STATUS_BAR_ANIMATION_NONE", @"statusBarAnimationNone", @"STATUS_BAR_ANIMATION_SLIDE", @"statusBarAnimationSlide", @"STATUS_BAR_STYLE_DEFAULT", @"statusBarStyleDefault", @"STATUS_BAR_STYLE_BLACK_OPAQUE", @"statusBarStyleBlackOpaque", @"STATUS_BAR_STYLE_BLACK_TRANSLUCENT", @"statusBarStyleBlackTranslucent", 0}];
  }
}

@end