@interface NSURL(SafariSharedExtras)
+ (id)safari_URLForReadingListItemWithUUIDString:()SafariSharedExtras;
+ (id)safari_URLWithDataAsString:()SafariSharedExtras;
+ (id)safari_URLWithDataAsString:()SafariSharedExtras relativeToURL:;
+ (id)safari_URLWithUserTypedString:()SafariSharedExtras;
- (BOOL)safari_hasCharactersBeyondPath;
- (BOOL)safari_hasUserOrPassword;
- (BOOL)safari_isURLTooLongToDisplay;
- (__CFString)safari_fileType;
- (__CFString)safari_path;
- (__CFString)safari_relativePathToURL:()SafariSharedExtras;
- (__CFString)safari_userVisibleHost;
- (__CFString)safari_userVisibleScheme;
- (id)safari_URLByDeletingUserAndPassword;
- (id)safari_URLByNormalizingSafariSpecificURL;
- (id)safari_URLByRemovingAllParameters;
- (id)safari_URLByRemovingQuery;
- (id)safari_URLByReplacingHostWithString:()SafariSharedExtras;
- (id)safari_canonicalURLForStartPage;
- (id)safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL;
- (id)safari_defaultStatusMessageString;
- (id)safari_displayNameWithTitle:()SafariSharedExtras;
- (id)safari_firstURLQueryValue;
- (id)safari_identityPreferenceDomain;
- (id)safari_mailtoURLStatusMessage;
- (id)safari_originalDataAsString;
- (id)safari_perSitePreferencesMenuBarTitle;
- (id)safari_readingListItemUUIDString;
- (id)safari_simplifiedURLStringForDeduping;
- (id)safari_stringForListDisplayWithAdditionalSimplificationOptions:()SafariSharedExtras;
- (id)safari_userVisibleHostOrExtensionDisplayName;
- (id)safari_userVisibleHostWithoutWWWSubdomain;
- (id)safari_userVisibleHostWithoutWWWSubdomainIfSecure;
- (id)safari_userVisibleStringConsideringLongURLs;
- (id)safari_wellKnownResponseCodeReliabilityURL;
- (uint64_t)_safari_isWithinQuirkedNavigationScope:()SafariSharedExtras;
- (uint64_t)safari_canQuirkBannerForNavigation;
- (uint64_t)safari_hasCustomScheme;
- (uint64_t)safari_hasFeedScheme;
- (uint64_t)safari_hasLocalScheme;
- (uint64_t)safari_isAboutBlankURL;
- (uint64_t)safari_isDataURL;
- (uint64_t)safari_isEligibleToBeOpenedByServiceWorkers;
- (uint64_t)safari_isEligibleToShowNotSecureWarning;
- (uint64_t)safari_isEqualOrHasSameHighLevelDomainAsURL:()SafariSharedExtras;
- (uint64_t)safari_isEqualToOrChildOfStartURL:()SafariSharedExtras;
- (uint64_t)safari_isEqualToURL:()SafariSharedExtras;
- (uint64_t)safari_isFaviconURL;
- (uint64_t)safari_isLocalOrPrivateNetworkURL;
- (uint64_t)safari_isMailtoURL;
- (uint64_t)safari_isMarketplaceKitURL;
- (uint64_t)safari_isOTPAuthMigrationURL;
- (uint64_t)safari_isOTPAuthURL;
- (uint64_t)safari_isSharedTabGroupURL;
- (uint64_t)safari_isSlackRedirectPage;
- (uint64_t)safari_isTopLevelURL;
- (uint64_t)safari_isWithinWebAppNavigationScope:()SafariSharedExtras allowingQuirks:;
- (uint64_t)safari_looksLikeAboutBlankURL;
- (uint64_t)safari_looksLikeAboutSrcdocURL;
- (uint64_t)safari_shouldBeAssociatedWithFaviconFromRedirectedURL:()SafariSharedExtras;
@end

@implementation NSURL(SafariSharedExtras)

+ (id)safari_URLWithUserTypedString:()SafariSharedExtras
{
  v3 = WTF::URLWithUserTypedString(this, 0, this);

  return v3;
}

+ (id)safari_URLWithDataAsString:()SafariSharedExtras
{
  v3 = [self safari_URLWithDataAsString:a3 relativeToURL:0];

  return v3;
}

+ (id)safari_URLWithDataAsString:()SafariSharedExtras relativeToURL:
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    safari_stringByTrimmingWhitespace = [v5 safari_stringByTrimmingWhitespace];
    v8 = [safari_stringByTrimmingWhitespace dataUsingEncoding:5];
    v10 = WTF::URLWithData(v8, v6, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)safari_URLForReadingListItemWithUUIDString:()SafariSharedExtras
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"reading-list://", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

- (__CFString)safari_path
{
  v1 = CFURLCopyPath(self);

  return v1;
}

- (__CFString)safari_fileType
{
  if ([self isFileURL])
  {
    v7 = 0;
    v2 = [self getResourceValue:&v7 forKey:*MEMORY[0x1E695DAA0] error:0];
    v3 = v7;
    v4 = v3;
    if (v2)
    {
      identifier = [v3 identifier];
    }

    else
    {
      identifier = &stru_1F3A5E418;
    }
  }

  else
  {
    identifier = &stru_1F3A5E418;
  }

  return identifier;
}

- (id)safari_identityPreferenceDomain
{
  v1 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  scheme = [v1 scheme];
  [v2 setScheme:scheme];

  host = [v1 host];
  [v2 setHost:host];

  port = [v1 port];
  [v2 setPort:port];

  string = [v2 string];

  return string;
}

- (uint64_t)safari_hasLocalScheme
{
  if ([self isFileURL])
  {
    return 1;
  }

  return [self safari_hasScheme:@"applewebdata"];
}

- (uint64_t)safari_hasFeedScheme
{
  if ([self safari_hasScheme:@"feed"])
  {
    return 1;
  }

  return [self safari_hasScheme:@"feeds"];
}

- (uint64_t)safari_isDataURL
{
  absoluteString = [self absoluteString];
  v2 = [absoluteString safari_hasCaseInsensitivePrefix:@"data:"];

  return v2;
}

- (uint64_t)safari_hasCustomScheme
{
  scheme = [self scheme];
  if ([scheme length])
  {
    v3 = [self safari_isHTTPFamilyURL] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)safari_isMailtoURL
{
  absoluteString = [self absoluteString];
  v2 = [absoluteString safari_hasCaseInsensitivePrefix:@"mailto:"];

  return v2;
}

- (uint64_t)safari_isAboutBlankURL
{
  safari_aboutBlankURL = [MEMORY[0x1E695DFF8] safari_aboutBlankURL];
  v3 = [self isEqual:safari_aboutBlankURL];

  return v3;
}

- (uint64_t)safari_looksLikeAboutBlankURL
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  v2 = v1;
  if (v1)
  {
    scheme = [v1 scheme];
    if ([scheme isEqualToString:@"about"])
    {
      path = [v2 path];
      v5 = [path hasPrefix:@"blank"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)safari_looksLikeAboutSrcdocURL
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  v2 = v1;
  if (v1)
  {
    scheme = [v1 scheme];
    if ([scheme isEqualToString:@"about"])
    {
      path = [v2 path];
      v5 = [path hasPrefix:@"srcdoc"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL
{
  if ([self safari_isSafariWebExtensionURL])
  {
    host = [self host];
    stringByRemovingPercentEncoding = [host stringByRemovingPercentEncoding];

    v4 = [stringByRemovingPercentEncoding safari_indexOfFirstAppearanceOfCharacter:41];
    v5 = v4;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v7 = [stringByRemovingPercentEncoding substringToIndex:v4 + 1];
      v8 = [stringByRemovingPercentEncoding substringFromIndex:v5 + 1];
      v6 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:v7 second:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)safari_isMarketplaceKitURL
{
  if ([self safari_hasScheme:@"app-distribution"])
  {
    return 1;
  }

  return [self safari_hasScheme:@"marketplace-kit"];
}

- (uint64_t)safari_isFaviconURL
{
  if ([self safari_isHTTPFamilyURL])
  {
    return 1;
  }

  return [self safari_isDataURL];
}

- (id)safari_URLByNormalizingSafariSpecificURL
{
  host = [self host];

  if (host)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
    [v3 setScheme:@"https"];
    v4 = [v3 URL];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:@"favorites://"];
  }

  return v4;
}

- (uint64_t)safari_isLocalOrPrivateNetworkURL
{
  host = [self host];
  if ([host isEqualToString:@"localhost"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [host cStringUsingEncoding:1];
    if (v2)
    {
      if (inet_pton(2, v2, &v10) == 1)
      {
        v3 = bswap32(v10);
        v2 = 1;
        if ((v3 & 0xFF000000) != 0xA000000 && (v3 & 0xFF000000) != 0x7F000000)
        {
          v4 = v3 >> 20;
          v5 = v3 & 0xFFFF0000;
          v7 = v5 == -1062731776 || v5 == -1442971648;
          v2 = v4 == 2753 || v7;
        }
      }

      else if (inet_pton(30, v2, &v9) == 1)
      {
        v2 = 1;
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v9, xmmword_1BB94FE20)))))
        {
          v2 = (v9.i8[0] & 0xFE) == 0xFC || (v9.i16[0] & 0xC0FF) == 33022;
        }
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

- (uint64_t)safari_isEligibleToBeOpenedByServiceWorkers
{
  result = [self safari_isHTTPFamilyURL];
  if (result)
  {
    return [self safari_isLocalOrPrivateNetworkURL] ^ 1;
  }

  return result;
}

- (uint64_t)safari_isEligibleToShowNotSecureWarning
{
  result = [self safari_isHTTPURL];
  if (result)
  {
    return [self safari_isLocalOrPrivateNetworkURL] ^ 1;
  }

  return result;
}

- (uint64_t)safari_isOTPAuthURL
{
  if ([self safari_hasScheme:@"otpauth"])
  {
    return 1;
  }

  return [self safari_hasScheme:@"apple-otpauth"];
}

- (uint64_t)safari_isOTPAuthMigrationURL
{
  if ([self safari_hasScheme:@"otpauth-migration"])
  {
    return 1;
  }

  return [self safari_hasScheme:@"apple-otpauth-migration"];
}

- (id)safari_firstURLQueryValue
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  queryItems = [v1 queryItems];
  v3 = [queryItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(queryItems);
        }

        value = [*(*(&v8 + 1) + 8 * i) value];
        if ([value safari_looksLikeAbsoluteURLString])
        {
          v3 = [MEMORY[0x1E695DFF8] URLWithString:value];

          goto LABEL_11;
        }
      }

      v3 = [queryItems countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (uint64_t)safari_isEqualToOrChildOfStartURL:()SafariSharedExtras
{
  v4 = a3;
  safari_URLByRemovingAllParameters = [self safari_URLByRemovingAllParameters];
  absoluteString = [safari_URLByRemovingAllParameters absoluteString];
  lowercaseString = [absoluteString lowercaseString];

  safari_URLByRemovingAllParameters2 = [v4 safari_URLByRemovingAllParameters];
  absoluteString2 = [safari_URLByRemovingAllParameters2 absoluteString];
  lowercaseString2 = [absoluteString2 lowercaseString];

  v11 = [lowercaseString hasPrefix:lowercaseString2];
  return v11;
}

- (uint64_t)safari_isWithinWebAppNavigationScope:()SafariSharedExtras allowingQuirks:
{
  v6 = a3;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (![self safari_hasSameOriginAsURL:v6 relaxingWWW:1] || objc_msgSend(self, "safari_canQuirkBannerForNavigation"))
  {
    if (a4)
    {
      v7 = [self _safari_isWithinQuirkedNavigationScope:v6];
      goto LABEL_12;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_12;
  }

  path = [self path];
  path2 = [v6 path];
  if ([path length] && objc_msgSend(path2, "length"))
  {
    v7 = [path safari_hasPrefix:path2];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:
  return v7;
}

- (uint64_t)safari_canQuirkBannerForNavigation
{
  safari_highLevelDomain = [self safari_highLevelDomain];
  v2 = [&unk_1F3A9B288 containsObject:safari_highLevelDomain];

  return v2;
}

- (uint64_t)_safari_isWithinQuirkedNavigationScope:()SafariSharedExtras
{
  v4 = a3;
  host = [v4 host];
  lowercaseString = [host lowercaseString];

  host2 = [self host];
  lowercaseString2 = [host2 lowercaseString];

  safari_highLevelDomainFromHost = [lowercaseString safari_highLevelDomainFromHost];
  safari_highLevelDomainFromHost2 = [lowercaseString2 safari_highLevelDomainFromHost];
  if ([self safari_canQuirkBannerForNavigation] && (objc_msgSend(safari_highLevelDomainFromHost, "isEqualToString:", safari_highLevelDomainFromHost2) & 1) != 0)
  {
    goto LABEL_15;
  }

  if (![safari_highLevelDomainFromHost isEqualToString:safari_highLevelDomainFromHost2])
  {
LABEL_17:
    safari_stringByRemovingWwwDotPrefix = [lowercaseString safari_stringByRemovingWwwDotPrefix];
    safari_stringByRemovingWwwDotPrefix2 = [lowercaseString2 safari_stringByRemovingWwwDotPrefix];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__NSURL_SafariSharedExtras___safari_isWithinQuirkedNavigationScope___block_invoke;
    v24[3] = &unk_1E7FC87D0;
    v21 = safari_stringByRemovingWwwDotPrefix;
    v26 = safari_stringByRemovingWwwDotPrefix2;
    v27 = &v28;
    v25 = v21;
    v22 = safari_stringByRemovingWwwDotPrefix2;
    [&unk_1F3A9B410 enumerateKeysAndObjectsUsingBlock:v24];
    v18 = *(v29 + 24);

    _Block_object_dispose(&v28, 8);
    goto LABEL_18;
  }

  if ([&unk_1F3A9B2A0 containsObject:safari_highLevelDomainFromHost])
  {
    goto LABEL_15;
  }

  v11 = [safari_highLevelDomainFromHost componentsSeparatedByString:@"."];
  firstObject = [v11 firstObject];
  v13 = [&unk_1F3A9B2A0 containsObject:firstObject];

  if (v13)
  {
    goto LABEL_15;
  }

  v14 = [lowercaseString2 componentsSeparatedByString:@"."];
  firstObject2 = [v14 firstObject];

  v16 = [lowercaseString componentsSeparatedByString:@"."];
  firstObject3 = [v16 firstObject];

  if ((!firstObject3 || ([firstObject2 hasPrefix:firstObject3] & 1) == 0) && (!firstObject2 || (objc_msgSend(firstObject3, "hasPrefix:", firstObject2) & 1) == 0) && (objc_msgSend(firstObject3, "isEqualToString:", @"www") & 1) == 0 && (objc_msgSend(firstObject2, "isEqualToString:", @"www") & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", safari_highLevelDomainFromHost) & 1) == 0 && (objc_msgSend(lowercaseString2, "isEqualToString:", safari_highLevelDomainFromHost2) & 1) == 0)
  {

    goto LABEL_17;
  }

LABEL_15:
  v18 = 1;
LABEL_18:

  return v18 & 1;
}

- (uint64_t)safari_isSlackRedirectPage
{
  safari_highLevelDomain = [self safari_highLevelDomain];
  host = [self host];
  v4 = [safari_highLevelDomain isEqualToString:host];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    path = [self path];
    if ([path safari_isSubpathOfPath:@"/archives"])
    {
      v7 = 1;
    }

    else
    {
      path2 = [self path];
      v7 = [path2 safari_isSubpathOfPath:@"/files"];
    }

    v5 = [safari_highLevelDomain isEqualToString:@"slack.com"] & v7;
  }

  return v5;
}

- (id)safari_URLByReplacingHostWithString:()SafariSharedExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  [v5 setHost:v4];
  v6 = [v5 URL];

  return v6;
}

- (BOOL)safari_hasUserOrPassword
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  user = [v1 user];
  if ([user length])
  {
    v3 = 1;
  }

  else
  {
    password = [v1 password];
    v3 = [password length] != 0;
  }

  return v3;
}

- (id)safari_URLByDeletingUserAndPassword
{
  v2 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  user = [v2 user];
  if ([user length])
  {

LABEL_4:
    [v2 setUser:0];
    [v2 setPassword:0];
    v6 = [v2 URL];
    goto LABEL_5;
  }

  password = [v2 password];
  v5 = [password length];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [self copy];
LABEL_5:
  v7 = v6;

  return v7;
}

- (id)safari_URLByRemovingAllParameters
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  [v1 setQuery:0];
  v2 = [v1 URL];

  return v2;
}

- (id)safari_canonicalURLForStartPage
{
  safari_originalDataAsString = [self safari_originalDataAsString];
  safari_bestURLForUserTypedString = [safari_originalDataAsString safari_bestURLForUserTypedString];
  safari_canonicalURL = [safari_bestURLForUserTypedString safari_canonicalURL];

  return safari_canonicalURL;
}

- (id)safari_simplifiedURLStringForDeduping
{
  safari_canonicalURL = [self safari_canonicalURL];
  safari_originalDataAsString = [safari_canonicalURL safari_originalDataAsString];
  v3 = [safari_originalDataAsString safari_simplifiedUserVisibleURLStringWithSimplifications:367 forDisplayOnly:0 simplifiedStringOffset:0];

  return v3;
}

- (BOOL)safari_hasCharactersBeyondPath
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 rangeOfFragment] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v2, "rangeOfQuery") != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)safari_displayNameWithTitle:()SafariSharedExtras
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    if ([self isFileURL])
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [self path];
      v6 = [defaultManager displayNameAtPath:path];

      if (v6)
      {
        goto LABEL_9;
      }

      goto LABEL_4;
    }

    if ([self safari_isURLTooLongToDisplay])
    {
      [self host];
    }

    else
    {
      [self safari_userVisibleString];
    }
    v5 = ;
  }

  v6 = v5;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = WBS_LOG_CHANNEL_PREFIXOther();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(NSURL(SafariSharedExtras) *)self safari_displayNameWithTitle:v7];
  }

  v6 = _WBSLocalizedString();
LABEL_9:

  return v6;
}

- (id)safari_originalDataAsString
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = WTF::originalURLData(self, v3);
  v5 = [v2 initWithData:v4 encoding:5];

  return v5;
}

- (__CFString)safari_userVisibleHost
{
  host = [self host];
  v3 = WTF::decodeHostName(host, v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F3A5E418;
  }

  v6 = v5;

  return v5;
}

- (id)safari_userVisibleHostOrExtensionDisplayName
{
  safari_isSafariWebExtensionURL = [(NSURL *)self safari_isSafariWebExtensionURL];
  if (safari_isSafariWebExtensionURL)
  {
    v3 = SafariShared::ExtensionURLTranslator::shared(safari_isSafariWebExtensionURL);
    SafariShared::ExtensionURLTranslator::displayNameForExtensionURL(v3, self);
  }

  else
  {
    [(NSURL *)self safari_userVisibleHostWithoutWWWSubdomain];
  }
  v4 = ;

  return v4;
}

- (id)safari_perSitePreferencesMenuBarTitle
{
  safari_userVisibleHostOrExtensionDisplayName = [self safari_userVisibleHostOrExtensionDisplayName];
  if ([safari_userVisibleHostOrExtensionDisplayName length])
  {
    [self safari_isSafariWebExtensionURL];
    v3 = MEMORY[0x1E696AEC0];
    v4 = _WBSLocalizedString();
    v5 = [v3 stringWithFormat:v4, safari_userVisibleHostOrExtensionDisplayName];
  }

  else
  {
    v5 = _WBSLocalizedString();
  }

  return v5;
}

- (id)safari_userVisibleHostWithoutWWWSubdomain
{
  safari_userVisibleHost = [self safari_userVisibleHost];
  safari_stringByRemovingWwwDotPrefix = [safari_userVisibleHost safari_stringByRemovingWwwDotPrefix];

  return safari_stringByRemovingWwwDotPrefix;
}

- (id)safari_userVisibleHostWithoutWWWSubdomainIfSecure
{
  if ([self safari_isEligibleToShowNotSecureWarning])
  {
    safari_userVisibleHost = [self safari_userVisibleHost];
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
    v4 = MEMORY[0x1E696AEC0];
    scheme = [v3 scheme];
    safari_userVisibleHostWithoutWWWSubdomain = [v4 stringWithFormat:@"%@://%@", scheme, safari_userVisibleHost];
  }

  else
  {
    safari_userVisibleHostWithoutWWWSubdomain = [self safari_userVisibleHostWithoutWWWSubdomain];
  }

  return safari_userVisibleHostWithoutWWWSubdomain;
}

- (__CFString)safari_userVisibleScheme
{
  safari_userVisibleString = [self safari_userVisibleString];
  v2 = [safari_userVisibleString rangeOfString:@":"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_1F3A5E418;
  }

  else
  {
    v3 = [safari_userVisibleString substringToIndex:v2];
  }

  return v3;
}

- (uint64_t)safari_isTopLevelURL
{
  path = [self path];
  if ([path length])
  {
    v2 = [path isEqualToString:@"/"];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (uint64_t)safari_shouldBeAssociatedWithFaviconFromRedirectedURL:()SafariSharedExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  v6 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:1];
  path = [v5 path];
  if (![path length] || (objc_msgSend(path, "isEqualToString:", @"/") & 1) != 0 || (objc_msgSend(v6, "path"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(path, "isEqual:", v8), v8, (v9 & 1) != 0))
  {
    scheme = [v6 scheme];
    [v5 setScheme:scheme];

    path2 = [v6 path];
    [v5 setPath:path2];

    fragment = [v6 fragment];
    [v5 setFragment:fragment];

    host = [v5 host];
    safari_stringByRemovingWwwDotPrefix = [host safari_stringByRemovingWwwDotPrefix];
    [v5 setHost:safari_stringByRemovingWwwDotPrefix];

    host2 = [v6 host];
    safari_stringByRemovingWwwDotPrefix2 = [host2 safari_stringByRemovingWwwDotPrefix];
    [v6 setHost:safari_stringByRemovingWwwDotPrefix2];

    v17 = [v5 isEqual:v6];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)safari_userVisibleStringConsideringLongURLs
{
  if ([self safari_isURLTooLongToDisplay])
  {
    absoluteString = [self absoluteString];
    safari_userVisibleString = [absoluteString substringToIndex:4096];
  }

  else
  {
    safari_userVisibleString = [self safari_userVisibleString];
  }

  return safari_userVisibleString;
}

- (BOOL)safari_isURLTooLongToDisplay
{
  absoluteString = [self absoluteString];
  v2 = [absoluteString length] > 0x1000;

  return v2;
}

- (id)safari_wellKnownResponseCodeReliabilityURL
{
  if ([self safari_isHTTPFamilyURL])
  {
    safari_URLByRemovingUserPasswordPathQueryAndFragment = [self safari_URLByRemovingUserPasswordPathQueryAndFragment];
    v3 = [safari_URLByRemovingUserPasswordPathQueryAndFragment URLByAppendingPathComponent:@".well-known/resource-that-should-not-exist-whose-status-code-should-not-be-200"];
    v4 = [v3 safari_URLByReplacingSchemeWithString:@"https"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__CFString)safari_relativePathToURL:()SafariSharedExtras
{
  uRLByStandardizingPath = [a3 URLByStandardizingPath];
  pathComponents = [uRLByStandardizingPath pathComponents];

  uRLByStandardizingPath2 = [self URLByStandardizingPath];
  pathComponents2 = [uRLByStandardizingPath2 pathComponents];

  v8 = 0;
  if (pathComponents && pathComponents2)
  {
    v9 = [pathComponents count];
    v10 = [pathComponents2 count];
    if (v9 >= v10)
    {
      v11 = [pathComponents subarrayWithRange:{0, v10}];
      if ([v11 isEqualToArray:pathComponents2])
      {
        if (v9 == v10)
        {
          v8 = &stru_1F3A5E418;
        }

        else
        {
          v12 = [pathComponents subarrayWithRange:{v10, v9 - v10}];
          v8 = [MEMORY[0x1E696AEC0] pathWithComponents:v12];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)safari_stringForListDisplayWithAdditionalSimplificationOptions:()SafariSharedExtras
{
  safari_userVisibleStringConsideringLongURLs = [self safari_userVisibleStringConsideringLongURLs];
  if ([safari_userVisibleStringConsideringLongURLs length] >= 0x101)
  {
    v5 = [safari_userVisibleStringConsideringLongURLs substringWithRange:{0, 256}];

    safari_userVisibleStringConsideringLongURLs = v5;
  }

  v6 = [safari_userVisibleStringConsideringLongURLs safari_simplifiedUserVisibleURLStringWithSimplifications:a3 | 0x1CF forDisplayOnly:1 simplifiedStringOffset:0];

  return v6;
}

- (id)safari_mailtoURLStatusMessage
{
  v24 = *MEMORY[0x1E69E9840];
  if (![self safari_isMailtoURL])
  {
    v12 = 0;
    goto LABEL_22;
  }

  v2 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  path = [v2 path];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  queryItems = [v2 queryItems];
  v5 = [queryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(queryItems);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        name = [v8 name];
        v10 = [name isEqualToString:@"subject"];

        if (v10)
        {
          value = [v8 value];
          goto LABEL_13;
        }
      }

      v5 = [queryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  value = 0;
LABEL_13:

  if ([value length] && objc_msgSend(path, "length"))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = _WBSLocalizedString();
    v15 = [v13 stringWithFormat:v14, path, value];
  }

  else if ([value length])
  {
    v16 = MEMORY[0x1E696AEC0];
    v14 = _WBSLocalizedString();
    v15 = [v16 stringWithFormat:v14, value];
  }

  else
  {
    if (![path length])
    {
      v12 = 0;
      goto LABEL_21;
    }

    v17 = MEMORY[0x1E696AEC0];
    v14 = _WBSLocalizedString();
    v15 = [v17 stringWithFormat:v14, path];
  }

  v12 = v15;

LABEL_21:
LABEL_22:

  return v12;
}

- (id)safari_defaultStatusMessageString
{
  if ([self safari_isJavaScriptURL])
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = _WBSLocalizedString();
    safari_userVisibleString = [self safari_userVisibleString];
    v5 = [safari_userVisibleString substringFromIndex:11];
    safari_mailtoURLStatusMessage = [v2 stringWithFormat:v3, v5];
LABEL_5:

    goto LABEL_7;
  }

  if ([self safari_isTelURL])
  {
    v7 = MEMORY[0x1E696AEC0];
    v3 = _WBSLocalizedString();
    safari_userVisibleString = [self absoluteString];
    v5 = [safari_userVisibleString substringFromIndex:{objc_msgSend(@"tel:", "length")}];
    stringByRemovingPercentEncoding = [v5 stringByRemovingPercentEncoding];
    safari_mailtoURLStatusMessage = [v7 stringWithFormat:v3, stringByRemovingPercentEncoding];

    goto LABEL_5;
  }

  safari_mailtoURLStatusMessage = [self safari_mailtoURLStatusMessage];
LABEL_7:

  return safari_mailtoURLStatusMessage;
}

- (uint64_t)safari_isSharedTabGroupURL
{
  absoluteString = [self absoluteString];
  v2 = [absoluteString hasPrefix:@"https://www.icloud.com/safari-tab-groups"];

  return v2;
}

- (uint64_t)safari_isEqualToURL:()SafariSharedExtras
{
  v4 = a3;
  if ([self safari_isHTTPFamilyURL] && (objc_msgSend(v4, "safari_isHTTPFamilyURL") & 1) != 0)
  {
    selfCopy = self;
    lastPathComponent = [selfCopy lastPathComponent];
    v7 = [lastPathComponent length];

    if (!v7)
    {
      v8 = [selfCopy URLByAppendingPathComponent:@"/"];

      selfCopy = v8;
    }

    lastPathComponent2 = [v4 lastPathComponent];
    v10 = [lastPathComponent2 length];

    if (!v10)
    {
      v11 = [v4 URLByAppendingPathComponent:@"/"];

      v4 = v11;
    }

    v12 = [selfCopy isEqual:v4];
  }

  else
  {
    v12 = [self isEqual:v4];
  }

  return v12;
}

- (uint64_t)safari_isEqualOrHasSameHighLevelDomainAsURL:()SafariSharedExtras
{
  v4 = a3;
  selfCopy = self;
  host = [selfCopy host];
  host2 = [v4 host];
  v8 = [host isEqualToString:host2];

  host3 = [selfCopy host];
  safari_highLevelDomainFromHost = [host3 safari_highLevelDomainFromHost];
  host4 = [v4 host];
  safari_highLevelDomainFromHost2 = [host4 safari_highLevelDomainFromHost];
  v13 = [safari_highLevelDomainFromHost isEqualToString:safari_highLevelDomainFromHost2];

  if ((v8 | v13))
  {
    v14 = 1;
  }

  else
  {
    v14 = [selfCopy safari_isEqualToURL:v4];
  }

  return v14;
}

- (id)safari_readingListItemUUIDString
{
  if ([self safari_isReadingListURL])
  {
    host = [self host];
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:host];

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = host;
    }

    if (!v3)
    {
      host = 0;
    }
  }

  else
  {
    host = 0;
  }

  return host;
}

- (id)safari_URLByRemovingQuery
{
  v1 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
  [v1 setQuery:0];
  v2 = [v1 URL];

  return v2;
}

- (void)safari_displayNameWithTitle:()SafariSharedExtras .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 141558275;
  v3 = 1752392040;
  v4 = 2117;
  v5 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "(probably a bug in NS/CFURL): unable to create title from %{sensitive, mask.hash}@", &v2, 0x16u);
}

@end