@interface SUScriptAccountPageViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (NSString)style;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setStyle:(id)style;
@end

@implementation SUScriptAccountPageViewController

- (id)newNativeViewController
{
  v3 = objc_alloc_init(SUAccountViewController);
  [(SUViewController *)v3 setClientInterface:[(SUScriptObject *)self clientInterface]];
  uRLStrings = [(SUScriptStorePageViewController *)self URLStrings];
  if (uRLStrings)
  {
    [(SUScriptStorePageViewController *)self applyURLStrings:uRLStrings toViewController:v3];
  }

  return v3;
}

- (void)setStyle:(id)style
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !style) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __46__SUScriptAccountPageViewController_setStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  if ([*(a1 + 40) isEqualToString:{objc_msgSend(*(a1 + 32), "styleNameSignUp")}])
  {
    v3 = 1;
  }

  else if ([*(a1 + 40) isEqualToString:{objc_msgSend(*(a1 + 32), "styleNameViewAccount")}])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return [v2 setStyle:v3];
}

- (NSString)style
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__39;
  v13 = __Block_byref_object_dispose__39;
  v14 = 0;
  v7 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v3 = v10[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(SUScriptAccountPageViewController *)self styleNameDefault:v7];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  return v5;
}

id __42__SUScriptAccountPageViewController_style__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  if (v2 == 2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) styleNameSignUp];
LABEL_4:
    *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) styleNameViewAccount];
  }

  result = [*(a1 + 32) styleNameDefault];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_51 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptAccountPageViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptAccountPageViewController;
  scriptAttributeKeys = [(SUScriptStorePageViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_51, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_51 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"style", @"STYLE_DEFAULT", @"styleNameDefault", @"STYLE_SIGN_UP", @"styleNameSignUp", @"STYLE_VIEW_ACCOUNT", @"styleNameViewAccount", 0}];
  }
}

@end