@interface PECopyActionEventBuilder
- (id)buildEvent;
@end

@implementation PECopyActionEventBuilder

- (id)buildEvent
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(PECopyActionEventBuilder *)self asset];

  if (v4)
  {
    v5 = [(PECopyActionEventBuilder *)self asset];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CF6E18]];
  }

  v6 = [(PECopyActionEventBuilder *)self asset];
  v7 = [PEAnalyticsUtility semanticStylesIdentifierForItem:v6];

  if (v7 && [v7 length])
  {
    v15 = @"semantic_style";
    v16[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 addEntriesFromDictionary:v8];
  }

  v9 = [(PECopyActionEventBuilder *)self copiedCompositionController];

  if (v9)
  {
    v10 = [(PECopyActionEventBuilder *)self copiedCompositionController];
    v11 = [PEAnalyticsUtility analyticPayloadForCompositionController:v10];

    [v3 addEntriesFromDictionary:v11];
  }

  v12 = [(PECopyActionEventBuilder *)self configurationAnalyticsPayload];

  if (v12)
  {
    v13 = [(PECopyActionEventBuilder *)self configurationAnalyticsPayload];
    [v3 addEntriesFromDictionary:v13];
  }

  return v3;
}

@end