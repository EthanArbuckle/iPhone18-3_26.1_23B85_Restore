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
  if ([self safari_hasScheme:@"http"])
  {
    return 1;
  }

  return [self safari_hasScheme:@"https"];
}

+ (CFURLRef)safari_urlWithDataAsString:()SafariCoreExtras
{
  safari_stringByTrimmingWhitespace = [a3 safari_stringByTrimmingWhitespace];
  v4 = [safari_stringByTrimmingWhitespace dataUsingEncoding:5];

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
  safari_hostComponentsEnumerator = [self safari_hostComponentsEnumerator];
  safari_hostComponentsEnumerator2 = [v4 safari_hostComponentsEnumerator];
  v7 = 0;
  v8 = 0;
  do
  {
    nextObject = [safari_hostComponentsEnumerator nextObject];

    nextObject2 = [safari_hostComponentsEnumerator2 nextObject];

    v7 = nextObject;
    v8 = nextObject2;
  }

  while (([nextObject isEqualToString:nextObject2] & 1) != 0);
  if (nextObject2)
  {
    nextObject3 = [safari_hostComponentsEnumerator2 nextObject];
    if (nextObject3)
    {
      v12 = 0;
    }

    else if ([nextObject2 safari_isCaseInsensitiveEqualToString:@"www"])
    {
      v12 = 1;
    }

    else
    {
      v12 = [nextObject2 safari_isCaseInsensitiveEqualToString:@"m"];
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
    safari_possibleTopLevelDomainCorrectionForUserTypedString = [v7 safari_possibleTopLevelDomainCorrectionForUserTypedString];
    enumeratePossibleURLsForUserTypedStringWithBlockInternal(safari_possibleTopLevelDomainCorrectionForUserTypedString, v5);
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

  scheme = [self scheme];
  scheme2 = [v6 scheme];
  v9 = [scheme isEqualToString:scheme2];

  if ((v9 & 1) == 0)
  {
    if (a4 && [self safari_isHTTPFamilyURL] && (objc_msgSend(v6, "safari_isHTTPFamilyURL") & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_14;
  }

  if (!a4)
  {
    host = [self host];
    host2 = [v6 host];
    goto LABEL_10;
  }

LABEL_4:
  host3 = [self host];
  host = [host3 safari_stringByRemovingWwwDotPrefix];

  host4 = [v6 host];
  host2 = [host4 safari_stringByRemovingWwwDotPrefix];

LABEL_10:
  if ([host isEqualToString:host2])
  {
    port = [self port];
    port2 = [v6 port];
    v14 = port == port2;
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

  if (([self safari_hasSameOriginAsURL:v4] & 1) == 0)
  {
    scheme = [self scheme];
    scheme2 = [v4 scheme];
    v8 = [scheme isEqualToString:scheme2];

    if (v8)
    {
      host = [self host];
      safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
      host2 = [v4 host];
      safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];
      v5 = [safari_highLevelDomainFromHost isEqualToString:safari_highLevelDomainFromHost2];

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
  safari_absoluteStringWithoutFragment = [self safari_absoluteStringWithoutFragment];
  safari_absoluteStringWithoutFragment2 = [v4 safari_absoluteStringWithoutFragment];
  v7 = [safari_absoluteStringWithoutFragment isEqualToString:safari_absoluteStringWithoutFragment2];

  return v7;
}

- (id)safari_canonicalURL
{
  v2 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:self];
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
    selfCopy = [v4 URL];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)safari_absoluteStringWithoutFragment
{
  fragment = [self fragment];
  [self absoluteString];
  if (fragment)
    v3 = {;
    v4 = [@"#" stringByAppendingString:fragment];
    v5 = [v3 stringByReplacingOccurrencesOfString:v4 withString:&stru_1F3064D08];
  }

  else
    v5 = {;
  }

  return v5;
}

- (id)safari_highLevelDomain
{
  host = [self host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  return safari_highLevelDomainFromHost;
}

- (id)safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString
{
  host = [self host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  v4 = safari_highLevelDomainFromHost;
  if (safari_highLevelDomainFromHost)
  {
    v5 = safari_highLevelDomainFromHost;
  }

  else
  {
    host2 = [self host];
    v7 = host2;
    if (host2)
    {
      absoluteString = host2;
    }

    else
    {
      absoluteString = [self absoluteString];
    }

    v5 = absoluteString;
  }

  return v5;
}

- (uint64_t)safari_hostCompare:()SafariCoreExtras
{
  v4 = a3;
  safari_hostComponentsEnumerator = [self safari_hostComponentsEnumerator];
  safari_hostComponentsEnumerator2 = [v4 safari_hostComponentsEnumerator];
  nextObject = [safari_hostComponentsEnumerator nextObject];
  nextObject2 = [safari_hostComponentsEnumerator2 nextObject];
  if (![nextObject length] && objc_msgSend(nextObject2, "length"))
  {
    goto LABEL_10;
  }

  if ([nextObject length] && !objc_msgSend(nextObject2, "length"))
  {
    goto LABEL_8;
  }

  kind = [safari_hostComponentsEnumerator kind];
  kind2 = [safari_hostComponentsEnumerator2 kind];
  if (!kind && kind2)
  {
    goto LABEL_10;
  }

  if (kind && !kind2)
  {
    goto LABEL_8;
  }

  if (!(kind | kind2))
  {
    ipv4Address = [safari_hostComponentsEnumerator ipv4Address];
    ipv4Address2 = [safari_hostComponentsEnumerator2 ipv4Address];
    if (ipv4Address < ipv4Address2)
    {
      v11 = -1;
    }

    else
    {
      v11 = ipv4Address > ipv4Address2;
    }

    goto LABEL_11;
  }

  if (kind == 1 && kind2 != 1)
  {
    goto LABEL_10;
  }

  if (kind != 1 && kind2 == 1)
  {
    goto LABEL_8;
  }

  if (kind == 1 && kind2 == 1)
  {
    v27[0] = [safari_hostComponentsEnumerator ipv6Address];
    v27[1] = v15;
    ipv6Address = [safari_hostComponentsEnumerator2 ipv6Address];
    v17 = 0;
    v26[0] = ipv6Address;
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

  if (kind == 2 && kind2 != 2)
  {
LABEL_10:
    v11 = -1;
    goto LABEL_11;
  }

  if (kind != 2 && kind2 == 2)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_11;
  }

  v21 = 0;
  v22 = nextObject2 != 0;
  if (nextObject && nextObject2)
  {
    v21 = 0;
    do
    {
      v11 = [nextObject caseInsensitiveCompare:nextObject2];
      if ([safari_hostComponentsEnumerator kind] == 3 && objc_msgSend(safari_hostComponentsEnumerator2, "kind") == 3)
      {
        v21 = v11;
      }

      else if (v11)
      {
        goto LABEL_11;
      }

      nextObject3 = [safari_hostComponentsEnumerator nextObject];

      nextObject4 = [safari_hostComponentsEnumerator2 nextObject];

      v22 = nextObject4 != 0;
      if (!nextObject3)
      {
        break;
      }

      nextObject = nextObject3;
      nextObject2 = nextObject4;
    }

    while (nextObject4);
  }

  else
  {
    nextObject4 = nextObject2;
    nextObject3 = nextObject;
  }

  if (!nextObject3 || v22)
  {
    v25 = nextObject3 == 0;
    if (v25 && v22)
    {
      nextObject = 0;
    }

    else
    {
      nextObject = nextObject3;
    }

    if (v25 && v22)
    {
      v11 = -1;
    }

    else
    {
      v11 = v21;
    }

    nextObject2 = nextObject4;
  }

  else
  {
    nextObject2 = 0;
    v11 = 1;
    nextObject = nextObject3;
  }

LABEL_11:

  return v11;
}

- (uint64_t)safari_hasScheme:()SafariCoreExtras
{
  v4 = a3;
  scheme = [self scheme];
  v6 = [scheme safari_isCaseInsensitiveEqualToString:v4];

  return v6;
}

- (uint64_t)safari_isAppleNewsURL
{
  host = [self host];
  v2 = [host safari_isCaseInsensitiveEqualToString:@"apple.news"];

  return v2;
}

- (uint64_t)safari_isAppleOneURL
{
  if (![self safari_hasScheme:@"ams-ui"])
  {
    return 0;
  }

  host = [self host];
  v3 = [host safari_isCaseInsensitiveEqualToString:@"one.apple.com"];

  return v3;
}

- (uint64_t)safari_isBlobURL
{
  absoluteString = [self absoluteString];
  v2 = [absoluteString safari_hasCaseInsensitivePrefix:@"blob:"];

  return v2;
}

- (id)safari_URLByReplacingScheme:()SafariCoreExtras withScheme:
{
  v6 = a3;
  v7 = a4;
  scheme = [self scheme];
  v9 = WBSIsEqual(scheme, v6);

  if (v9)
  {
    selfCopy = [self safari_URLByReplacingSchemeWithString:v7];
  }

  else
  {
    selfCopy = self;
  }

  v11 = selfCopy;

  return v11;
}

- (id)safari_URLByReplacingSchemeWithString:()SafariCoreExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  [v5 setScheme:v4];
  v6 = [v5 URL];

  return v6;
}

- (uint64_t)safari_isEligibleforDirectSSO
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
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
        name = [v6 name];
        lowercaseString = [name lowercaseString];
        if ([lowercaseString isEqualToString:@"client_id"])
        {
          value = [v6 value];
          v10 = [value length] != 0;

          v3 |= v10;
        }

        name2 = [v6 name];
        lowercaseString2 = [name2 lowercaseString];
        if ([lowercaseString2 isEqualToString:@"response_type"])
        {
          value2 = [v6 value];
          v14 = [value2 isEqualToString:@"code"];

          v2 |= v14;
        }

        name3 = [v6 name];
        lowercaseString3 = [name3 lowercaseString];
        if ([lowercaseString3 isEqualToString:@"redirect_uri"])
        {
          value3 = [v6 value];
          v18 = [value3 hasPrefix:@"http"];

          BYTE4(v30) |= v18 ^ 1;
        }

        name4 = [v6 name];
        lowercaseString4 = [name4 lowercaseString];
        v21 = [lowercaseString4 isEqualToString:@"response_mode"];

        if (v21)
        {
          value4 = [v6 value];
          v23 = [value4 isEqualToString:@"query"];

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
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
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
  v1 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
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
  if ([self safari_isBlobURL])
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    dataRepresentation = [self dataRepresentation];
    v4 = [v2 initWithData:dataRepresentation encoding:4];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"blob:" withString:&stru_1F3064D08 options:9 range:{0, 5}];
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v5 dataUsingEncoding:4];
    selfCopy2 = [v6 URLWithDataRepresentation:v7 relativeToURL:0];

    if (selfCopy2)
    {
      if ([selfCopy2 safari_isHTTPFamilyURL])
      {
        v9 = [MEMORY[0x1E696AF20] componentsWithURL:selfCopy2 resolvingAgainstBaseURL:0];
        [v9 setUser:0];
        [v9 setPassword:0];
        [v9 setPath:0];
        [v9 setQuery:0];
        [v9 setFragment:0];
        host = [v9 host];
        [v9 setHost:host];

        v11 = [v9 URL];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = selfCopy2;
        }

        v14 = v13;

        selfCopy2 = v14;
      }
    }

    else
    {
      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (uint64_t)safari_isWellKnownChangePasswordURL
{
  safari_wellKnownChangePasswordURL = [self safari_wellKnownChangePasswordURL];
  v3 = [self isEqual:safari_wellKnownChangePasswordURL];

  return v3;
}

- (id)safari_wellKnownChangePasswordURL
{
  if ([self safari_isHTTPFamilyURL])
  {
    selfCopy = self;
    host = [selfCopy host];
    safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
    v5 = [safari_highLevelDomainFromHost safari_isCaseInsensitiveEqualToString:@"google.com"];

    if (v5)
    {
      v6 = [MEMORY[0x1E695DFF8] URLWithString:@"https://accounts.google.com/"];

      selfCopy = v6;
    }

    safari_URLByRemovingUserPasswordPathQueryAndFragment = [selfCopy safari_URLByRemovingUserPasswordPathQueryAndFragment];
    v8 = [safari_URLByRemovingUserPasswordPathQueryAndFragment URLByAppendingPathComponent:@".well-known/change-password"];
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
  if ([self safari_isHTTPFamilyURL])
  {
    safari_URLByRemovingUserPasswordPathQueryAndFragment = [self safari_URLByRemovingUserPasswordPathQueryAndFragment];
    v3 = [safari_URLByRemovingUserPasswordPathQueryAndFragment URLByAppendingPathComponent:@".well-known/passkey-endpoints"];
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
  if (fileExists(self))
  {
    uRLByDeletingLastPathComponent = [(NSURL *)self URLByDeletingLastPathComponent];
    v3 = [WBSUniqueFilenameEnumerator alloc];
    lastPathComponent = [(NSURL *)self lastPathComponent];
    v5 = [(WBSUniqueFilenameEnumerator *)v3 initWithFilename:lastPathComponent];

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

        selfCopy = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:*(*(&v16 + 1) + 8 * v9) isDirectory:{0, v16}];
        v11 = fileExists(selfCopy);
        v12 = v11;
        v13 = v11 ? selfCopy : 0;

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
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = self;
  }

  v14 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (void)safari_accessingSecurityScopedResource:()SafariCoreExtras
{
  v5 = a3;
  startAccessingSecurityScopedResource = [self startAccessingSecurityScopedResource];
  v5[2]();
  if (startAccessingSecurityScopedResource)
  {
    [self stopAccessingSecurityScopedResource];
  }
}

@end