@interface SUScriptRedeemViewController
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setInitialCode:(id)a3;
- (void)setRedeemStyle:(int64_t)a3;
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

- (void)setRedeemStyle:(int64_t)a3
{
  [(SUScriptObject *)self lock];
  self->_category = a3;

  [(SUScriptObject *)self unlock];
}

- (void)setInitialCode:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    self->_initialCode = [a3 copy];

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_82 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptRedeemViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_62, 1);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptRedeemViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptRedeemViewController;
  v2 = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [v2 addObjectsFromArray:{objc_msgSend(__KeyMapping_82, "allKeys")}];
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_62 = sel_setRedeemStyle_;
    unk_1EBF3BA30 = @"setRedeemStyle";
    __KeyMapping_82 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"initialCode", @"REDEEM_STYLE_APPS", @"redeemCategoryApps", @"REDEEM_STYLE_BOOKS", @"redeemCategoryBooks", @"REDEEM_STYLE_MEDIA", @"redeemCategoryMedia", 0}];
  }
}

@end