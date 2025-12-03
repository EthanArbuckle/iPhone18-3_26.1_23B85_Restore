@interface APProxyURLUtilities
+ (BOOL)_shouldProxyRequestToHost:(id)host;
+ (BOOL)shouldProxyRequestToHost:(id)host;
+ (id)composeUserAgentString:(id)string adIdentifier:(id)identifier maxRequestCount:(int64_t)count;
+ (void)changeSchemeTo:(int64_t)to forUrlRequest:(id)request;
@end

@implementation APProxyURLUtilities

+ (BOOL)shouldProxyRequestToHost:(id)host
{
  hostCopy = host;
  if (!objc_msgSend_isAppleInternalInstall(MEMORY[0x277CE4AD0], v5, v6, v7, v8))
  {
    goto LABEL_6;
  }

  v13 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v9, v10, v11, v12);
  v17 = objc_msgSend_objectForKey_(v13, v14, @"APProxyURLMockSettings.proxyDisabled", v15, v16);

  if (!v17 || (objc_msgSend_BOOLValue(v17, v18, v19, v20, v21) & 1) == 0)
  {

LABEL_6:
    shouldProxyRequestToHost = objc_msgSend__shouldProxyRequestToHost_(self, v9, hostCopy, v11, v12);
    goto LABEL_7;
  }

  shouldProxyRequestToHost = 0;
LABEL_7:

  return shouldProxyRequestToHost;
}

+ (BOOL)_shouldProxyRequestToHost:(id)host
{
  hostCopy = host;
  if (objc_msgSend_length(hostCopy, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_lowercaseString(hostCopy, v8, v9, v10, v11);
    if (objc_msgSend_isEqualToString_(v12, v13, @"localhost", v14, v15) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v16, @"apple.com", v17, v18) & 1) != 0 || (objc_msgSend_hasSuffix_(v12, v19, @".apple.com", v20, v21) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v22, @"qwapi.com", v23, v24) & 1) != 0 || (objc_msgSend_hasSuffix_(v12, v25, @".qwapi.com", v26, v27) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v28, @"mzstatic.com", v29, v30))
    {
      LOBYTE(v34) = 0;
    }

    else
    {
      v34 = objc_msgSend_hasSuffix_(v12, v31, @".mzstatic.com", v32, v33) ^ 1;
    }
  }

  else
  {
    LOBYTE(v34) = 0;
  }

  return v34;
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
    v8 = &stru_28736F7C0;
  }

  identifierCopy = identifier;
  v13 = objc_msgSend_componentsSeparatedByString_(v8, v10, @"##", v11, v12);
  v18 = objc_msgSend_firstObject(v13, v14, v15, v16, v17);

  v22 = objc_msgSend_stringByAppendingFormat_(v18, v19, @"##%@##%@##%@##%ld", v20, v21, @"ad-x-identifier", identifierCopy, @"max-request-count", count);

  return v22;
}

+ (void)changeSchemeTo:(int64_t)to forUrlRequest:(id)request
{
  requestCopy = request;
  v17 = objc_msgSend_URL(requestCopy, v6, v7, v8, v9);
  v13 = objc_msgSend_changeSchemeTo_(v17, v10, to, v11, v12);
  objc_msgSend_setURL_(requestCopy, v14, v13, v15, v16);
}

@end