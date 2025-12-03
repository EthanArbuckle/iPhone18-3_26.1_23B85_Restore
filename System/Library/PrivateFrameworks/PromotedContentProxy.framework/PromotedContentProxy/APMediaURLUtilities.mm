@interface APMediaURLUtilities
+ (id)proxyURLForURL:(id)l adIdentifier:(id)identifier;
@end

@implementation APMediaURLUtilities

+ (id)proxyURLForURL:(id)l adIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  if (lCopy)
  {
    v11 = objc_msgSend_host(lCopy, v6, v7, v8, v9);
    shouldProxyRequestToHost = objc_msgSend_shouldProxyRequestToHost_(APProxyURLUtilities, v12, v11, v13, v14);

    if (shouldProxyRequestToHost)
    {
      v17 = objc_msgSend_proxyURLForVideoURL_adIdentifier_changeScheme_(APProxyURLUtilities, v16, lCopy, identifierCopy, 1);
    }

    else
    {
      v17 = lCopy;
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