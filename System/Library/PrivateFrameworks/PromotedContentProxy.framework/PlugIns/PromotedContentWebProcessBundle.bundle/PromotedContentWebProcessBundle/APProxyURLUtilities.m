@interface APProxyURLUtilities
+ (BOOL)_shouldProxyRequestToHost:(id)a3;
+ (BOOL)shouldProxyRequestToHost:(id)a3;
+ (id)_proxyURLForVideoURL:(id)a3 adIdentifier:(id)a4 changeScheme:(BOOL)a5;
+ (id)composeUserAgentString:(id)a3 adIdentifier:(id)a4 maxRequestCount:(int64_t)a5;
+ (void)changeSchemeTo:(int64_t)a3 forUrlRequest:(id)a4;
@end

@implementation APProxyURLUtilities

+ (BOOL)shouldProxyRequestToHost:(id)a3
{
  v4 = a3;
  if (!+[APSystemInternal isAppleInternalInstall])
  {
    goto LABEL_6;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"APProxyURLMockSettings.proxyDisabled"];

  if (!v6 || ([v6 BOOLValue] & 1) == 0)
  {

LABEL_6:
    v7 = [a1 _shouldProxyRequestToHost:v4];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (BOOL)_shouldProxyRequestToHost:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 lowercaseString];
    if ([v4 isEqualToString:@"localhost"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"apple.com") & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".apple.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"qwapi.com") & 1) != 0 || (objc_msgSend(v4, "hasSuffix:", @".qwapi.com") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"mzstatic.com"))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [v4 hasSuffix:@".mzstatic.com"] ^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)composeUserAgentString:(id)a3 adIdentifier:(id)a4 maxRequestCount:(int64_t)a5
{
  v7 = a3;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_107A0;
  }

  v9 = a4;
  v10 = [(__CFString *)v8 componentsSeparatedByString:@"##"];
  v11 = [v10 firstObject];

  v12 = [v11 stringByAppendingFormat:@"##%@##%@##%@##%ld", @"ad-x-identifier", v9, @"max-request-count", a5];

  return v12;
}

+ (void)changeSchemeTo:(int64_t)a3 forUrlRequest:(id)a4
{
  v5 = a4;
  v7 = [v5 URL];
  v6 = [v7 changeSchemeTo:a3];
  [v5 setURL:v6];
}

+ (id)_proxyURLForVideoURL:(id)a3 adIdentifier:(id)a4 changeScheme:(BOOL)a5
{
  v5 = a5;
  v6 = [a3 setQueryItem:a4 forKey:@"videoAdvertisingIdentifier"];
  v7 = v6;
  if (v5)
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