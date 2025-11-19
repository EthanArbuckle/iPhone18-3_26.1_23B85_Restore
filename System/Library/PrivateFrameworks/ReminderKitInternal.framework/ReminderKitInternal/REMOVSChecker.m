@interface REMOVSChecker
+ (BOOL)profanityInTokens:(id)a3 forLocaleIdentifier:(id)a4;
+ (unsigned)_lexiconTokenForToken:(id)a3 inLexicon:(_LXLexicon *)a4;
@end

@implementation REMOVSChecker

+ (BOOL)profanityInTokens:(id)a3 forLocaleIdentifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23168], v7);
  err = 0;
  v9 = LXLexiconCreate();
  CFRelease(Mutable);
  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if (!CFStringGetCStringPtr(v15, 4u) && ![(__CFString *)v15 lengthOfBytesUsingEncoding:4, v22])
          {
            goto LABEL_19;
          }

          if ([a1 _lexiconTokenForToken:v15 inLexicon:{v9, v22}])
          {
            v16 = LXLexiconCopyEntryForTokenID();
            MetaFlags = LXEntryGetMetaFlags();
            if ((MetaFlags & 0x1800000) != 0)
            {
              CFRelease(v16);
LABEL_19:
              v19 = 1;
              goto LABEL_20;
            }

            v18 = MetaFlags;
            CFRelease(v16);
            if ((v18 & 0x2000000) != 0)
            {
              goto LABEL_19;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
        v19 = 0;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_20:
  }

  else
  {
    v9 = CFErrorCopyDescription(err);
    v19 = 0;
    v20 = 0;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  CFRelease(v9);
  v20 = v19;
LABEL_22:

  return v20;
}

+ (unsigned)_lexiconTokenForToken:(id)a3 inLexicon:(_LXLexicon *)a4
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  LXLexiconEnumerateEntriesForString();
  v5 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return v5;
}

void __49__REMOVSChecker__lexiconTokenForToken_inLexicon___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringCompare(v5, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = LXEntryGetTokenID();
    *a3 = 1;
  }

  CFRelease(v5);
}

@end