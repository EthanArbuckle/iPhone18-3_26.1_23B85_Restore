@interface NSError(WebKitExtras)
+ (id)_webkit_errorWithDomain:()WebKitExtras code:URL:;
+ (uint64_t)_webKitErrorWithCode:()WebKitExtras failingURL:;
+ (uint64_t)_webKitErrorWithDomain:()WebKitExtras code:URL:;
+ (uint64_t)_webkit_addErrorsWithCodesAndDescriptions:()WebKitExtras inDomain:;
+ (void)_registerWebKitErrors;
- (uint64_t)_initWithPluginErrorCode:()WebKitExtras contentURL:pluginPageURL:pluginName:MIMEType:;
@end

@implementation NSError(WebKitExtras)

+ (void)_registerWebKitErrors
{
  if (_registerWebKitErrors_flag != -1)
  {
    dispatch_once(&_registerWebKitErrors_flag, &__block_literal_global_3);
  }
}

+ (id)_webkit_errorWithDomain:()WebKitExtras code:URL:
{
  v5 = [[self alloc] _webkit_initWithDomain:a3 code:a4 URL:a5];

  return v5;
}

+ (uint64_t)_webKitErrorWithDomain:()WebKitExtras code:URL:
{
  [self _registerWebKitErrors];

  return [self _webkit_errorWithDomain:a3 code:a4 URL:a5];
}

+ (uint64_t)_webKitErrorWithCode:()WebKitExtras failingURL:
{
  v6 = WebKitErrorDomain;
  v7 = [MEMORY[0x1E695DFF8] _webkit_URLWithUserTypedString:a4];

  return [self _webKitErrorWithDomain:v6 code:a3 URL:v7];
}

- (uint64_t)_initWithPluginErrorCode:()WebKitExtras contentURL:pluginPageURL:pluginName:MIMEType:
{
  [objc_opt_class() _registerWebKitErrors];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [descriptions objectForKey:WebKitErrorDomain];
  v15 = [v14 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a3)}];
  if (v15)
  {
    [v13 setObject:v15 forKey:*MEMORY[0x1E696A578]];
  }

  if (a4)
  {
    [v13 setObject:a4 forKey:*MEMORY[0x1E696A980]];
    _web_userVisibleString = [a4 _web_userVisibleString];
    [v13 setObject:_web_userVisibleString forKey:*MEMORY[0x1E696A990]];
  }

  if (a5)
  {
    [v13 setObject:objc_msgSend(a5 forKey:{"_web_userVisibleString"), @"WebKitErrorPlugInPageURLStringKey"}];
  }

  if (a6)
  {
    [v13 setObject:a6 forKey:@"WebKitErrorPlugInNameKey"];
  }

  if (a7)
  {
    [v13 setObject:a7 forKey:@"WebKitErrorMIMETypeKey"];
  }

  if ([v13 count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v13];
  }

  else
  {
    v17 = 0;
  }

  v18 = [self initWithDomain:WebKitErrorDomain code:a3 userInfo:v17];
  return v18;
}

+ (uint64_t)_webkit_addErrorsWithCodesAndDescriptions:()WebKitExtras inDomain:
{
  v0 = descriptions;
  if (descriptions)
  {
  }

  else
  {
    v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
    descriptions = v0;
  }

  return [v0 setObject:? forKey:?];
}

@end