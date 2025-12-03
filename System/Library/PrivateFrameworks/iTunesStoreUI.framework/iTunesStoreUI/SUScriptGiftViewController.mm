@interface SUScriptGiftViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setCreditGiftStyle:(int64_t)style;
- (void)setProductGiftItem:(id)item;
@end

@implementation SUScriptGiftViewController

- (id)newNativeViewController
{
  v3 = ISUIMobileStoreUIFramework();
  v4 = objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuigift.isa, v3));
  [(SUScriptObject *)self lock];
  if (self->_item)
  {
    v5 = [v4 initWithItem:?];
  }

  else
  {
    v5 = [v4 initWithGiftCategory:self->_giftCategory];
  }

  v6 = v5;
  [(SUScriptObject *)self unlock];
  v7 = ISUIMobileStoreUIFramework();
  v8 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuigiftviewco.isa v7))];
  v9 = ISUIMobileStoreUIFramework();
  [v8 setClientContext:{objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v9), "defaultContext")}];

  return v8;
}

- (void)setCreditGiftStyle:(int64_t)style
{
  [(SUScriptObject *)self lock];
  self->_giftCategory = style;

  [(SUScriptObject *)self unlock];
}

- (void)setProductGiftItem:(id)item
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !item) || (isKindOfClass)
  {
    [(SUScriptObject *)self lock];

    self->_item = 0;

    [(SUScriptObject *)self unlock];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [item copyArrayOrDictionaryWithContext:{-[SUScriptObject copyJavaScriptContext](self, "copyJavaScriptContext")}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = ISUIMobileStoreUIFramework();
        v7 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiitem.isa v6))];
        [(SUScriptObject *)self lock];

        self->_item = v7;
        [(SUScriptObject *)self unlock];
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E2F88];

      [v8 throwException:@"Invalid argument"];
    }
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_80 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptGiftViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_60, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptGiftViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptGiftViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_80, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_60 = sel_setCreditGiftStyle_;
    unk_1EBF3B9E0 = @"setCreditGiftStyle";
    qword_1EBF3B9E8 = sel_setProductGiftItem_;
    unk_1EBF3B9F0 = @"setProductGiftItem";
    __KeyMapping_80 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"GIFT_STYLE_APPS", @"giftCategoryApps", @"GIFT_STYLE_BOOKS", @"giftCategoryBooks", @"GIFT_STYLE_MEDIA", @"giftCategoryMedia", 0}];
  }
}

@end