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
  uRLQueryAllowedCharacterSet = [v3 URLQueryAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

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
  uRLQueryAllowedCharacterSet = [v5 URLQueryAllowedCharacterSet];
  v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  uRLQueryAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v11 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];

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
  host = [self host];
  v11 = [host componentsSeparatedByString:@"."];

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
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if (([lowercaseString isEqualToString:@"rdar"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"radar"))
  {
    resourceSpecifier = [self resourceSpecifier];
    if (resourceSpecifier)
    {
      v5 = resourceSpecifier;
      uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

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
  scheme = [self scheme];
  v3 = [scheme isEqualToString:@"search"];

  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    path = [self path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    lastPathComponent = [stringByDeletingLastPathComponent lastPathComponent];
    v8 = [v4 numberWithLongLong:{objc_msgSend(lastPathComponent, "longLongValue")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)searchResultIdentifier
{
  scheme = [self scheme];
  v3 = [scheme isEqualToString:@"search"];

  if (v3)
  {
    path = [self path];
    lastPathComponent = [path lastPathComponent];
    uTF8String = [lastPathComponent UTF8String];

    if (uTF8String)
    {
      v7 = strtoull(uTF8String, 0, 10);
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
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = 0;
  v3 = [defaultWorkspace isApplicationAvailableToOpenURL:self includePrivateURLSchemes:0 error:&v5];

  return v3;
}

- (BOOL)isWebcalURL
{
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"webcal"])
  {
    v4 = 1;
  }

  else if (([lowercaseString isEqualToString:@"http"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"https"))
  {
    path = [self path];
    v6 = path;
    if (path)
    {
      v4 = [path rangeOfString:@".ics" options:13] != 0x7FFFFFFFFFFFFFFFLL;
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
  scheme = [self scheme];
  v2 = scheme;
  if (scheme)
  {
    v3 = [scheme compare:@"account" options:1] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isJavaScriptURL
{
  scheme = [self scheme];
  v2 = scheme;
  if (scheme)
  {
    v3 = [scheme caseInsensitiveCompare:@"javascript"] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isHTTPOrHTTPSURL
{
  scheme = [self scheme];
  v2 = scheme;
  if (scheme)
  {
    if ([scheme caseInsensitiveCompare:@"http"])
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