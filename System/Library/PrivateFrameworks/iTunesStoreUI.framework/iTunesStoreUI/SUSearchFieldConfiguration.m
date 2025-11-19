@interface SUSearchFieldConfiguration
+ (id)defaultConfiguration;
+ (id)defaultConfigurationWithClientInterface:(id)a3;
- (SUSearchFieldConfiguration)initWithDictionary:(id)a3;
- (SUSearchFieldConfiguration)initWithDictionary:(id)a3 clientInterface:(id)a4;
- (__CFDictionary)_newURLsDictionaryWithDictionary:(id)a3;
- (double)widthForOrientation:(int64_t)a3;
- (id)URLRequestPropertiesWithBaseURL:(id)a3 forNetworkType:(int64_t)a4;
- (id)_initWithClientInterface:(id)a3;
- (id)_newQueryStringDictionaryForNetworkType:(int64_t)a3;
- (id)_urlRequestPropertiesForURLBagKey:(id)a3 networkType:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hintsURLRequestPropertiesForNetworkType:(int64_t)a3;
- (id)searchURLRequestPropertiesForNetworkType:(int64_t)a3;
- (int64_t)_locationForString:(id)a3;
- (void)_setHintURLsFromDictionary:(id)a3;
- (void)_setSearchURLsFromDictionary:(id)a3;
- (void)dealloc;
- (void)loadFromDictionary:(id)a3;
@end

@implementation SUSearchFieldConfiguration

- (SUSearchFieldConfiguration)initWithDictionary:(id)a3
{
  v5 = +[SUClientDispatch clientInterface];

  return [(SUSearchFieldConfiguration *)self initWithDictionary:a3 clientInterface:v5];
}

- (SUSearchFieldConfiguration)initWithDictionary:(id)a3 clientInterface:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUSearchFieldConfiguration;
  v6 = [(SUSearchFieldConfiguration *)&v8 init];
  if (v6)
  {
    v6->_clientInterface = a4;
    v6->_location = 2;
    v6->_userDefaultsKey = @"SULastSearch";
    [(SUSearchFieldConfiguration *)v6 loadFromDictionary:a3];
  }

  return v6;
}

- (void)dealloc
{
  hintURLs = self->_hintURLs;
  if (hintURLs)
  {
    CFRelease(hintURLs);
  }

  searchURLs = self->_searchURLs;
  if (searchURLs)
  {
    CFRelease(searchURLs);
  }

  v5.receiver = self;
  v5.super_class = SUSearchFieldConfiguration;
  [(SUSearchFieldConfiguration *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "_initWithClientInterface:", self->_clientInterface}];
  *(v5 + 8) = [(NSString *)self->_cancelString copyWithZone:a3];
  *(v5 + 32) = self->_location;
  *(v5 + 40) = [(NSString *)self->_placeholder copyWithZone:a3];
  *(v5 + 48) = self->_rootViewOnly;
  *(v5 + 64) = [(NSString *)self->_userDefaultsKey copyWithZone:a3];
  *(v5 + 72) = self->_width;
  *(v5 + 80) = self->_widthLandscape;
  *(v5 + 88) = self->_widthPortrait;
  hintURLs = self->_hintURLs;
  if (hintURLs)
  {
    *(v5 + 24) = CFDictionaryCreateMutableCopy(0, 0, hintURLs);
  }

  searchURLs = self->_searchURLs;
  if (searchURLs)
  {
    *(v5 + 56) = CFDictionaryCreateMutableCopy(0, 0, searchURLs);
  }

  return v5;
}

+ (id)defaultConfiguration
{
  v3 = +[SUClientDispatch clientInterface];

  return [a1 defaultConfigurationWithClientInterface:v3];
}

+ (id)defaultConfigurationWithClientInterface:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) _initWithClientInterface:a3];
  *(v3 + 8) = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"CANCEL", &stru_1F41B3660, 0}];
  *(v3 + 40) = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SEARCH", &stru_1F41B3660, 0}];
  *(v3 + 64) = @"SULastSearch";
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    *(v3 + 80) = xmmword_1C233A140;
    v4 = 0x406F800000000000;
    v5 = 3;
  }

  else
  {
    v5 = 0;
    *(v3 + 48) = 1;
    v4 = 0x4074000000000000;
  }

  *(v3 + 32) = v5;
  *(v3 + 72) = v4;

  return v3;
}

- (id)hintsURLRequestPropertiesForNetworkType:(int64_t)a3
{
  if (self->_hintURLs)
  {
    v5 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:{CFDictionaryGetValue(self->_hintURLs, a3)}];

    return v5;
  }

  else
  {
    v7 = [(SUClientInterface *)self->_clientInterface URLBagKeyForIdentifier:@"SUURLBagKeySearchHints"];

    return [(SUSearchFieldConfiguration *)self _urlRequestPropertiesForURLBagKey:v7 networkType:a3];
  }
}

- (void)loadFromDictionary:(id)a3
{
  v5 = [a3 objectForKey:@"cancel-text"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_cancelString = v5;
  }

  v6 = [a3 objectForKey:@"hints-urls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUSearchFieldConfiguration *)self _setHintURLsFromDictionary:v6];
  }

  v7 = [a3 objectForKey:@"location"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_location = [(SUSearchFieldConfiguration *)self _locationForString:v7];
  }

  v8 = [a3 objectForKey:@"persistent-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    self->_userDefaultsKey = v8;
  }

  v9 = [a3 objectForKey:@"placeholder"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v10 = [v9 length];
    if (v10)
    {
      v10 = v9;
    }

    self->_placeholder = v10;
  }

  v11 = [a3 objectForKey:@"root-page-only"];
  if (objc_opt_respondsToSelector())
  {
    self->_rootViewOnly = [v11 BOOLValue];
  }

  v12 = [a3 objectForKey:@"search-urls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUSearchFieldConfiguration *)self _setSearchURLsFromDictionary:v12];
  }

  v13 = [a3 objectForKey:@"width"];
  if (objc_opt_respondsToSelector())
  {
    [v13 floatValue];
    self->_width = v14;
  }

  v15 = [a3 objectForKey:@"width-landscape"];
  if (objc_opt_respondsToSelector())
  {
    [v15 floatValue];
    self->_widthLandscape = v16;
  }

  v17 = [a3 objectForKey:@"width-portrait"];
  if (objc_opt_respondsToSelector())
  {
    [v17 floatValue];
    self->_widthPortrait = v18;
  }
}

- (id)searchURLRequestPropertiesForNetworkType:(int64_t)a3
{
  if (self->_searchURLs)
  {
    v5 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:{CFDictionaryGetValue(self->_searchURLs, a3)}];

    return v5;
  }

  else
  {
    v7 = [(SUClientInterface *)self->_clientInterface URLBagKeyForIdentifier:@"SUURLBagKeySearch"];

    return [(SUSearchFieldConfiguration *)self _urlRequestPropertiesForURLBagKey:v7 networkType:a3];
  }
}

- (id)URLRequestPropertiesWithBaseURL:(id)a3 forNetworkType:(int64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:a3];
  v7 = [(SUSearchFieldConfiguration *)self _newQueryStringDictionaryForNetworkType:a4];
  [v6 setRequestParameters:v7];

  return v6;
}

- (double)widthForOrientation:(int64_t)a3
{
  if ((a3 - 3) > 1)
  {
    result = self->_widthPortrait;
  }

  else
  {
    result = self->_widthLandscape;
  }

  if (result <= 0.00000011920929)
  {
    return self->_width;
  }

  return result;
}

- (id)_initWithClientInterface:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUSearchFieldConfiguration;
  v4 = [(SUSearchFieldConfiguration *)&v6 init];
  if (v4)
  {
    v4->_clientInterface = a3;
  }

  return v4;
}

- (int64_t)_locationForString:(id)a3
{
  v4 = 4;
  v5 = 2;
  for (i = &qword_1E81663D0; ![*(i - 1) isEqualToString:a3]; i += 2)
  {
    if (!--v4)
    {
      return v5;
    }
  }

  return *i;
}

- (id)_newQueryStringDictionaryForNetworkType:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(SUClientInterface *)self->_clientInterface clientIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E69E47F8] sharedCache];
    v9 = [objc_msgSend(v8 URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "searchQueryParametersForClientIdentifier:networkType:", v7, a3}];
    if (v9)
    {
      v10 = [MEMORY[0x1E695DFF8] copyDictionaryForQueryString:v9 unescapedValues:1];
      if (v10)
      {
        [v5 addEntriesFromDictionary:v10];
      }
    }
  }

  return v5;
}

- (__CFDictionary)_newURLsDictionaryWithDictionary:(id)a3
{
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__40;
  v9 = __Block_byref_object_dispose__40;
  v10 = 0;
  SSNetworkTypeApplyBlock();

  _Block_object_dispose(&v5, 8);
  return Mutable;
}

void __63__SUSearchFieldConfiguration__newURLsDictionaryWithDictionary___block_invoke(uint64_t a1, const void *a2)
{
  v4 = SSGetStringForNetworkType();
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKey:v4];
    if (!v5 && *(*(*(a1 + 40) + 8) + 40) && SSNetworkTypeIsCellularType())
    {
      v7 = *(a1 + 48);
      v8 = *(*(*(a1 + 40) + 8) + 40);

      CFDictionarySetValue(v7, a2, v8);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
        if (v6)
        {
          value = v6;
          if (SSNetworkTypeIsCellularType())
          {

            *(*(*(a1 + 40) + 8) + 40) = value;
          }

          CFDictionarySetValue(*(a1 + 48), a2, value);
        }
      }
    }
  }
}

- (void)_setHintURLsFromDictionary:(id)a3
{
  hintURLs = self->_hintURLs;
  if (hintURLs)
  {
    CFRelease(hintURLs);
  }

  self->_hintURLs = [(SUSearchFieldConfiguration *)self _newURLsDictionaryWithDictionary:a3];
}

- (void)_setSearchURLsFromDictionary:(id)a3
{
  searchURLs = self->_searchURLs;
  if (searchURLs)
  {
    CFRelease(searchURLs);
  }

  self->_searchURLs = [(SUSearchFieldConfiguration *)self _newURLsDictionaryWithDictionary:a3];
}

- (id)_urlRequestPropertiesForURLBagKey:(id)a3 networkType:(int64_t)a4
{
  v7 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  result = [objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  if (result)
  {

    return [(SUSearchFieldConfiguration *)self URLRequestPropertiesWithBaseURL:result forNetworkType:a4];
  }

  return result;
}

@end