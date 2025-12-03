@interface SUScriptRedeemCameraViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (SURedeemCameraViewController)redeemCameraViewController;
- (id)scriptAttributeKeys;
- (void)_performAction:(int64_t)action withObject:(id)object;
- (void)codeDetected:(id)detected;
- (void)setBackButtonTitle:(id)title;
- (void)setCodeHandler:(id)handler;
@end

@implementation SUScriptRedeemCameraViewController

- (void)setBackButtonTitle:(id)title
{
  objc_storeStrong(&self->_backButtonTitle, title);
  titleCopy = title;
  [(SUScriptRedeemCameraViewController *)self _performAction:6 withObject:titleCopy];
}

- (void)setCodeHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  else
  {
    objc_storeStrong(&self->_codeHandler, handler);
  }
}

- (void)codeDetected:(id)detected
{
  detectedCopy = detected;
  v3 = detectedCopy;
  WebThreadRunOnMainThread();
}

void __51__SUScriptRedeemCameraViewController_codeDetected___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [SUScriptFunction alloc];
  v3 = [*(a1 + 32) codeHandler];
  v4 = [(SUScriptFunction *)v2 initWithScriptObject:v3];

  [(SUScriptFunction *)v4 setThisObject:*(a1 + 32)];
  v6[0] = *(a1 + 40);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(SUScriptFunction *)v4 callWithArguments:v5];

  [(SUScriptFunction *)v4 setThisObject:0];
}

- (void)_performAction:(int64_t)action withObject:(id)object
{
  objectCopy = object;
  v4 = objectCopy;
  WebThreadRunOnMainThread();
}

void __64__SUScriptRedeemCameraViewController__performAction_withObject___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1 && ([*(a1 + 32) redeemCameraViewController], v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v3 = objc_alloc_init(SURedeemCameraViewController);
    objc_initWeak(&location, *(a1 + 32));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__SUScriptRedeemCameraViewController__performAction_withObject___block_invoke_2;
    v8[3] = &unk_1E8164B18;
    objc_copyWeak(&v9, &location);
    [(SURedeemCameraViewController *)v3 setCodeHandler:v8];
    v4 = [*(a1 + 32) clientInterface];
    -[SURedeemCameraViewController setIgnoreDefaultKeyboardNotifications:](v3, "setIgnoreDefaultKeyboardNotifications:", [v4 ignoreDefaultKeyboardNotifications]);

    v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];
    [v5 setModalPresentationStyle:2];
    v6 = [*(a1 + 32) parentViewController];
    [v6 presentViewController:v5 animated:1 completion:0];

    [*(a1 + 32) setRedeemCameraViewController:v3];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [*(a1 + 32) redeemCameraViewController];
    [v7 performAction:*(a1 + 48) withObject:*(a1 + 40)];
  }
}

void __64__SUScriptRedeemCameraViewController__performAction_withObject___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);
  [v4 codeDetected:v3];

  objc_destroyWeak(&to);
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_3 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptRedeemCameraViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2(selector, &__SelectorMapping_1, 6);
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptRedeemCameraViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptRedeemCameraViewController;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_3 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_1 = sel_dismiss;
    unk_1EBF3A640 = @"dismiss";
    qword_1EBF3A648 = sel_pauseCamera;
    unk_1EBF3A650 = @"pauseCamera";
    qword_1EBF3A658 = sel_present;
    unk_1EBF3A660 = @"present";
    qword_1EBF3A668 = sel_recognitionError;
    unk_1EBF3A670 = @"recognitionError";
    qword_1EBF3A678 = sel_recognitionSuccess;
    unk_1EBF3A680 = @"recognitionSuccess";
    qword_1EBF3A688 = sel_resumeCamera;
    unk_1EBF3A690 = @"resumeCamera";
    __KeyMapping_3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"backButtonTitle", @"codeHandler", @"codeHandler", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

- (SURedeemCameraViewController)redeemCameraViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_redeemCameraViewController);

  return WeakRetained;
}

@end