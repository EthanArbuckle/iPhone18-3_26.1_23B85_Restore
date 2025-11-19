@interface NSURL(UIKitAdditions)
+ (id)URLWithDisplayIdentifier:()UIKitAdditions forSearchResultDomain:andIdentifier:;
+ (id)mapsURLWithQuery:()UIKitAdditions;
+ (id)mapsURLWithSourceAddress:()UIKitAdditions destinationAddress:;
- (BOOL)isAccountURL;
- (BOOL)isHTTPOrHTTPSURL;
- (BOOL)isJavaScriptURL;
- (BOOL)isWebcalURL;
- (id)radarWebURL;
- (id)searchResultDomain;
- (id)searchResultIdentifier;
- (uint64_t)isSpringboardHandledURL;
- (void)_domain:()UIKitAdditions subdomain:;
@end

@implementation NSURL(UIKitAdditions)

+ (id)mapsURLWithQuery:()UIKitAdditions
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 URLQueryAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];

  if ([v6 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"maps:q=%@", v6];
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)mapsURLWithSourceAddress:()UIKitAdditions destinationAddress:
{
  v5 = MEMORY[0x1E696AB08];
  v6 = a4;
  v7 = a3;
  v8 = [v5 URLQueryAllowedCharacterSet];
  v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

  v10 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v11 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v10];

  v12 = [v9 length];
  v13 = [v11 length];
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"maps:saddr=%@&daddr=%@", v9, v11];
LABEL_8:
    v16 = v15;
    v17 = [MEMORY[0x1E695DFF8] URLWithString:v15];

    goto LABEL_9;
  }

  if (v12)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"maps:saddr=%@", v9, v19];
    goto LABEL_8;
  }

  if (v13)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"maps:daddr=%@", v11, v19];
    goto LABEL_8;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (void)_domain:()UIKitAdditions subdomain:
{
  *a3 = 0;
  *a4 = 0;
  v6 = [a1 host];
  v11 = [v6 componentsSeparatedByString:@"."];

  v7 = [v11 count];
  v8 = v11;
  if (v7)
  {
    v9 = [v11 objectAtIndex:v7 - 1];
    if (([v9 _web_isCaseInsensitiveEqualToString:@"au"] & 1) != 0 || (objc_msgSend(v9, "_web_isCaseInsensitiveEqualToString:", @"jp") & 1) != 0 || objc_msgSend(v9, "_web_isCaseInsensitiveEqualToString:", @"uk"))
    {
      if (v7 < 3)
      {
        goto LABEL_9;
      }

      *a3 = [v11 objectAtIndex:v7 - 3];
      if (v7 == 3)
      {
        goto LABEL_9;
      }

      v10 = -4;
    }

    else
    {
      if (v7 == 1)
      {
        goto LABEL_9;
      }

      *a3 = [v11 objectAtIndex:v7 - 2];
      if (v7 < 3)
      {
        goto LABEL_9;
      }

      v10 = -3;
    }

    *a4 = [v11 objectAtIndex:v10 + v7];
LABEL_9:

    v8 = v11;
  }
}

- (id)radarWebURL
{
  v2 = [a1 scheme];
  v3 = [v2 lowercaseString];

  if (([v3 isEqualToString:@"rdar"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"radar"))
  {
    v4 = [a1 resourceSpecifier];
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];

      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://bugreport.apple.com/cgi-bin/WebObjects/RadarWeb.woa/wa/openURL?url=%@", v7];
      v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFF8] URLWithString:@"https://bugreport.apple.com/"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)URLWithDisplayIdentifier:()UIKitAdditions forSearchResultDomain:andIdentifier:
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"search://%@/%u/%llu", a3, a4, a5];
  v7 = [v5 URLWithString:v6];

  return v7;
}

- (id)searchResultDomain
{
  v2 = [a1 scheme];
  v3 = [v2 isEqualToString:@"search"];

  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [a1 path];
    v6 = [v5 stringByDeletingLastPathComponent];
    v7 = [v6 lastPathComponent];
    v8 = [v4 numberWithLongLong:{objc_msgSend(v7, "longLongValue")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)searchResultIdentifier
{
  v2 = [a1 scheme];
  v3 = [v2 isEqualToString:@"search"];

  if (v3)
  {
    v4 = [a1 path];
    v5 = [v4 lastPathComponent];
    v6 = [v5 UTF8String];

    if (v6)
    {
      v7 = strtoull(v6, 0, 10);
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)isSpringboardHandledURL
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = 0;
  v3 = [v2 isApplicationAvailableToOpenURL:a1 includePrivateURLSchemes:0 error:&v5];

  return v3;
}

- (BOOL)isWebcalURL
{
  v2 = [a1 scheme];
  v3 = [v2 lowercaseString];

  if ([v3 isEqualToString:@"webcal"])
  {
    v4 = 1;
  }

  else if (([v3 isEqualToString:@"http"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"https"))
  {
    v5 = [a1 path];
    v6 = v5;
    if (v5)
    {
      v4 = [v5 rangeOfString:@".ics" options:13] != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAccountURL
{
  v1 = [a1 scheme];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 compare:@"account" options:1] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isJavaScriptURL
{
  v1 = [a1 scheme];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 caseInsensitiveCompare:@"javascript"] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isHTTPOrHTTPSURL
{
  v1 = [a1 scheme];
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"http"])
    {
      v3 = [v2 caseInsensitiveCompare:@"https"] == 0;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end