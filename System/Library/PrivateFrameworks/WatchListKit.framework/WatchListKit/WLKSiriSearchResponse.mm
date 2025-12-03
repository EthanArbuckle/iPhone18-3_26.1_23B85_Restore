@interface WLKSiriSearchResponse
- (WLKSiriSearchResponse)init;
- (WLKSiriSearchResponse)initWithDictionary:(id)dictionary;
@end

@implementation WLKSiriSearchResponse

- (WLKSiriSearchResponse)initWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = WLKSiriSearchResponse;
  v6 = [(WLKSiriSearchResponse *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }

    v10 = [v9 wlk_dictionaryForKey:@"pagedList"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }

    v11 = [v10 wlk_arrayForKey:@"items"];
    if ([v11 count] == 1)
    {
      firstObject = [v11 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [firstObject wlk_dictionaryForKey:@"content"];
        v14 = [WLKBasicContentMetadata alloc];
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = firstObject;
        }

        v22 = [(WLKBasicContentMetadata *)v14 initWithDictionary:v15];
        if (v22)
        {
          [v8 addObject:v22];
        }
      }
    }

    else
    {
      if ([v11 count] < 2)
      {
LABEL_26:
        v23 = [v8 copy];
        items = v7->_items;
        v7->_items = v23;

        goto LABEL_27;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      firstObject = v11;
      v16 = [firstObject countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v27 = v11;
        v28 = v9;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(firstObject);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[WLKBasicContentMetadata alloc] initWithDictionary:v20];
              if (v21)
              {
                [v8 addObject:v21];
              }
            }
          }

          v17 = [firstObject countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v17);
        v9 = v28;
        v11 = v27;
      }
    }

    goto LABEL_26;
  }

LABEL_29:

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

- (WLKSiriSearchResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKSiriSearchResponse" format:@"-init is not supported"];

  return 0;
}

@end