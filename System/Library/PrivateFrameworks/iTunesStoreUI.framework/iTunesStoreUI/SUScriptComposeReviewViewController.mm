@interface SUScriptComposeReviewViewController
+ (id)webScriptNameForKey:(const char *)key;
- (SUScriptComposeReviewViewController)initWithScriptReview:(id)review clientInterface:(id)interface;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setReview:(id)review;
@end

@implementation SUScriptComposeReviewViewController

- (SUScriptComposeReviewViewController)initWithScriptReview:(id)review clientInterface:(id)interface
{
  [review infoURL];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = SUScriptComposeReviewViewController;
    v5 = [(SUScriptObject *)&v7 init];
    if (v5)
    {
      WebThreadRunOnMainThread();
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

void __76__SUScriptComposeReviewViewController_initWithScriptReview_clientInterface___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  v3 = [objc_msgSend(*(a1 + 40) "viewControllerFactory")];
  if (!v3)
  {
    v3 = [[SUComposeReviewViewController alloc] initWithCompositionURL:v2];
  }

  v4 = v3;
  [(SUViewController *)v3 setClientInterface:*(a1 + 40)];
  [*(a1 + 48) setNativeViewController:v4];
}

- (id)newNativeViewController
{
  clientInterface = [(SUScriptObject *)self clientInterface];
  v3 = [(SUViewControllerFactory *)[(SUClientInterface *)clientInterface viewControllerFactory] newComposeReviewViewControllerWithCompositionURL:0];
  if (!v3)
  {
    v3 = [[SUComposeReviewViewController alloc] initWithCompositionURL:0];
  }

  [(SUViewController *)v3 setClientInterface:clientInterface];
  return v3;
}

- (void)setReview:(id)review
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"review"];

  [v3 throwException:v4];
}

+ (id)webScriptNameForKey:(const char *)key
{
  result = SUWebScriptNameForKey(key, &__KeyMapping, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptComposeReviewViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKey_, key);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptComposeReviewViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  SUWebScriptAddPropertyKeysToArray(scriptAttributeKeys, &__KeyMapping, 1);
  return scriptAttributeKeys;
}

@end