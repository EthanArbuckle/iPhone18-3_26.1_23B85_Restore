@interface SUScriptStoreSheetViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (int64_t)productPageStyle;
- (void)loadWithProductParameters:(id)parameters;
- (void)loadWithProductURL:(id)l;
@end

@implementation SUScriptStoreSheetViewController

- (id)newNativeViewController
{
  [(SUScriptObject *)self lock];
  v3 = objc_alloc_init(ISWeakLinkedClassForString());
  [v3 setAutomaticallyDismisses:1];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)loadWithProductParameters:(id)parameters
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!parameters || (isKindOfClass & 1) != 0)
  {
LABEL_3:
    globalContext = [(WebFrame *)[(SUScriptObject *)self webFrame] globalContext];
    if (v5)
    {
      if (globalContext)
      {
        WebThreadRunOnMainThread();
      }
    }

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid argument"];
}

void __62__SUScriptStoreSheetViewController_loadWithProductParameters___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copyArrayOrDictionaryWithContext:*(a1 + 48)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(*(a1 + 40) "nativeViewController")];
  }
}

- (void)loadWithProductURL:(id)l
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !l) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __55__SUScriptStoreSheetViewController_loadWithProductURL___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  if (result)
  {
    v3 = result;
    v4 = [*(a1 + 40) nativeViewController];

    return [v4 loadProductWithURL:v3 completionBlock:0];
  }

  return result;
}

- (int64_t)productPageStyle
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

uint64_t __52__SUScriptStoreSheetViewController_productPageStyle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __56__SUScriptStoreSheetViewController_setProductPageStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  v3 = *(a1 + 40);

  return [v2 setProductPageStyle:v3];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_83 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptStoreSheetViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_63, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptStoreSheetViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptStoreSheetViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_83, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_63 = sel_loadWithProductParameters_;
    *algn_1EBF3BA48 = @"loadWithProductParameters";
    qword_1EBF3BA50 = sel_loadWithProductURL_;
    unk_1EBF3BA58 = @"loadWithProductURL";
    __KeyMapping_83 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"sheetStyle", @"productPageStyle", @"SHEET_STYLE_AUTOMATIC", @"productPageStyleAutomatic", @"SHEET_STYLE_PAD", @"productPageStylePad", @"SHEET_STYLE_PHONE", @"productPageStylePhone", 0}];
  }
}

@end