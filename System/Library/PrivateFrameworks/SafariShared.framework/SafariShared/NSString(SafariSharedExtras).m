@interface NSString(SafariSharedExtras)
+ (__CFString)safari_stringWithJSValue:()SafariSharedExtras context:nullStringPolicy:;
+ (id)safari_detailStringWithTitleString:()SafariSharedExtras prompt:;
+ (id)safari_detailStringWithURLString:()SafariSharedExtras prompt:;
+ (id)safari_stringByBase64EncodingData:()SafariSharedExtras;
+ (id)safari_stringWithUTF8Bytes:()SafariSharedExtras length:;
- (BOOL)safari_looksLikeAbsoluteURLString;
- (__CFString)safari_bestKnownLanguageTag;
- (__CFString)safari_bestURLStringForUserTypedString;
- (__CFString)safari_maskedWordHashForUseWithURLHashesOfComponents;
- (__CFString)safari_stringByFoldingWideCharactersAndNormalizing;
- (__CFString)safari_urlHashesOfComponents;
- (id)safari_bestLanguageTag;
- (id)safari_canonicalURLForFrequentlyVisitedSites;
- (id)safari_containedURLs;
- (id)safari_ensurePathExtension:()SafariSharedExtras;
- (id)safari_lastPathComponentWithoutZipExtension;
- (id)safari_md5Hash;
- (id)safari_scriptIfJavaScriptURLString;
- (id)safari_sha256Hash;
- (id)safari_stringByRedactingStrings:()SafariSharedExtras withReplacement:;
- (id)safari_stringByRemovingDirectionalPrefix;
- (id)safari_stringByRemovingParenthesizedDomain;
- (id)safari_stringByReplacingLastOccurrenceOfWhitespaceWithANonBreakingSpace;
- (id)safari_stringByReplacingMarkupCharactersWithHTMLEntities;
- (id)safari_stringBySubstitutingAmpersandAndAngleBracketsForHTMLEntities;
- (id)safari_stringBySubstitutingHTMLEntitiesForAmpersandAndAngleBrackets;
- (id)safari_stringDecodedFromURLQueryParameter;
- (id)safari_stringEncodedAsURLQueryParameter;
- (id)safari_userVisibleTitleIgnoringFullURLString;
- (id)safari_userVisibleURL;
- (uint64_t)safari_hasDirectionalPrefix;
- (uint64_t)safari_isPDFMIMEType;
- (uint64_t)safari_isRightToLeft;
- (uint64_t)safari_isVisualDuplicateOfURLString:()SafariSharedExtras;
- (uint64_t)safari_looksLikeObscuredPassword;
- (uint64_t)safari_rangeOfURLScheme;
- (uint64_t)safari_saltForURLHashesOfComponents;
- (uint64_t)safari_wordCount;
- (void)safari_enumerateSubdomainRangesInHostUsingBlock:()SafariSharedExtras;
@end

@implementation NSString(SafariSharedExtras)

- (id)safari_md5Hash
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 dataUsingEncoding:4];
  CC_MD5([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [objc_opt_class() safari_stringAsHexWithBuffer:md length:16];

  return v2;
}

+ (__CFString)safari_stringWithJSValue:()SafariSharedExtras context:nullStringPolicy:
{
  if (a5 && (a5 != 1 && (a5 != 2 || JSValueIsUndefined(ctx, value)) || JSValueIsNull(ctx, value)))
  {
    v7 = 0;
  }

  else
  {
    v8 = JSValueToStringCopy(ctx, value, 0);
    v7 = JSStringCopyCFString(*MEMORY[0x1E695E480], v8);
    if (v8)
    {
      JSStringRelease(v8);
    }
  }

  return v7;
}

- (id)safari_bestLanguageTag
{
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 safari_stringByTrimmingWhitespace];
  if ([v1 length])
  {
    v2 = objc_alloc(MEMORY[0x1E696AD00]);
    v26[0] = *MEMORY[0x1E696A528];
    v3 = v26[0];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v5 = [v2 initWithTagSchemes:v4 options:0x20000000];

    [v5 setString:v1];
    v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v7 = [v5 string];
    v8 = [v7 length];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __54__NSString_SafariSharedExtras__safari_bestLanguageTag__block_invoke;
    v24[3] = &unk_1E7FB8AA8;
    v9 = v6;
    v25 = v9;
    [v5 enumerateTagsInRange:0 scheme:v8 options:v3 usingBlock:{14, v24}];

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__28;
    v22 = __Block_byref_object_dispose__28;
    v23 = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__NSString_SafariSharedExtras__safari_bestLanguageTag__block_invoke_4;
    v13[3] = &unk_1E7FC8708;
    v10 = v9;
    v14 = v10;
    v15 = v17;
    v16 = &v18;
    [v10 enumerateObjectsUsingBlock:v13];
    v11 = v19[5];

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (__CFString)safari_bestKnownLanguageTag
{
  v1 = [a1 safari_bestLanguageTag];
  v2 = v1;
  if (!v1 || [(__CFString *)v1 isEqualToString:@"und"])
  {

    v2 = @"en";
  }

  return v2;
}

- (__CFString)safari_bestURLStringForUserTypedString
{
  v1 = [a1 safari_bestURLForUserTypedString];
  v2 = [v1 safari_originalDataAsString];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &stru_1F3A5E418;
  }

  return v3;
}

- (id)safari_userVisibleURL
{
  if (WTF::isUserVisibleURL(a1, a2))
  {
    v3 = a1;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:a1];
    v6 = v4;
    if (v4)
    {
      v3 = WTF::userVisibleString(v4, v5);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)safari_looksLikeAbsoluteURLString
{
  v1 = [a1 safari_stringByTrimmingWhitespace];
  v2 = [v1 safari_rangeOfURLScheme] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

- (__CFString)safari_stringByFoldingWideCharactersAndNormalizing
{
  v1 = [a1 mutableCopy];
  CFStringFold(v1, 0x100uLL, 0);
  CFStringNormalize(v1, kCFStringNormalizationFormC);

  return v1;
}

- (id)safari_stringByReplacingMarkupCharactersWithHTMLEntities
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@" withString:@"&quot;" options:0 range:{0, objc_msgSend(v1, "length"")}];
  [v1 replaceOccurrencesOfString:@"'" withString:@"&#x27;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"/" withString:@"&#x2F;" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

- (id)safari_stringByReplacingLastOccurrenceOfWhitespaceWithANonBreakingSpace
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 rangeOfCharacterFromSet:v2 options:4];
  v5 = v4;

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = a1;
  }

  else
  {
    v6 = [a1 stringByReplacingCharactersInRange:v3 withString:{v5, @"&nbsp"}];;
  }

  return v6;
}

- (id)safari_stringEncodedAsURLQueryParameter
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJLKMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.!~*'()"];
  v3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"%20" withString:@"+"];

  return v4;
}

- (id)safari_stringDecodedFromURLQueryParameter
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
  v2 = [v1 stringByRemovingPercentEncoding];

  return v2;
}

- (id)safari_stringByRemovingDirectionalPrefix
{
  if ([a1 safari_hasDirectionalPrefix])
  {
    v2 = [a1 substringFromIndex:1];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (uint64_t)safari_hasDirectionalPrefix
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 8206];
  v3 = [a1 hasPrefix:v2];

  return v3;
}

+ (id)safari_stringWithUTF8Bytes:()SafariSharedExtras length:
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:4];

  return v4;
}

- (id)safari_stringBySubstitutingAmpersandAndAngleBracketsForHTMLEntities
{
  v2 = [a1 mutableCopy];
  v3 = [v2 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:0 range:{0, objc_msgSend(v2, "length")}];
  v4 = [v2 replaceOccurrencesOfString:@"&gt;" withString:@">" options:0 range:{0, objc_msgSend(v2, "length")}];
  if (!(v4 + v3 + [v2 replaceOccurrencesOfString:@"&amp;" withString:@"&" options:0 range:{0, objc_msgSend(v2, "length")}]))
  {
    v5 = a1;

    v2 = v5;
  }

  return v2;
}

- (id)safari_stringBySubstitutingHTMLEntitiesForAmpersandAndAngleBrackets
{
  v2 = [a1 mutableCopy];
  v3 = [v2 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v2, "length")}];
  v4 = [v2 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v2, "length")}];
  if (!(v4 + v3 + [v2 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v2, "length")}]))
  {
    v5 = a1;

    v2 = v5;
  }

  return v2;
}

- (uint64_t)safari_isRightToLeft
{
  v0 = CTLineCreateWithString();
  IsRightToLeft = CTLineIsRightToLeft();
  CFRelease(v0);
  return IsRightToLeft;
}

- (id)safari_scriptIfJavaScriptURLString
{
  if ([a1 safari_isJavaScriptURLString])
  {
    v2 = [a1 substringFromIndex:11];
    v3 = [v2 stringByRemovingPercentEncoding];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)safari_enumerateSubdomainRangesInHostUsingBlock:()SafariSharedExtras
{
  v4 = a3;
  v12 = 0;
  v5 = [a1 length];
  v6 = 0;
  v7 = v5;
  while (1)
  {
    v8 = [a1 rangeOfString:@"." options:0 range:{v6, v7}];
    v10 = v9;
    if (!v9)
    {
      break;
    }

    v11 = v8;
    v4[2](v4, v6, v8 - v6, &v12);
    v6 = v11 + v10;
    v7 = v5 - (v11 + v10);
    if (v12 == 1)
    {
      goto LABEL_6;
    }
  }

  v4[2](v4, v6, v7, &v12);
LABEL_6:
}

- (id)safari_canonicalURLForFrequentlyVisitedSites
{
  v1 = MEMORY[0x1E695DFF8];
  v2 = [a1 safari_canonicalURLStringForFrequentlyVisitedSites];
  v3 = [v1 safari_URLWithDataAsString:v2];

  return v3;
}

- (uint64_t)safari_isVisualDuplicateOfURLString:()SafariSharedExtras
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 lowercaseString];
    v6 = canonicalize(v5);
    v7 = [v4 lowercaseString];
    v8 = canonicalize(v7);
    v9 = [v6 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)safari_stringByBase64EncodingData:()SafariSharedExtras
{
  v3 = [a3 base64EncodedStringWithOptions:0];

  return v3;
}

- (id)safari_sha256Hash
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 dataUsingEncoding:4];
  CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [objc_opt_class() safari_stringAsHexWithBuffer:md length:32];

  return v2;
}

- (uint64_t)safari_saltForURLHashesOfComponents
{
  if ([NSString(SafariSharedExtras) safari_saltForURLHashesOfComponents]::onceToken != -1)
  {
    [NSString(SafariSharedExtras) safari_saltForURLHashesOfComponents];
  }

  return [NSString(SafariSharedExtras) safari_saltForURLHashesOfComponents]::salt;
}

- (__CFString)safari_urlHashesOfComponents
{
  v1 = [MEMORY[0x1E696AF20] componentsWithString:a1];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = [v1 host];
    v4 = [v3 safari_maskedWordHashForUseWithURLHashesOfComponents];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = @"00";
    }

    [v2 addObject:v6];

    v7 = [v1 path];
    v8 = [v7 safari_maskedWordHashForUseWithURLHashesOfComponents];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"00";
    }

    [v2 addObject:v10];

    v11 = [v1 query];
    v12 = [v11 safari_maskedWordHashForUseWithURLHashesOfComponents];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"00";
    }

    [v2 addObject:v14];

    v15 = [v2 componentsJoinedByString:@"|"];
  }

  else
  {
    v15 = &stru_1F3A5E418;
  }

  return v15;
}

- (__CFString)safari_maskedWordHashForUseWithURLHashesOfComponents
{
  if ([a1 length])
  {
    v2 = [a1 safari_saltForURLHashesOfComponents];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (objc_msgSend(a1, "hash") + v2)];
  }

  else
  {
    v3 = @"00";
  }

  return v3;
}

- (uint64_t)safari_isPDFMIMEType
{
  if ([a1 safari_isCaseInsensitiveEqualToString:@"application/pdf"] & 1) != 0 || (objc_msgSend(a1, "safari_isCaseInsensitiveEqualToString:", @"application/postscript"))
  {
    return 1;
  }

  return [a1 safari_isCaseInsensitiveEqualToString:@"text/pdf"];
}

- (id)safari_lastPathComponentWithoutZipExtension
{
  v1 = [a1 lastPathComponent];
  v2 = [v1 pathExtension];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"zip"];

  if (v4)
  {
    v5 = [v1 stringByDeletingPathExtension];
    v6 = [v5 pathExtension];
    v7 = [v6 isEqualToString:&stru_1F3A5E418];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v1;
    }

    if (v7)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    if (!v7)
    {
      v1 = v5;
    }
  }

  return v1;
}

- (id)safari_ensurePathExtension:()SafariSharedExtras
{
  v4 = a3;
  if ([v4 length] && objc_msgSend(a1, "length"))
  {
    v5 = [a1 pathExtension];
    v6 = v5;
    if (v5 && ![v5 compare:v4 options:1])
    {
      v7 = a1;
    }

    else
    {
      v7 = [a1 stringByAppendingPathExtension:v4];
    }

    v8 = v7;
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

- (id)safari_containedURLs
{
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_108];

  return v4;
}

- (uint64_t)safari_looksLikeObscuredPassword
{
  v15 = *MEMORY[0x1E69E9840];
  if (![a1 length])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [MEMORY[0x1E696AB08] safari_obscuredPasswordCharacterSets];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [a1 stringByTrimmingCharactersInSet:*(*(&v10 + 1) + 8 * v5)];
        v7 = [v6 length] == 0;

        if (v7)
        {
          v8 = 1;
          goto LABEL_12;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)safari_stringByRemovingParenthesizedDomain
{
  if (([a1 hasSuffix:@""]) & 1) != 0 && (v2 = objc_msgSend(a1, "rangeOfString:options:", @"("), 4, v2 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = [a1 substringToIndex:v2];
    v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v3 = [v4 stringByTrimmingCharactersInSet:v5];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

- (id)safari_userVisibleTitleIgnoringFullURLString
{
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    v5 = [v4 scheme];
    v6 = [v5 length];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }

    if (!v6)
    {
      v3 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)safari_rangeOfURLScheme
{
  v2 = [a1 rangeOfString:@":"];
  if (v2)
  {
    v3 = v2 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v2;
  {
    v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-."];
    [NSString(SafariSharedExtras) safari_rangeOfURLScheme]::inverseSchemeCharacterSet = [v6 invertedSet];
  }

  if ([a1 rangeOfCharacterFromSet:-[NSString(SafariSharedExtras) safari_rangeOfURLScheme]::inverseSchemeCharacterSet options:0 range:{0, v5}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

+ (id)safari_detailStringWithURLString:()SafariSharedExtras prompt:
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    if ([v5 length])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ · %@", v5, v6];
    }

    else
    {
      v7 = v6;
      v6 = 0;
    }
  }

  else
  {
    v7 = v5;
    v5 = 0;
  }

  return v7;
}

+ (id)safari_detailStringWithTitleString:()SafariSharedExtras prompt:
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    if ([v5 length])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v5, v6];
    }

    else
    {
      v7 = v6;
      v6 = 0;
    }
  }

  else
  {
    v7 = v5;
    v5 = 0;
  }

  return v7;
}

- (id)safari_stringByRedactingStrings:()SafariSharedExtras withReplacement:
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = a4;
  v7 = [MEMORY[0x1E696AD50] indexSet];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [a1 length];
        v14 = 0;
        do
        {
          v16 = [a1 rangeOfString:v12 options:385 range:{v14, v13}];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v17 = v15;
          [v7 addIndexesInRange:{v16, v15}];
          v18 = [a1 length];
          v14 = v16 + v17;
          v13 = v18 - (v16 + v17);
        }

        while (v18 != v16 + v17);
      }

      v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v19 = [a1 mutableCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __80__NSString_SafariSharedExtras__safari_stringByRedactingStrings_withReplacement___block_invoke;
  v25[3] = &unk_1E7FC8750;
  v20 = v19;
  v26 = v20;
  v21 = v24;
  v27 = v21;
  [v7 enumerateRangesWithOptions:2 usingBlock:v25];
  v22 = [v20 copy];

  return v22;
}

- (uint64_t)safari_wordCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [a1 length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__NSString_SafariSharedExtras__safari_wordCount__block_invoke;
  v5[3] = &unk_1E7FC8778;
  v5[4] = &v6;
  [a1 enumerateSubstringsInRange:0 options:v2 usingBlock:{3, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end