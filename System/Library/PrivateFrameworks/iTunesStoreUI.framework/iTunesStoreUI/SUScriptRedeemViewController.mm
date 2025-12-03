@interface SUScriptRedeemViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setInitialCode:(id)code;
- (void)setRedeemStyle:(int64_t)style;
@end

@implementation SUScriptRedeemViewController

- (id)newNativeViewController
{
  v3 = ISUIMobileStoreUIFramework();
  v4 = ISUIWeakLinkedClassForString(&cfstr_Suuiredeemview.isa, v3);
  [(SUScriptObject *)self lock];
  v5 = [[v4 alloc] initWithRedeemCategory:self->_category];
  [v5 setInitialCode:self->_initialCode];
  [(SUScriptObject *)self unlock];
  v6 = ISUIMobileStoreUIFramework();
  [v5 setClientContext:{objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v6), "defaultContext")}];
  return v5;
}

- (void)setRedeemStyle:(int64_t)style
{
  [(SUScriptObject *)self lock];
  self->_category = style;

  [(SUScriptObject *)self unlock];
}

- (void)setInitialCode:(id)code
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    code = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    self->_initialCode = [code copy];

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_82 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptRedeemViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_62, 1);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptRedeemViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptRedeemViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_82, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_62 = sel_setRedeemStyle_;
    unk_1EBF3BA30 = @"setRedeemStyle";
    __KeyMapping_82 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"initialCode", @"REDEEM_STYLE_APPS", @"redeemCategoryApps", @"REDEEM_STYLE_BOOKS", @"redeemCategoryBooks", @"REDEEM_STYLE_MEDIA", @"redeemCategoryMedia", 0}];
  }
}

@end