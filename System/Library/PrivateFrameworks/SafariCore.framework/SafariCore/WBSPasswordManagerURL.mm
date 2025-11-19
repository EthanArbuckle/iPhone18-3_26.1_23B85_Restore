@interface WBSPasswordManagerURL
+ (BOOL)BOOLForPasswordManagerResourceDictionary:(id)a3 key:(id)a4 defaultValue:(BOOL)a5;
+ (BOOL)_resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:(id)a3;
+ (BOOL)_urlIsPasswordManagerURL:(id)a3 resourceSpecifierDictionary:(id)a4;
+ (BOOL)isOtpauthMigrationResourceDictionary:(id)a3;
+ (BOOL)isOtpauthResourceDictionary:(id)a3;
+ (BOOL)isPasswordManagerFamilySharingGroupSetupURL:(id)a3;
+ (BOOL)isPasswordManagerPasskeysResourceDictionary:(id)a3;
+ (BOOL)isPasswordManagerPasswordOptionsResourceDictionary:(id)a3;
+ (BOOL)isPasswordManagerSecurityRecommendationsResourceDictionary:(id)a3;
+ (BOOL)isPasswordManagerVerificationCodesResourceDictionary:(id)a3;
+ (BOOL)isPasswordManagerVerificationCodesURL:(id)a3;
+ (BOOL)urlIsPasswordManagerURL:(id)a3;
+ (NSURL)passwordManagerSecurityRecommendationsURL;
+ (NSURL)passwordManagerURLForGeneratedPasswords;
+ (NSURL)passwordManagerURLForRecentlyDeleted;
+ (id)_resourceSpecifierDictionaryForURL:(id)a3;
+ (id)dictionaryWithPasswordManagerURL:(id)a3;
+ (id)passwordManagerURLForGroupWithID:(id)a3;
+ (id)passwordManagerURLWithDictionary:(id)a3;
+ (id)passwordManagerURLWithOtpauthURL:(id)a3;
+ (id)passwordManagerURLWithPrefsURL:(id)a3;
+ (id)resourceSpecifierEncodedKey:(id)a3 value:(id)a4;
+ (id)urlForDetailViewOfSavedAccount:(id)a3;
+ (id)valueForPasswordManagerResourceDictionary:(id)a3 key:(id)a4;
+ (id)valueForPasswordManagerURL:(id)a3 key:(id)a4;
@end

@implementation WBSPasswordManagerURL

+ (id)resourceSpecifierEncodedKey:(id)a3 value:(id)a4
{
  v5 = MEMORY[0x1E696AB08];
  v6 = a4;
  v7 = a3;
  v8 = [v5 URLQueryAllowedCharacterSet];
  v9 = [v8 mutableCopy];

  [v9 removeCharactersInString:@"&="];
  v10 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v11 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v10, v11];

  return v12;
}

+ (id)passwordManagerURLWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setScheme:@"https"];
  [v4 setHost:@"passwords.apple.com"];
  [v4 setPath:@"/app"];
  if ([v3 count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v3;
    v6 = v3;
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
          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v15 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v15 setQueryItems:v5];
    v16 = [v15 string];
    [v4 setPercentEncodedFragment:v16];

    v3 = v20;
  }

  v17 = [v4 URL];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)passwordManagerURLWithPrefsURL:(id)a3
{
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [a1 passwordManagerURLWithDictionary:0];
  v7 = [v4 componentsWithURL:v6 resolvingAgainstBaseURL:0];

  v8 = [v5 absoluteString];

  [v7 setPercentEncodedFragment:v8];
  v9 = [v7 URL];

  return v9;
}

+ (NSURL)passwordManagerURLForRecentlyDeleted
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"recentlyDeleted";
  v8[0] = @"true";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [a1 passwordManagerURLWithDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)urlForDetailViewOfSavedAccount:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 stableIDString];
  v5 = v4;
  if (v4)
  {
    v10 = @"showDetails";
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [a1 passwordManagerURLWithDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)passwordManagerURLForGroupWithID:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"sharingGroupID";
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [a1 passwordManagerURLWithDictionary:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (NSURL)passwordManagerURLForGeneratedPasswords
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"generatedPasswords";
  v8[0] = @"true";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [a1 passwordManagerURLWithDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)passwordManagerURLWithOtpauthURL:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"path";
  v9[1] = @"url";
  v10[0] = @"OTPAUTH_URL";
  v4 = [a3 absoluteString];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [a1 passwordManagerURLWithDictionary:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)_urlIsPasswordManagerURL:(id)a3 resourceSpecifierDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 scheme];
  v9 = [v8 lowercaseString];

  if (([v9 isEqualToString:@"http"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"https"))
  {
    v10 = [v6 host];
    v11 = [v10 isEqualToString:@"passwords.apple.com"];

    if (v11)
    {
      v12 = [v6 path];
      v13 = [v12 isEqualToString:@"/app"];

      if (v13)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v15 = [v6 scheme];
  v16 = [v15 isEqualToString:@"prefs"];

  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = [a1 _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:v7];
LABEL_8:

  return v14;
}

+ (BOOL)_resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:(id)a3
{
  v3 = [a3 safari_stringForKey:@"root"];
  v4 = ![v3 length] || (objc_msgSend(v3, "isEqualToString:", @"PASSWORDS") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"ACCOUNTS_AND_PASSWORDS");

  return v4;
}

+ (BOOL)urlIsPasswordManagerURL:(id)a3
{
  v4 = a3;
  v5 = [a1 _resourceSpecifierDictionaryForURL:v4];
  LOBYTE(a1) = [a1 _urlIsPasswordManagerURL:v4 resourceSpecifierDictionary:v5];

  return a1;
}

+ (id)_resourceSpecifierDictionaryForURL:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 lowercaseString];

  if (([v5 isEqualToString:@"http"] & 1) != 0 || (v6 = v3, objc_msgSend(v5, "isEqualToString:", @"https")))
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v8 = [v7 fragment];
    v9 = [v8 length];

    if (!v9)
    {

      v15 = MEMORY[0x1E695E0F8];
LABEL_30:
      v40 = v3;
      goto LABEL_31;
    }

    v10 = MEMORY[0x1E696AF20];
    v11 = [v7 percentEncodedFragment];
    v12 = [v10 componentsWithString:v11];

    v13 = [v12 queryItems];
    v14 = [v13 count];

    if (v14)
    {
      v44 = v5;
      v46 = v3;
      v15 = [MEMORY[0x1E695DF90] dictionary];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v16 = [v12 percentEncodedQueryItems];
      v17 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
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
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v52 + 1) + 8 * i);
            v22 = [v21 value];
            v23 = [v22 stringByRemovingPercentEncoding];
            v24 = [v21 name];
            [v15 setObject:v23 forKeyedSubscript:v24];
          }

          v18 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v18);
      }

      v5 = v44;
      v3 = v46;
      goto LABEL_29;
    }

    v25 = [v12 scheme];
    v26 = [v25 isEqualToString:@"prefs"];

    if (!v26)
    {
      v15 = MEMORY[0x1E695E0F8];
LABEL_29:

      goto LABEL_30;
    }

    v27 = [v12 URL];
    v28 = v27;
    v6 = v3;
    if (v27)
    {
      v6 = v27;
    }
  }

  v45 = v5;
  v47 = v3;
  v15 = [MEMORY[0x1E695DF90] dictionary];
  v43 = v6;
  v29 = [v6 resourceSpecifier];
  v30 = [v29 componentsSeparatedByString:@"&"];

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
          v39 = [v38 stringByRemovingPercentEncoding];

          [v15 setObject:v39 forKeyedSubscript:v37];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v33);
  }

  v5 = v45;
  v3 = v47;
  v40 = v43;
LABEL_31:

  v41 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)dictionaryWithPasswordManagerURL:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _resourceSpecifierDictionaryForURL:v4];
  LODWORD(a1) = [a1 _urlIsPasswordManagerURL:v4 resourceSpecifierDictionary:v5];

  if (a1)
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

+ (id)valueForPasswordManagerURL:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = [a1 dictionaryWithPasswordManagerURL:a3];
  v8 = [v7 safari_stringForKey:v6];

  return v8;
}

+ (id)valueForPasswordManagerResourceDictionary:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:v6])
  {
    v8 = [v6 safari_stringForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)BOOLForPasswordManagerResourceDictionary:(id)a3 key:(id)a4 defaultValue:(BOOL)a5
{
  v5 = a5;
  v6 = [a1 valueForPasswordManagerResourceDictionary:a3 key:a4];
  if (v6)
  {
    if ([@"true" isEqualToString:v6])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 &= ~[@"false" isEqualToString:v6];
    }
  }

  return v5;
}

+ (BOOL)isPasswordManagerPasswordOptionsResourceDictionary:(id)a3
{
  v4 = a3;
  if ([a1 _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:v4])
  {
    v5 = [v4 safari_stringForKey:@"path"];
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
  v4 = [a1 passwordManagerURLWithDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (BOOL)isPasswordManagerSecurityRecommendationsResourceDictionary:(id)a3
{
  v4 = a3;
  if ([a1 _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:v4])
  {
    v5 = [v4 safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"SECURITY_RECOMMENDATIONS"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isOtpauthResourceDictionary:(id)a3
{
  v4 = a3;
  if ([a1 _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:v4])
  {
    v5 = [v4 safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"OTPAUTH_URL"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isOtpauthMigrationResourceDictionary:(id)a3
{
  v4 = a3;
  if ([a1 _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:v4])
  {
    v5 = [v4 safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"OTPAUTH_MIGRATION_URL"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPasswordManagerVerificationCodesURL:(id)a3
{
  v3 = [a1 dictionaryWithPasswordManagerURL:a3];
  v4 = [v3 safari_stringForKey:@"path"];
  v5 = [v4 isEqualToString:@"VERIFICATION_CODES"];

  return v5;
}

+ (BOOL)isPasswordManagerVerificationCodesResourceDictionary:(id)a3
{
  v4 = a3;
  if ([a1 _resourceSpecifierDictionaryIsPasswordManagerResourceSpecifierDictionary:v4])
  {
    v5 = [v4 safari_stringForKey:@"path"];
    v6 = [v5 isEqualToString:@"VERIFICATION_CODES"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPasswordManagerPasskeysResourceDictionary:(id)a3
{
  v3 = [a3 safari_stringForKey:@"path"];
  v4 = [v3 isEqualToString:@"PASSKEYS"];

  return v4;
}

+ (BOOL)isPasswordManagerFamilySharingGroupSetupURL:(id)a3
{
  v3 = a1;
  v4 = [a1 dictionaryWithPasswordManagerURL:a3];
  LOBYTE(v3) = [v3 BOOLForPasswordManagerResourceDictionary:v4 key:@"familySharingGroupSetup" defaultValue:0];

  return v3;
}

@end