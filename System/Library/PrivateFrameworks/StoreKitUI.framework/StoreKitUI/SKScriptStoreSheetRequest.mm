@interface SKScriptStoreSheetRequest
+ (id)webScriptNameForKey:(const char *)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)productURL;
- (WebScriptObject)productParameters;
- (id)_safeValueForValue:(id)a3;
- (id)newNativeStorePageRequest;
- (id)scriptAttributeKeys;
- (int64_t)productPageStyle;
- (int64_t)productPageStyleAutomatic;
- (int64_t)productPageStyleBanner;
- (int64_t)productPageStylePad;
- (int64_t)productPageStylePhone;
- (void)setProductPageStyle:(int64_t)a3;
- (void)setProductParameters:(id)a3;
- (void)setProductURL:(id)a3;
@end

@implementation SKScriptStoreSheetRequest

- (id)newNativeStorePageRequest
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptStoreSheetRequest *)v3 newNativeStorePageRequest:v4];
      }
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CDD3A0]);
  v12 = [(SUScriptObject *)self webFrame];
  v13 = [v12 globalContext];

  [(SUScriptObject *)self lock];
  [v11 setProductPageStyle:self->_pageStyle];
  productParameters = self->_productParameters;
  if (productParameters)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = [(WebScriptObject *)productParameters copyArrayOrDictionaryWithContext:v13];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 setProductParameters:v16];
    }
  }

  if (self->_productURL)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self->_productURL];
    [v11 setProductURL:v17];
  }

  [(SUScriptObject *)self unlock];
  return v11;
}

- (int64_t)productPageStyle
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptStoreSheetRequest *)v3 productPageStyle:v4];
      }
    }
  }

  [(SUScriptObject *)self lock];
  pageStyle = self->_pageStyle;
  [(SUScriptObject *)self unlock];
  return pageStyle;
}

- (WebScriptObject)productParameters
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptStoreSheetRequest *)v3 productParameters:v4];
      }
    }
  }

  [(SUScriptObject *)self lock];
  v11 = self->_productParameters;
  [(SUScriptObject *)self unlock];

  return v11;
}

- (NSString)productURL
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptStoreSheetRequest *)v3 productURL:v4];
      }
    }
  }

  [(SUScriptObject *)self lock];
  v11 = self->_productURL;
  [(SUScriptObject *)self unlock];

  return v11;
}

- (void)setProductPageStyle:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKScriptStoreSheetRequest *)v5 setProductPageStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SUScriptObject *)self lock];
  self->_pageStyle = a3;
  [(SUScriptObject *)self unlock];
}

- (void)setProductParameters:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKScriptStoreSheetRequest *)v5 setProductParameters:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = SKUIWebCoreFramework();
  v14 = SKUIWeakLinkedClassForString(&cfstr_Webscriptobjec.isa, v13);
  v15 = [(SKScriptStoreSheetRequest *)self _safeValueForValue:v4];

  if (v15 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    [v14 throwException:@"Invalid argument"];
  }

  else
  {
    [(SUScriptObject *)self lock];
    if (self->_productParameters != v15)
    {
      objc_storeStrong(&self->_productParameters, v15);
    }

    [(SUScriptObject *)self unlock];
  }
}

- (void)setProductURL:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKScriptStoreSheetRequest *)v5 setProductURL:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKScriptStoreSheetRequest *)self _safeValueForValue:v4];

  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = SKUIWebCoreFramework();
    [SKUIWeakLinkedClassForString(&cfstr_Webscriptobjec.isa v14)];
  }

  else
  {
    [(SUScriptObject *)self lock];
    if (self->_productURL != v13)
    {
      objc_storeStrong(&self->_productURL, v13);
    }

    [(SUScriptObject *)self unlock];
  }
}

- (int64_t)productPageStyleAutomatic
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKScriptStoreSheetRequest *)v2 productPageStyleAutomatic:v3];
      }
    }
  }

  return 0;
}

- (int64_t)productPageStyleBanner
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKScriptStoreSheetRequest *)v2 productPageStyleBanner:v3];
      }
    }
  }

  return 1;
}

- (int64_t)productPageStylePad
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKScriptStoreSheetRequest *)v2 productPageStylePad:v3];
      }
    }
  }

  return 3;
}

- (int64_t)productPageStylePhone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKScriptStoreSheetRequest *)v2 productPageStylePhone:v3];
      }
    }
  }

  return 2;
}

- (id)_safeValueForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v4 = SKUIWebCoreFramework(), SKUIWeakLinkedClassForString(&cfstr_Webundefined.isa, v4), v5 = v3, (objc_opt_isKindOfClass()))
  {

    v5 = 0;
  }

  return v5;
}

+ (id)webScriptNameForKey:(const char *)a3
{
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3];
  v6 = [__KeyMapping objectForKey:v5];
  if (!v6)
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___SKScriptStoreSheetRequest;
    v6 = objc_msgSendSuper2(&v8, sel_webScriptNameForKey_, a3);
  }

  return v6;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2();
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SKScriptStoreSheetRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SKScriptStoreSheetRequest;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"sheetStyle", @"productPageStyle", @"productParameters", @"productParameters", @"productURL", @"productURL", @"SHEET_STYLE_AUTOMATIC", @"productPageStyleAutomatic", @"SHEET_STYLE_BANNER", @"productPageStyleBanner", @"SHEET_STYLE_PAD", @"productPageStylePad", @"SHEET_STYLE_PHONE", @"productPageStylePhone", 0}];

    MEMORY[0x2821F96F8]();
  }
}

@end