@interface NSURL(IMAdditions)
+ (id)percentEncodedStringToDictionary:()IMAdditions;
+ (id)pf_dictionaryToEscapedQueryString:()IMAdditions;
- (id)pf_URLByAppendingHashString:()IMAdditions;
- (id)pf_URLByAppendingQueryString:()IMAdditions;
- (id)pf_cleanUrlToEpisodeGuid;
- (id)pf_unescapedPath;
- (uint64_t)pf_cleanUrlToChannelStoreId;
- (uint64_t)pf_cleanUrlToSlashStoreId;
- (uint64_t)pf_cleanUrlToStoreId;
- (uint64_t)pf_cleanUrlToStoreTrackId;
@end

@implementation NSURL(IMAdditions)

- (uint64_t)pf_cleanUrlToStoreId
{
  pf_cleanUrlToSlashStoreId = [self pf_cleanUrlToSlashStoreId];
  if (!pf_cleanUrlToSlashStoreId)
  {
    absoluteString = [self absoluteString];
    v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"id=+(\\d*)" options:0 error:0];
    v5 = [v4 firstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 rangeAtIndex:1];
      v9 = [absoluteString substringWithRange:{v7, v8}];
      pf_cleanUrlToSlashStoreId = [v9 longLongValue];
    }

    else
    {
      pf_cleanUrlToSlashStoreId = 0;
    }
  }

  return pf_cleanUrlToSlashStoreId;
}

- (uint64_t)pf_cleanUrlToSlashStoreId
{
  absoluteString = [self absoluteString];
  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"/id+(\\d*)" options:0 error:0];
  v3 = [v2 firstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rangeAtIndex:1];
    v7 = [absoluteString substringWithRange:{v5, v6}];
    longLongValue = [v7 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (uint64_t)pf_cleanUrlToChannelStoreId
{
  absoluteString = [self absoluteString];
  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"podcast-channels/+(\\d*)" options:0 error:0];
  v3 = [v2 firstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];
  if (v3)
  {
    v4 = v3;
    v5 = v2;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"channel/.+/(?:id)?(\\d+)" options:0 error:0];

    v6 = [v5 firstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];
    if (!v6)
    {
      longLongValue = 0;
      goto LABEL_6;
    }

    v4 = v6;
  }

  v7 = [v4 rangeAtIndex:1];
  v9 = [absoluteString substringWithRange:{v7, v8}];
  longLongValue = [v9 longLongValue];

LABEL_6:
  return longLongValue;
}

+ (id)percentEncodedStringToDictionary:()IMAdditions
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 length];
  v24 = v3;
  if (v5)
  {
    v5 = [v3 componentsSeparatedByString:@"&"];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = @"=";
    v10 = 0x1E695D000uLL;
    do
    {
      v11 = 0;
      v25 = v7;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v27 + 1) + 8 * v11) componentsSeparatedByString:v9];
        v13 = [v12 objectAtIndexedSubscript:0];
        stringByRemovingPercentEncoding = [v13 stringByRemovingPercentEncoding];

        null = [*(v10 + 4016) null];
        if ([v12 count] >= 2)
        {
          [v12 objectAtIndexedSubscript:1];
          v16 = v8;
          v17 = dictionary;
          v18 = v10;
          v20 = v19 = v9;
          stringByRemovingPercentEncoding2 = [v20 stringByRemovingPercentEncoding];

          v9 = v19;
          v10 = v18;
          dictionary = v17;
          v8 = v16;
          v7 = v25;
          null = stringByRemovingPercentEncoding2;
        }

        [dictionary setObject:null forKey:stringByRemovingPercentEncoding];

        ++v11;
      }

      while (v7 != v11);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)pf_dictionaryToEscapedQueryString:()IMAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  string = [MEMORY[0x1E696AD60] string];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  keyEnumerator = [v3 keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([string length])
        {
          [string appendString:@"&"];
        }

        pf_stringWithPercentEscape = [v10 pf_stringWithPercentEscape];
        [string appendString:pf_stringWithPercentEscape];

        v12 = [v3 objectForKey:v10];
        null = [MEMORY[0x1E695DFB0] null];

        if (v12 != null)
        {
          [string appendString:@"="];
          pf_stringWithPercentEscape2 = [v12 pf_stringWithPercentEscape];
          [string appendString:pf_stringWithPercentEscape2];
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return string;
}

- (id)pf_URLByAppendingHashString:()IMAdditions
{
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [v4 componentsWithURL:self resolvingAgainstBaseURL:0];
  v7 = MEMORY[0x1E695DFF8];
  percentEncodedFragment = [v6 percentEncodedFragment];
  v9 = [v7 percentEncodedStringToDictionary:percentEncodedFragment];

  [v9 addEntriesFromDictionary:v5];
  v10 = [MEMORY[0x1E695DFF8] pf_dictionaryToEscapedQueryString:v9];
  [v6 setPercentEncodedFragment:v10];

  v11 = [v6 URL];

  return v11;
}

- (id)pf_URLByAppendingQueryString:()IMAdditions
{
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [v4 componentsWithURL:self resolvingAgainstBaseURL:0];
  v7 = MEMORY[0x1E695DFF8];
  percentEncodedQuery = [v6 percentEncodedQuery];
  v9 = [v7 percentEncodedStringToDictionary:percentEncodedQuery];

  [v9 addEntriesFromDictionary:v5];
  v10 = [MEMORY[0x1E695DFF8] pf_dictionaryToEscapedQueryString:v9];
  [v6 setPercentEncodedQuery:v10];

  v11 = [v6 URL];

  return v11;
}

- (id)pf_unescapedPath
{
  path = [self path];
  stringByRemovingPercentEscapes = [path stringByRemovingPercentEscapes];

  if ([stringByRemovingPercentEscapes hasPrefix:@"/"])
  {
    v3 = [stringByRemovingPercentEscapes substringFromIndex:1];

    stringByRemovingPercentEscapes = v3;
  }

  return stringByRemovingPercentEscapes;
}

- (uint64_t)pf_cleanUrlToStoreTrackId
{
  absoluteString = [self absoluteString];
  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"i=+(\\d*)" options:0 error:0];
  v3 = [v2 firstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rangeAtIndex:1];
    v7 = [absoluteString substringWithRange:{v5, v6}];
    longLongValue = [v7 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (id)pf_cleanUrlToEpisodeGuid
{
  absoluteString = [self absoluteString];
  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"episodeGuid=+([^&]+)" options:0 error:0];
  v3 = [v2 firstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rangeAtIndex:1];
    v7 = [absoluteString substringWithRange:{v5, v6}];
    stringByRemovingPercentEncoding = [v7 stringByRemovingPercentEncoding];
  }

  else
  {
    stringByRemovingPercentEncoding = 0;
  }

  return stringByRemovingPercentEncoding;
}

@end