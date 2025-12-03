@interface NSURL(ISAdditions)
+ (id)_URLQueryParameterValueAllowedCharacterSet;
+ (id)copyDictionaryForQueryString:()ISAdditions unescapedValues:;
+ (id)escapedStringForString:()ISAdditions;
+ (id)unescapedStringForString:()ISAdditions;
+ (void)queryStringForDictionary:()ISAdditions escapedValues:;
- (id)URLByAppendingQueryParameter:()ISAdditions value:;
- (id)schemeSwizzledURL;
- (id)urlByReplacingSchemeWithScheme:()ISAdditions;
- (id)urlBySettingQueryStringDictionary:()ISAdditions;
- (uint64_t)copyQueryStringDictionaryWithUnescapedValues:()ISAdditions;
- (uint64_t)isSafeExternalURL;
- (void)enumerateQueryWithBlock:()ISAdditions;
@end

@implementation NSURL(ISAdditions)

+ (id)copyDictionaryForQueryString:()ISAdditions unescapedValues:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v5;
  v7 = [v5 componentsSeparatedByString:@"&"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v19 + 1) + 8 * v11) componentsSeparatedByString:@"="];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:1];
          if (a4)
          {
            v14 = [MEMORY[0x277CBEBC0] unescapedStringForString:v13];

            v13 = v14;
          }

          v15 = [v12 objectAtIndex:0];
          [v6 setObject:v13 forKey:v15];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)escapedStringForString:()ISAdditions
{
  v4 = a3;
  _URLQueryParameterValueAllowedCharacterSet = [self _URLQueryParameterValueAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:_URLQueryParameterValueAllowedCharacterSet];

  return v6;
}

+ (void)queryStringForDictionary:()ISAdditions escapedValues:
{
  v5 = a3;
  string = [MEMORY[0x277CCAB68] string];
  keyEnumerator = [v5 keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    v10 = 0;
    do
    {
      v11 = [v5 objectForKey:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [v11 stringValue];

        v11 = stringValue;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a4)
        {
          v13 = [self escapedStringForString:v11];

          v11 = v13;
        }

        if (v10)
        {
          v14 = @"&%@=%@";
        }

        else
        {
          v14 = @"%@=%@";
        }

        v15 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@%@" error:0, v9, v11];
        [string appendString:v15];

        ++v10;
      }

      nextObject2 = [keyEnumerator nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }

  if ([string length])
  {
    v17 = string;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

+ (id)unescapedStringForString:()ISAdditions
{
  v3 = a3;
  stringByRemovingPercentEncoding = v3;
  if ([v3 length])
  {
    stringByRemovingPercentEncoding = [v3 stringByRemovingPercentEncoding];
  }

  return stringByRemovingPercentEncoding;
}

- (uint64_t)copyQueryStringDictionaryWithUnescapedValues:()ISAdditions
{
  v4 = MEMORY[0x277CBEBC0];
  query = [self query];
  v6 = [v4 copyDictionaryForQueryString:query unescapedValues:a3];

  return v6;
}

- (id)URLByAppendingQueryParameter:()ISAdditions value:
{
  v6 = MEMORY[0x277CCAB68];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  absoluteString = [self absoluteString];
  v11 = [v9 initWithString:absoluteString];

  query = [self query];

  v13 = [MEMORY[0x277CBEBC0] escapedStringForString:v7];

  if (query)
  {
    v14 = @"&%@=%@";
  }

  else
  {
    v14 = @"?%@=%@";
  }

  [v11 appendFormat:v14, v8, v13];

  v15 = [MEMORY[0x277CBEBC0] URLWithString:v11];

  return v15;
}

- (id)urlBySettingQueryStringDictionary:()ISAdditions
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  absoluteString = [self absoluteString];
  v7 = [v5 initWithString:absoluteString];

  query = [self query];
  if (query)
  {
    v9 = [v7 rangeOfString:query options:4];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 deleteCharactersInRange:{v9, v10}];
    }
  }

  if (([v7 hasSuffix:@"?"] & 1) == 0)
  {
    [v7 appendString:@"?"];
  }

  v32 = query;
  v34 = v7;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = [self copyQueryStringDictionaryWithUnescapedValues:0];
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v18 = [v12 objectForKey:{v17, v32}];
        [v11 setObject:v18 forKey:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v14);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = v4;
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * j);
        v25 = MEMORY[0x277CBEBC0];
        v26 = [v19 objectForKey:{v24, v32}];
        v27 = [v25 escapedStringForString:v26];

        if (v27)
        {
          [v11 setObject:v27 forKey:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v21);
  }

  v28 = [MEMORY[0x277CBEBC0] queryStringForDictionary:v11 escapedValues:0];
  if (v28)
  {
    [v34 appendString:v28];
  }

  v29 = [MEMORY[0x277CBEBC0] URLWithString:{v34, v32}];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (uint64_t)isSafeExternalURL
{
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if (lowercaseString)
  {
    v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
    v4 = +[ISURLBagCache sharedCache];
    v5 = [v4 URLBagForContext:v3];

    v6 = [v5 valueForKey:@"mobile-url-handlers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 containsObject:lowercaseString])
    {
      v7 = 1;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"http", @"https", @"itms", @"itms-apps", @"itms-books", @"its-music", @"its-videos", @"itmss", @"itms-appss", @"itms-bookss", @"mailto", @"prefs", @"fuse", @"music", @"musics", @"itms-gc", @"itms-gcs", @"itms-itunesu", @"itms-itunesus", @"its-musics", @"its-videoss", @"itms-podcasts", @"itms-podcastss", @"shoebox", @"itsradio", @"livenation", @"disneymoviesanywhere", 0}];
      v7 = [v8 containsObject:lowercaseString];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)schemeSwizzledURL
{
  selfCopy = self;
  scheme = [selfCopy scheme];
  if ([scheme isEqualToString:@"itms"] & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-apps") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-books") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-news") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-gc") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-itunesu") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"its-music") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"its-videos") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-podcasts"))
  {
    v3 = @"http";
LABEL_11:
    absoluteString = [selfCopy absoluteString];
    v5 = [absoluteString substringFromIndex:{objc_msgSend(scheme, "length")}];
    v6 = [(__CFString *)v3 stringByAppendingString:v5];

    v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];

    selfCopy = v7;
    goto LABEL_12;
  }

  if (([scheme isEqualToString:@"itmss"] & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-appss") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-bookss") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-newss") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-gcs") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-itunesus") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"its-musics") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"its-videoss") & 1) != 0 || (objc_msgSend(scheme, "isEqualToString:", @"itms-podcastss") & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"itms-ui"))
  {
    v3 = @"https";
    goto LABEL_11;
  }

LABEL_12:

  return selfCopy;
}

- (id)urlByReplacingSchemeWithScheme:()ISAdditions
{
  v4 = a3;
  scheme = [self scheme];
  absoluteString = [self absoluteString];
  v7 = [absoluteString substringFromIndex:{objc_msgSend(scheme, "length")}];
  v8 = [v4 stringByAppendingString:v7];

  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  return v9;
}

- (void)enumerateQueryWithBlock:()ISAdditions
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  query = [self query];
  v6 = [query mutableCopy];

  [v6 replaceOccurrencesOfString:@";" withString:@"&" options:0 range:{0, objc_msgSend(v6, "length")}];
  [v6 componentsSeparatedByString:@"&"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndex:0];
          stringByRemovingPercentEncoding = [v12 stringByRemovingPercentEncoding];

          v14 = [v11 objectAtIndex:1];
          stringByRemovingPercentEncoding2 = [v14 stringByRemovingPercentEncoding];

          v4[2](v4, stringByRemovingPercentEncoding, stringByRemovingPercentEncoding2);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)_URLQueryParameterValueAllowedCharacterSet
{
  if (_URLQueryParameterValueAllowedCharacterSet_onceToken != -1)
  {
    +[NSURL(ISAdditions) _URLQueryParameterValueAllowedCharacterSet];
  }

  v1 = _URLQueryParameterValueAllowedCharacterSet_characterSet;

  return v1;
}

@end