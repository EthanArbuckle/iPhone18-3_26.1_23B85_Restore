@interface SUScriptDownloadsViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (id)buttons;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setButtons:(id)buttons;
@end

@implementation SUScriptDownloadsViewController

- (id)newNativeViewController
{
  v3 = [-[SUScriptObject viewControllerFactory](self "viewControllerFactory")];
  [v3 setClientInterface:{-[SUScriptObject clientInterface](self, "clientInterface")}];
  return v3;
}

- (id)buttons
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
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

id __42__SUScriptDownloadsViewController_buttons__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nativeViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setButtons:(id)buttons
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = 0;
    if (buttons && (isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
        v4 = 0;
        goto LABEL_4;
      }

      v4 = [buttons copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
      if (!v4)
      {
        [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
        goto LABEL_4;
      }
    }
  }

  WebThreadRunOnMainThread();
LABEL_4:
}

uint64_t __46__SUScriptDownloadsViewController_setButtons___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeViewController];
  v3 = *(a1 + 40);

  return [v2 setScriptButtons:v3];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_42 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDownloadsViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDownloadsViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_42, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_42 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"buttons", 0}];
  }
}

@end