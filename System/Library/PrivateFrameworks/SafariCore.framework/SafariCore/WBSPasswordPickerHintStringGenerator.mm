@interface WBSPasswordPickerHintStringGenerator
+ (void)getHintStringsForAppID:(id)d appNames:(id)names matchedSites:(id)sites urlString:(id)string outServiceNameHintStrings:(id *)strings outDomainHintStrings:(id *)hintStrings;
@end

@implementation WBSPasswordPickerHintStringGenerator

+ (void)getHintStringsForAppID:(id)d appNames:(id)names matchedSites:(id)sites urlString:(id)string outServiceNameHintStrings:(id *)strings outDomainHintStrings:(id *)hintStrings
{
  v51[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  namesCopy = names;
  sitesCopy = sites;
  stringCopy = string;
  v17 = MEMORY[0x1E695E0F0];
  stringsCopy = strings;
  *strings = MEMORY[0x1E695E0F0];
  *hintStrings = v17;
  v18 = MEMORY[0x1E695DFF8];
  safari_stringByTrimmingWhitespace = [stringCopy safari_stringByTrimmingWhitespace];
  v20 = [safari_stringByTrimmingWhitespace dataUsingEncoding:5];
  v21 = [v18 _lp_URLWithData:v20 baseURL:0];
  host = [v21 host];

  if (host)
  {
    host2 = host;
  }

  else
  {
    v24 = [MEMORY[0x1E695DFF8] _lp_URLWithUserTypedString:stringCopy relativeToURL:0];
    host2 = [v24 host];
  }

  safari_highLevelDomainFromHost = [host2 safari_highLevelDomainFromHost];
  v26 = safari_highLevelDomainFromHost;
  if (safari_highLevelDomainFromHost)
  {
    v51[0] = safari_highLevelDomainFromHost;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
LABEL_6:
    *hintStrings = v27;
    goto LABEL_8;
  }

  if (host2)
  {
    goto LABEL_8;
  }

  if ([sitesCopy count])
  {
    v27 = [sitesCopy safari_mapObjectsUsingBlock:&__block_literal_global_50];
    goto LABEL_6;
  }

  if (([dCopy hasPrefix:@"com.apple."] & 1) == 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = host;
    v42 = stringCopy;
    v43 = sitesCopy;
    v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v44 = namesCopy;
    v30 = namesCopy;
    v31 = [v30 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v47;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v46 + 1) + 8 * i);
          if ([v35 length])
          {
            [v29 addObject:v35];
            alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            invertedSet = [alphanumericCharacterSet invertedSet];
            v38 = [v35 safari_stringByRemovingCharactersInSet:invertedSet];

            if (([v35 isEqualToString:v38] & 1) == 0)
            {
              [v29 addObject:v38];
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v32);
    }

    *stringsCopy = [v29 allObjects];

    namesCopy = v44;
    stringCopy = v42;
    sitesCopy = v43;
    host2 = v40;
    host = v41;
    v26 = v39;
  }

LABEL_8:

  v28 = *MEMORY[0x1E69E9840];
}

void *__142__WBSPasswordPickerHintStringGenerator_getHintStringsForAppID_appNames_matchedSites_urlString_outServiceNameHintStrings_outDomainHintStrings___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 safari_highLevelDomainFromHost];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

@end