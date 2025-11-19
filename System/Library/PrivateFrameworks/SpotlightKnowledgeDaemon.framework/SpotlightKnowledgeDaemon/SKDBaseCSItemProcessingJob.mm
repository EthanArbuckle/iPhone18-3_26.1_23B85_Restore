@interface SKDBaseCSItemProcessingJob
- (SKDItemProcessor)itemProcessor;
- (id)attributeSetForItemUpdate:(id)a3;
- (id)itemRecordForUniqueID:(id)a3 bundleID:(id)a4 attributeProviderBlock:(id)a5;
- (id)processCSItemRecord:(id)a3;
@end

@implementation SKDBaseCSItemProcessingJob

- (id)itemRecordForUniqueID:(id)a3 bundleID:(id)a4 attributeProviderBlock:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v27 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [(SKDBaseItemProcessingJob *)self fetchAttributes];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if (([&unk_2846E8100 containsObject:{v15, v27}] & 1) == 0)
        {
          v16 = v8[2](v8, v15);
          if (v16)
          {
            [v9 setObject:v16 forKey:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277CC31A0];
  v18 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  if (v18)
  {
    v19 = v18;
    v20 = [v9 objectForKeyedSubscript:@"_kMDItemTextContentLength"];

    if (!v20)
    {
      v21 = [v9 objectForKeyedSubscript:v17];
      v22 = [v21 length];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
      [v9 setObject:v23 forKey:@"_kMDItemTextContentLength"];
    }
  }

  v24 = [[SKDCSItemRecord alloc] initWithUniqueID:v28 bundleID:v27 attributes:v9];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)processCSItemRecord:(id)a3
{
  v4 = a3;
  v5 = [(SKDBaseCSItemProcessingJob *)self itemProcessor];
  v6 = [(CSEmbeddingsUpdater *)v4 asyncIndexProcessors];
  if (v4)
  {
    v7 = v4[2];
    v8 = v4[3];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [v5 processItemWithRecord:v6 uniqueID:v7 bundleID:v8];

  v10 = [SKDCSItemUpdate alloc];
  v11 = [v9 status];
  v12 = [v9 identifier];
  v13 = [v9 info];
  v14 = [(SKDEvent *)v10 initWithStatus:v11 identifier:v12 info:v13];

  v15 = [(SKDBaseCSItemProcessingJob *)self attributeSetForItemUpdate:v9];
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CC34B0]);
    if (v4)
    {
      v17 = v4[2];
    }

    else
    {
      v17 = 0;
    }

    v18 = [v16 initWithUniqueIdentifier:v17 domainIdentifier:0 attributeSet:v15];
    v19 = v18;
    if (v4)
    {
      v20 = v4[3];
    }

    else
    {
      v20 = 0;
    }

    [v18 setBundleID:v20];
    [v19 setIsUpdate:1];
    [(SKDCSItemUpdate *)v14 setSearchableItem:v19];
    v21 = [v9 attributes];
    [(SKDItemUpdate *)v14 addAttributesFromDictionary:v21];
  }

  return v14;
}

- (id)attributeSetForItemUpdate:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [a3 attributes];
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CC34B8]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [(SKDBaseJob *)self pipelines];
    v21 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v21)
    {
      v20 = *v32;
      v26 = *MEMORY[0x277CC2FC8];
      v25 = *MEMORY[0x277CC30E0];
      v24 = *MEMORY[0x277CC2A90];
      v23 = *MEMORY[0x277CC2AD8];
      do
      {
        v7 = 0;
        do
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = v7;
          v8 = *(*(&v31 + 1) + 8 * v7);
          v9 = [v8 errorAttribute];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v10 = [v8 processedAttributes];
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v28;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v28 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v27 + 1) + 8 * i);
                v16 = [v4 objectForKeyedSubscript:v15];
                if (v16 && ([v6 containsObject:v15] & 1) == 0)
                {
                  if ([v15 isEqualToString:v9])
                  {
                    [v5 incrementAttributeValue:&unk_2846E79B0 forKey:v9];
                  }

                  else if ([v15 isEqualToString:v26])
                  {
                    [v5 setPrimaryTextEmbedding:v16];
                  }

                  else if ([v15 isEqualToString:v25])
                  {
                    [v5 setSecondaryTextEmbedding:v16];
                  }

                  else if ([v15 isEqualToString:v24])
                  {
                    [v5 setExtractedAddresses:v16];
                  }

                  else if ([v15 isEqualToString:v23])
                  {
                    [v5 setExtractedLinks:v16];
                  }

                  else
                  {
                    [v5 setAttribute:v16 forKey:v15];
                  }

                  [v6 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v12);
          }

          v7 = v22 + 1;
        }

        while (v22 + 1 != v21);
        v21 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (SKDItemProcessor)itemProcessor
{
  processor = self->_processor;
  if (!processor)
  {
    v4 = [SKDItemProcessor alloc];
    v5 = [(SKDBaseJob *)self pipelines];
    v6 = [(SKDItemProcessor *)v4 initWithPipelines:v5];

    [(SKDBaseCSItemProcessingJob *)self setItemProcessor:v6];
    processor = self->_processor;
  }

  return processor;
}

@end