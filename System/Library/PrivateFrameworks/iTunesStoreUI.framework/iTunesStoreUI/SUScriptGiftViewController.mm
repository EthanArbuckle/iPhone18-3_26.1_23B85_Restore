@interface SUScriptGiftViewController
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setCreditGiftStyle:(int64_t)a3;
- (void)setProductGiftItem:(id)a3;
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

- (void)setCreditGiftStyle:(int64_t)a3
{
  [(SUScriptObject *)self lock];
  self->_giftCategory = a3;

  [(SUScriptObject *)self unlock];
}

- (void)setProductGiftItem:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass)
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
      v9 = [a3 copyArrayOrDictionaryWithContext:{-[SUScriptObject copyJavaScriptContext](self, "copyJavaScriptContext")}];
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

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_80 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptGiftViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_60, 2);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptGiftViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptGiftViewController;
  v2 = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [v2 addObjectsFromArray:{objc_msgSend(__KeyMapping_80, "allKeys")}];
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_60 = sel_setCreditGiftStyle_;
    unk_1EBF3B9E0 = @"setCreditGiftStyle";
    qword_1EBF3B9E8 = sel_setProductGiftItem_;
    unk_1EBF3B9F0 = @"setProductGiftItem";
    __KeyMapping_80 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"GIFT_STYLE_APPS", @"giftCategoryApps", @"GIFT_STYLE_BOOKS", @"giftCategoryBooks", @"GIFT_STYLE_MEDIA", @"giftCategoryMedia", 0}];
  }
}

@end