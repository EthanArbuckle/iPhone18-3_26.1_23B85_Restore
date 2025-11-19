@interface SUScriptComposeReviewViewController
+ (id)webScriptNameForKey:(const char *)a3;
- (SUScriptComposeReviewViewController)initWithScriptReview:(id)a3 clientInterface:(id)a4;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setReview:(id)a3;
@end

@implementation SUScriptComposeReviewViewController

- (SUScriptComposeReviewViewController)initWithScriptReview:(id)a3 clientInterface:(id)a4
{
  [a3 infoURL];
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
  v2 = [(SUScriptObject *)self clientInterface];
  v3 = [(SUViewControllerFactory *)[(SUClientInterface *)v2 viewControllerFactory] newComposeReviewViewControllerWithCompositionURL:0];
  if (!v3)
  {
    v3 = [[SUComposeReviewViewController alloc] initWithCompositionURL:0];
  }

  [(SUViewController *)v3 setClientInterface:v2];
  return v3;
}

- (void)setReview:(id)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"review"];

  [v3 throwException:v4];
}

+ (id)webScriptNameForKey:(const char *)a3
{
  result = SUWebScriptNameForKey(a3, &__KeyMapping, 1);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptComposeReviewViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKey_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptComposeReviewViewController;
  v2 = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  SUWebScriptAddPropertyKeysToArray(v2, &__KeyMapping, 1);
  return v2;
}

@end