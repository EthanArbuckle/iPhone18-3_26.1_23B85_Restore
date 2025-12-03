@interface WBSPasswordManagerURL
+ (BOOL)BOOLForPasswordManagerResourceDictionary:(id)dictionary key:(id)key defaultValue:(BOOL)value;
+ (BOOL)_resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:(id)dictionary;
+ (BOOL)_urlIsPasswordManagerURL:(id)l resourceSpecifierDictionary:(id)dictionary;
+ (BOOL)isOtpauthMigrationResourceDictionary:(id)dictionary;
+ (BOOL)isOtpauthResourceDictionary:(id)dictionary;
+ (BOOL)isPasswordManagerFamilySharingGroupSetupURL:(id)l;
+ (BOOL)isPasswordManagerPasskeysResourceDictionary:(id)dictionary;
+ (BOOL)isPasswordManagerPasswordOptionsResourceDictionary:(id)dictionary;
+ (BOOL)isPasswordManagerSecurityRecommendationsResourceDictionary:(id)dictionary;
+ (BOOL)isPasswordManagerVerificationCodesResourceDictionary:(id)dictionary;
+ (BOOL)isPasswordManagerVerificationCodesURL:(id)l;
+ (BOOL)urlIsPasswordManagerURL:(id)l;
+ (NSURL)passwordManagerSecurityRecommendationsURL;
+ (NSURL)passwordManagerURLForGeneratedPasswords;
+ (NSURL)passwordManagerURLForRecentlyDeleted;
+ (id)_resourceSpecifierDictionaryForURL:(id)l;
+ (id)dictionaryWithPasswordManagerURL:(id)l;
+ (id)passwordManagerURLForGroupWithID:(id)d;
+ (id)passwordManagerURLWithDictionary:(id)dictionary;
+ (id)passwordManagerURLWithOtpauthURL:(id)l;
+ (id)passwordManagerURLWithPrefsURL:(id)l;
+ (id)resourceSpecifierEncodedKey:(id)key value:(id)value;
+ (id)urlForDetailViewOfSavedAccount:(id)account;
+ (id)valueForPasswordManagerResourceDictionary:(id)dictionary key:(id)key;
+ (id)valueForPasswordManagerURL:(id)l key:(id)key;
@end

@implementation WBSPasswordManagerURL

+ (id)resourceSpecifierEncodedKey:(id)key value:(id)value
{
  v5 = MEMORY[0x1E696AB08];
  valueCopy = value;
  keyCopy = key;
  uRLQueryAllowedCharacterSet = [v5 URLQueryAllowedCharacterSet];
  v9 = [uRLQueryAllowedCharacterSet mutableCopy];

  [v9 removeCharactersInString:@"&="];
  v10 = [keyCopy stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v11 = [valueCopy stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v10, v11];

  return v12;
}

+ (id)passwordManagerURLWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setScheme:@"https"];
  [v4 setHost:@"passwords.apple.com"];
  [v4 setPath:@"/app"];
  if ([dictionaryCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = dictionaryCopy;
    v6 = dictionaryCopy;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x1E696AF60]);
          v13 = [v6 objectForKeyedSubscript:v11];
          v14 = [v12 initWithName:v11 value:v13];
          [array addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v15 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v15 setQueryItems:array];
    string = [v15 string];
    [v4 setPercentEncodedFragment:string];

    dictionaryCopy = v20;
  }

  v17 = [v4 URL];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)passwordManagerURLWithPrefsURL:(id)l
{
  v4 = MEMORY[0x1E696AF20];
  lCopy = l;
  v6 = [self passwordManagerURLWithDictionary:0];
  v7 = [v4 componentsWithURL:v6 resolvingAgainstBaseURL:0];

  absoluteString = [lCopy absoluteString];

  [v7 setPercentEncodedFragment:absoluteString];
  v9 = [v7 URL];

  return v9;
}

+ (NSURL)passwordManagerURLForRecentlyDeleted
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"recentlyDeleted";
  v8[0] = @"true";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [self passwordManagerURLWithDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)urlForDetailViewOfSavedAccount:(id)account
{
  v11[1] = *MEMORY[0x1E69E9840];
  stableIDString = [account stableIDString];
  v5 = stableIDString;
  if (stableIDString)
  {
    v10 = @"showDetails";
    v11[0] = stableIDString;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [self passwordManagerURLWithDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)passwordManagerURLForGroupWithID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"sharingGroupID";
  v11[0] = d;
  v4 = MEMORY[0x1E695DF20];
  dCopy = d;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [self passwordManagerURLWithDictionary:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (NSURL)passwordManagerURLForGeneratedPasswords
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"generatedPasswords";
  v8[0] = @"true";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [self passwordManagerURLWithDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)passwordManagerURLWithOtpauthURL:(id)l
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"path";
  v9[1] = @"url";
  v10[0] = @"OTPAUTH_URL";
  absoluteString = [l absoluteString];
  v10[1] = absoluteString;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [self passwordManagerURLWithDictionary:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)_urlIsPasswordManagerURL:(id)l resourceSpecifierDictionary:(id)dictionary
{
  lCopy = l;
  dictionaryCopy = dictionary;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if (([lowercaseString isEqualToString:@"http"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"https"))
  {
    host = [lCopy host];
    v11 = [host isEqualToString:@"passwords.apple.com"];

    if (v11)
    {
      path = [lCopy path];
      v13 = [path isEqualToString:@"/app"];

      if (v13)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  scheme2 = [lCopy scheme];
  v16 = [scheme2 isEqualToString:@"prefs"];

  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = [self _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:dictionaryCopy];
LABEL_8:

  return v14;
}

+ (BOOL)_resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:(id)dictionary
{
  v3 = [dictionary safari_stringForKey:@"root"];
  v4 = ![v3 length] || (objc_msgSend(v3, "isEqualToString:", @"PASSWORDS") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"ACCOUNTS_AND_PASSWORDS");

  return v4;
}

+ (BOOL)urlIsPasswordManagerURL:(id)l
{
  lCopy = l;
  v5 = [self _resourceSpecifierDictionaryForURL:lCopy];
  LOBYTE(self) = [self _urlIsPasswordManagerURL:lCopy resourceSpecifierDictionary:v5];

  return self;
}

+ (id)_resourceSpecifierDictionaryForURL:(id)l
{
  v58 = *MEMORY[0x1E69E9840];
  lCopy = l;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  if (([lowercaseString isEqualToString:@"http"] & 1) != 0 || (v6 = lCopy, objc_msgSend(lowercaseString, "isEqualToString:", @"https")))
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    fragment = [v7 fragment];
    v9 = [fragment length];

    if (!v9)
    {

      dictionary = MEMORY[0x1E695E0F8];
LABEL_30:
      v40 = lCopy;
      goto LABEL_31;
    }

    v10 = MEMORY[0x1E696AF20];
    percentEncodedFragment = [v7 percentEncodedFragment];
    v12 = [v10 componentsWithString:percentEncodedFragment];

    queryItems = [v12 queryItems];
    v14 = [queryItems count];

    if (v14)
    {
      v44 = lowercaseString;
      v46 = lCopy;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      percentEncodedQueryItems = [v12 percentEncodedQueryItems];
      v17 = [percentEncodedQueryItems countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v53;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v53 != v19)
            {
              objc_enumerationMutation(percentEncodedQueryItems);
            }

            v21 = *(*(&v52 + 1) + 8 * i);
            value = [v21 value];
            stringByRemovingPercentEncoding = [value stringByRemovingPercentEncoding];
            name = [v21 name];
            [dictionary setObject:stringByRemovingPercentEncoding forKeyedSubscript:name];
          }

          v18 = [percentEncodedQueryItems countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v18);
      }

      lowercaseString = v44;
      lCopy = v46;
      goto LABEL_29;
    }

    scheme2 = [v12 scheme];
    v26 = [scheme2 isEqualToString:@"prefs"];

    if (!v26)
    {
      dictionary = MEMORY[0x1E695E0F8];
LABEL_29:

      goto LABEL_30;
    }

    v27 = [v12 URL];
    v28 = v27;
    v6 = lCopy;
    if (v27)
    {
      v6 = v27;
    }
  }

  v45 = lowercaseString;
  v47 = lCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v43 = v6;
  resourceSpecifier = [v6 resourceSpecifier];
  v30 = [resourceSpecifier componentsSeparatedByString:@"&"];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v48 + 1) + 8 * j) componentsSeparatedByString:@"="];
        if ([v36 count] == 2)
        {
          v37 = [v36 objectAtIndexedSubscript:0];
          v38 = [v36 objectAtIndexedSubscript:1];
          stringByRemovingPercentEncoding2 = [v38 stringByRemovingPercentEncoding];

          [dictionary setObject:stringByRemovingPercentEncoding2 forKeyedSubscript:v37];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v33);
  }

  lowercaseString = v45;
  lCopy = v47;
  v40 = v43;
LABEL_31:

  v41 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)dictionaryWithPasswordManagerURL:(id)l
{
  v10[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [self _resourceSpecifierDictionaryForURL:lCopy];
  LODWORD(self) = [self _urlIsPasswordManagerURL:lCopy resourceSpecifierDictionary:v5];

  if (self)
  {
    v6 = [v5 mutableCopy];
    v10[0] = @"root";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v6 removeObjectsForKeys:v7];
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)valueForPasswordManagerURL:(id)l key:(id)key
{
  keyCopy = key;
  v7 = [self dictionaryWithPasswordManagerURL:l];
  v8 = [v7 safari_stringForKey:keyCopy];

  return v8;
}

+ (id)valueForPasswordManagerResourceDictionary:(id)dictionary key:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  if ([self _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:dictionaryCopy])
  {
    v8 = [dictionaryCopy safari_stringForKey:keyCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)BOOLForPasswordManagerResourceDictionary:(id)dictionary key:(id)key defaultValue:(BOOL)value
{
  valueCopy = value;
  v6 = [self valueForPasswordManagerResourceDictionary:dictionary key:key];
  if (v6)
  {
    if ([@"true" isEqualToString:v6])
    {
      LOBYTE(valueCopy) = 1;
    }

    else
    {
      valueCopy &= ~[@"false" isEqualToString:v6];
    }
  }

  return valueCopy;
}

+ (BOOL)isPasswordManagerPasswordOptionsResourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([self _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"PASSWORD_OPTIONS"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSURL)passwordManagerSecurityRecommendationsURL
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"path";
  v8[0] = @"SECURITY_RECOMMENDATIONS";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [self passwordManagerURLWithDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (BOOL)isPasswordManagerSecurityRecommendationsResourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([self _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"SECURITY_RECOMMENDATIONS"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isOtpauthResourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([self _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"OTPAUTH_URL"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isOtpauthMigrationResourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([self _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"OTPAUTH_MIGRATION_URL"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPasswordManagerVerificationCodesURL:(id)l
{
  v3 = [self dictionaryWithPasswordManagerURL:l];
  v4 = [v3 safari_stringForKey:@"path"];
  v5 = [v4 isEqualToString:@"VERIFICATION_CODES"];

  return v5;
}

+ (BOOL)isPasswordManagerVerificationCodesResourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([self _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"VERIFICATION_CODES"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPasswordManagerPasskeysResourceDictionary:(id)dictionary
{
  v3 = [dictionary safari_stringForKey:@"path"];
  v4 = [v3 isEqualToString:@"PASSKEYS"];

  return v4;
}

+ (BOOL)isPasswordManagerFamilySharingGroupSetupURL:(id)l
{
  selfCopy = self;
  v4 = [self dictionaryWithPasswordManagerURL:l];
  LOBYTE(selfCopy) = [selfCopy BOOLForPasswordManagerResourceDictionary:v4 key:@"familySharingGroupSetup" defaultValue:0];

  return selfCopy;
}

@end