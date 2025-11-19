@interface WBSPasswordPickerHintStringGenerator
+ (void)getHintStringsForAppID:(id)a3 appNames:(id)a4 matchedSites:(id)a5 urlString:(id)a6 outServiceNameHintStrings:(id *)a7 outDomainHintStrings:(id *)a8;
@end

@implementation WBSPasswordPickerHintStringGenerator

+ (void)getHintStringsForAppID:(id)a3 appNames:(id)a4 matchedSites:(id)a5 urlString:(id)a6 outServiceNameHintStrings:(id *)a7 outDomainHintStrings:(id *)a8
{
  v51[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = MEMORY[0x1E695E0F0];
  v45 = a7;
  *a7 = MEMORY[0x1E695E0F0];
  *a8 = v17;
  v18 = MEMORY[0x1E695DFF8];
  v19 = [v16 safari_stringByTrimmingWhitespace];
  v20 = [v19 dataUsingEncoding:5];
  v21 = [v18 _lp_URLWithData:v20 baseURL:0];
  v22 = [v21 host];

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v24 = [MEMORY[0x1E695DFF8] _lp_URLWithUserTypedString:v16 relativeToURL:0];
    v23 = [v24 host];
  }

  v25 = [v23 safari_highLevelDomainFromHost];
  v26 = v25;
  if (v25)
  {
    v51[0] = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
LABEL_6:
    *a8 = v27;
    goto LABEL_8;
  }

  if (v23)
  {
    goto LABEL_8;
  }

  if ([v15 count])
  {
    v27 = [v15 safari_mapObjectsUsingBlock:&__block_literal_global_50];
    goto LABEL_6;
  }

  if (([v13 hasPrefix:@"com.apple."] & 1) == 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = v22;
    v42 = v16;
    v43 = v15;
    v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v44 = v14;
    v30 = v14;
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
            v36 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            v37 = [v36 invertedSet];
            v38 = [v35 safari_stringByRemovingCharactersInSet:v37];

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

    *v45 = [v29 allObjects];

    v14 = v44;
    v16 = v42;
    v15 = v43;
    v23 = v40;
    v22 = v41;
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