@interface SKScriptInterface
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SKProductPageViewController)parentProductPageViewController;
- (id)makeStoreSheetRequest;
- (void)showStoreSheetWithRequest:(id)a3 animated:(BOOL)a4;
@end

@implementation SKScriptInterface

+ (id)webScriptNameForSelector:(SEL)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKScriptInterface webScriptNameForSelector:];
  }

  v5 = SUWebScriptNameForSelector2();
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SKScriptInterface;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

+ (void)initialize
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKScriptInterface initialize]";
}

- (SKProductPageViewController)parentProductPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentProductPageViewController);

  return WeakRetained;
}

- (id)makeStoreSheetRequest
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptInterface(SKScriptStoreSheetRequest) *)v3 makeStoreSheetRequest:v4];
      }
    }
  }

  v11 = objc_alloc_init(SKScriptStoreSheetRequest);
  [(SUScriptObject *)self checkInScriptObject:v11];

  return v11;
}

- (void)showStoreSheetWithRequest:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKScriptInterface(SKScriptStoreSheetRequest) *)v7 showStoreSheetWithRequest:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v6 newNativeStorePageRequest];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__SKScriptInterface_SKScriptStoreSheetRequest__showStoreSheetWithRequest_animated___block_invoke;
    v20[3] = &unk_2781F9570;
    v20[4] = self;
    v21 = v15;
    v22 = a4;
    v16 = v15;
    v17 = SKUIWebCoreFramework();
    v18 = SKUIWeakLinkedSymbolForString("WebThreadRunOnMainThread", v17);
    if (v18)
    {
      v18(v20);
    }
  }

  else
  {
    v19 = SKUIWebCoreFramework();
    [SKUIWeakLinkedClassForString(&cfstr_Webscriptobjec.isa v19)];
  }
}

void __83__SKScriptInterface_SKScriptStoreSheetRequest__showStoreSheetWithRequest_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parentProductPageViewController];
  if (!v2)
  {
    v2 = [*(a1 + 32) parentViewController];
    if (v2)
    {
      while (1)
      {
        v5 = v2;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v3 = [v5 parentViewController];

        v2 = v3;
        if (!v3)
        {
          goto LABEL_2;
        }
      }

      v2 = v5;
    }
  }

LABEL_2:
  v4 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 _showPageWithRequest:*(a1 + 40) animated:*(a1 + 48)];
  }
}

+ (void)webScriptNameForSelector:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKScriptInterface webScriptNameForSelector:]";
}

@end