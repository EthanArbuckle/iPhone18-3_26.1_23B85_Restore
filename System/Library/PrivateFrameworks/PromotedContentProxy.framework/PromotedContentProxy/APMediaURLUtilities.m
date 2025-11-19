@interface APMediaURLUtilities
+ (id)proxyURLForURL:(id)a3 adIdentifier:(id)a4;
@end

@implementation APMediaURLUtilities

+ (id)proxyURLForURL:(id)a3 adIdentifier:(id)a4
{
  v5 = a3;
  v10 = a4;
  if (v5)
  {
    v11 = objc_msgSend_host(v5, v6, v7, v8, v9);
    shouldProxyRequestToHost = objc_msgSend_shouldProxyRequestToHost_(APProxyURLUtilities, v12, v11, v13, v14);

    if (shouldProxyRequestToHost)
    {
      v17 = objc_msgSend_proxyURLForVideoURL_adIdentifier_changeScheme_(APProxyURLUtilities, v16, v5, v10, 1);
    }

    else
    {
      v17 = v5;
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end