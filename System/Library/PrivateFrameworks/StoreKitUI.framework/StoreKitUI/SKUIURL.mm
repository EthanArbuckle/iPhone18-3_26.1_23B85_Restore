@interface SKUIURL
- (BOOL)isEqual:(id)equal;
- (NSDictionary)queryStringDictionary;
- (NSString)URLBagKey;
- (NSString)actionString;
- (NSString)redeemCode;
- (NSString)searchTerm;
- (SKUIURL)initWithURL:(id)l;
- (SKUIURL)initWithURL:(id)l sourceApplication:(id)application annotation:(id)annotation;
- (SKUIURL)initWithURLBagKey:(id)key;
- (id)_appStoreSearchURLBagKey;
- (id)_decodedQueryParameter:(id)parameter;
- (id)_queryDictionary;
- (id)_searchGroupForSearchKind:(id)kind;
- (id)_searchURLBagKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newURLRequestWithBaseURL:(id)l;
- (id)valueForQueryParameter:(id)parameter;
- (unint64_t)hash;
@end

@implementation SKUIURL

- (SKUIURL)initWithURL:(id)l
{
  lCopy = l;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIURL initWithURL:];
  }

  v14.receiver = self;
  v14.super_class = SKUIURL;
  v5 = [(SKUIURL *)&v14 init];
  if (v5)
  {
    scheme = [lCopy scheme];
    if ([scheme isEqualToString:@"https"])
    {
      v7 = [lCopy copy];
      url = v5->_url;
      v5->_url = v7;
    }

    else
    {
      v9 = [scheme length];
      absoluteString = [lCopy absoluteString];
      url = [absoluteString stringByReplacingCharactersInRange:0 withString:{v9, @"https"}];

      v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:url];
      v12 = v5->_url;
      v5->_url = v11;
    }
  }

  return v5;
}

- (SKUIURL)initWithURL:(id)l sourceApplication:(id)application annotation:(id)annotation
{
  applicationCopy = application;
  annotationCopy = annotation;
  v10 = [(SKUIURL *)self initWithURL:l];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = SKUIMobileCoreServicesFramework();
      v12 = *SKUIWeakLinkedSymbolForString("LSReferrerURLKey", v11);
      if (v12)
      {
        v13 = [annotationCopy objectForKey:v12];
      }

      else
      {
        v13 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SKUIURL *)v10 setReferrerURLString:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          absoluteString = [v13 absoluteString];
          [(SKUIURL *)v10 setReferrerURLString:absoluteString];
        }
      }
    }

    [(SKUIURL *)v10 setReferrerApplicationName:applicationCopy];
  }

  return v10;
}

- (SKUIURL)initWithURLBagKey:(id)key
{
  v4 = MEMORY[0x277CCACE0];
  keyCopy = key;
  v6 = objc_alloc_init(v4);
  [v6 setScheme:@"https"];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"action" value:@"bagurl"];
  [v7 addObject:v8];

  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"bagkey" value:keyCopy];

  [v7 addObject:v9];
  [v6 setQueryItems:v7];
  v10 = [v6 URL];
  v11 = [(SKUIURL *)self initWithURL:v10];

  return v11;
}

- (NSString)actionString
{
  v3 = [(SKUIURL *)self valueForQueryParameter:@"action"];
  if (!v3)
  {
    absoluteString = [(NSURL *)self->_url absoluteString];
    if ([absoluteString rangeOfString:@"MZSearch.woa"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(absoluteString, "rangeOfString:", @"/search?") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([absoluteString rangeOfString:@"freeProductCodeWizard"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(absoluteString, "rangeOfString:", @"redeemLandingPage") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(absoluteString, "rangeOfString:", @"showDialogForRedeem") == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([absoluteString rangeOfString:@"buyLandingPage"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([absoluteString rangeOfString:@"buyCharityGiftWizard"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([absoluteString rangeOfString:@"MZFinance.woa"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(absoluteString, "rangeOfString:", @"finance-app") == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([absoluteString rangeOfString:@"viewEula"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v3 = 0;
              }

              else
              {
                v3 = @"eula";
              }
            }

            else if ([absoluteString rangeOfString:@"getPass"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v3 = @"account";
            }

            else
            {
              v3 = @"addpassbookpass";
            }
          }

          else
          {
            v3 = @"donate";
          }
        }

        else
        {
          v3 = @"gift";
        }
      }

      else
      {
        v3 = @"redeem";
      }
    }

    else
    {
      v3 = @"search";
    }
  }

  return v3;
}

- (id)newURLRequestWithBaseURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(MEMORY[0x277CBAB50]);
  _queryDictionary = [(SKUIURL *)self _queryDictionary];
  v7 = [_queryDictionary objectForKey:@"serialNumber"];
  if (v7)
  {
    [v5 setValue:v7 forHTTPHeaderField:@"x-apple-serial-number"];
  }

  host = [(NSURL *)lCopy host];

  if (host)
  {
    if (v7 || self->_url != lCopy)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = [_queryDictionary objectForKey:@"action"];
      v11 = [v10 isEqualToString:@"search"];

      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__77;
      v33 = __Block_byref_object_dispose__77;
      v34 = 0;
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"action", @"bagKey", @"x-apple-serial-number", 0}];
      v13 = v12;
      if (v11)
      {
        [v12 addObject:@"libraryid"];
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __36__SKUIURL_newURLRequestWithBaseURL___block_invoke;
      v23[3] = &unk_2781FF328;
      v28 = v11;
      v27 = &v29;
      v14 = v13;
      v24 = v14;
      selfCopy = self;
      v15 = v9;
      v26 = v15;
      [_queryDictionary enumerateKeysAndObjectsUsingBlock:v23];
      if (v30[5])
      {
        v16 = [(SKUIURL *)self _searchGroupForSearchKind:?];
        if ([v16 length])
        {
          [v15 setObject:v16 forKey:@"group"];
        }
      }

      v17 = [(NSURL *)lCopy copyQueryStringDictionaryWithUnescapedValues:1];
      if (v17)
      {
        [v15 addEntriesFromDictionary:v17];
      }

      if (v11)
      {
        v18 = [v15 objectForKey:@"string"];
        if (v18)
        {
          [v15 setObject:v18 forKey:@"term"];
          [v15 removeObjectForKey:@"string"];
        }
      }

      v19 = [(NSURL *)lCopy urlBySettingQueryStringDictionary:v15];

      _Block_object_dispose(&v29, 8);
      lCopy = v19;
    }

    [v5 setURL:lCopy];
  }

  referrerApplicationName = [(SKUIURL *)self referrerApplicationName];
  if (referrerApplicationName)
  {
    [v5 setValue:referrerApplicationName forHTTPHeaderField:@"ref-user-agent"];
  }

  referrerURLString = [(SKUIURL *)self referrerURLString];

  if (referrerURLString)
  {
    [v5 setValue:referrerURLString forHTTPHeaderField:@"referer"];
  }

  return v5;
}

void __36__SKUIURL_newURLRequestWithBaseURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 64) == 1 && (([v7 isEqualToString:@"kind"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"entity")))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    v6 = [*(a1 + 40) _decodedQueryParameter:v5];

    [*(a1 + 48) setObject:v6 forKey:v7];
    v5 = v6;
  }
}

- (NSDictionary)queryStringDictionary
{
  _queryDictionary = [(SKUIURL *)self _queryDictionary];
  v3 = [_queryDictionary copy];

  return v3;
}

- (NSString)redeemCode
{
  _queryDictionary = [(SKUIURL *)self _queryDictionary];
  v3 = [_queryDictionary objectForKey:@"code"];
  if (!v3)
  {
    v3 = [_queryDictionary objectForKey:@"certId"];
  }

  return v3;
}

- (NSString)searchTerm
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__77;
  v13 = __Block_byref_object_dispose__77;
  v14 = 0;
  _queryDictionary = [(SKUIURL *)self _queryDictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __21__SKUIURL_searchTerm__block_invoke;
  v8[3] = &unk_2781FA1D0;
  v8[4] = &v9;
  [_queryDictionary enumerateKeysAndObjectsUsingBlock:v8];
  v4 = [(SKUIURL *)self _decodedQueryParameter:v10[5]];
  v5 = v10[5];
  v10[5] = v4;

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __21__SKUIURL_searchTerm__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  if ([v14 isEqualToString:@"term"])
  {
    v8 = [v7 copy];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }

  else if ([v14 rangeOfString:@"term" options:13] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v14, "isEqualToString:", @"string"))
  {
    v11 = [v7 copy];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (NSString)URLBagKey
{
  _queryDictionary = [(SKUIURL *)self _queryDictionary];
  _searchURLBagKey = [_queryDictionary objectForKey:@"bagkey"];

  if (!_searchURLBagKey)
  {
    actionString = [(SKUIURL *)self actionString];
    _searchURLBagKey = @"library-link";
    if (([actionString isEqualToString:@"library-link"] & 1) == 0)
    {
      if ([actionString isEqualToString:@"search"])
      {
        _searchURLBagKey = [(SKUIURL *)self _searchURLBagKey];
      }

      else
      {
        _searchURLBagKey = @"newsstand";
        if (([actionString isEqualToString:@"newsstand"] & 1) == 0)
        {
          _searchURLBagKey = @"passbook";
          if (([actionString isEqualToString:@"passbook"] & 1) == 0)
          {
            _searchURLBagKey = @"ringtones";
            if (([actionString isEqualToString:@"ringtones"] & 1) == 0)
            {
              if ([actionString isEqualToString:@"accessory-lookup"])
              {
                _searchURLBagKey = @"p2-accessory-room";
              }

              else
              {
                _searchURLBagKey = 0;
              }
            }
          }
        }
      }
    }
  }

  return _searchURLBagKey;
}

- (id)valueForQueryParameter:(id)parameter
{
  parameterCopy = parameter;
  _queryDictionary = [(SKUIURL *)self _queryDictionary];
  v6 = [_queryDictionary objectForKey:parameterCopy];

  return v6;
}

- (id)_queryDictionary
{
  v23 = *MEMORY[0x277D85DE8];
  queryDictionary = self->_queryDictionary;
  if (!queryDictionary)
  {
    query = [(NSURL *)self->_url query];
    v5 = [query componentsSeparatedByString:@"&"];

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_queryDictionary;
    self->_queryDictionary = v6;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * v12) componentsSeparatedByString:{@"=", v18}];
          if ([v13 count] == 2)
          {
            v14 = self->_queryDictionary;
            v15 = [v13 objectAtIndex:1];
            v16 = [v13 objectAtIndex:0];
            [(NSMutableDictionary *)v14 setObject:v15 forKey:v16];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    queryDictionary = self->_queryDictionary;
  }

  return queryDictionary;
}

- (id)_decodedQueryParameter:(id)parameter
{
  v3 = [parameter stringByReplacingOccurrencesOfString:@"+" withString:@" "];
  stringByRemovingPercentEncoding = [v3 stringByRemovingPercentEncoding];

  return stringByRemovingPercentEncoding;
}

- (id)_searchGroupForSearchKind:(id)kind
{
  kindCopy = kind;
  if (([(__CFString *)kindCopy isEqualToString:@"epubBook"]& 1) != 0 || ([(__CFString *)kindCopy isEqualToString:@"metaEbook"]& 1) != 0 || ([(__CFString *)kindCopy isEqualToString:@"ibook"]& 1) != 0 || ([(__CFString *)kindCopy isEqualToString:@"ibookTextbook"]& 1) != 0)
  {
    v4 = @"ebook";
LABEL_6:

    goto LABEL_7;
  }

  if (([(__CFString *)kindCopy isEqualToString:@"book"]& 1) != 0)
  {
    v4 = @"audiobook";
    goto LABEL_6;
  }

  if (([(__CFString *)kindCopy isEqualToString:@"iMix"]& 1) != 0 || ([(__CFString *)kindCopy isEqualToString:@"itunesMix"]& 1) != 0 || ([(__CFString *)kindCopy isEqualToString:@"mix"]& 1) != 0 || ([(__CFString *)kindCopy isEqualToString:@"preorderAlbum"]& 1) != 0)
  {
    v4 = @"album";
    goto LABEL_6;
  }

  if (([(__CFString *)kindCopy isEqualToString:@"shortFilm"]& 1) != 0)
  {
    v4 = @"movie";
    goto LABEL_6;
  }

  if (([(__CFString *)kindCopy isEqualToString:@"tvEpisode"]& 1) != 0)
  {
    v4 = @"tvSeason";
    goto LABEL_6;
  }

  if (([(__CFString *)kindCopy isEqualToString:@"tone"]& 1) != 0)
  {
    v4 = @"ringtone";
    goto LABEL_6;
  }

  if (([(__CFString *)kindCopy isEqualToString:@"course"]& 1) != 0)
  {
    v4 = @"iTunesUCourse";
    goto LABEL_6;
  }

  v4 = kindCopy;
  if ([(__CFString *)kindCopy isEqualToString:@"any-audio"])
  {
    v4 = 0;
    goto LABEL_6;
  }

LABEL_7:

  return v4;
}

- (id)_searchURLBagKey
{
  host = [(NSURL *)self->_url host];
  v4 = [host length];

  if (v4)
  {
    _appStoreSearchURLBagKey = 0;
    goto LABEL_30;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (![bundleIdentifier isEqualToString:@"com.apple.AppStore"])
  {
    if ([bundleIdentifier isEqualToString:@"com.apple.MobileStore"])
    {
      _appStoreSearchURLBagKey = @"p2-music-search";
      goto LABEL_29;
    }

    if ([bundleIdentifier isEqualToString:@"com.apple.iBooks"])
    {
      _appStoreSearchURLBagKey = @"p2-book-search";
      goto LABEL_29;
    }

    if ([bundleIdentifier isEqualToString:@"com.apple.podcasts"])
    {
      _appStoreSearchURLBagKey = @"p2-podcasts-search";
      goto LABEL_29;
    }

    if ([bundleIdentifier isEqualToString:@"com.apple.itunesu"])
    {
      _appStoreSearchURLBagKey = @"p2-itunesu-search";
      goto LABEL_29;
    }

    _queryDictionary = [(SKUIURL *)self _queryDictionary];
    v9 = [_queryDictionary objectForKey:@"kind"];

    v10 = SKUIItemKindForString(v9);
    _appStoreSearchURLBagKey = 0;
    if (v10 > 3)
    {
      if (v10 <= 0x11)
      {
        if (((1 << v10) & 0x1E9C0) != 0)
        {
LABEL_16:
          _appStoreSearchURLBagKey = @"p2-music-search";
LABEL_28:

          goto LABEL_29;
        }

        if (((1 << v10) & 0x21020) != 0)
        {
          _appStoreSearchURLBagKey = [(SKUIURL *)self _appStoreSearchURLBagKey];
          goto LABEL_28;
        }

        if (((1 << v10) & 0x600) != 0)
        {
          _appStoreSearchURLBagKey = @"p2-podcasts-search";
          goto LABEL_28;
        }
      }

      if (v10 == 4)
      {
        _appStoreSearchURLBagKey = @"p2-itunesu-search";
      }

      goto LABEL_28;
    }

    if (v10 != 1)
    {
      if (v10 == 2)
      {
        _appStoreSearchURLBagKey = @"p2-book-search";
        goto LABEL_28;
      }

      if (v10 != 3)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_16;
  }

  _appStoreSearchURLBagKey = [(SKUIURL *)self _appStoreSearchURLBagKey];
LABEL_29:

LABEL_30:

  return _appStoreSearchURLBagKey;
}

- (id)_appStoreSearchURLBagKey
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"AppStoreSearchKeyOverride"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"p2-panda-search";
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSMutableDictionary *)self->_queryDictionary mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_referrerApplicationName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_referrerURLString copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSURL *)self->_url copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIURL;
  v4 = [(SKUIURL *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@ [Referrer: %@, %@]", v4, self->_url, self->_referrerApplicationName, self->_referrerURLString];

  return v5;
}

- (unint64_t)hash
{
  underlyingURL = [(SKUIURL *)self underlyingURL];
  v3 = [underlyingURL hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    underlyingURL = [(SKUIURL *)self underlyingURL];
    underlyingURL2 = [equalCopy underlyingURL];
    v6 = [underlyingURL isEqual:underlyingURL2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initWithURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIURL initWithURL:]";
}

@end