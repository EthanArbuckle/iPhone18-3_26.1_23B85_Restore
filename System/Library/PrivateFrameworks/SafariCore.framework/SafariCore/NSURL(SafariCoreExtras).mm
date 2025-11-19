@interface NSURL(SafariCoreExtras)
+ (CFURLRef)safari_urlWithDataAsString:()SafariCoreExtras;
+ (id)safari_URLWithUserTypedString:()SafariCoreExtras;
+ (uint64_t)safari_hostAndPortRangeFromUserTypedString:()SafariCoreExtras;
+ (void)safari_enumeratePossibleURLsForUserTypedString:()SafariCoreExtras withBlock:;
- (BOOL)safari_hasSameOriginAsURL:()SafariCoreExtras relaxingWWW:;
- (NSURL)safari_URLWithUniqueFilename;
- (id)safari_URLByNormalizingBlobURL;
- (id)safari_URLByRemovingUserPasswordPathQueryAndFragment;
- (id)safari_URLByRemovingUserPasswordQueryAndFragment;
- (id)safari_URLByReplacingScheme:()SafariCoreExtras withScheme:;
- (id)safari_URLByReplacingSchemeWithString:()SafariCoreExtras;
- (id)safari_absoluteStringWithoutFragment;
- (id)safari_canonicalURL;
- (id)safari_highLevelDomain;
- (id)safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString;
- (id)safari_wellKnownChangePasswordURL;
- (id)safari_wellKnownPasskeyEndpointsURL;
- (uint64_t)safari_hasSameSiteAsURL:()SafariCoreExtras;
- (uint64_t)safari_hasScheme:()SafariCoreExtras;
- (uint64_t)safari_hostCompare:()SafariCoreExtras;
- (uint64_t)safari_isAppleNewsURL;
- (uint64_t)safari_isAppleOneURL;
- (uint64_t)safari_isBlobURL;
- (uint64_t)safari_isEligibleforDirectSSO;
- (uint64_t)safari_isHTTPFamilyURL;
- (uint64_t)safari_isSameAsURLRemovingFragment:()SafariCoreExtras;
- (uint64_t)safari_isSubdomainOfDomain:()SafariCoreExtras;
- (uint64_t)safari_isWellKnownChangePasswordURL;
- (void)safari_accessingSecurityScopedResource:()SafariCoreExtras;
@end

@implementation NSURL(SafariCoreExtras)

- (uint64_t)safari_isHTTPFamilyURL
{
  if ([a1 safari_hasScheme:@"http"])
  {
    return 1;
  }

  return [a1 safari_hasScheme:@"https"];
}

+ (CFURLRef)safari_urlWithDataAsString:()SafariCoreExtras
{
  v3 = [a3 safari_stringByTrimmingWhitespace];
  v4 = [v3 dataUsingEncoding:5];

  v5 = [v4 length];
  if (v5)
  {
    v6 = CFURLCreateAbsoluteURLWithBytes(0, [v4 bytes], v5, 0x8000100u, 0, 1u);
    if (v6)
    {
      goto LABEL_6;
    }

    v7 = CFURLCreateAbsoluteURLWithBytes(0, [v4 bytes], v5, 0x201u, 0, 1u);
  }

  else
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3064D08];
  }

  v6 = v7;
LABEL_6:

  return v6;
}

+ (id)safari_URLWithUserTypedString:()SafariCoreExtras
{
  v3 = [MEMORY[0x1E695DFF8] _lp_URLWithUserTypedString:a3 relativeToURL:0];

  return v3;
}

- (uint64_t)safari_isSubdomainOfDomain:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 safari_hostComponentsEnumerator];
  v6 = [v4 safari_hostComponentsEnumerator];
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = [v5 nextObject];

    v10 = [v6 nextObject];

    v7 = v9;
    v8 = v10;
  }

  while (([v9 isEqualToString:v10] & 1) != 0);
  if (v10)
  {
    v11 = [v6 nextObject];
    if (v11)
    {
      v12 = 0;
    }

    else if ([v10 safari_isCaseInsensitiveEqualToString:@"www"])
    {
      v12 = 1;
    }

    else
    {
      v12 = [v10 safari_isCaseInsensitiveEqualToString:@"m"];
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (void)safari_enumeratePossibleURLsForUserTypedString:()SafariCoreExtras withBlock:
{
  v7 = a3;
  v5 = a4;
  if ((enumeratePossibleURLsForUserTypedStringWithBlockInternal(v7, v5) & 1) == 0)
  {
    v6 = [v7 safari_possibleTopLevelDomainCorrectionForUserTypedString];
    enumeratePossibleURLsForUserTypedStringWithBlockInternal(v6, v5);
  }
}

+ (uint64_t)safari_hostAndPortRangeFromUserTypedString:()SafariCoreExtras
{
  v3 = a3;
  v5 = [v3 rangeOfString:@"://" options:2];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v4;
    {
      v16 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-."];
      +[NSURL(SafariCoreExtras) safari_hostAndPortRangeFromUserTypedString:]::nonSchemeCharacters = [v16 invertedSet];
    }

    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if ([v3 rangeOfCharacterFromSet:+[NSURL(SafariCoreExtras) safari_hostAndPortRangeFromUserTypedString:]::nonSchemeCharacters options:2 range:{0, v5}] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v3 length];
      {
        v9 = +[NSURL(SafariCoreExtras) safari_hostAndPortRangeFromUserTypedString:]::hostTerminators;
      }

      else
      {
        v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/?#"];
        +[NSURL(SafariCoreExtras) safari_hostAndPortRangeFromUserTypedString:]::hostTerminators = v9;
      }

      v10 = v5 + v7;
      v11 = [v3 rangeOfCharacterFromSet:v9 options:2 range:{v10, v8 - v10}];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v8;
      }

      else
      {
        v12 = v11;
      }

      v13 = [v3 rangeOfString:@"@" options:2 range:{v10, v12 - v10}];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v10;
      }

      else
      {
        v6 = v13 + v14;
      }
    }
  }

  return v6;
}

- (BOOL)safari_hasSameOriginAsURL:()SafariCoreExtras relaxingWWW:
{
  v6 = a3;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [a1 scheme];
  v8 = [v6 scheme];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    if (a4 && [a1 safari_isHTTPFamilyURL] && (objc_msgSend(v6, "safari_isHTTPFamilyURL") & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_14;
  }

  if (!a4)
  {
    v11 = [a1 host];
    v13 = [v6 host];
    goto LABEL_10;
  }

LABEL_4:
  v10 = [a1 host];
  v11 = [v10 safari_stringByRemovingWwwDotPrefix];

  v12 = [v6 host];
  v13 = [v12 safari_stringByRemovingWwwDotPrefix];

LABEL_10:
  if ([v11 isEqualToString:v13])
  {
    v15 = [a1 port];
    v16 = [v6 port];
    v14 = v15 == v16;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  return v14;
}

- (uint64_t)safari_hasSameSiteAsURL:()SafariCoreExtras
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (([a1 safari_hasSameOriginAsURL:v4] & 1) == 0)
  {
    v6 = [a1 scheme];
    v7 = [v4 scheme];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = [a1 host];
      v10 = [v9 safari_highLevelDomainFromHost];
      v11 = [v4 host];
      v12 = [v11 safari_highLevelDomainFromHost];
      v5 = [v10 isEqualToString:v12];

      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = 1;
LABEL_7:

  return v5;
}

- (uint64_t)safari_isSameAsURLRemovingFragment:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 safari_absoluteStringWithoutFragment];
  v6 = [v4 safari_absoluteStringWithoutFragment];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

- (id)safari_canonicalURL
{
  v2 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:a1];
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E695AC60] _protocolClassForRequest:v2 skipAppSSO:1];
  }

  else
  {
    v3 = [MEMORY[0x1E695AC60] _protocolClassForRequest:v2];
  }

  if (v3)
  {
    v4 = [v3 canonicalRequestForRequest:v2];
    v5 = [v4 URL];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)safari_absoluteStringWithoutFragment
{
  v2 = [a1 fragment];
  [a1 absoluteString];
  if (v2)
    v3 = {;
    v4 = [@"#" stringByAppendingString:v2];
    v5 = [v3 stringByReplacingOccurrencesOfString:v4 withString:&stru_1F3064D08];
  }

  else
    v5 = {;
  }

  return v5;
}

- (id)safari_highLevelDomain
{
  v1 = [a1 host];
  v2 = [v1 safari_highLevelDomainFromHost];

  return v2;
}

- (id)safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString
{
  v2 = [a1 host];
  v3 = [v2 safari_highLevelDomainFromHost];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [a1 host];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [a1 absoluteString];
    }

    v5 = v8;
  }

  return v5;
}

- (uint64_t)safari_hostCompare:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 safari_hostComponentsEnumerator];
  v6 = [v4 safari_hostComponentsEnumerator];
  v7 = [v5 nextObject];
  v8 = [v6 nextObject];
  if (![v7 length] && objc_msgSend(v8, "length"))
  {
    goto LABEL_10;
  }

  if ([v7 length] && !objc_msgSend(v8, "length"))
  {
    goto LABEL_8;
  }

  v9 = [v5 kind];
  v10 = [v6 kind];
  if (!v9 && v10)
  {
    goto LABEL_10;
  }

  if (v9 && !v10)
  {
    goto LABEL_8;
  }

  if (!(v9 | v10))
  {
    v13 = [v5 ipv4Address];
    v14 = [v6 ipv4Address];
    if (v13 < v14)
    {
      v11 = -1;
    }

    else
    {
      v11 = v13 > v14;
    }

    goto LABEL_11;
  }

  if (v9 == 1 && v10 != 1)
  {
    goto LABEL_10;
  }

  if (v9 != 1 && v10 == 1)
  {
    goto LABEL_8;
  }

  if (v9 == 1 && v10 == 1)
  {
    v27[0] = [v5 ipv6Address];
    v27[1] = v15;
    v16 = [v6 ipv6Address];
    v17 = 0;
    v26[0] = v16;
    v26[1] = v18;
    v11 = 1;
    while (1)
    {
      v19 = *(v27 + v17);
      v20 = *(v26 + v17);
      if (v19 < v20)
      {
        goto LABEL_10;
      }

      if (v19 > v20)
      {
        goto LABEL_11;
      }

      if (++v17 == 16)
      {
        v11 = 0;
        goto LABEL_11;
      }
    }
  }

  if (v9 == 2 && v10 != 2)
  {
LABEL_10:
    v11 = -1;
    goto LABEL_11;
  }

  if (v9 != 2 && v10 == 2)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_11;
  }

  v21 = 0;
  v22 = v8 != 0;
  if (v7 && v8)
  {
    v21 = 0;
    do
    {
      v11 = [v7 caseInsensitiveCompare:v8];
      if ([v5 kind] == 3 && objc_msgSend(v6, "kind") == 3)
      {
        v21 = v11;
      }

      else if (v11)
      {
        goto LABEL_11;
      }

      v23 = [v5 nextObject];

      v24 = [v6 nextObject];

      v22 = v24 != 0;
      if (!v23)
      {
        break;
      }

      v7 = v23;
      v8 = v24;
    }

    while (v24);
  }

  else
  {
    v24 = v8;
    v23 = v7;
  }

  if (!v23 || v22)
  {
    v25 = v23 == 0;
    if (v25 && v22)
    {
      v7 = 0;
    }

    else
    {
      v7 = v23;
    }

    if (v25 && v22)
    {
      v11 = -1;
    }

    else
    {
      v11 = v21;
    }

    v8 = v24;
  }

  else
  {
    v8 = 0;
    v11 = 1;
    v7 = v23;
  }

LABEL_11:

  return v11;
}

- (uint64_t)safari_hasScheme:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 scheme];
  v6 = [v5 safari_isCaseInsensitiveEqualToString:v4];

  return v6;
}

- (uint64_t)safari_isAppleNewsURL
{
  v1 = [a1 host];
  v2 = [v1 safari_isCaseInsensitiveEqualToString:@"apple.news"];

  return v2;
}

- (uint64_t)safari_isAppleOneURL
{
  if (![a1 safari_hasScheme:@"ams-ui"])
  {
    return 0;
  }

  v2 = [a1 host];
  v3 = [v2 safari_isCaseInsensitiveEqualToString:@"one.apple.com"];

  return v3;
}

- (uint64_t)safari_isBlobURL
{
  v1 = [a1 absoluteString];
  v2 = [v1 safari_hasCaseInsensitivePrefix:@"blob:"];

  return v2;
}

- (id)safari_URLByReplacingScheme:()SafariCoreExtras withScheme:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 scheme];
  v9 = WBSIsEqual(v8, v6);

  if (v9)
  {
    v10 = [a1 safari_URLByReplacingSchemeWithString:v7];
  }

  else
  {
    v10 = a1;
  }

  v11 = v10;

  return v11;
}

- (id)safari_URLByReplacingSchemeWithString:()SafariCoreExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  [v5 setScheme:v4];
  v6 = [v5 URL];

  return v6;
}

- (uint64_t)safari_isEligibleforDirectSSO
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v27 queryItems];
  v1 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v1)
  {
    v28 = 0;
    v30 = 0;
    v2 = 0;
    v3 = 0;
    v4 = *v32;
    do
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = [v6 name];
        v8 = [v7 lowercaseString];
        if ([v8 isEqualToString:@"client_id"])
        {
          v9 = [v6 value];
          v10 = [v9 length] != 0;

          v3 |= v10;
        }

        v11 = [v6 name];
        v12 = [v11 lowercaseString];
        if ([v12 isEqualToString:@"response_type"])
        {
          v13 = [v6 value];
          v14 = [v13 isEqualToString:@"code"];

          v2 |= v14;
        }

        v15 = [v6 name];
        v16 = [v15 lowercaseString];
        if ([v16 isEqualToString:@"redirect_uri"])
        {
          v17 = [v6 value];
          v18 = [v17 hasPrefix:@"http"];

          BYTE4(v30) |= v18 ^ 1;
        }

        v19 = [v6 name];
        v20 = [v19 lowercaseString];
        v21 = [v20 isEqualToString:@"response_mode"];

        if (v21)
        {
          v22 = [v6 value];
          v23 = [v22 isEqualToString:@"query"];

          LOBYTE(v30) = v23 | v30;
          v28 = 1;
        }
      }

      v1 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v1);

    v24 = v3 & v2 & BYTE4(v30) & (v28 ^ 1 | v30);
  }

  else
  {

    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

- (id)safari_URLByRemovingUserPasswordPathQueryAndFragment
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  [v1 setUser:0];
  [v1 setPassword:0];
  [v1 setPath:0];
  [v1 setQuery:0];
  [v1 setFragment:0];
  v2 = [v1 URL];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3064D08];
  }

  v5 = v4;

  return v5;
}

- (id)safari_URLByRemovingUserPasswordQueryAndFragment
{
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  [v1 setUser:0];
  [v1 setPassword:0];
  [v1 setQuery:0];
  [v1 setFragment:0];
  v2 = [v1 URL];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3064D08];
  }

  v5 = v4;

  return v5;
}

- (id)safari_URLByNormalizingBlobURL
{
  if ([a1 safari_isBlobURL])
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    v3 = [a1 dataRepresentation];
    v4 = [v2 initWithData:v3 encoding:4];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"blob:" withString:&stru_1F3064D08 options:9 range:{0, 5}];
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v5 dataUsingEncoding:4];
    v8 = [v6 URLWithDataRepresentation:v7 relativeToURL:0];

    if (v8)
    {
      if ([v8 safari_isHTTPFamilyURL])
      {
        v9 = [MEMORY[0x1E696AF20] componentsWithURL:v8 resolvingAgainstBaseURL:0];
        [v9 setUser:0];
        [v9 setPassword:0];
        [v9 setPath:0];
        [v9 setQuery:0];
        [v9 setFragment:0];
        v10 = [v9 host];
        [v9 setHost:v10];

        v11 = [v9 URL];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v8;
        }

        v14 = v13;

        v8 = v14;
      }
    }

    else
    {
      v8 = a1;
    }
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

- (uint64_t)safari_isWellKnownChangePasswordURL
{
  v2 = [a1 safari_wellKnownChangePasswordURL];
  v3 = [a1 isEqual:v2];

  return v3;
}

- (id)safari_wellKnownChangePasswordURL
{
  if ([a1 safari_isHTTPFamilyURL])
  {
    v2 = a1;
    v3 = [v2 host];
    v4 = [v3 safari_highLevelDomainFromHost];
    v5 = [v4 safari_isCaseInsensitiveEqualToString:@"google.com"];

    if (v5)
    {
      v6 = [MEMORY[0x1E695DFF8] URLWithString:@"https://accounts.google.com/"];

      v2 = v6;
    }

    v7 = [v2 safari_URLByRemovingUserPasswordPathQueryAndFragment];
    v8 = [v7 URLByAppendingPathComponent:@".well-known/change-password"];
    v9 = [v8 safari_URLByReplacingSchemeWithString:@"https"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)safari_wellKnownPasskeyEndpointsURL
{
  if ([a1 safari_isHTTPFamilyURL])
  {
    v2 = [a1 safari_URLByRemovingUserPasswordPathQueryAndFragment];
    v3 = [v2 URLByAppendingPathComponent:@".well-known/passkey-endpoints"];
    v4 = [v3 safari_URLByReplacingSchemeWithString:@"https"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)safari_URLWithUniqueFilename
{
  v21 = *MEMORY[0x1E69E9840];
  if (fileExists(a1))
  {
    v2 = [(NSURL *)a1 URLByDeletingLastPathComponent];
    v3 = [WBSUniqueFilenameEnumerator alloc];
    v4 = [(NSURL *)a1 lastPathComponent];
    v5 = [(WBSUniqueFilenameEnumerator *)v3 initWithFilename:v4];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [(WBSUniqueFilenameEnumerator *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v2 URLByAppendingPathComponent:*(*(&v16 + 1) + 8 * v9) isDirectory:{0, v16}];
        v11 = fileExists(v10);
        v12 = v11;
        v13 = v11 ? v10 : 0;

        if (!v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(WBSUniqueFilenameEnumerator *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v10 = 0;
    }
  }

  else
  {
    v10 = a1;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)safari_accessingSecurityScopedResource:()SafariCoreExtras
{
  v5 = a3;
  v4 = [a1 startAccessingSecurityScopedResource];
  v5[2]();
  if (v4)
  {
    [a1 stopAccessingSecurityScopedResource];
  }
}

@end