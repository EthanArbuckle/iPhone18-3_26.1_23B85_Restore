@interface OVSResolverObjC
+ (BOOL)containsOVSInTokens:(id)tokens forLocaleIdentifier:(id)identifier;
+ (unsigned)_lexiconTokenForToken:(id)token lexicon:(_LXLexicon *)lexicon;
@end

@implementation OVSResolverObjC

+ (unsigned)_lexiconTokenForToken:(id)token lexicon:(_LXLexicon *)lexicon
{
  tokenCopy = token;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  LXLexiconEnumerateEntriesForString();
  v5 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return v5;
}

+ (BOOL)containsOVSInTokens:(id)tokens forLocaleIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  identifierCopy = identifier;
  if ([tokensCopy count])
  {
    v8 = [(__CFString *)identifierCopy length];
    v9 = @"en_US";
    if (v8)
    {
      v9 = identifierCopy;
    }

    v10 = v9;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277D23168], v10);
    err = 0;
    v12 = LXLexiconCreate();
    CFRelease(Mutable);
    if (v12)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = tokensCopy;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v26 = v10;
        v27 = identifierCopy;
        v16 = *v29;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            v19 = [(__CFString *)v18 localizedLowercaseString:v26];
            if ([v19 lengthOfBytesUsingEncoding:4] || CFStringGetCStringPtr(v18, 4u))
            {
              if ([self _lexiconTokenForToken:v19 lexicon:v12])
              {
                v20 = LXLexiconCopyEntryForTokenID();
                v21 = LXEntryGetMetaFlags() & 0x3800000;
                CFRelease(v20);
                if (v21)
                {

                  v22 = 1;
                  goto LABEL_23;
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v22 = 0;
LABEL_23:
        v10 = v26;
        identifierCopy = v27;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v23 = CFErrorCopyDescription(err);
      if (!v23)
      {
        v22 = 0;
        goto LABEL_27;
      }

      v12 = v23;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v12;
        _os_log_error_impl(&dword_26EF75000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "OVSResolverObjC: Error finding an appropriate lexicon: %@", buf, 0xCu);
      }

      v22 = 0;
    }

    CFRelease(v12);
LABEL_27:

    goto LABEL_28;
  }

  v22 = 0;
LABEL_28:

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

@end