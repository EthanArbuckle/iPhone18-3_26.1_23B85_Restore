@interface APProxyURLUtilities
+ (BOOL)_shouldProxyRequestToHost:(id)host;
+ (BOOL)shouldProxyRequestToHost:(id)host;
+ (id)_proxyURLForVideoURL:(id)l adIdentifier:(id)identifier changeScheme:(BOOL)scheme;
+ (id)composeUserAgentString:(id)string adIdentifier:(id)identifier maxRequestCount:(int64_t)count;
+ (void)changeSchemeTo:(int64_t)to forUrlRequest:(id)request;
@end

@implementation APProxyURLUtilities

+ (BOOL)shouldProxyRequestToHost:(id)host
{
  hostCopy = host;
  if (!+[APSystemInternal isAppleInternalInstall])
  {
    goto LABEL_6;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"APProxyURLMockSettings.proxyDisabled"];

  if (!v6 || ([v6 BOOLValue] & 1) == 0)
  {

LABEL_6:
    v7 = [self _shouldProxyRequestToHost:hostCopy];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (BOOL)_shouldProxyRequestToHost:(id)host
{
  hostCopy = host;
  if ([hostCopy length])
  {
    lowercaseString = [hostCopy lowercaseString];
    if ([lowercaseString isEqualToString:@"localhost"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"apple.com") & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @".apple.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"qwapi.com") & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @".qwapi.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"mzstatic.com"))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [lowercaseString hasSuffix:@".mzstatic.com"] ^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)composeUserAgentString:(id)string adIdentifier:(id)identifier maxRequestCount:(int64_t)count
{
  stringCopy = string;
  if (stringCopy)
  {
    v8 = stringCopy;
  }

  else
  {
    v8 = &stru_107A0;
  }

  identifierCopy = identifier;
  v10 = [(__CFString *)v8 componentsSeparatedByString:@"##"];
  firstObject = [v10 firstObject];

  v12 = [firstObject stringByAppendingFormat:@"##%@##%@##%@##%ld", @"ad-x-identifier", identifierCopy, @"max-request-count", count];

  return v12;
}

+ (void)changeSchemeTo:(int64_t)to forUrlRequest:(id)request
{
  requestCopy = request;
  v7 = [requestCopy URL];
  v6 = [v7 changeSchemeTo:to];
  [requestCopy setURL:v6];
}

+ (id)_proxyURLForVideoURL:(id)l adIdentifier:(id)identifier changeScheme:(BOOL)scheme
{
  schemeCopy = scheme;
  v6 = [l setQueryItem:identifier forKey:@"videoAdvertisingIdentifier"];
  v7 = v6;
  if (schemeCopy)
  {
    if ([v6 isHTTP])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [v7 changeSchemeTo:v8];

    v7 = v9;
  }

  return v7;
}

@end