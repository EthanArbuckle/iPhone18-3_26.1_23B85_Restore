@interface NSString(SafariCoreExtras)
+ (id)safari_stringAsHexWithBuffer:()SafariCoreExtras length:;
+ (id)safari_stringAsHexWithData:()SafariCoreExtras;
- (BOOL)_safari_hasLocalizedPrefix:()SafariCoreExtras withOptions:;
- (BOOL)safari_allowsLooserMatchingInSearch;
- (BOOL)safari_containsDotOrHomoglyphForDot;
- (BOOL)safari_containsInteriorWhitespace;
- (BOOL)safari_hasCaseInsensitivePrefix:()SafariCoreExtras;
- (BOOL)safari_hasCaseInsensitiveSuffix:()SafariCoreExtras;
- (BOOL)safari_isCaseAndDiacriticInsensitiveEqualToString:()SafariCoreExtras;
- (BOOL)safari_isCaseInsensitiveEqualToString:()SafariCoreExtras;
- (BOOL)safari_isSubpathOfPath:()SafariCoreExtras;
- (BOOL)safari_isVersionStringBetweenVersionString:()SafariCoreExtras andVersionString:;
- (BOOL)safari_looksLikeEmailAddress;
- (BOOL)safari_mightContainURLScheme;
- (__CFString)safari_monogramString;
- (__CFString)safari_stringByRedactingBookmarkDAVServerID;
- (__CFString)safari_stringByRemovingTopLevelDomainFromHost;
- (__CFString)safari_stringByRepeatingWithCount:()SafariCoreExtras joinedByString:;
- (__CFString)safari_stringByTrimmingWhitespace;
- (id)_safari_stringByTruncatingToFilenameLength:()SafariCoreExtras preservePathExtension:;
- (id)safari_base64DecodedData;
- (id)safari_bestURLForUserTypedString;
- (id)safari_bundleIdentifierFromApplicationIdentifier:()SafariCoreExtras;
- (id)safari_comparableSafariVersionNumberForAnalyticsFromNormalizedVersionString;
- (id)safari_displayableTabBarTitleString;
- (id)safari_domainFromHost;
- (id)safari_effectiveTopLevelDomainForHost;
- (id)safari_filenameByFixingIllegalCharacters;
- (id)safari_fixedStringByExpandingTildeInPathToUserHomeDirectory;
- (id)safari_highLevelDomainForPasswordManager;
- (id)safari_highLevelDomainForUserTypedStringWhenAddingPasswordInPasswordManager;
- (id)safari_highLevelDomainFromHost;
- (id)safari_possibleTopLevelDomainCorrectionForUserTypedString;
- (id)safari_separateResourceForkPath;
- (id)safari_setOfAllSubstringsWithMinimumLength:()SafariCoreExtras;
- (id)safari_simplifiedSiteNameForCredentialLookup;
- (id)safari_simplifiedUserVisibleURLStringWithSimplifications:()SafariCoreExtras forDisplayOnly:simplifiedStringOffset:;
- (id)safari_stringByDeletingAllPathExtensions;
- (id)safari_stringByDeletingStartingSlash;
- (id)safari_stringByDeletingTrailingSlash;
- (id)safari_stringByNormalizingVersionString;
- (id)safari_stringByRemovingCharactersInSet:()SafariCoreExtras;
- (id)safari_stringByRemovingExcessWhitespace;
- (id)safari_stringByRemovingParenthesizedText;
- (id)safari_stringByRemovingUnnecessaryCharactersFromUserTypedURLString;
- (id)safari_stringByRemovingWrappingParenthesis;
- (id)safari_stringByRemovingWrappingSingleQuotes;
- (id)safari_stringByRemovingWwwAndWildcardDotPrefixes;
- (id)safari_stringByRemovingWwwDotPrefix;
- (id)safari_stringByReplacingCharacterSetsInContainer:()SafariCoreExtras;
- (id)safari_stringByReplacingCharactersInSet:()SafariCoreExtras withString:;
- (id)safari_stringByTrimmingTrailingCharactersInCharacterSet:()SafariCoreExtras;
- (id)safari_stringByTruncatingToMaximumFilenameLengthPreservingExtensionAndAppendingString:()SafariCoreExtras;
- (id)safari_substringFromPrefix:()SafariCoreExtras;
- (id)safari_suggestedFilenameFromTitleString;
- (id)safari_teamIdentifierFromApplicationIdentifier:()SafariCoreExtras;
- (id)safari_userVisibleSafariBundleVersionFromFullVersion;
- (uint64_t)_safari_looksLikeWillRedirectToURLStringAfterAuthentication:()SafariCoreExtras orHostAfterLogin:;
- (uint64_t)safari_anyComponentSeparatedByString:()SafariCoreExtras hasLocalizedCaseInsensitivePrefix:;
- (uint64_t)safari_caseAndDiacriticInsensitiveStandardRangeOfString:()SafariCoreExtras additionalOptions:;
- (uint64_t)safari_containsAllCharactersInString:()SafariCoreExtras;
- (uint64_t)safari_containsCJKCharacters;
- (uint64_t)safari_countOfString:()SafariCoreExtras;
- (uint64_t)safari_firstLocationOfPeriodOrHomoglyphForPeriod;
- (uint64_t)safari_hasPrefix:()SafariCoreExtras;
- (uint64_t)safari_indexOfFirstAppearanceOfCharacter:()SafariCoreExtras;
- (uint64_t)safari_isHostOrSubdomainOfHost:()SafariCoreExtras;
- (uint64_t)safari_isPathExtensionAllowedForAnalytics;
- (uint64_t)safari_localizedCompareSortingEmptyStringAndNumericPrefixToEnd:()SafariCoreExtras;
- (uint64_t)safari_numberOfComposedCharacters;
- (uint64_t)safari_possibleTopLevelDomainCorrectionForUserTypedString;
- (uint64_t)safari_stringByReplacingHomoglyphForSpaceWithSpace;
@end

@implementation NSString(SafariCoreExtras)

- (__CFString)safari_stringByTrimmingWhitespace
{
  v1 = [self mutableCopy];
  CFStringTrimWhitespace(v1);

  return v1;
}

- (id)safari_userVisibleSafariBundleVersionFromFullVersion
{
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];
  v4 = [self rangeOfCharacterFromSet:invertedSet];

  if (v4 < 4)
  {
    goto LABEL_2;
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([self length] < 4)
    {
LABEL_2:
      selfCopy = self;
      goto LABEL_8;
    }

    v6 = [self length] - 3;
  }

  else
  {
    v6 = v4 - 3;
  }

  selfCopy = [self substringFromIndex:v6];
LABEL_8:

  return selfCopy;
}

- (id)safari_stringByNormalizingVersionString
{
  v1 = [self stringByReplacingOccurrencesOfString:@"+" withString:&stru_1F3064D08];
  safari_userVisibleSafariBundleVersionFromFullVersion = [v1 safari_userVisibleSafariBundleVersionFromFullVersion];

  return safari_userVisibleSafariBundleVersionFromFullVersion;
}

- (id)safari_highLevelDomainForPasswordManager
{
  selfCopy = [self safari_highLevelDomainForUserTypedStringWhenAddingPasswordInPasswordManager];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)safari_highLevelDomainForUserTypedStringWhenAddingPasswordInPasswordManager
{
  v17 = *MEMORY[0x1E69E9840];
  [self safari_hostDomainsEnumerator];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        kind = [v2 kind];
        v8 = kind;
        if (kind <= 4 && ((1 << kind) & 0x13) != 0)
        {
          v1 = v6;
        }

        if (v8 <= 4 && ((1 << v8) & 0x13) != 0)
        {
          v9 = v1;
          goto LABEL_16;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_16:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)safari_effectiveTopLevelDomainForHost
{
  v1 = [self dataUsingEncoding:4];
  bytes = [v1 bytes];
  v3 = [v1 length];
  if (v3)
  {
    v4 = bytes;
    v5 = v3;
    if (*bytes != 46 || (v4 = bytes + 1, v5 = v3 - 1, v3 != 1))
    {
      v6 = v4[v5 - 1] == 46;
    }
  }

  TopLevelDomain = _CFHostGetTopLevelDomain();
  if (TopLevelDomain)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:TopLevelDomain length:&bytes[v3 - TopLevelDomain] encoding:4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__CFString)safari_monogramString
{
  controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
  v3 = [self safari_stringByRemovingCharactersInSet:controlCharacterSet];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v3 capitalizedStringWithLocale:currentLocale];

  safari_stringByRemovingExcessWhitespace = [v5 safari_stringByRemovingExcessWhitespace];

  if ([safari_stringByRemovingExcessWhitespace length])
  {
    v7 = [safari_stringByRemovingExcessWhitespace rangeOfComposedCharacterSequenceAtIndex:0];
    v9 = [safari_stringByRemovingExcessWhitespace substringWithRange:{v7, v8}];
  }

  else
  {
    v9 = &stru_1F3064D08;
  }

  return v9;
}

- (id)safari_stringByRemovingExcessWhitespace
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__NSString_SafariCoreExtras__safari_stringByRemovingExcessWhitespace__block_invoke;
  v8[3] = &unk_1E7CF1BD0;
  v4 = whitespaceAndNewlineCharacterSet;
  v9 = v4;
  v5 = [v3 safari_mapAndFilterObjectsUsingBlock:v8];

  v6 = [v5 componentsJoinedByString:@" "];

  return v6;
}

- (__CFString)safari_stringByRemovingTopLevelDomainFromHost
{
  v15 = *MEMORY[0x1E69E9840];
  [self safari_hostDomainsEnumerator];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v1 = v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    v4 = &stru_1F3064D08;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v1 kind] == 3)
        {
          [v1 clearAccumulatedDomains];
        }

        else
        {
          v7 = v6;

          v4 = v7;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v4 = &stru_1F3064D08;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)safari_stringByTrimmingTrailingCharactersInCharacterSet:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self length];
  if (v5 < 1)
  {
LABEL_9:
    selfCopy = self;
  }

  else
  {
    v6 = 0;
    while ([v4 characterIsMember:{objc_msgSend(self, "characterAtIndex:", v5 + v6 - 1)}])
    {
      --v6;
      if (!(v5 + v6))
      {
        v7 = v5;
        goto LABEL_8;
      }
    }

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = -v6;
LABEL_8:
    selfCopy = [self substringToIndex:v5 - v7];
  }

  v9 = selfCopy;

  return v9;
}

- (BOOL)safari_containsInteriorWhitespace
{
  safari_stringByTrimmingWhitespace = [self safari_stringByTrimmingWhitespace];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [safari_stringByTrimmingWhitespace rangeOfCharacterFromSet:whitespaceCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (id)safari_displayableTabBarTitleString
{
  v11[2] = *MEMORY[0x1E69E9840];
  v1 = &unk_1EBA8A000;
  {
    selfCopy = self;
    v5 = [WBSCharacterSetReplacementsContainer alloc];
    v10[0] = &stru_1F3064D08;
    safari_lockRelatedEmojiCharacterSet = [MEMORY[0x1E696AB08] safari_lockRelatedEmojiCharacterSet];
    v10[1] = @" ";
    v11[0] = safari_lockRelatedEmojiCharacterSet;
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v11[1] = newlineCharacterSet;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [NSString(SafariCoreExtras) safari_displayableTabBarTitleString]::replacements = [(WBSCharacterSetReplacementsContainer *)v5 initWithReplacementStringsToCharacterSets:v8];

    self = selfCopy;
    v1 = &unk_1EBA8A000;
  }

  v2 = [self safari_stringByReplacingCharacterSetsInContainer:{v1[479], selfCopy}];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)safari_filenameByFixingIllegalCharacters
{
  v1 = [self mutableCopy];
  v4 = 0;
  v2 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v4 length:0];
  [v1 replaceOccurrencesOfString:v2 withString:&stru_1F3064D08 options:0 range:{0, objc_msgSend(v1, "length")}];

  [v1 replaceOccurrencesOfString:@"/" withString:@"-" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@":" withString:@"-" options:0 range:{0, objc_msgSend(v1, "length")}];
  while ([v1 hasPrefix:@"."])
  {
    [v1 deleteCharactersInRange:{0, 1}];
  }

  [v1 replaceOccurrencesOfString:@"\u202E" withString:@"-" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

- (id)_safari_stringByTruncatingToFilenameLength:()SafariCoreExtras preservePathExtension:
{
  v5 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v7 = [self getFileSystemRepresentation:v25 maxLength:a3];
  selfCopy = self;
  v9 = selfCopy;
  if ((v7 & 1) == 0)
  {
    if (a4)
    {
      stringByDeletingPathExtension = [selfCopy stringByDeletingPathExtension];

      v11 = [stringByDeletingPathExtension length];
      if (v11 == [v9 length])
      {
        v12 = &stru_1F3064D08;
      }

      else
      {
        v13 = [v9 substringFromIndex:v11];
        v12 = [@"…" stringByAppendingString:v13];

        if (([(__CFString *)v12 getFileSystemRepresentation:v25 maxLength:v5 >> 1]& 1) == 0)
        {
          v9 = [v9 _safari_stringByTruncatingToFilenameLength:v5 preservePathExtension:0];
LABEL_20:

          goto LABEL_21;
        }

        v5 -= strnlen(v25, v5 >> 1);
      }

      v9 = stringByDeletingPathExtension;
    }

    else
    {
      v12 = &stru_1F3064D08;
    }

    if (![(__CFString *)v12 length])
    {

      v12 = @"…";
      [@"…" getFileSystemRepresentation:v25 maxLength:20];
      v5 -= strnlen(v25, 0x14uLL);
    }

    v14 = [v9 length];
    if (v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [v9 rangeOfComposedCharacterSequenceAtIndex:(v14 + v15) >> 1];
        v19 = v18;
        v20 = [v9 substringToIndex:v17];
        if ([v20 getFileSystemRepresentation:v25 maxLength:v5])
        {
          v16 = v17;
          v15 = v17 + v19;
        }

        else
        {
          v14 = v17;
        }
      }

      while (v15 < v14);
    }

    else
    {
      v16 = 0;
    }

    v21 = [v9 substringToIndex:v16];
    v22 = [v21 stringByAppendingString:v12];

    stringByDeletingPathExtension = v9;
    v9 = v22;
    goto LABEL_20;
  }

LABEL_21:
  v23 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)safari_stringByTruncatingToMaximumFilenameLengthPreservingExtensionAndAppendingString:()SafariCoreExtras
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  LOBYTE(v10) = 0;
  if ([v4 length] && (objc_msgSend(v4, "getFileSystemRepresentation:maxLength:", &v9, 255) & 1) == 0)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [self _safari_stringByTruncatingToFilenameLength:255 - strnlen(&v9 preservePathExtension:{0xFFuLL), 1}];
    selfCopy = [v5 stringByAppendingString:v4];
  }

  v7 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)safari_highLevelDomainFromHost
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  [self safari_hostDomainsEnumerator];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v13 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v12 + 1) + 8 * v5);
      if ([v2 isSpeculative])
      {
        break;
      }

      kind = [v2 kind];
      v8 = kind + 1;
      if ((kind + 1) <= 7)
      {
        if (((1 << v8) & 0xC9) != 0)
        {
          break;
        }

        if (((1 << v8) & 6) != 0)
        {
          goto LABEL_16;
        }

        if (kind == 4)
        {
          selfCopy = v6;
LABEL_16:
          v9 = selfCopy;
          goto LABEL_17;
        }
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v9 = 0;
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }
  }

  v9 = 0;
LABEL_17:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)safari_base64DecodedData
{
  v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:self options:0];

  return v1;
}

+ (id)safari_stringAsHexWithData:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self safari_stringAsHexWithBuffer:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];

  return v5;
}

+ (id)safari_stringAsHexWithBuffer:()SafariCoreExtras length:
{
  v4 = a4;
  v6 = 2 * a4;
  v7 = malloc_type_malloc((2 * a4) | 1, 0x100004077774924uLL);
  v8 = v7;
  if (v4)
  {
    v9 = v7;
    do
    {
      v10 = *a3++;
      snprintf(v9, 3uLL, "%02hhX", v10);
      v9 += 2;
      --v4;
    }

    while (v4);
  }

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v8 length:v6 encoding:4 freeWhenDone:1];

  return v11;
}

- (id)safari_simplifiedUserVisibleURLStringWithSimplifications:()SafariCoreExtras forDisplayOnly:simplifiedStringOffset:
{
  v8 = [self copy];
  v9 = [v8 safari_hasCaseInsensitivePrefix:@"blob:"] ^ 1;
  if ((a3 & 0x80) == 0)
  {
    LOBYTE(v9) = 1;
  }

  if ((v9 & 1) == 0)
  {
    v10 = [v8 substringFromIndex:5];

    v11 = [MEMORY[0x1E696AF20] componentsWithString:v10];
    user = [v11 user];
    if (user)
    {
    }

    else
    {
      password = [v11 password];

      if (!password)
      {
        v56 = 0;
        v8 = [v10 safari_simplifiedUserVisibleURLStringWithSimplifications:a3 & 0xFFFFFFFFFFFFFF7FLL forDisplayOnly:a4 simplifiedStringOffset:&v56];

        if (!a5)
        {
          goto LABEL_24;
        }

        v36 = v56;
LABEL_23:
        *a5 = v36 + 5;
LABEL_24:

        goto LABEL_68;
      }
    }

    location = [v11 rangeOfUser];
    length = v28;
    v31.location = [v11 rangeOfPassword];
    if (v31.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31.length = v30;
      v58.location = location;
      v58.length = length;
      v32 = NSUnionRange(v58, v31);
      location = v32.location;
      length = v32.length;
    }

    v33 = length + 1;
    v34 = [v10 stringByReplacingCharactersInRange:location withString:{length + 1, &stru_1F3064D08}];

    v56 = 0;
    v8 = [v34 safari_simplifiedUserVisibleURLStringWithSimplifications:a3 & 0xFFFFFFFFFFFFFF7FLL forDisplayOnly:a4 simplifiedStringOffset:&v56];

    if (!a5)
    {
      goto LABEL_24;
    }

    if (v56 >= location)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v36 = v56 + v35;
    goto LABEL_23;
  }

  v13 = [MEMORY[0x1E695DFF8] safari_hostAndPortRangeFromUserTypedString:v8];
  v15 = v14;
  v16 = [v8 safari_hasCaseInsensitivePrefix:@"http://"];
  v17 = [v8 safari_hasCaseInsensitivePrefix:@"https://"];
  v18 = v17;
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v16 | v17;
    if (a3 & 0x20) != 0 && ((v16 | v17))
    {
      v20 = [self rangeOfString:@":" options:4 range:{v13, v15}];
      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        selfCopy = self;
        v22 = v13 + v15 - v20;
        if ([selfCopy rangeOfString:@"]" options:0 range:{v20, v22}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = [v8 stringByReplacingCharactersInRange:v20 withString:{v13 + v15 - v20, &stru_1F3064D08}];

          v15 -= v22;
          v8 = v23;
        }
      }
    }

    if ((((a3 & 0x10) != 0) & v19) == 1)
    {
      v24 = v15 + v13;
LABEL_14:
      v25 = [v8 substringToIndex:v24];

      v8 = v25;
      goto LABEL_27;
    }

    if ((a3 & 4) != 0)
    {
      v24 = v15 + v13;
      v37 = [v8 substringFromIndex:v15 + v13];
      v38 = [v37 isEqualToString:@"/"];

      if (v38)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_27:
  v39 = @"https://";
  if ((((a3 & 2) != 0) & v18) == 0)
  {
    v39 = 0;
  }

  v40 = (a3 & v16 & 1) == 0 && !(((a3 & 2) != 0) & v18);
  if (a3 & v16)
  {
    v41 = @"http://";
  }

  else
  {
    v41 = v39;
  }

  if ((a3 & 0x148) == 0)
  {
    goto LABEL_38;
  }

  if ((v16 & 1) == 0)
  {
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = 0;
    }

    else
    {
      v46 = v18;
    }

    if (v46)
    {
      goto LABEL_46;
    }

LABEL_38:
    if (v41)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

LABEL_46:
  v47 = [v8 substringWithRange:{v13, v15}];
  v48 = v47;
  if (a3 & 8) != 0 && ([v47 safari_hasCaseInsensitivePrefix:@"www."])
  {
    v49 = @"www.";
  }

  else if (a3 & 0x40) != 0 && ([v48 safari_hasCaseInsensitivePrefix:@"m."])
  {
    v49 = @"m.";
  }

  else
  {
    if ((a3 & 0x100) == 0 || ![v48 safari_hasCaseInsensitivePrefix:@"mobile."])
    {
      goto LABEL_64;
    }

    v49 = @"mobile.";
  }

  safari_highLevelDomainFromHost = [v48 safari_highLevelDomainFromHost];
  v52 = [v48 isEqualToString:safari_highLevelDomainFromHost];

  if ((v52 & 1) == 0)
  {
    if (v40 || v13 != [(__CFString *)v41 length])
    {
      v53 = [v8 stringByReplacingCharactersInRange:v13 withString:{-[__CFString length](v49, "length"), &stru_1F3064D08}];

      v8 = v53;
    }

    else
    {
      v41 = [(__CFString *)v41 stringByAppendingString:v49];
    }
  }

LABEL_64:

  if (v41)
  {
LABEL_39:
    v42 = [(__CFString *)v41 length];
    if (a4)
    {
      v43 = MEMORY[0x1E696AEC0];
      v44 = [v8 substringFromIndex:v42];
      v45 = [v43 stringWithFormat:@"%C%@", 8206, v44];

      --v42;
      v8 = v45;
      if (!a5)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v50 = [v8 substringFromIndex:v42];

      v8 = v50;
      if (!a5)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_66;
  }

LABEL_65:
  v42 = 0;
  if (a5)
  {
LABEL_66:
    *a5 = v42;
  }

LABEL_67:

LABEL_68:

  return v8;
}

- (id)safari_simplifiedSiteNameForCredentialLookup
{
  v1 = [@"https://" stringByAppendingString:self];
  v2 = [v1 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

  return v2;
}

- (id)safari_separateResourceForkPath
{
  lastPathComponent = [self lastPathComponent];
  if ([lastPathComponent length] && (objc_msgSend(lastPathComponent, "isEqualToString:", @"/") & 1) == 0)
  {
    stringByDeletingLastPathComponent = [self stringByDeletingLastPathComponent];
    v5 = [@"._" stringByAppendingString:lastPathComponent];
    v3 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)safari_hasPrefix:()SafariCoreExtras
{
  v4 = a3;
  if (v4)
  {
    v5 = [self hasPrefix:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)safari_substringFromPrefix:()SafariCoreExtras
{
  v4 = a3;
  if ([v4 length] && objc_msgSend(self, "hasPrefix:", v4))
  {
    v5 = [self substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)safari_caseAndDiacriticInsensitiveStandardRangeOfString:()SafariCoreExtras additionalOptions:
{
  v6 = a3;
  if ([v6 length])
  {
    0x181 = [self rangeOfString:v6 options:a4 | 0x181];
  }

  else
  {
    0x181 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return 0x181;
}

- (uint64_t)safari_isHostOrSubdomainOfHost:()SafariCoreExtras
{
  v4 = a3;
  if ([self isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [@"." stringByAppendingString:v4];
    v5 = [self hasSuffix:v6];
  }

  return v5;
}

- (BOOL)safari_isCaseInsensitiveEqualToString:()SafariCoreExtras
{
  v4 = a3;
  if (v4)
  {
    v5 = [self compare:v4 options:3] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)safari_isCaseAndDiacriticInsensitiveEqualToString:()SafariCoreExtras
{
  v4 = a3;
  if (v4)
  {
    v5 = [self compare:v4 options:131] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)safari_hasCaseInsensitivePrefix:()SafariCoreExtras
{
  v4 = a3;
  if (v4)
  {
    v5 = [self rangeOfString:v4 options:9] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)safari_hasCaseInsensitiveSuffix:()SafariCoreExtras
{
  v4 = a3;
  if (v4)
  {
    v5 = [self rangeOfString:v4 options:13] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_safari_hasLocalizedPrefix:()SafariCoreExtras withOptions:
{
  v6 = a3;
  v7 = v6;
  if (v6 && (v8 = [v6 length], v8 <= objc_msgSend(self, "length")))
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v9 = [self compare:v7 options:a4 range:0 locale:{v8, currentLocale}] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)safari_anyComponentSeparatedByString:()SafariCoreExtras hasLocalizedCaseInsensitivePrefix:
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [self length];
    v9 = 0;
    while (v8 >= [v7 length])
    {
      v10 = [v7 length];
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v12 = [self compare:v7 options:1 range:v9 locale:{v10, currentLocale}];

      if (!v12)
      {
        v15 = 1;
        goto LABEL_9;
      }

      v14 = [self rangeOfString:v6 options:0 range:{v9, v8}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v9 = v14 + v13;
      v8 = [self length] - (v14 + v13);
    }
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (BOOL)safari_isSubpathOfPath:()SafariCoreExtras
{
  v4 = a3;
  if ([self hasPrefix:v4])
  {
    v5 = [self length];
    v6 = [v4 length];
    v7 = v5 - v6;
    v8 = !v7 || ([v4 hasSuffix:@"/"] & 1) != 0 || objc_msgSend(self, "rangeOfString:options:range:", @"/", 8, v6, v7) != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)safari_stringByRemovingCharactersInSet:()SafariCoreExtras
{
  v3 = [self safari_stringByReplacingCharactersInSet:a3 withString:&stru_1F3064D08];

  return v3;
}

- (id)safari_stringByReplacingCharactersInSet:()SafariCoreExtras withString:
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v9 = [self rangeOfCharacterFromSet:v6 options:0], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = v8;
    v10 = [self mutableCopy];
    v12 = [v10 length];
    v13 = [v7 length];
    do
    {
      if (v13)
      {
        [v10 replaceCharactersInRange:v9 withString:{v11, v7}];
        v14 = v12 - v11;
        v12 = v12 - v11 + v13;
        v15 = v9 + v13;
      }

      else
      {
        [v10 deleteCharactersInRange:{v9, v11}];
        v14 = v12 - v11;
        v15 = v9;
        v12 -= v11;
      }

      v9 = [v10 rangeOfCharacterFromSet:v6 options:0 range:{v15, v14 - v9}];
      v11 = v16;
    }

    while (v9 != 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = [self copy];
  }

  return v10;
}

- (id)safari_stringByReplacingCharacterSetsInContainer:()SafariCoreExtras
{
  v4 = a3;
  allCharacters = [v4 allCharacters];
  v6 = [self rangeOfCharacterFromSet:allCharacters];
  v8 = v7;

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [self copy];
  }

  else
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v14 = [self mutableCopy];
    v28[3] = [v14 length];
    v10 = MEMORY[0x1E69E9820];
    do
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x4012000000;
      v24 = __Block_byref_object_copy__3;
      v25 = __Block_byref_object_dispose__3;
      v26 = &unk_1B85A7575;
      v27 = xmmword_1B8573D10;
      v15[0] = v10;
      v15[1] = 3221225472;
      v15[2] = __79__NSString_SafariCoreExtras__safari_stringByReplacingCharacterSetsInContainer___block_invoke;
      v15[3] = &unk_1E7CF1B80;
      v9 = v14;
      v19 = v6;
      v20 = v8;
      v16 = v9;
      v17 = v28;
      v18 = &v21;
      [v4 enumerateCharacterSetReplacementStringPairsUsingBlock:v15];
      allCharacters2 = [v4 allCharacters];
      v6 = [v9 rangeOfCharacterFromSet:allCharacters2 options:0 range:{v22[6], v22[7]}];
      v8 = v12;

      _Block_object_dispose(&v21, 8);
    }

    while (v6 != 0x7FFFFFFFFFFFFFFFLL);
    _Block_object_dispose(v28, 8);
  }

  return v9;
}

- (BOOL)safari_containsDotOrHomoglyphForDot
{
  if ([NSString(SafariCoreExtras) safari_containsDotOrHomoglyphForDot]::once != -1)
  {
    [NSString(SafariCoreExtras) safari_containsDotOrHomoglyphForDot];
  }

  return [self rangeOfCharacterFromSet:-[NSString(SafariCoreExtras) safari_containsDotOrHomoglyphForDot]::dotAndHomoglyphsForDot] != 0x7FFFFFFFFFFFFFFFLL;
}

- (uint64_t)safari_firstLocationOfPeriodOrHomoglyphForPeriod
{
  if ([NSString(SafariCoreExtras) safari_firstLocationOfPeriodOrHomoglyphForPeriod]::once != -1)
  {
    [NSString(SafariCoreExtras) safari_firstLocationOfPeriodOrHomoglyphForPeriod];
  }

  v2 = [NSString(SafariCoreExtras) safari_firstLocationOfPeriodOrHomoglyphForPeriod]::periodAndHomoglyphsForPeriod;

  return [self rangeOfCharacterFromSet:v2];
}

- (uint64_t)safari_stringByReplacingHomoglyphForSpaceWithSpace
{
  if ([NSString(SafariCoreExtras) safari_stringByReplacingHomoglyphForSpaceWithSpace]::once != -1)
  {
    [NSString(SafariCoreExtras) safari_stringByReplacingHomoglyphForSpaceWithSpace];
  }

  v2 = [NSString(SafariCoreExtras) safari_stringByReplacingHomoglyphForSpaceWithSpace]::homoglyphsForSpace;

  return [self safari_stringByReplacingCharactersInSet:v2 withString:@" "];
}

- (id)safari_comparableSafariVersionNumberForAnalyticsFromNormalizedVersionString
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__69;
  v10 = __Block_byref_object_dispose__70;
  v11 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.0"];
  if ([self length])
  {
    v2 = [self componentsSeparatedByString:@"."];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __105__NSString_SafariCoreExtras__safari_comparableSafariVersionNumberForAnalyticsFromNormalizedVersionString__block_invoke;
    v5[3] = &unk_1E7CF1BA8;
    v5[4] = &v6;
    [v2 enumerateObjectsUsingBlock:v5];
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)safari_isVersionStringBetweenVersionString:()SafariCoreExtras andVersionString:
{
  v6 = a3;
  v7 = a4;
  v8 = [self compare:v6 options:64] != -1 && objc_msgSend(self, "compare:options:", v7, 64) == -1;

  return v8;
}

- (uint64_t)safari_containsAllCharactersInString:()SafariCoreExtras
{
  v4 = a3;
  if ([v4 length])
  {
    if ([self length])
    {
      v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:self];
      v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v4];
      v7 = [v5 isSupersetOfSet:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)safari_setOfAllSubstringsWithMinimumLength:()SafariCoreExtras
{
  v5 = [self length];
  v6 = 0;
  if (v5)
  {
    v7 = v5;
    if (v5 >= a3)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      do
      {
        v8 = 0;
        do
        {
          v9 = [self substringWithRange:{v8, a3}];
          [v6 addObject:v9];

          ++v8;
        }

        while (v8 <= v7 - a3);
        ++a3;
      }

      while (a3 <= v7);
    }
  }

  return v6;
}

- (__CFString)safari_stringByRepeatingWithCount:()SafariCoreExtras joinedByString:
{
  v6 = a4;
  if (a3)
  {
    if (a3 == 1)
    {
      selfCopy = self;
    }

    else
    {
      v8 = [self length];
      v9 = [v6 length];
      v10 = [v6 stringByAppendingString:self];
      selfCopy = [self stringByPaddingToLength:v8 * a3 + v9 * (a3 - 1) withString:v10 startingAtIndex:0];
    }
  }

  else
  {
    selfCopy = &stru_1F3064D08;
  }

  return selfCopy;
}

- (BOOL)safari_looksLikeEmailAddress
{
  v2 = [self length];
  if (v2 < 6)
  {
    return 0;
  }

  v4 = v2;
  v6 = [self rangeOfString:@"@"];
  result = 0;
  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [self rangeOfString:@"." options:4 range:{v6 + v5, v4 - (v6 + v5)}];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 + v7 + 2 > v4)
    {
      return 0;
    }

    return v7 != v6 + 1;
  }

  return result;
}

- (BOOL)safari_mightContainURLScheme
{
  v2 = [self rangeOfString:@":"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = v2;
  v5 = [self rangeOfString:@" "];
  return v5 == 0x7FFFFFFFFFFFFFFFLL || v4 < v5;
}

- (__CFString)safari_stringByRedactingBookmarkDAVServerID
{
  v2 = [MEMORY[0x1E696AF20] componentsWithString:self];
  user = [v2 user];
  if (user)
  {
  }

  else
  {
    password = [v2 password];

    if (!password)
    {
      selfCopy = self;
      goto LABEL_7;
    }
  }

  [v2 setUser:0];
  [v2 setPassword:0];
  string = [v2 string];
  v6 = string;
  v7 = @"Nil redacted server ID";
  if (string)
  {
    v7 = string;
  }

  selfCopy = v7;

LABEL_7:

  return selfCopy;
}

- (uint64_t)safari_countOfString:()SafariCoreExtras
{
  v4 = a3;
  LODWORD(v5) = 0;
  v6 = 0;
  v7 = [self length];
  v8 = v7;
  do
  {
    v9 = [self rangeOfString:v4 options:2 range:{v6, v8}];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v5;
    }

    else
    {
      v5 = (v5 + 1);
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v8 = v7 - (v9 + v10);
    v6 = v9 + v10;
  }

  while (v9 + v10 < v7);

  return v5;
}

- (id)safari_domainFromHost
{
  selfCopy = [self length];
  if (selfCopy)
  {
    if ([self _web_looksLikeIPAddress])
    {
LABEL_3:
      selfCopy = self;
      goto LABEL_10;
    }

    _web_hasCountryCodeTLD = [self _web_hasCountryCodeTLD];
    v4 = [self safari_countOfString:@"."];
    if (_web_hasCountryCodeTLD)
    {
      if (v4 <= 2)
      {
        goto LABEL_3;
      }

      v5 = [self rangeOfString:@"." options:4 range:{0, objc_msgSend(self, "rangeOfString:options:", @".", 4)}];
    }

    else
    {
      if (v4 <= 1)
      {
        goto LABEL_3;
      }

      v5 = [self rangeOfString:@"." options:4];
    }

    selfCopy = [self substringFromIndex:{objc_msgSend(self, "rangeOfString:options:range:", @".", 4, 0, v5) + 1}];
  }

LABEL_10:

  return selfCopy;
}

- (uint64_t)safari_localizedCompareSortingEmptyStringAndNumericPrefixToEnd:()SafariCoreExtras
{
  v4 = a3;
  if (![self length] || !objc_msgSend(v4, "length"))
  {
    goto LABEL_13;
  }

  letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
  v6 = [self rangeOfCharacterFromSet:letterCharacterSet options:8];

  letterCharacterSet2 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v8 = [v4 rangeOfCharacterFromSet:letterCharacterSet2 options:8];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    v9 = 1;
    goto LABEL_14;
  }

  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v11 = [self rangeOfCharacterFromSet:decimalDigitCharacterSet options:8];

  decimalDigitCharacterSet2 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v13 = [v4 rangeOfCharacterFromSet:decimalDigitCharacterSet2 options:8];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL || v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v11 == 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

LABEL_13:
    v9 = [self localizedCaseInsensitiveCompare:v4];
    goto LABEL_14;
  }

LABEL_5:
  v9 = -1;
LABEL_14:

  return v9;
}

- (id)safari_stringByRemovingWwwDotPrefix
{
  if ([self safari_hasCaseInsensitivePrefix:@"www."])
  {
    selfCopy = [self substringFromIndex:{objc_msgSend(@"www.", "length")}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)safari_stringByRemovingWwwAndWildcardDotPrefixes
{
  if ([self hasPrefix:@"*."])
  {
    v2 = [self substringFromIndex:{objc_msgSend(@"*.", "length")}];
    safari_stringByRemovingWwwDotPrefix = [v2 safari_stringByRemovingWwwDotPrefix];
  }

  else
  {
    safari_stringByRemovingWwwDotPrefix = [self safari_stringByRemovingWwwDotPrefix];
  }

  return safari_stringByRemovingWwwDotPrefix;
}

- (id)safari_stringByRemovingUnnecessaryCharactersFromUserTypedURLString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v4 = [v3 mutableCopy];
  [v4 replaceOccurrencesOfString:@"\n" withString:&stru_1F3064D08 options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"\r" withString:&stru_1F3064D08 options:0 range:{0, objc_msgSend(v4, "length")}];
  if ([v4 length] && objc_msgSend(v4, "characterAtIndex:", 0) == 60)
  {
    [v4 deleteCharactersInRange:{0, 1}];
    v5 = [@"URL:" length];
    v6 = [v4 length];
    if (v6 >= [@"URL:" length] && !objc_msgSend(v4, "compare:options:range:", @"URL:", 1, 0, v5))
    {
      [v4 deleteCharactersInRange:{0, v5}];
    }

    v7 = [v4 length];
    if (v7)
    {
      v8 = v7 - 1;
      if ([v4 characterAtIndex:v7 - 1] == 62)
      {
        [v4 deleteCharactersInRange:{v8, 1}];
      }
    }
  }

  return v4;
}

- (id)safari_possibleTopLevelDomainCorrectionForUserTypedString
{
  v22 = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals & 1) == 0)
  {
    [NSString(SafariCoreExtras) safari_possibleTopLevelDomainCorrectionForUserTypedString];
  }

  v2 = [self hasSuffix:@"."];
  v3 = [self length];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = qword_1ED9858E8;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v3 - v2;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v11 = [self rangeOfString:v9 options:13 range:{0, v6, v17}];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v10;
          v14 = [qword_1ED9858E8 objectForKeyedSubscript:v9];
          v12 = [self stringByReplacingCharactersInRange:v11 withString:{v13, v14}];

          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)safari_suggestedFilenameFromTitleString
{
  if ([self length] > 0x64)
  {
    selfCopy = [self substringToIndex:100];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)_safari_looksLikeWillRedirectToURLStringAfterAuthentication:()SafariCoreExtras orHostAfterLogin:
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v38 = v7;
  if ([NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::onceToken == -1)
  {
    v8 = v7;
  }

  else
  {
    [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:];
    v8 = v38;
  }

  v9 = [MEMORY[0x1E695DFF8] URLWithString:self];
  v37 = v9;
  host = [v9 host];
  lowercaseString = [host lowercaseString];

  if (([&unk_1F308E688 containsObject:lowercaseString] & 1) == 0)
  {
    v13 = [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::loginURLPattern;
    v35 = lowercaseString;
    lowercaseString2 = [self lowercaseString];
    v34 = [v13 numberOfMatchesInString:lowercaseString2 options:0 range:{0, objc_msgSend(self, "length")}] != 0;

    lowercaseString3 = [v6 lowercaseString];

    lowercaseString4 = [v8 lowercaseString];
    safari_highLevelDomainFromHost = [lowercaseString4 safari_highLevelDomainFromHost];

    safari_highLevelDomainFromHost2 = [lowercaseString safari_highLevelDomainFromHost];
    if ([safari_highLevelDomainFromHost isEqualToString:safari_highLevelDomainFromHost2])
    {
      path = [v9 path];
      lowercaseString5 = [path lowercaseString];

      if ([lowercaseString5 length] && objc_msgSend(-[NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::loginURLPattern, "numberOfMatchesInString:options:range:", lowercaseString5, 0, 0, objc_msgSend(lowercaseString5, "length")) || objc_msgSend(lowercaseString5, "length") && objc_msgSend(-[NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::redirectQueryNamePattern, "numberOfMatchesInString:options:range:", lowercaseString5, 0, 0, objc_msgSend(lowercaseString5, "length")))
      {
        goto LABEL_13;
      }

      v20 = [lowercaseString stringByReplacingOccurrencesOfString:safari_highLevelDomainFromHost2 withString:&stru_1F3064D08];
      if ([v20 length] && objc_msgSend(-[NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::loginURLPattern, "numberOfMatchesInString:options:range:", v20, 0, 0, objc_msgSend(v20, "length")))
      {

LABEL_13:
        v12 = 1;
LABEL_26:

        v6 = lowercaseString3;
        lowercaseString = v35;
        goto LABEL_27;
      }
    }

    v33 = safari_highLevelDomainFromHost2;
    [v9 pathComponents];
    selfCopy = self;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    obj = v52 = 0u;
    v21 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v21)
    {
      v22 = *v52;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(obj);
          }

          lowercaseString6 = [*(*(&v51 + 1) + 8 * i) lowercaseString];
          v47 = 0;
          v48 = &v47;
          v49 = 0x2020000000;
          v50 = 0;
          v25 = [NSString(SafariCoreExtras) _safari_looksLikeWillRedirectToURLStringAfterAuthentication:orHostAfterLogin:]::loginURLPattern;
          v26 = [lowercaseString6 length];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __107__NSString_SafariCoreExtras___safari_looksLikeWillRedirectToURLStringAfterAuthentication_orHostAfterLogin___block_invoke_2;
          v44[3] = &unk_1E7CF1BF8;
          v27 = lowercaseString6;
          v45 = v27;
          v46 = &v47;
          [v25 enumerateMatchesInString:v27 options:0 range:0 usingBlock:{v26, v44}];
          LOBYTE(v25) = *(v48 + 24);

          _Block_object_dispose(&v47, 8);
          if (v25)
          {
            v12 = 1;
            v28 = obj;
            goto LABEL_25;
          }
        }

        v21 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v28 = [MEMORY[0x1E696AF20] componentsWithString:selfCopy];
    percentEncodedQueryItems = [v28 percentEncodedQueryItems];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __107__NSString_SafariCoreExtras___safari_looksLikeWillRedirectToURLStringAfterAuthentication_orHostAfterLogin___block_invoke_3;
    v40[3] = &unk_1E7CF1C20;
    v43 = v34;
    v41 = lowercaseString3;
    v42 = safari_highLevelDomainFromHost;
    v12 = [percentEncodedQueryItems safari_containsObjectPassingTest:v40];

LABEL_25:
    safari_highLevelDomainFromHost2 = v33;
    goto LABEL_26;
  }

  v12 = 1;
LABEL_27:

  v30 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)safari_numberOfComposedCharacters
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [self length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__NSString_SafariCoreExtras__safari_numberOfComposedCharacters__block_invoke;
  v5[3] = &unk_1E7CF1C48;
  v5[4] = &v6;
  [self enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)safari_bundleIdentifierFromApplicationIdentifier:()SafariCoreExtras
{
  v3 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:self error:a3];
  bundleIdentifier = [v3 bundleIdentifier];

  return bundleIdentifier;
}

- (id)safari_teamIdentifierFromApplicationIdentifier:()SafariCoreExtras
{
  v3 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:self error:a3];
  teamIdentifier = [v3 teamIdentifier];

  return teamIdentifier;
}

- (id)safari_bestURLForUserTypedString
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__69;
  v8 = __Block_byref_object_dispose__70;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__NSString_SafariCoreExtras__safari_bestURLForUserTypedString__block_invoke;
  v3[3] = &unk_1E7CF1C70;
  v3[4] = &v4;
  [MEMORY[0x1E695DFF8] safari_enumeratePossibleURLsForUserTypedString:self withBlock:v3];
  safari_canonicalURL = [v5[5] safari_canonicalURL];
  _Block_object_dispose(&v4, 8);

  return safari_canonicalURL;
}

- (BOOL)safari_allowsLooserMatchingInSearch
{
  if (![self length])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = [self characterAtIndex:v2];
    v5 = v3 > 0x24F && v3 - 880 < 0xFFFFFF90;
    if (v5)
    {
      break;
    }

    ++v2;
  }

  while (v2 < [self length]);
  return v5;
}

- (uint64_t)safari_containsCJKCharacters
{
  if ([self _containsIdeographicCharacters] & 1) != 0 || (objc_msgSend(self, "_containsHiraganaKatakanaOrBopomofo"))
  {
    return 1;
  }

  return [self _containsKorean];
}

- (uint64_t)safari_indexOfFirstAppearanceOfCharacter:()SafariCoreExtras
{
  if (![self length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  while ([self characterAtIndex:v5] != a3)
  {
    if (++v5 >= [self length])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (id)safari_stringByRemovingWrappingSingleQuotes
{
  v2 = [self length];
  if ([self characterAtIndex:0] == 39 && objc_msgSend(self, "characterAtIndex:", v2 - 1) == 39)
  {
    selfCopy = [self substringWithRange:{1, v2 - 2}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)safari_stringByRemovingWrappingParenthesis
{
  v2 = [self length];
  if ([self characterAtIndex:0] == 40 && objc_msgSend(self, "characterAtIndex:", v2 - 1) == 41)
  {
    selfCopy = [self substringWithRange:{1, v2 - 2}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)safari_stringByDeletingStartingSlash
{
  if ([self hasPrefix:@"/"])
  {
    selfCopy = [self substringFromIndex:1];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)safari_stringByDeletingTrailingSlash
{
  if ([self hasSuffix:@"/"])
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "length") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)safari_stringByDeletingAllPathExtensions
{
  selfCopy = self;
  v2 = 0;
  do
  {
    v3 = v2;
    v2 = selfCopy;

    selfCopy = [v2 stringByDeletingPathExtension];
  }

  while (![selfCopy isEqualToString:v2]);

  return selfCopy;
}

- (id)safari_fixedStringByExpandingTildeInPathToUserHomeDirectory
{
  stringByExpandingTildeInPath = [self stringByExpandingTildeInPath];
  if ([self hasSuffix:@"/"] && (objc_msgSend(stringByExpandingTildeInPath, "hasSuffix:", @"/") & 1) == 0)
  {
    v3 = [stringByExpandingTildeInPath stringByAppendingString:@"/"];

    stringByExpandingTildeInPath = v3;
  }

  return stringByExpandingTildeInPath;
}

- (uint64_t)safari_isPathExtensionAllowedForAnalytics
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F308E6A0];
  *self = result;
  qword_1ED9858F0 = result;
  byte_1ED9858E1 = 1;
  return result;
}

- (id)safari_stringByRemovingParenthesizedText
{
  if ([self length] > 1)
  {
    if ([NSString(SafariCoreExtras) safari_stringByRemovingParenthesizedText]::onceToken != -1)
    {
      [NSString(SafariCoreExtras) safari_stringByRemovingParenthesizedText];
    }

    v2 = [self mutableCopy];
    v4 = 0;
    while (1)
    {
      v5 = [v2 rangeOfCharacterFromSet:-[NSString(SafariCoreExtras) safari_stringByRemovingParenthesizedText]::openingsSet options:0 range:{v4, objc_msgSend(v2, "length") - v4}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 == [v2 length] - 1)
      {
        break;
      }

      v6 = [v2 characterAtIndex:v5];
      v7 = 0;
      v10 = 0;
      while (v7 < [@"([{<（［｛＜" "length")]
      {
        if ([@"([{<（［｛＜" characterAtIndex:v7) == v6]
        {
          v10 = objc_msgSend(@"]}>）］｝＞"), "characterAtIndex:", v7);
        }

        ++v7;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
      v9 = [v2 rangeOfString:v8 options:0 range:{v5 + 1, objc_msgSend(v2, "length") + ~v5}];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v4;
      }

      else
      {
        [v2 deleteCharactersInRange:{v5, v9 - v5 + 1}];
      }
    }
  }

  else
  {
    v2 = [self copy];
  }

  return v2;
}

- (uint64_t)safari_possibleTopLevelDomainCorrectionForUserTypedString
{
  result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@".cmo", @".com", @"c.om", @".com", @".xom", @".net", @".ent", @".net", @".nte", @".org", @".ogr", @".org", @".rog", @".info", @".ifno", @".info", @".ifnp", 0}];
  qword_1ED9858E8 = result;
  _MergedGlobals = 1;
  return result;
}

@end