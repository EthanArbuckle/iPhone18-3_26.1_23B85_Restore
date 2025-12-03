@interface NSURLProtectionSpace(SafariCoreExtras)
+ (id)safari_HTMLFormProtectionSpaceForURL:()SafariCoreExtras;
+ (id)safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:()SafariCoreExtras;
- (BOOL)safari_allowsCredentialSaving;
- (id)safari_URL;
- (id)safari_addressString;
- (id)safari_creationDateOfCredentialWithUser:()SafariCoreExtras;
- (id)safari_identityPreferenceDomain;
- (id)safari_protectionSpaceByReplacingHostWithHighlevelDomain;
- (id)safari_protectionSpaceBySimplifyingHost;
- (id)safari_userVisibleSiteForProtectionSpace;
- (uint64_t)isEqualToProtectionSpaceForPasswordManager:()SafariCoreExtras;
- (uint64_t)safari_compareToHighLevelDomainFromProtectionSpace:()SafariCoreExtras;
- (uint64_t)safari_compareToHighLevelDomainFromProtectionSpaceOrderingDecimalCharactersLast:()SafariCoreExtras;
- (uint64_t)safari_defaultPortForProtocol;
- (uint64_t)safari_hasDefaultPortForProtocol;
- (uint64_t)safari_protocolAsSecAttrProtocolValue;
@end

@implementation NSURLProtectionSpace(SafariCoreExtras)

+ (id)safari_HTMLFormProtectionSpaceForURL:()SafariCoreExtras
{
  v4 = a3;
  port = [v4 port];
  host = [v4 host];
  safari_stringByRemovingWwwDotPrefix = [host safari_stringByRemovingWwwDotPrefix];

  scheme = [v4 scheme];

  v9 = [self alloc];
  if (port)
  {
    integerValue = [port integerValue];
  }

  else
  {
    integerValue = 0;
  }

  if (!scheme)
  {
    scheme = &stru_1F3064D08;
  }

  if (!safari_stringByRemovingWwwDotPrefix)
  {
    safari_stringByRemovingWwwDotPrefix = &stru_1F3064D08;
  }

  v11 = [v9 initWithHost:safari_stringByRemovingWwwDotPrefix port:integerValue protocol:scheme realm:0 authenticationMethod:*MEMORY[0x1E695AB50]];

  return v11;
}

+ (id)safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:()SafariCoreExtras
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [@"https://" stringByAppendingString:?];
  v4 = [v2 URLWithString:v3];
  v5 = [self safari_HTMLFormProtectionSpaceForURL:v4];

  return v5;
}

- (id)safari_protectionSpaceBySimplifyingHost
{
  host = [self host];
  safari_stringByRemovingWwwDotPrefix = [host safari_stringByRemovingWwwDotPrefix];

  host2 = [self host];
  v5 = [safari_stringByRemovingWwwDotPrefix isEqualToString:host2];

  if (v5)
  {
    selfCopy = self;
  }

  else
  {
    v7 = objc_alloc(objc_opt_class());
    port = [self port];
    protocol = [self protocol];
    realm = [self realm];
    authenticationMethod = [self authenticationMethod];
    selfCopy = [v7 initWithHost:safari_stringByRemovingWwwDotPrefix port:port protocol:protocol realm:realm authenticationMethod:authenticationMethod];
  }

  return selfCopy;
}

- (uint64_t)safari_protocolAsSecAttrProtocolValue
{
  v9 = *MEMORY[0x1E69E9840];
  protocol = [self protocol];
  if ([protocol isEqualToString:*MEMORY[0x1E695AB98]])
  {
    v2 = MEMORY[0x1E697AE20];
  }

  else
  {
    if (([protocol isEqualToString:*MEMORY[0x1E695ABA0]] & 1) == 0)
    {
      v3 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v7 = 138543362;
        v8 = protocol;
        _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_INFO, "Unsupported protocol %{public}@", &v7, 0xCu);
      }
    }

    v2 = MEMORY[0x1E697AE30];
  }

  v4 = *v2;

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)safari_protectionSpaceByReplacingHostWithHighlevelDomain
{
  host = [self host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  host2 = [self host];
  v5 = [host2 isEqualToString:safari_highLevelDomainFromHost];

  if (v5)
  {
    selfCopy = self;
  }

  else
  {
    v7 = objc_alloc(objc_opt_class());
    port = [self port];
    protocol = [self protocol];
    realm = [self realm];
    authenticationMethod = [self authenticationMethod];
    selfCopy = [v7 initWithHost:safari_highLevelDomainFromHost port:port protocol:protocol realm:realm authenticationMethod:authenticationMethod];
  }

  return selfCopy;
}

- (uint64_t)safari_compareToHighLevelDomainFromProtectionSpaceOrderingDecimalCharactersLast:()SafariCoreExtras
{
  v4 = a3;
  host = [self host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  host2 = [v4 host];
  safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];

  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  if ([safari_highLevelDomainFromHost length])
  {
    v10 = [decimalDigitCharacterSet characterIsMember:{objc_msgSend(safari_highLevelDomainFromHost, "characterAtIndex:", 0)}];
  }

  else
  {
    v10 = 0;
  }

  if ([safari_highLevelDomainFromHost2 length])
  {
    v11 = [decimalDigitCharacterSet characterIsMember:{objc_msgSend(safari_highLevelDomainFromHost2, "characterAtIndex:", 0)}] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  if (v10 & v11)
  {
    v12 = 1;
  }

  else if ((v10 | v11))
  {
    v12 = [self safari_compareToHighLevelDomainFromProtectionSpace:v4];
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (uint64_t)safari_compareToHighLevelDomainFromProtectionSpace:()SafariCoreExtras
{
  v4 = a3;
  host = [self host];
  host2 = [v4 host];

  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];
  v9 = [safari_highLevelDomainFromHost caseInsensitiveCompare:safari_highLevelDomainFromHost2];
  if (!v9)
  {
    if ([host caseInsensitiveCompare:safari_highLevelDomainFromHost])
    {
      if ([host2 caseInsensitiveCompare:safari_highLevelDomainFromHost])
      {
        v9 = [host caseInsensitiveCompare:host2];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

- (id)safari_addressString
{
  if ([self isProxy])
  {
    [self proxyType];
  }

  else
  {
    [self protocol];
  }
  v2 = ;
  port = [self port];
  v4 = MEMORY[0x1E696AEC0];
  host = [self host];
  v6 = host;
  if (port)
  {
    [v4 stringWithFormat:@"%@://%@:%ld/", v2, host, port];
  }

  else
  {
    [v4 stringWithFormat:@"%@://%@/", v2, host, v9];
  }
  v7 = ;

  return v7;
}

- (id)safari_userVisibleSiteForProtectionSpace
{
  safari_addressString = [self safari_addressString];
  v2 = [safari_addressString safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:0 simplifiedStringOffset:0];

  return v2;
}

- (id)safari_identityPreferenceDomain
{
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  protocol = [self protocol];
  [v2 setScheme:protocol];

  host = [self host];
  [v2 setHost:host];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "port")}];
  [v2 setPort:v5];

  string = [v2 string];

  return string;
}

- (id)safari_URL
{
  v2 = objc_alloc(MEMORY[0x1E695DFF8]);
  safari_addressString = [self safari_addressString];
  v4 = [v2 initWithString:safari_addressString];

  return v4;
}

- (id)safari_creationDateOfCredentialWithUser:()SafariCoreExtras
{
  v21[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  cf = 0;
  v5 = *MEMORY[0x1E697B018];
  v6 = *MEMORY[0x1E697AC50];
  v20[0] = *MEMORY[0x1E697AFF8];
  v20[1] = v6;
  v7 = *MEMORY[0x1E697AC60];
  v21[0] = v5;
  v21[1] = v7;
  v8 = *MEMORY[0x1E697AC30];
  v21[2] = v4;
  v9 = *MEMORY[0x1E697AE00];
  v20[2] = v8;
  v20[3] = v9;
  v21[3] = [self safari_protocolAsSecAttrProtocolValue];
  v20[4] = *MEMORY[0x1E697AE80];
  host = [self host];
  v11 = *MEMORY[0x1E697AEB0];
  v12 = *MEMORY[0x1E697AEB8];
  v21[4] = host;
  v21[5] = v12;
  v13 = *MEMORY[0x1E697B310];
  v20[5] = v11;
  v20[6] = v13;
  v20[7] = *MEMORY[0x1E697B260];
  v14 = *MEMORY[0x1E697B270];
  v21[6] = MEMORY[0x1E695E118];
  v21[7] = v14;
  v15 = SecItemCopyMatching([MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:8], &cf);

  v16 = 0;
  if (!v15)
  {
    v16 = [cf objectForKey:*MEMORY[0x1E697ACD0]];
    CFRelease(cf);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (uint64_t)isEqualToProtectionSpaceForPasswordManager:()SafariCoreExtras
{
  v4 = a3;
  host = [self host];
  host2 = [v4 host];
  if ([host isEqualToString:host2] && (v7 = objc_msgSend(self, "port"), v7 == objc_msgSend(v4, "port")))
  {
    protocol = [self protocol];
    protocol2 = [v4 protocol];
    v10 = WBSIsEqual(protocol, protocol2);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)safari_allowsCredentialSaving
{
  safari_URL = [self safari_URL];
  v2 = [WBSSavedAccountMatchCriteria criteriaForExactFQDNPasswordMatchesOfURL:safari_URL];

  [v2 setOptions:{objc_msgSend(v2, "options") | 4}];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = +[WBSSavedAccountStore sharedStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__NSURLProtectionSpace_SafariCoreExtras__safari_allowsCredentialSaving__block_invoke;
  v5[3] = &unk_1E7CF2C38;
  v5[4] = &v6;
  [v3 getSavedAccountsMatchingCriteria:v2 withSynchronousCompletionHandler:v5];

  LOBYTE(v3) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return (v3 & 1) == 0;
}

- (uint64_t)safari_defaultPortForProtocol
{
  protocol = [self protocol];
  if ([protocol isEqualToString:*MEMORY[0x1E695ABA0]])
  {
    v2 = 443;
  }

  else if ([protocol isEqualToString:*MEMORY[0x1E695AB98]])
  {
    v2 = 80;
  }

  else if ([protocol isEqualToString:*MEMORY[0x1E695AB90]])
  {
    v2 = 20;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)safari_hasDefaultPortForProtocol
{
  port = [self port];
  if (!port)
  {
    return 1;
  }

  v3 = port;
  protocol = [self protocol];
  v5 = [protocol isEqualToString:*MEMORY[0x1E695ABA0]];
  if (v3 == 443 && (v5 & 1) != 0 || (v6 = [protocol isEqualToString:*MEMORY[0x1E695AB98]], v3 == 80) && (v6 & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = [protocol isEqualToString:*MEMORY[0x1E695AB90]];
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0x14)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end