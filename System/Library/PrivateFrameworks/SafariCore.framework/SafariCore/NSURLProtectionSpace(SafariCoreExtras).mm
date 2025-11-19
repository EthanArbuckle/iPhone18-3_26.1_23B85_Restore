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
  v5 = [v4 port];
  v6 = [v4 host];
  v7 = [v6 safari_stringByRemovingWwwDotPrefix];

  v8 = [v4 scheme];

  v9 = [a1 alloc];
  if (v5)
  {
    v10 = [v5 integerValue];
  }

  else
  {
    v10 = 0;
  }

  if (!v8)
  {
    v8 = &stru_1F3064D08;
  }

  if (!v7)
  {
    v7 = &stru_1F3064D08;
  }

  v11 = [v9 initWithHost:v7 port:v10 protocol:v8 realm:0 authenticationMethod:*MEMORY[0x1E695AB50]];

  return v11;
}

+ (id)safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:()SafariCoreExtras
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [@"https://" stringByAppendingString:?];
  v4 = [v2 URLWithString:v3];
  v5 = [a1 safari_HTMLFormProtectionSpaceForURL:v4];

  return v5;
}

- (id)safari_protectionSpaceBySimplifyingHost
{
  v2 = [a1 host];
  v3 = [v2 safari_stringByRemovingWwwDotPrefix];

  v4 = [a1 host];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = a1;
  }

  else
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = [a1 port];
    v9 = [a1 protocol];
    v10 = [a1 realm];
    v11 = [a1 authenticationMethod];
    v6 = [v7 initWithHost:v3 port:v8 protocol:v9 realm:v10 authenticationMethod:v11];
  }

  return v6;
}

- (uint64_t)safari_protocolAsSecAttrProtocolValue
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 protocol];
  if ([v1 isEqualToString:*MEMORY[0x1E695AB98]])
  {
    v2 = MEMORY[0x1E697AE20];
  }

  else
  {
    if (([v1 isEqualToString:*MEMORY[0x1E695ABA0]] & 1) == 0)
    {
      v3 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v7 = 138543362;
        v8 = v1;
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
  v2 = [a1 host];
  v3 = [v2 safari_highLevelDomainFromHost];

  v4 = [a1 host];
  v5 = [v4 isEqualToString:v3];

  if (v5)
  {
    v6 = a1;
  }

  else
  {
    v7 = objc_alloc(objc_opt_class());
    v8 = [a1 port];
    v9 = [a1 protocol];
    v10 = [a1 realm];
    v11 = [a1 authenticationMethod];
    v6 = [v7 initWithHost:v3 port:v8 protocol:v9 realm:v10 authenticationMethod:v11];
  }

  return v6;
}

- (uint64_t)safari_compareToHighLevelDomainFromProtectionSpaceOrderingDecimalCharactersLast:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 host];
  v6 = [v5 safari_highLevelDomainFromHost];

  v7 = [v4 host];
  v8 = [v7 safari_highLevelDomainFromHost];

  v9 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  if ([v6 length])
  {
    v10 = [v9 characterIsMember:{objc_msgSend(v6, "characterAtIndex:", 0)}];
  }

  else
  {
    v10 = 0;
  }

  if ([v8 length])
  {
    v11 = [v9 characterIsMember:{objc_msgSend(v8, "characterAtIndex:", 0)}] ^ 1;
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
    v12 = [a1 safari_compareToHighLevelDomainFromProtectionSpace:v4];
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
  v5 = [a1 host];
  v6 = [v4 host];

  v7 = [v5 safari_highLevelDomainFromHost];
  v8 = [v6 safari_highLevelDomainFromHost];
  v9 = [v7 caseInsensitiveCompare:v8];
  if (!v9)
  {
    if ([v5 caseInsensitiveCompare:v7])
    {
      if ([v6 caseInsensitiveCompare:v7])
      {
        v9 = [v5 caseInsensitiveCompare:v6];
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
  if ([a1 isProxy])
  {
    [a1 proxyType];
  }

  else
  {
    [a1 protocol];
  }
  v2 = ;
  v3 = [a1 port];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 host];
  v6 = v5;
  if (v3)
  {
    [v4 stringWithFormat:@"%@://%@:%ld/", v2, v5, v3];
  }

  else
  {
    [v4 stringWithFormat:@"%@://%@/", v2, v5, v9];
  }
  v7 = ;

  return v7;
}

- (id)safari_userVisibleSiteForProtectionSpace
{
  v1 = [a1 safari_addressString];
  v2 = [v1 safari_simplifiedUserVisibleURLStringWithSimplifications:135 forDisplayOnly:0 simplifiedStringOffset:0];

  return v2;
}

- (id)safari_identityPreferenceDomain
{
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v3 = [a1 protocol];
  [v2 setScheme:v3];

  v4 = [a1 host];
  [v2 setHost:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "port")}];
  [v2 setPort:v5];

  v6 = [v2 string];

  return v6;
}

- (id)safari_URL
{
  v2 = objc_alloc(MEMORY[0x1E695DFF8]);
  v3 = [a1 safari_addressString];
  v4 = [v2 initWithString:v3];

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
  v21[3] = [a1 safari_protocolAsSecAttrProtocolValue];
  v20[4] = *MEMORY[0x1E697AE80];
  v10 = [a1 host];
  v11 = *MEMORY[0x1E697AEB0];
  v12 = *MEMORY[0x1E697AEB8];
  v21[4] = v10;
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
  v5 = [a1 host];
  v6 = [v4 host];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(a1, "port"), v7 == objc_msgSend(v4, "port")))
  {
    v8 = [a1 protocol];
    v9 = [v4 protocol];
    v10 = WBSIsEqual(v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)safari_allowsCredentialSaving
{
  v1 = [a1 safari_URL];
  v2 = [WBSSavedAccountMatchCriteria criteriaForExactFQDNPasswordMatchesOfURL:v1];

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
  v1 = [a1 protocol];
  if ([v1 isEqualToString:*MEMORY[0x1E695ABA0]])
  {
    v2 = 443;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AB98]])
  {
    v2 = 80;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E695AB90]])
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
  v2 = [a1 port];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = [a1 protocol];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695ABA0]];
  if (v3 == 443 && (v5 & 1) != 0 || (v6 = [v4 isEqualToString:*MEMORY[0x1E695AB98]], v3 == 80) && (v6 & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 isEqualToString:*MEMORY[0x1E695AB90]];
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