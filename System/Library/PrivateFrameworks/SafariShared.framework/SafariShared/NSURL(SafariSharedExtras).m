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
  v3 = [a1 safari_URLWithDataAsString:a3 relativeToURL:0];

  return v3;
}

+ (id)safari_URLWithDataAsString:()SafariSharedExtras relativeToURL:
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 safari_stringByTrimmingWhitespace];
    v8 = [v7 dataUsingEncoding:5];
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
  v1 = CFURLCopyPath(a1);

  return v1;
}

- (__CFString)safari_fileType
{
  if ([a1 isFileURL])
  {
    v7 = 0;
    v2 = [a1 getResourceValue:&v7 forKey:*MEMORY[0x1E695DAA0] error:0];
    v3 = v7;
    v4 = v3;
    if (v2)
    {
      v5 = [v3 identifier];
    }

    else
    {
      v5 = &stru_1F3A5E418;
    }
  }

  else
  {
    v5 = &stru_1F3A5E418;
  }

  return v5;
}

- (id)safari_identityPreferenceDomain
{
  v1 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v3 = [v1 scheme];
  [v2 setScheme:v3];

  v4 = [v1 host];
  [v2 setHost:v4];

  v5 = [v1 port];
  [v2 setPort:v5];

  v6 = [v2 string];

  return v6;
}

- (uint64_t)safari_hasLocalScheme
{
  if ([a1 isFileURL])
  {
    return 1;
  }

  return [a1 safari_hasScheme:@"applewebdata"];
}

- (uint64_t)safari_hasFeedScheme
{
  if ([a1 safari_hasScheme:@"feed"])
  {
    return 1;
  }

  return [a1 safari_hasScheme:@"feeds"];
}

- (uint64_t)safari_isDataURL
{
  v1 = [a1 absoluteString];
  v2 = [v1 safari_hasCaseInsensitivePrefix:@"data:"];

  return v2;
}

- (uint64_t)safari_hasCustomScheme
{
  v2 = [a1 scheme];
  if ([v2 length])
  {
    v3 = [a1 safari_isHTTPFamilyURL] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)safari_isMailtoURL
{
  v1 = [a1 absoluteString];
  v2 = [v1 safari_hasCaseInsensitivePrefix:@"mailto:"];

  return v2;
}

- (uint64_t)safari_isAboutBlankURL
{
  v2 = [MEMORY[0x1E695DFF8] safari_aboutBlankURL];
  v3 = [a1 isEqual:v2];

  return v3;
}

- (uint64_t)safari_looksLikeAboutBlankURL
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 scheme];
    if ([v3 isEqualToString:@"about"])
    {
      v4 = [v2 path];
      v5 = [v4 hasPrefix:@"blank"];
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
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 scheme];
    if ([v3 isEqualToString:@"about"])
    {
      v4 = [v2 path];
      v5 = [v4 hasPrefix:@"srcdoc"];
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
  if ([a1 safari_isSafariWebExtensionURL])
  {
    v2 = [a1 host];
    v3 = [v2 stringByRemovingPercentEncoding];

    v4 = [v3 safari_indexOfFirstAppearanceOfCharacter:41];
    v5 = v4;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v7 = [v3 substringToIndex:v4 + 1];
      v8 = [v3 substringFromIndex:v5 + 1];
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
  if ([a1 safari_hasScheme:@"app-distribution"])
  {
    return 1;
  }

  return [a1 safari_hasScheme:@"marketplace-kit"];
}

- (uint64_t)safari_isFaviconURL
{
  if ([a1 safari_isHTTPFamilyURL])
  {
    return 1;
  }

  return [a1 safari_isDataURL];
}

- (id)safari_URLByNormalizingSafariSpecificURL
{
  v2 = [a1 host];

  if (v2)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
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
  v1 = [a1 host];
  if ([v1 isEqualToString:@"localhost"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 cStringUsingEncoding:1];
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
  result = [a1 safari_isHTTPFamilyURL];
  if (result)
  {
    return [a1 safari_isLocalOrPrivateNetworkURL] ^ 1;
  }

  return result;
}

- (uint64_t)safari_isEligibleToShowNotSecureWarning
{
  result = [a1 safari_isHTTPURL];
  if (result)
  {
    return [a1 safari_isLocalOrPrivateNetworkURL] ^ 1;
  }

  return result;
}

- (uint64_t)safari_isOTPAuthURL
{
  if ([a1 safari_hasScheme:@"otpauth"])
  {
    return 1;
  }

  return [a1 safari_hasScheme:@"apple-otpauth"];
}

- (uint64_t)safari_isOTPAuthMigrationURL
{
  if ([a1 safari_hasScheme:@"otpauth-migration"])
  {
    return 1;
  }

  return [a1 safari_hasScheme:@"apple-otpauth-migration"];
}

- (id)safari_firstURLQueryValue
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [v1 queryItems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * i) value];
        if ([v6 safari_looksLikeAbsoluteURLString])
        {
          v3 = [MEMORY[0x1E695DFF8] URLWithString:v6];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v5 = [a1 safari_URLByRemovingAllParameters];
  v6 = [v5 absoluteString];
  v7 = [v6 lowercaseString];

  v8 = [v4 safari_URLByRemovingAllParameters];
  v9 = [v8 absoluteString];
  v10 = [v9 lowercaseString];

  v11 = [v7 hasPrefix:v10];
  return v11;
}

- (uint64_t)safari_isWithinWebAppNavigationScope:()SafariSharedExtras allowingQuirks:
{
  v6 = a3;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (![a1 safari_hasSameOriginAsURL:v6 relaxingWWW:1] || objc_msgSend(a1, "safari_canQuirkBannerForNavigation"))
  {
    if (a4)
    {
      v7 = [a1 _safari_isWithinQuirkedNavigationScope:v6];
      goto LABEL_12;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_12;
  }

  v8 = [a1 path];
  v9 = [v6 path];
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v7 = [v8 safari_hasPrefix:v9];
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
  v1 = [a1 safari_highLevelDomain];
  v2 = [&unk_1F3A9B288 containsObject:v1];

  return v2;
}

- (uint64_t)_safari_isWithinQuirkedNavigationScope:()SafariSharedExtras
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [v5 lowercaseString];

  v7 = [a1 host];
  v8 = [v7 lowercaseString];

  v9 = [v6 safari_highLevelDomainFromHost];
  v10 = [v8 safari_highLevelDomainFromHost];
  if ([a1 safari_canQuirkBannerForNavigation] && (objc_msgSend(v9, "isEqualToString:", v10) & 1) != 0)
  {
    goto LABEL_15;
  }

  if (![v9 isEqualToString:v10])
  {
LABEL_17:
    v19 = [v6 safari_stringByRemovingWwwDotPrefix];
    v20 = [v8 safari_stringByRemovingWwwDotPrefix];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__NSURL_SafariSharedExtras___safari_isWithinQuirkedNavigationScope___block_invoke;
    v24[3] = &unk_1E7FC87D0;
    v21 = v19;
    v26 = v20;
    v27 = &v28;
    v25 = v21;
    v22 = v20;
    [&unk_1F3A9B410 enumerateKeysAndObjectsUsingBlock:v24];
    v18 = *(v29 + 24);

    _Block_object_dispose(&v28, 8);
    goto LABEL_18;
  }

  if ([&unk_1F3A9B2A0 containsObject:v9])
  {
    goto LABEL_15;
  }

  v11 = [v9 componentsSeparatedByString:@"."];
  v12 = [v11 firstObject];
  v13 = [&unk_1F3A9B2A0 containsObject:v12];

  if (v13)
  {
    goto LABEL_15;
  }

  v14 = [v8 componentsSeparatedByString:@"."];
  v15 = [v14 firstObject];

  v16 = [v6 componentsSeparatedByString:@"."];
  v17 = [v16 firstObject];

  if ((!v17 || ([v15 hasPrefix:v17] & 1) == 0) && (!v15 || (objc_msgSend(v17, "hasPrefix:", v15) & 1) == 0) && (objc_msgSend(v17, "isEqualToString:", @"www") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"www") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", v9) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", v10) & 1) == 0)
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
  v2 = [a1 safari_highLevelDomain];
  v3 = [a1 host];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [a1 path];
    if ([v6 safari_isSubpathOfPath:@"/archives"])
    {
      v7 = 1;
    }

    else
    {
      v8 = [a1 path];
      v7 = [v8 safari_isSubpathOfPath:@"/files"];
    }

    v5 = [v2 isEqualToString:@"slack.com"] & v7;
  }

  return v5;
}

- (id)safari_URLByReplacingHostWithString:()SafariSharedExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  [v5 setHost:v4];
  v6 = [v5 URL];

  return v6;
}

- (BOOL)safari_hasUserOrPassword
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = [v1 user];
  if ([v2 length])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 password];
    v3 = [v4 length] != 0;
  }

  return v3;
}

- (id)safari_URLByDeletingUserAndPassword
{
  v2 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v3 = [v2 user];
  if ([v3 length])
  {

LABEL_4:
    [v2 setUser:0];
    [v2 setPassword:0];
    v6 = [v2 URL];
    goto LABEL_5;
  }

  v4 = [v2 password];
  v5 = [v4 length];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [a1 copy];
LABEL_5:
  v7 = v6;

  return v7;
}

- (id)safari_URLByRemovingAllParameters
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  [v1 setQuery:0];
  v2 = [v1 URL];

  return v2;
}

- (id)safari_canonicalURLForStartPage
{
  v1 = [a1 safari_originalDataAsString];
  v2 = [v1 safari_bestURLForUserTypedString];
  v3 = [v2 safari_canonicalURL];

  return v3;
}

- (id)safari_simplifiedURLStringForDeduping
{
  v1 = [a1 safari_canonicalURL];
  v2 = [v1 safari_originalDataAsString];
  v3 = [v2 safari_simplifiedUserVisibleURLStringWithSimplifications:367 forDisplayOnly:0 simplifiedStringOffset:0];

  return v3;
}

- (BOOL)safari_hasCharactersBeyondPath
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
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
    if ([a1 isFileURL])
    {
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      v9 = [a1 path];
      v6 = [v8 displayNameAtPath:v9];

      if (v6)
      {
        goto LABEL_9;
      }

      goto LABEL_4;
    }

    if ([a1 safari_isURLTooLongToDisplay])
    {
      [a1 host];
    }

    else
    {
      [a1 safari_userVisibleString];
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
    [(NSURL(SafariSharedExtras) *)a1 safari_displayNameWithTitle:v7];
  }

  v6 = _WBSLocalizedString();
LABEL_9:

  return v6;
}

- (id)safari_originalDataAsString
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = WTF::originalURLData(a1, v3);
  v5 = [v2 initWithData:v4 encoding:5];

  return v5;
}

- (__CFString)safari_userVisibleHost
{
  v1 = [a1 host];
  v3 = WTF::decodeHostName(v1, v2);
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
  v2 = [(NSURL *)a1 safari_isSafariWebExtensionURL];
  if (v2)
  {
    v3 = SafariShared::ExtensionURLTranslator::shared(v2);
    SafariShared::ExtensionURLTranslator::displayNameForExtensionURL(v3, a1);
  }

  else
  {
    [(NSURL *)a1 safari_userVisibleHostWithoutWWWSubdomain];
  }
  v4 = ;

  return v4;
}

- (id)safari_perSitePreferencesMenuBarTitle
{
  v2 = [a1 safari_userVisibleHostOrExtensionDisplayName];
  if ([v2 length])
  {
    [a1 safari_isSafariWebExtensionURL];
    v3 = MEMORY[0x1E696AEC0];
    v4 = _WBSLocalizedString();
    v5 = [v3 stringWithFormat:v4, v2];
  }

  else
  {
    v5 = _WBSLocalizedString();
  }

  return v5;
}

- (id)safari_userVisibleHostWithoutWWWSubdomain
{
  v1 = [a1 safari_userVisibleHost];
  v2 = [v1 safari_stringByRemovingWwwDotPrefix];

  return v2;
}

- (id)safari_userVisibleHostWithoutWWWSubdomainIfSecure
{
  if ([a1 safari_isEligibleToShowNotSecureWarning])
  {
    v2 = [a1 safari_userVisibleHost];
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 scheme];
    v6 = [v4 stringWithFormat:@"%@://%@", v5, v2];
  }

  else
  {
    v6 = [a1 safari_userVisibleHostWithoutWWWSubdomain];
  }

  return v6;
}

- (__CFString)safari_userVisibleScheme
{
  v1 = [a1 safari_userVisibleString];
  v2 = [v1 rangeOfString:@":"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_1F3A5E418;
  }

  else
  {
    v3 = [v1 substringToIndex:v2];
  }

  return v3;
}

- (uint64_t)safari_isTopLevelURL
{
  v1 = [a1 path];
  if ([v1 length])
  {
    v2 = [v1 isEqualToString:@"/"];
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
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v6 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:1];
  v7 = [v5 path];
  if (![v7 length] || (objc_msgSend(v7, "isEqualToString:", @"/") & 1) != 0 || (objc_msgSend(v6, "path"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, (v9 & 1) != 0))
  {
    v10 = [v6 scheme];
    [v5 setScheme:v10];

    v11 = [v6 path];
    [v5 setPath:v11];

    v12 = [v6 fragment];
    [v5 setFragment:v12];

    v13 = [v5 host];
    v14 = [v13 safari_stringByRemovingWwwDotPrefix];
    [v5 setHost:v14];

    v15 = [v6 host];
    v16 = [v15 safari_stringByRemovingWwwDotPrefix];
    [v6 setHost:v16];

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
  if ([a1 safari_isURLTooLongToDisplay])
  {
    v2 = [a1 absoluteString];
    v3 = [v2 substringToIndex:4096];
  }

  else
  {
    v3 = [a1 safari_userVisibleString];
  }

  return v3;
}

- (BOOL)safari_isURLTooLongToDisplay
{
  v1 = [a1 absoluteString];
  v2 = [v1 length] > 0x1000;

  return v2;
}

- (id)safari_wellKnownResponseCodeReliabilityURL
{
  if ([a1 safari_isHTTPFamilyURL])
  {
    v2 = [a1 safari_URLByRemovingUserPasswordPathQueryAndFragment];
    v3 = [v2 URLByAppendingPathComponent:@".well-known/resource-that-should-not-exist-whose-status-code-should-not-be-200"];
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
  v4 = [a3 URLByStandardizingPath];
  v5 = [v4 pathComponents];

  v6 = [a1 URLByStandardizingPath];
  v7 = [v6 pathComponents];

  v8 = 0;
  if (v5 && v7)
  {
    v9 = [v5 count];
    v10 = [v7 count];
    if (v9 >= v10)
    {
      v11 = [v5 subarrayWithRange:{0, v10}];
      if ([v11 isEqualToArray:v7])
      {
        if (v9 == v10)
        {
          v8 = &stru_1F3A5E418;
        }

        else
        {
          v12 = [v5 subarrayWithRange:{v10, v9 - v10}];
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
  v4 = [a1 safari_userVisibleStringConsideringLongURLs];
  if ([v4 length] >= 0x101)
  {
    v5 = [v4 substringWithRange:{0, 256}];

    v4 = v5;
  }

  v6 = [v4 safari_simplifiedUserVisibleURLStringWithSimplifications:a3 | 0x1CF forDisplayOnly:1 simplifiedStringOffset:0];

  return v6;
}

- (id)safari_mailtoURLStatusMessage
{
  v24 = *MEMORY[0x1E69E9840];
  if (![a1 safari_isMailtoURL])
  {
    v12 = 0;
    goto LABEL_22;
  }

  v2 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v3 = [v2 path];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v2 queryItems];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 isEqualToString:@"subject"];

        if (v10)
        {
          v11 = [v8 value];
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  if ([v11 length] && objc_msgSend(v3, "length"))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = _WBSLocalizedString();
    v15 = [v13 stringWithFormat:v14, v3, v11];
  }

  else if ([v11 length])
  {
    v16 = MEMORY[0x1E696AEC0];
    v14 = _WBSLocalizedString();
    v15 = [v16 stringWithFormat:v14, v11];
  }

  else
  {
    if (![v3 length])
    {
      v12 = 0;
      goto LABEL_21;
    }

    v17 = MEMORY[0x1E696AEC0];
    v14 = _WBSLocalizedString();
    v15 = [v17 stringWithFormat:v14, v3];
  }

  v12 = v15;

LABEL_21:
LABEL_22:

  return v12;
}

- (id)safari_defaultStatusMessageString
{
  if ([a1 safari_isJavaScriptURL])
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = _WBSLocalizedString();
    v4 = [a1 safari_userVisibleString];
    v5 = [v4 substringFromIndex:11];
    v6 = [v2 stringWithFormat:v3, v5];
LABEL_5:

    goto LABEL_7;
  }

  if ([a1 safari_isTelURL])
  {
    v7 = MEMORY[0x1E696AEC0];
    v3 = _WBSLocalizedString();
    v4 = [a1 absoluteString];
    v5 = [v4 substringFromIndex:{objc_msgSend(@"tel:", "length")}];
    v8 = [v5 stringByRemovingPercentEncoding];
    v6 = [v7 stringWithFormat:v3, v8];

    goto LABEL_5;
  }

  v6 = [a1 safari_mailtoURLStatusMessage];
LABEL_7:

  return v6;
}

- (uint64_t)safari_isSharedTabGroupURL
{
  v1 = [a1 absoluteString];
  v2 = [v1 hasPrefix:@"https://www.icloud.com/safari-tab-groups"];

  return v2;
}

- (uint64_t)safari_isEqualToURL:()SafariSharedExtras
{
  v4 = a3;
  if ([a1 safari_isHTTPFamilyURL] && (objc_msgSend(v4, "safari_isHTTPFamilyURL") & 1) != 0)
  {
    v5 = a1;
    v6 = [v5 lastPathComponent];
    v7 = [v6 length];

    if (!v7)
    {
      v8 = [v5 URLByAppendingPathComponent:@"/"];

      v5 = v8;
    }

    v9 = [v4 lastPathComponent];
    v10 = [v9 length];

    if (!v10)
    {
      v11 = [v4 URLByAppendingPathComponent:@"/"];

      v4 = v11;
    }

    v12 = [v5 isEqual:v4];
  }

  else
  {
    v12 = [a1 isEqual:v4];
  }

  return v12;
}

- (uint64_t)safari_isEqualOrHasSameHighLevelDomainAsURL:()SafariSharedExtras
{
  v4 = a3;
  v5 = a1;
  v6 = [v5 host];
  v7 = [v4 host];
  v8 = [v6 isEqualToString:v7];

  v9 = [v5 host];
  v10 = [v9 safari_highLevelDomainFromHost];
  v11 = [v4 host];
  v12 = [v11 safari_highLevelDomainFromHost];
  v13 = [v10 isEqualToString:v12];

  if ((v8 | v13))
  {
    v14 = 1;
  }

  else
  {
    v14 = [v5 safari_isEqualToURL:v4];
  }

  return v14;
}

- (id)safari_readingListItemUUIDString
{
  if ([a1 safari_isReadingListURL])
  {
    v2 = [a1 host];
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v2;
    }

    if (!v3)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)safari_URLByRemovingQuery
{
  v1 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
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