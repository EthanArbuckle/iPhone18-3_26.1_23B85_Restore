@interface SKDBaseCSItemProcessingJob
- (SKDItemProcessor)itemProcessor;
- (id)attributeSetForItemUpdate:(id)update;
- (id)itemRecordForUniqueID:(id)d bundleID:(id)iD attributeProviderBlock:(id)block;
- (id)processCSItemRecord:(id)record;
@end

@implementation SKDBaseCSItemProcessingJob

- (id)itemRecordForUniqueID:(id)d bundleID:(id)iD attributeProviderBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  fetchAttributes = [(SKDBaseItemProcessingJob *)self fetchAttributes];
  v11 = [fetchAttributes countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(fetchAttributes);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if (([&unk_2846E8100 containsObject:{v15, iDCopy}] & 1) == 0)
        {
          v16 = blockCopy[2](blockCopy, v15);
          if (v16)
          {
            [v9 setObject:v16 forKey:v15];
          }
        }
      }

      v12 = [fetchAttributes countByEnumeratingWithState:&v29 objects:v33 count:16];
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

  v24 = [[SKDCSItemRecord alloc] initWithUniqueID:dCopy bundleID:iDCopy attributes:v9];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)processCSItemRecord:(id)record
{
  recordCopy = record;
  itemProcessor = [(SKDBaseCSItemProcessingJob *)self itemProcessor];
  asyncIndexProcessors = [(CSEmbeddingsUpdater *)recordCopy asyncIndexProcessors];
  if (recordCopy)
  {
    v7 = recordCopy[2];
    v8 = recordCopy[3];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [itemProcessor processItemWithRecord:asyncIndexProcessors uniqueID:v7 bundleID:v8];

  v10 = [SKDCSItemUpdate alloc];
  status = [v9 status];
  identifier = [v9 identifier];
  info = [v9 info];
  v14 = [(SKDEvent *)v10 initWithStatus:status identifier:identifier info:info];

  v15 = [(SKDBaseCSItemProcessingJob *)self attributeSetForItemUpdate:v9];
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CC34B0]);
    if (recordCopy)
    {
      v17 = recordCopy[2];
    }

    else
    {
      v17 = 0;
    }

    v18 = [v16 initWithUniqueIdentifier:v17 domainIdentifier:0 attributeSet:v15];
    v19 = v18;
    if (recordCopy)
    {
      v20 = recordCopy[3];
    }

    else
    {
      v20 = 0;
    }

    [v18 setBundleID:v20];
    [v19 setIsUpdate:1];
    [(SKDCSItemUpdate *)v14 setSearchableItem:v19];
    attributes = [v9 attributes];
    [(SKDItemUpdate *)v14 addAttributesFromDictionary:attributes];
  }

  return v14;
}

- (id)attributeSetForItemUpdate:(id)update
{
  v37 = *MEMORY[0x277D85DE8];
  attributes = [update attributes];
  if ([attributes count])
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
          errorAttribute = [v8 errorAttribute];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          processedAttributes = [v8 processedAttributes];
          v11 = [processedAttributes countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                  objc_enumerationMutation(processedAttributes);
                }

                v15 = *(*(&v27 + 1) + 8 * i);
                v16 = [attributes objectForKeyedSubscript:v15];
                if (v16 && ([v6 containsObject:v15] & 1) == 0)
                {
                  if ([v15 isEqualToString:errorAttribute])
                  {
                    [v5 incrementAttributeValue:&unk_2846E79B0 forKey:errorAttribute];
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

              v12 = [processedAttributes countByEnumeratingWithState:&v27 objects:v35 count:16];
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
    pipelines = [(SKDBaseJob *)self pipelines];
    v6 = [(SKDItemProcessor *)v4 initWithPipelines:pipelines];

    [(SKDBaseCSItemProcessingJob *)self setItemProcessor:v6];
    processor = self->_processor;
  }

  return processor;
}

@end