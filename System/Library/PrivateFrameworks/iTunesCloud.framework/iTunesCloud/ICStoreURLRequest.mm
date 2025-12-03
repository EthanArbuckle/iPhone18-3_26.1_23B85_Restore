@interface ICStoreURLRequest
+ (BOOL)_shouldPersonalizeRequestForRequestContext:(id)context personalizationStyle:(int64_t)style;
+ (NSString)currentConnectionTypeHeader;
+ (unint64_t)_defaultMaxRetryCountForReason:(id)reason;
- (BOOL)_isPersonalizationRestricted;
- (ICStoreURLRequest)initWithURL:(id)l requestContext:(id)context;
- (ICStoreURLRequest)initWithURLRequest:(id)request requestContext:(id)context resumeData:(id)data;
- (NSDictionary)additionalHTTPCookies;
- (id)_stringForCachePolicy:(unint64_t)policy;
- (id)description;
- (void)_getSignatureDataForRequest:(id)request urlBag:(id)bag completionHandler:(id)handler;
- (void)buildStoreURLRequestWithURLRequest:(id)request builderProperties:(id)properties completionHandler:(id)handler;
- (void)buildURLRequestWithCompletionHandler:(id)handler;
@end

@implementation ICStoreURLRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICStoreURLRequest;
  v3 = [(ICURLRequest *)&v7 description];
  storeRequestContext = [(ICStoreURLRequest *)self storeRequestContext];
  v5 = [v3 stringByAppendingFormat:@"[requestContext=%@]", storeRequestContext];

  return v5;
}

+ (NSString)currentConnectionTypeHeader
{
  v2 = +[ICEnvironmentMonitor sharedMonitor];
  networkType = [v2 networkType];
  v4 = networkType;
  v5 = 0;
  v6 = 1;
  if (networkType > 7)
  {
    if (networkType <= 999)
    {
      if (networkType == 8)
      {
        v6 = 0;
        v5 = @"9G";
        goto LABEL_38;
      }

      if (networkType != 100)
      {
        if (networkType != 500)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if ((networkType - 1000) < 2)
      {
        goto LABEL_22;
      }

      if (networkType != 3000)
      {
        if (networkType != 2000)
        {
          goto LABEL_38;
        }

LABEL_22:
        v6 = 0;
        v5 = @"WiFi";
        goto LABEL_38;
      }
    }

    v6 = 0;
    v5 = @"3G";
    goto LABEL_38;
  }

  if (networkType > 3)
  {
    v7 = @"7G";
    v8 = @"8G";
    v9 = networkType != 7;
    if (networkType != 7)
    {
      v8 = 0;
    }

    if (networkType == 6)
    {
      v9 = 0;
    }

    else
    {
      v7 = v8;
    }

    v10 = @"6G";
    v11 = networkType != 5;
    if (networkType != 5)
    {
      v10 = 0;
    }

    if (networkType == 4)
    {
      v11 = 0;
      v10 = @"5G";
    }

    if (networkType <= 5)
    {
      v6 = v11;
    }

    else
    {
      v6 = v9;
    }

    if (networkType <= 5)
    {
      v5 = v10;
    }

    else
    {
      v5 = v7;
    }

    goto LABEL_38;
  }

  if (networkType == 1)
  {
LABEL_35:
    v6 = 0;
    v5 = @"2G";
    goto LABEL_38;
  }

  v12 = @"4G";
  if (networkType != 3)
  {
    v12 = 0;
  }

  v6 = networkType != 2 && networkType != 3;
  if (networkType == 2)
  {
    v5 = @"3G";
  }

  else
  {
    v5 = v12;
  }

LABEL_38:
  string = [MEMORY[0x1E696AD60] string];
  v14 = string;
  if (!v6)
  {
    [string appendString:v5];
    if ((v4 - 1) <= 0x1F2)
    {
      telephonyOperatorName = [v2 telephonyOperatorName];
      if ([telephonyOperatorName length])
      {
        uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v17 = [telephonyOperatorName stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

        [v14 appendFormat:@"/%@", v17];
      }
    }
  }

  return v14;
}

- (BOOL)_isPersonalizationRestricted
{
  storeRequestContext = [(ICStoreURLRequest *)self storeRequestContext];
  clientInfo = [storeRequestContext clientInfo];
  requestingBundleIdentifier = [clientInfo requestingBundleIdentifier];
  v5 = requestingBundleIdentifier;
  if (requestingBundleIdentifier)
  {
    bundleIdentifier = requestingBundleIdentifier;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  identity = [storeRequestContext identity];
  v9 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:identity];
  v10 = [v9 shouldBlockPersonalizedNetworkRequestsForBundleIdentifier:bundleIdentifier];

  return v10;
}

- (id)_stringForCachePolicy:(unint64_t)policy
{
  if (policy > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7BF6428[policy];
  }
}

- (void)_getSignatureDataForRequest:(id)request urlBag:(id)bag completionHandler:(id)handler
{
  v60 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  bagCopy = bag;
  handlerCopy = handler;
  if (bagCopy)
  {
    v11 = [bagCopy mescalConfigurationForRequest:requestCopy];
    if (v11)
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v58 = 2114;
        v59 = v11;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ creating mescal signature for request. configuration=%{public}@", buf, 0x16u);
      }

      v13 = objc_alloc_init(MEMORY[0x1E695DF88]);
      if ([v11 shouldSignBody])
      {
        hTTPMethod = [requestCopy HTTPMethod];
        v15 = [hTTPMethod isEqualToString:@"POST"];

        if (v15)
        {
          hTTPBody = [requestCopy HTTPBody];
          [v13 appendData:hTTPBody];
        }
      }

      hTTPMethod2 = [requestCopy HTTPMethod];
      v18 = [hTTPMethod2 isEqualToString:@"POST"];

      if ((v18 & 1) == 0)
      {
        selfCopy2 = self;
        v44 = handlerCopy;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v45 = v11;
        headers = [v11 headers];
        v20 = [headers countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v51;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v51 != v22)
              {
                objc_enumerationMutation(headers);
              }

              v24 = [requestCopy valueForHTTPHeaderField:*(*(&v50 + 1) + 8 * i)];
              v25 = v24;
              if (v24 && [v24 length])
              {
                v26 = [v25 dataUsingEncoding:4];
                [v13 appendData:v26];
              }
            }

            v21 = [headers countByEnumeratingWithState:&v50 objects:v55 count:16];
          }

          while (v21);
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        fields = [v45 fields];
        v28 = [fields countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v28)
        {
          v29 = v28;
          ic_queryParametersDictionary = 0;
          v31 = *v47;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v47 != v31)
              {
                objc_enumerationMutation(fields);
              }

              v33 = *(*(&v46 + 1) + 8 * j);
              if (!ic_queryParametersDictionary)
              {
                v34 = [requestCopy URL];
                ic_queryParametersDictionary = [v34 ic_queryParametersDictionary];
              }

              v35 = [ic_queryParametersDictionary objectForKey:v33];
              v36 = v35;
              if (v35 && [v35 length])
              {
                v37 = [v36 dataUsingEncoding:4];
                [v13 appendData:v37];
              }
            }

            v29 = [fields countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v29);
        }

        else
        {
          ic_queryParametersDictionary = 0;
        }

        v11 = v45;
        if ([v45 shouldIncludePath])
        {
          v38 = [requestCopy URL];
          path = [v38 path];

          v40 = [path dataUsingEncoding:4];
          [v13 appendData:v40];
        }

        self = selfCopy2;
        handlerCopy = v44;
      }

      storeRequestContext = [(ICStoreURLRequest *)self storeRequestContext];
      v42 = [ICSAPSession sharedSAPSessionWithVersion:200 URLBag:bagCopy requestContext:storeRequestContext];

      if (v42)
      {
        [v42 signData:v13 withCompletionHandler:handlerCopy];
      }

      else
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 0);
      }
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7200 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)buildStoreURLRequestWithURLRequest:(id)request builderProperties:(id)properties completionHandler:(id)handler
{
  v199 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  propertiesCopy = properties;
  handlerCopy = handler;
  storeRequestContext = [(ICStoreURLRequest *)self storeRequestContext];
  clientInfo = [storeRequestContext clientInfo];
  deviceInfo = [storeRequestContext deviceInfo];
  identityStore = [storeRequestContext identityStore];
  v12 = [requestCopy mutableCopy];
  v167 = [v12 URL];
  personalizationStyle = [storeRequestContext personalizationStyle];
  if (personalizationStyle == 1 && [(ICStoreURLRequest *)self _isPersonalizationRestricted])
  {
    v14 = storeRequestContext;
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Automatic personalization is requested but not allowed - failing request", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B13D8];
    v17 = *MEMORY[0x1E69B1350];
    v167 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Automatic personalization is requested but not allowed. url='%@'", v167];
    [v16 snapshotWithDomain:v17 type:@"Bug" subType:@"ICStoreURLRequest" context:v167 triggerThresholdValues:0 events:0 completion:0];

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
    handlerCopy[2](handlerCopy, v12, v19);
    goto LABEL_186;
  }

  v156 = personalizationStyle != 0;
  v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = "unpersonalized";
    if (personalizationStyle)
    {
      v21 = "personalized";
    }

    *buf = 138543618;
    selfCopy2 = self;
    v195 = 2082;
    v196 = v21;
    _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Building %{public}s store URL request", buf, 0x16u);
  }

  v165 = objc_alloc_init(MEMORY[0x1E695DF90]);
  uRLBag = [propertiesCopy URLBag];
  v159 = uRLBag;
  if (personalizationStyle && uRLBag && [uRLBag shouldAppendDeviceGUIDForURL:v167])
  {
    deviceGUID = [deviceInfo deviceGUID];
    if (deviceGUID)
    {
      [v165 setObject:deviceGUID forKey:@"guid"];
    }
  }

  v157 = storeRequestContext;
  v158 = handlerCopy;
  v24 = +[ICDefaults standardDefaults];
  isLegacyStoreCacheBusterEnabled = [v24 isLegacyStoreCacheBusterEnabled];

  if (isLegacyStoreCacheBusterEnabled)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [v165 setObject:uUIDString forKey:@"buster"];
  }

  if ([v165 count])
  {
    v28 = [v167 ic_URLByAppendingQueryParameters:v165];

    [v12 setURL:v28];
    v167 = v28;
  }

  additionalQueryItems = [(ICStoreURLRequest *)self additionalQueryItems];
  v155 = additionalQueryItems;
  if ([additionalQueryItems count])
  {
    v30 = [v167 ic_URLByAppendingQueryItems:additionalQueryItems];

    [v12 setURL:v30];
    v167 = v30;
  }

  dSID = [propertiesCopy DSID];
  v32 = dSID;
  if (personalizationStyle)
  {
    v33 = [v12 valueForHTTPHeaderField:@"X-Dsid"];

    v153 = v32 != 0;
    if (!v33 && v32)
    {
      stringValue = [v32 stringValue];
      [v12 setValue:stringValue forHTTPHeaderField:@"X-Dsid"];
    }

    v35 = [v12 valueForHTTPHeaderField:@"iCloud-DSID"];

    if (!v35)
    {
      iCloudPersonID = [propertiesCopy iCloudPersonID];
      if (iCloudPersonID)
      {
        [v12 setValue:iCloudPersonID forHTTPHeaderField:@"iCloud-DSID"];
      }
    }
  }

  else
  {
    v153 = dSID != 0;
  }

  v37 = [v12 valueForHTTPHeaderField:@"X-Apple-Requesting-Bundle-Id"];

  if (!v37)
  {
    requestingBundleIdentifier = [clientInfo requestingBundleIdentifier];
    if ([requestingBundleIdentifier length])
    {
      [v12 setValue:requestingBundleIdentifier forHTTPHeaderField:@"X-Apple-Requesting-Bundle-Id"];
    }
  }

  v39 = [v12 valueForHTTPHeaderField:@"X-Apple-Requesting-Bundle-Version"];

  if (!v39)
  {
    requestingBundleVersion = [clientInfo requestingBundleVersion];
    if ([requestingBundleVersion length])
    {
      [v12 setValue:requestingBundleVersion forHTTPHeaderField:@"X-Apple-Requesting-Bundle-Version"];
    }
  }

  v163 = v32;
  v41 = [v12 valueForHTTPHeaderField:@"X-Enqueuer-DSID"];

  selfCopy3 = self;
  if (!v41)
  {
    delegatedDSID = [propertiesCopy delegatedDSID];
    if (delegatedDSID)
    {
      v43 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        stringValue2 = [delegatedDSID stringValue];
        *buf = 138543874;
        selfCopy2 = selfCopy3;
        v195 = 2112;
        v196 = @"X-Enqueuer-DSID";
        v197 = 2112;
        v198 = stringValue2;
        _os_log_impl(&dword_1B4491000, v43, OS_LOG_TYPE_DEBUG, "%{public}@ - buildStoreURLRequestWithURLRequest:properties:completionHandler: - Delegation header [dsid] [%@: %@]", buf, 0x20u);
      }

      stringValue3 = [delegatedDSID stringValue];
      [v12 setValue:stringValue3 forHTTPHeaderField:@"X-Enqueuer-DSID"];
    }
  }

  v46 = [v12 valueForHTTPHeaderField:@"X-Apple-Enqueuer-Store-Front"];

  if (!v46)
  {
    delegatedStorefrontIdentifier = [propertiesCopy delegatedStorefrontIdentifier];
    if ([delegatedStorefrontIdentifier length])
    {
      delegatedURLBag = [propertiesCopy delegatedURLBag];
      v49 = delegatedURLBag;
      if (delegatedURLBag)
      {
        uRLBag2 = delegatedURLBag;
      }

      else
      {
        uRLBag2 = [propertiesCopy URLBag];
      }

      storefrontHeaderSuffix = [uRLBag2 storefrontHeaderSuffix];
      if ([storefrontHeaderSuffix length])
      {
        v52 = [delegatedStorefrontIdentifier stringByAppendingString:storefrontHeaderSuffix];

        delegatedStorefrontIdentifier = v52;
      }

      [v12 setValue:delegatedStorefrontIdentifier forHTTPHeaderField:@"X-Apple-Enqueuer-Store-Front"];
    }
  }

  v53 = [v12 valueForHTTPHeaderField:@"X-WHA-Token"];

  v162 = propertiesCopy;
  if (!v53)
  {
    delegateToken = [propertiesCopy delegateToken];
    if ([delegateToken type] == 1)
    {
      data = [delegateToken data];
      v56 = [data base64EncodedStringWithOptions:0];
      if (v56)
      {
        v57 = requestCopy;
        v58 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543874;
          selfCopy2 = selfCopy3;
          v195 = 2112;
          v196 = @"X-WHA-Token";
          v197 = 2112;
          v198 = v56;
          _os_log_impl(&dword_1B4491000, v58, OS_LOG_TYPE_DEBUG, "%{public}@ - buildStoreURLRequestWithURLRequest:properties:completionHandler: - Delegation header [token] [%@: %@]", buf, 0x20u);
        }

        [v12 setValue:v56 forHTTPHeaderField:@"X-WHA-Token"];
        requestCopy = v57;
      }

      propertiesCopy = v162;
    }
  }

  v59 = [v12 valueForHTTPHeaderField:@"X-Apple-Tz"];

  if (!v59)
  {
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    secondsFromGMT = [localTimeZone secondsFromGMT];
    v62 = [MEMORY[0x1E696AD98] numberWithDouble:secondsFromGMT];
    stringValue4 = [v62 stringValue];
    [v12 setValue:stringValue4 forHTTPHeaderField:@"X-Apple-Tz"];
  }

  v64 = [v12 valueForHTTPHeaderField:@"X-Apple-I-Client-Time"];

  v65 = selfCopy3;
  if (!v64)
  {
    if (buildStoreURLRequestWithURLRequest_builderProperties_completionHandler__sClientTimeDateFormatterOnceToken != -1)
    {
      dispatch_once(&buildStoreURLRequestWithURLRequest_builderProperties_completionHandler__sClientTimeDateFormatterOnceToken, &__block_literal_global_20402);
    }

    v66 = buildStoreURLRequestWithURLRequest_builderProperties_completionHandler__sClientTimeDateFormatter;
    date = [MEMORY[0x1E695DF00] date];
    v68 = [v66 stringFromDate:date];

    if ([v68 length])
    {
      [v12 setValue:v68 forHTTPHeaderField:@"X-Apple-I-Client-Time"];
    }
  }

  v69 = [v12 valueForHTTPHeaderField:@"X-Apple-Connection-Type"];

  if (!v69)
  {
    currentConnectionTypeHeader = [objc_opt_class() currentConnectionTypeHeader];
    if ([currentConnectionTypeHeader length])
    {
      [v12 setValue:currentConnectionTypeHeader forHTTPHeaderField:@"X-Apple-Connection-Type"];
    }
  }

  v71 = [v12 valueForHTTPHeaderField:@"X-Apple-Cuid"];

  if (!v71)
  {
    v72 = +[ICDefaults standardDefaults];
    cloudMediaLibraryUID = [v72 cloudMediaLibraryUID];

    if (cloudMediaLibraryUID)
    {
      [v12 setValue:cloudMediaLibraryUID forHTTPHeaderField:@"X-Apple-Cuid"];
    }
  }

  v74 = [v12 valueForHTTPHeaderField:@"X-Apple-Store-Front"];

  if (!v74)
  {
    storefrontIdentifier = [propertiesCopy storefrontIdentifier];
    v76 = storefrontIdentifier;
    if (storefrontIdentifier)
    {
      storefrontIdentifier2 = storefrontIdentifier;
    }

    else
    {
      localStoreAccountProperties = [identityStore localStoreAccountProperties];
      storefrontIdentifier2 = [localStoreAccountProperties storefrontIdentifier];

      v65 = selfCopy3;
    }

    if ([storefrontIdentifier2 length])
    {
      storefrontHeaderSuffix2 = [v159 storefrontHeaderSuffix];
      if ([storefrontHeaderSuffix2 length])
      {
        v80 = [storefrontIdentifier2 stringByAppendingString:storefrontHeaderSuffix2];

        storefrontIdentifier2 = v80;
      }

      [v12 setValue:storefrontIdentifier2 forHTTPHeaderField:@"X-Apple-Store-Front"];

      v65 = selfCopy3;
    }
  }

  v81 = +[ICDeviceInfo currentDeviceInfo];
  isInternalBuild = [v81 isInternalBuild];

  if (isInternalBuild)
  {
    v83 = [v12 valueForHTTPHeaderField:@"X-Apple-Issuing-Process"];

    if (!v83)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      [v12 setValue:bundleIdentifier forHTTPHeaderField:@"X-Apple-Issuing-Process"];
    }

    v86 = [v12 valueForHTTPHeaderField:@"X-Apple-Requesting-Process"];

    if (!v86)
    {
      _clientIdentifierForUserAgent = [clientInfo _clientIdentifierForUserAgent];
      [v12 setValue:_clientIdentifierForUserAgent forHTTPHeaderField:@"X-Apple-Requesting-Process"];
    }

    v88 = [v12 valueForHTTPHeaderField:@"X-Apple-NSURLCachePolicy"];

    if (!v88)
    {
      v89 = -[ICStoreURLRequest _stringForCachePolicy:](v65, "_stringForCachePolicy:", [v12 cachePolicy]);
      [v12 setValue:v89 forHTTPHeaderField:@"X-Apple-NSURLCachePolicy"];
    }
  }

  [v12 setHTTPShouldHandleCookies:0];
  v90 = +[ICHTTPCookieStore sharedCookieStore];
  v91 = v90;
  v154 = v90;
  if (personalizationStyle)
  {
    v92 = [v90 getCookiesHeadersForURL:v167 userIdentifier:v163];
  }

  else
  {
    v93 = +[ICDeviceInfo currentDeviceInfo];
    isInternalBuild2 = [v93 isInternalBuild];

    if (isInternalBuild2)
    {
      v152 = requestCopy;
      v95 = [v91 getCookiesForURL:v167 userIdentifier:v163];
      v96 = [MEMORY[0x1E695DFD8] setWithObjects:{@"itfe", 0}];
      v169 = [MEMORY[0x1E695DFD8] setWithObjects:{@".apple.com", 0}];
      array = [MEMORY[0x1E695DF70] array];
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v97 = v95;
      v98 = [v97 countByEnumeratingWithState:&v187 objects:v192 count:16];
      if (v98)
      {
        v99 = v98;
        v100 = *v188;
        do
        {
          for (i = 0; i != v99; ++i)
          {
            if (*v188 != v100)
            {
              objc_enumerationMutation(v97);
            }

            v102 = *(*(&v187 + 1) + 8 * i);
            name = [v102 name];
            if ([v96 containsObject:name])
            {
              domain = [v102 domain];
              v105 = [v169 containsObject:domain];

              if (v105)
              {
                [array addObject:v102];
              }
            }

            else
            {
            }
          }

          v99 = [v97 countByEnumeratingWithState:&v187 objects:v192 count:16];
        }

        while (v99);
      }

      if ([array count])
      {
        v92 = [MEMORY[0x1E695ABF8] requestHeaderFieldsWithCookies:array];
      }

      else
      {
        v92 = 0;
      }

      requestCopy = v152;
    }

    else
    {
      v92 = 0;
    }
  }

  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v106 = v92;
  v107 = [v106 countByEnumeratingWithState:&v183 objects:v191 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v184;
    do
    {
      for (j = 0; j != v108; ++j)
      {
        if (*v184 != v109)
        {
          objc_enumerationMutation(v106);
        }

        v111 = *(*(&v183 + 1) + 8 * j);
        v112 = [v12 valueForHTTPHeaderField:v111];

        if (!v112)
        {
          v113 = [v106 objectForKeyedSubscript:v111];
          [v12 setValue:v113 forHTTPHeaderField:v111];
        }
      }

      v108 = [v106 countByEnumeratingWithState:&v183 objects:v191 count:16];
    }

    while (v108);
  }

  v114 = selfCopy3;
  if ([(NSDictionary *)selfCopy3->_additionalHTTPCookies count])
  {
    [v12 ic_appendHTTPCookies:selfCopy3->_additionalHTTPCookies];
  }

  v115 = [v12 valueForHTTPHeaderField:@"X-Apple-Device-Model"];

  propertiesCopy = v162;
  if (!v115)
  {
    v116 = +[ICDeviceInfo currentDeviceInfo];
    rawDeviceModel = [v116 rawDeviceModel];

    if (rawDeviceModel)
    {
      [v12 setValue:rawDeviceModel forHTTPHeaderField:@"X-Apple-Device-Model"];
    }
  }

  anisetteVersion = selfCopy3->_anisetteVersion;
  if (anisetteVersion != -1)
  {
    if (anisetteVersion == 1)
    {
      anisetteVersion = v153;
      selfCopy3->_anisetteVersion = v153;
    }

    if (!anisetteVersion)
    {
      goto LABEL_169;
    }

LABEL_132:
    v119 = requestCopy;
    v120 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      v121 = selfCopy3->_anisetteVersion;
      *buf = 138543618;
      selfCopy2 = selfCopy3;
      v195 = 1024;
      LODWORD(v196) = v121;
      _os_log_impl(&dword_1B4491000, v120, OS_LOG_TYPE_DEFAULT, "%{public}@ adding MD headers for version %d", buf, 0x12u);
    }

    v181 = 0;
    v182 = 0;
    v180 = 0;
    v122 = +[ICADIUtilities generateMachineDataForAccountID:returningMachineIDData:otpData:error:](ICADIUtilities, "generateMachineDataForAccountID:returningMachineIDData:otpData:error:", [v163 unsignedLongLongValue], &v182, &v181, &v180);
    v123 = v182;
    v124 = v181;
    v125 = v180;
    if (!v122)
    {
      v130 = selfCopy3->_anisetteVersion;
      if (v130 != 1)
      {
        goto LABEL_154;
      }

      v126 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = selfCopy3;
        v195 = 2114;
        v196 = v125;
        _os_log_impl(&dword_1B4491000, v126, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to generate MD header data. err=%{public}@", buf, 0x16u);
      }

      goto LABEL_152;
    }

    if (v123)
    {
      v126 = [v123 base64EncodedStringWithOptions:0];

      if (v126)
      {
        [v12 setValue:v126 forHTTPHeaderField:@"X-Apple-MD-M"];
      }

      if (!v124)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v126 = 0;
      if (!v124)
      {
        goto LABEL_152;
      }
    }

    v131 = [v124 base64EncodedStringWithOptions:0];

    if (!v131)
    {
LABEL_153:
      v130 = selfCopy3->_anisetteVersion;
LABEL_154:
      if (v130 == 2)
      {
        v178 = v124;
        v179 = v123;
        v177 = v125;
        v132 = [ICADIUtilities generateMachineDataForAccountID:-1 returningMachineIDData:&v179 otpData:&v178 error:&v177];
        v133 = v179;

        v134 = v178;
        v135 = v177;

        if (!v132)
        {
          v136 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy2 = selfCopy3;
            v195 = 2114;
            v196 = v135;
            _os_log_impl(&dword_1B4491000, v136, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to generate AMD header data. err=%{public}@", buf, 0x16u);
          }

          requestCopy = v119;
          goto LABEL_167;
        }

        if (v133)
        {
          v136 = [v133 base64EncodedStringWithOptions:0];

          if (v136)
          {
            [v12 setValue:v136 forHTTPHeaderField:@"X-Apple-AMD-M"];
          }
        }

        else
        {
          v136 = 0;
        }

        requestCopy = v119;
        if (!v134)
        {
LABEL_167:

          goto LABEL_168;
        }

        v137 = [v134 base64EncodedStringWithOptions:0];

        if (v137)
        {
          [v12 setValue:v137 forHTTPHeaderField:@"X-Apple-AMD"];
          v136 = v137;
          goto LABEL_167;
        }
      }

      else
      {
        v135 = v125;
        v133 = v123;
        v134 = v124;
        requestCopy = v119;
      }

LABEL_168:

      propertiesCopy = v162;
      v114 = selfCopy3;
      goto LABEL_169;
    }

    [v12 setValue:v131 forHTTPHeaderField:@"X-Apple-MD"];
    v126 = v131;
LABEL_152:

    goto LABEL_153;
  }

  if (v159)
  {
    v127 = [v12 URL];
    v128 = [v159 shouldAppendMachineDataHeadersForURL:v127];
    v129 = 2;
    if (!v128)
    {
      v129 = 0;
    }

    selfCopy3->_anisetteVersion = v129;

    if (!selfCopy3->_anisetteVersion)
    {
      goto LABEL_169;
    }

    goto LABEL_132;
  }

  selfCopy3->_anisetteVersion = 0;
LABEL_169:
  if (v114->_machineDataSyncState)
  {
    if (v114->_anisetteVersion == 1)
    {
      v138 = @"X-Apple-MD-S";
    }

    else
    {
      v138 = @"X-Apple-AMD-S";
    }

    v139 = v138;
    [v12 setValue:v114->_machineDataSyncState forHTTPHeaderField:v139];
  }

  handlerCopy = v158;
  if (v114->_JSSignConfiguration)
  {
    v140 = [[ICJSSign alloc] initWithConfiguration:v114->_JSSignConfiguration];
    v141 = [(ICJSSign *)v140 signatureDataWithURLRequest:v12];
    v142 = v141;
    if (v141)
    {
      v143 = [v141 base64EncodedStringWithOptions:0];
      v144 = v114;
      v145 = v143;
      signatureDataCookieName = [(ICJSSignConfiguration *)v144->_JSSignConfiguration signatureDataCookieName];
      if ([signatureDataCookieName length])
      {
        [v12 ic_appendHTTPCookieWithName:signatureDataCookieName value:v145];
      }

      signatureDataHeaderName = [(ICJSSignConfiguration *)selfCopy3->_JSSignConfiguration signatureDataHeaderName];
      if ([signatureDataHeaderName length])
      {
        [v12 setValue:v145 forHTTPHeaderField:signatureDataHeaderName];
      }

      propertiesCopy = v162;
      v114 = selfCopy3;
    }
  }

  v174[0] = MEMORY[0x1E69E9820];
  v174[1] = 3221225472;
  v174[2] = __92__ICStoreURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke_247;
  v174[3] = &unk_1E7BF7860;
  v176 = v156;
  v148 = v12;
  v175 = v148;
  v149 = MEMORY[0x1B8C781E0](v174);
  v150 = v149;
  if (v114->_shouldUseMescalSigning)
  {
    v170[0] = MEMORY[0x1E69E9820];
    v170[1] = 3221225472;
    v170[2] = __92__ICStoreURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke_2;
    v170[3] = &unk_1E7BF6408;
    v170[4] = v114;
    v171 = v148;
    v172 = v150;
    v173 = v158;
    v151 = v159;
    [(ICStoreURLRequest *)v114 _getSignatureDataForRequest:v171 urlBag:v159 completionHandler:v170];
  }

  else
  {
    (*(v149 + 16))(v149);
    v158[2](v158, v148, 0);
    v151 = v159;
  }

  v14 = v157;
  v19 = v165;
LABEL_186:
}

void __92__ICStoreURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke_247(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    v2 = +[ICAuthenticationUtilities sharedAuthKitSession];
    v3 = [v2 appleIDHeadersForRequest:*(a1 + 32)];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = *(a1 + 32);
          v10 = [v3 objectForKeyedSubscript:v8];
          [v9 setValue:v10 forHTTPHeaderField:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

void __92__ICStoreURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to sign request. err=%{public}@", &v9, 0x16u);
    }

    goto LABEL_6;
  }

  if (v5)
  {
    v7 = [v5 base64EncodedStringWithOptions:0];
    [*(a1 + 40) setValue:v7 forHTTPHeaderField:@"X-Apple-ActionSignature"];
LABEL_6:
  }

  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
}

void __92__ICStoreURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = buildStoreURLRequestWithURLRequest_builderProperties_completionHandler__sClientTimeDateFormatter;
  buildStoreURLRequestWithURLRequest_builderProperties_completionHandler__sClientTimeDateFormatter = v0;

  [buildStoreURLRequestWithURLRequest_builderProperties_completionHandler__sClientTimeDateFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
  [buildStoreURLRequestWithURLRequest_builderProperties_completionHandler__sClientTimeDateFormatter setLocale:v4];
  v2 = buildStoreURLRequestWithURLRequest_builderProperties_completionHandler__sClientTimeDateFormatter;
  v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];
}

- (NSDictionary)additionalHTTPCookies
{
  if (self->_additionalHTTPCookies)
  {
    return self->_additionalHTTPCookies;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (void)buildURLRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  qualityOfService = [currentThread qualityOfService];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7BF63E0;
  v9[4] = self;
  v10 = handlerCopy;
  v11 = qualityOfService;
  v8.receiver = self;
  v8.super_class = ICStoreURLRequest;
  v7 = handlerCopy;
  [(ICURLRequest *)&v8 buildURLRequestWithCompletionHandler:v9];
}

void __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!v5 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = +[ICSecurityInfo sharedSecurityInfo];
    if (![v6 isContentProtectionEnabled] || (objc_msgSend(v6, "isDeviceClassCUnlocked") & 1) != 0)
    {
      v40 = v6;
      v7 = [*(a1 + 32) storeRequestContext];
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = [v7 identity];
      v10 = [v7 identityStore];
      v41 = [v7 clientInfo];
      v11 = [[ICUserCredentialRequest alloc] initWithIdentity:v9 identityStore:v10 clientInfo:v41];
      [(ICUserCredentialRequest *)v11 setTimeoutInterval:30.0];
      v12 = *(a1 + 48);
      v13 = [*(a1 + 32) prioritize];
      v14 = 17;
      if (v13)
      {
        v14 = 25;
      }

      if (v12 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      [(ICUserCredentialRequest *)v11 setQualityOfService:v15];
      v42 = v8;
      [v8 addObject:v11];
      v16 = [v7 delegatedIdentity];
      v17 = v16;
      if (v16 && ([v16 isEqualToIdentity:v9 inStore:v10] & 1) == 0)
      {
        v18 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 32);
          *buf = 138543618;
          v54 = v19;
          v55 = 2112;
          v56 = v17;
          _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - buildURLRequestWithCompletionHandler [Delegated identity found] - delegatedIdentity=%@", buf, 0x16u);
        }

        v20 = [[ICUserCredentialRequest alloc] initWithIdentity:v17 identityStore:v10 clientInfo:v41];
        [(ICUserCredentialRequest *)v11 timeoutInterval];
        [(ICUserCredentialRequest *)v20 setTimeoutInterval:?];
        [(ICUserCredentialRequest *)v20 setQualityOfService:v15];
        [v42 addObject:v20];
      }

      v21 = objc_alloc_init(ICStoreURLRequestBuilderProperties);
      v22 = *(a1 + 48);
      if (v22 <= 16)
      {
        if (v22 == 9)
        {
          v23 = QOS_CLASS_BACKGROUND;
          goto LABEL_29;
        }
      }

      else
      {
        switch(v22)
        {
          case 17:
            v23 = QOS_CLASS_UTILITY;
            goto LABEL_29;
          case 33:
            v23 = QOS_CLASS_USER_INTERACTIVE;
            goto LABEL_29;
          case 25:
            v23 = QOS_CLASS_USER_INITIATED;
LABEL_29:
            v28 = dispatch_queue_attr_make_with_qos_class(0, v23, 0);
            v29 = dispatch_queue_create("com.apple.iTunesCloud.ICStoreURLRequest.serialQueue", v28);

            v30 = +[ICUserCredentialProvider sharedProvider];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_184;
            v43[3] = &unk_1E7BF63B8;
            v31 = *(a1 + 40);
            v43[4] = *(a1 + 32);
            v32 = v31;
            v44 = v29;
            v45 = v9;
            v46 = v10;
            v47 = v21;
            v48 = v17;
            v49 = v7;
            v33 = *(a1 + 48);
            v51 = v32;
            v52 = v33;
            v50 = v5;
            v34 = v7;
            v35 = v17;
            v36 = v21;
            v37 = v10;
            v38 = v9;
            v39 = v29;
            [v30 performCredentialRequests:v42 withResponseHandler:v43];

            goto LABEL_30;
        }
      }

      v23 = QOS_CLASS_UNSPECIFIED;
      goto LABEL_29;
    }

    v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      *buf = 138543362;
      v54 = v25;
      _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "Request %{public}@ issued before before first unlock, returning error.", buf, 0xCu);
    }

    v26 = *(a1 + 40);
    v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7006 userInfo:0];
    (*(v26 + 16))(v26, 0, v27);
  }

LABEL_30:
}

void __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_184(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v34 = v13;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "Request %{public}@ failed to obtain credentials to form request. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v14 = *(a1 + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_185;
    v20[3] = &unk_1E7BF6390;
    v21 = v9;
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v24 = v10;
    v25 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = *(a1 + 32);
    v26 = v15;
    v27 = v16;
    v32 = a5;
    v17 = *(a1 + 80);
    v19 = *(a1 + 96);
    v18 = *(a1 + 104);
    v28 = v17;
    v31 = v18;
    v30 = v19;
    v29 = *(a1 + 88);
    dispatch_async(v14, v20);
  }
}

void __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_185(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identity];
  if ([v2 isEqualToIdentity:*(a1 + 40) inStore:*(a1 + 48)])
  {
    v3 = [*(a1 + 56) iCloudIdentityProperties];
    v4 = *(a1 + 64);
    v5 = [v3 iCloudPersonID];
    [v4 setICloudPersonID:v5];

    v6 = [*(a1 + 56) identityProperties];
    v7 = *(a1 + 64);
    v8 = [v6 DSID];
    [v7 setDSID:v8];

    v9 = *(a1 + 64);
    v10 = [v6 storefrontIdentifier];
    [v9 setStorefrontIdentifier:v10];
  }

  v11 = *(a1 + 72);
  if (v11 && [v2 isEqualToIdentity:v11 inStore:*(a1 + 48)])
  {
    v12 = [*(a1 + 56) identityProperties];
    if ([v12 isDelegated])
    {
      v13 = *(a1 + 64);
      v14 = [v12 DSID];
      [v13 setDelegatedDSID:v14];

      v15 = *(a1 + 64);
      v16 = [v12 delegateToken];
      [v15 setDelegateToken:v16];

      v17 = *(a1 + 64);
      v18 = [v12 storefrontIdentifier];
      [v17 setDelegatedStorefrontIdentifier:v18];

      v19 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 80);
        v21 = [*(a1 + 64) delegatedDSID];
        v22 = [*(a1 + 64) delegateToken];
        *buf = 138543874;
        v37 = v20;
        v38 = 2112;
        v39 = v21;
        v40 = 2112;
        v41 = v22;
        _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - buildURLRequestWithCompletionHandler - Adding delegation info to builder - delegatedDSID=%@ - delegatedToken=%@", buf, 0x20u);
      }
    }
  }

  if (*(a1 + 120) == 1)
  {
    v23 = *(a1 + 80);
    if (v23[282] == 1)
    {
      v24 = +[ICURLBagProvider sharedBagProvider];
      v25 = *(a1 + 88);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_187;
      v29[3] = &unk_1E7BF6368;
      v26 = *(a1 + 104);
      v35 = *(a1 + 112);
      v27 = v26;
      v28 = *(a1 + 80);
      v34 = v27;
      v29[4] = v28;
      v30 = *(a1 + 64);
      v31 = *(a1 + 96);
      v32 = *(a1 + 72);
      v33 = *(a1 + 88);
      [v24 getBagForRequestContext:v25 withCompletionHandler:v29];
    }

    else
    {
      [v23 buildStoreURLRequestWithURLRequest:*(a1 + 96) builderProperties:*(a1 + 64) completionHandler:*(a1 + 104)];
    }
  }
}

void __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_187(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 80);
  if (v7 <= 16)
  {
    if (v7 == 9)
    {
      v8 = QOS_CLASS_BACKGROUND;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  switch(v7)
  {
    case 17:
      v8 = QOS_CLASS_UTILITY;
      break;
    case 33:
      v8 = QOS_CLASS_USER_INTERACTIVE;
      break;
    case 25:
      v8 = QOS_CLASS_USER_INITIATED;
      break;
    default:
LABEL_8:
      v8 = QOS_CLASS_UNSPECIFIED;
      break;
  }

LABEL_11:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7BF6318;
  v9 = v6;
  v27 = v9;
  v10 = v5;
  v28 = v10;
  v11 = *(a1 + 72);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v32 = v11;
  v29 = v12;
  v30 = v13;
  v31 = *(a1 + 48);
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8, 0, block);
  v15 = v14;
  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(a1 + 64);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_204;
    v24[3] = &unk_1E7BF91F0;
    v25 = v16;
    v18 = [v17 copyWithBlock:v24];
    v19 = +[ICURLBagProvider sharedBagProvider];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_2_206;
    v20[3] = &unk_1E7BF6340;
    v23 = *(a1 + 80);
    v21 = *(a1 + 40);
    v22 = v15;
    [v19 getBagForRequestContext:v18 withCompletionHandler:v20];
  }

  else
  {
    (*(v14 + 2))(v14);
  }
}

void __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    v2();
    return;
  }

  if (*(a1 + 40))
  {
    v3 = +[ICDefaults standardDefaults];
    if ([v3 shouldAllowUntrustedHosts])
    {

LABEL_12:
      [*(a1 + 56) setURLBag:*(a1 + 40)];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);

      [v8 buildStoreURLRequestWithURLRequest:v10 builderProperties:v9 completionHandler:v11];
      return;
    }

    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) urlRequest];
    v7 = [v6 URL];
    LOBYTE(v5) = [v5 isTrustedHostForURL:v7];

    if (v5)
    {
      goto LABEL_12;
    }

    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v14 = [v13 urlRequest];
      v15 = [v14 URL];
      *buf = 138543618;
      v26 = v13;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Using store request for url with untrusted host: '%{public}@'", buf, 0x16u);
    }

    v16 = MEMORY[0x1E69B13D8];
    v17 = *MEMORY[0x1E69B1350];
    v18 = MEMORY[0x1E696AEC0];
    v19 = [*(a1 + 48) urlRequest];
    v20 = [v19 URL];
    v21 = [v18 stringWithFormat:@"Using store request for url with untrusted host '%@'", v20];
    [v16 snapshotWithDomain:v17 type:@"Bug" subType:@"ICStoreURLRequest" context:v21 triggerThresholdValues:&stru_1F2C4A680 events:0 completion:0];

    v22 = *(a1 + 72);
    if (*(a1 + 32))
    {
      (*(v22 + 16))(*(a1 + 72), 0);
    }

    else
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7009 userInfo:0];
      (*(v22 + 16))(v22, 0, v23);
    }
  }

  else
  {
    v4 = *(a1 + 72);
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7200 userInfo:0];
    (*(v4 + 16))(v4, 0);
  }
}

void __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_204(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentity:v2];
  [v3 setDelegatedIdentity:0];
}

void __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_2_206(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 <= 16)
  {
    if (v8 == 9)
    {
      v9 = QOS_CLASS_BACKGROUND;
      goto LABEL_11;
    }

LABEL_8:
    v9 = QOS_CLASS_UNSPECIFIED;
    goto LABEL_11;
  }

  if (v8 == 17)
  {
    v9 = QOS_CLASS_UTILITY;
    goto LABEL_11;
  }

  if (v8 == 33)
  {
    v9 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_11;
  }

  if (v8 != 25)
  {
    goto LABEL_8;
  }

  v9 = QOS_CLASS_USER_INITIATED;
LABEL_11:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_3;
  v16[3] = &unk_1E7BF9E78;
  v17 = v5;
  v18 = v6;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v10 = v7;
  v11 = v5;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9, 0, v16);
  v12[2](v12, v13, v14, v15);
}

uint64_t __58__ICStoreURLRequest_buildURLRequestWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    [*(a1 + 48) setDelegatedURLBag:?];
  }

  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (ICStoreURLRequest)initWithURLRequest:(id)request requestContext:(id)context resumeData:(id)data
{
  requestCopy = request;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICStoreURLRequest.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"[requestContext isKindOfClass:[ICStoreRequestContext class]]"}];
  }

  v14.receiver = self;
  v14.super_class = ICStoreURLRequest;
  v10 = [(ICURLRequest *)&v14 initWithURLRequest:requestCopy requestContext:contextCopy resumeData:0];
  v11 = v10;
  if (v10)
  {
    v10->_shouldRequireURLBag = 1;
    v10->_anisetteVersion = -1;
    v10->_shouldUseMescalSigning = 1;
    v10->_shouldParseBodyData = 1;
    [(ICURLRequest *)v10 setCancelOnHTTPErrors:0];
  }

  return v11;
}

- (ICStoreURLRequest)initWithURL:(id)l requestContext:(id)context
{
  v6 = MEMORY[0x1E695AC68];
  contextCopy = context;
  v8 = [v6 requestWithURL:l];
  v9 = [(ICStoreURLRequest *)self initWithURLRequest:v8 requestContext:contextCopy resumeData:0];

  return v9;
}

+ (BOOL)_shouldPersonalizeRequestForRequestContext:(id)context personalizationStyle:(int64_t)style
{
  if (style != 1)
  {
    return style != 0;
  }

  contextCopy = context;
  clientInfo = [contextCopy clientInfo];
  requestingBundleIdentifier = [clientInfo requestingBundleIdentifier];
  v8 = requestingBundleIdentifier;
  if (requestingBundleIdentifier)
  {
    bundleIdentifier = requestingBundleIdentifier;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  identity = [contextCopy identity];

  v12 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:identity];
  v13 = [v12 shouldBlockPersonalizedNetworkRequestsForBundleIdentifier:bundleIdentifier];

  v4 = v13 ^ 1;
  return v4;
}

+ (unint64_t)_defaultMaxRetryCountForReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (reasonCopy != @"machine-data-action-performed" && ([(__CFString *)reasonCopy isEqual:@"machine-data-action-performed"]& 1) == 0)
  {
    if (v5 == @"dialog-processed" || ([(__CFString *)v5 isEqual:@"dialog-processed"]& 1) != 0)
    {
      v6 = 2;
      goto LABEL_7;
    }

    if (v5 != @"other" && ([(__CFString *)v5 isEqual:@"other"]& 1) == 0)
    {
      v8.receiver = self;
      v8.super_class = &OBJC_METACLASS___ICStoreURLRequest;
      v6 = objc_msgSendSuper2(&v8, sel__defaultMaxRetryCountForReason_, v5);
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:

  return v6;
}

@end