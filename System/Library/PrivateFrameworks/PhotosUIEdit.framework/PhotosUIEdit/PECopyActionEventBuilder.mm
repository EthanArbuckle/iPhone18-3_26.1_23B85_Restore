@interface PECopyActionEventBuilder
- (id)buildEvent;
@end

@implementation PECopyActionEventBuilder

- (id)buildEvent
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  asset = [(PECopyActionEventBuilder *)self asset];

  if (asset)
  {
    asset2 = [(PECopyActionEventBuilder *)self asset];
    [v3 setObject:asset2 forKeyedSubscript:*MEMORY[0x277CF6E18]];
  }

  asset3 = [(PECopyActionEventBuilder *)self asset];
  v7 = [PEAnalyticsUtility semanticStylesIdentifierForItem:asset3];

  if (v7 && [v7 length])
  {
    v15 = @"semantic_style";
    v16[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 addEntriesFromDictionary:v8];
  }

  copiedCompositionController = [(PECopyActionEventBuilder *)self copiedCompositionController];

  if (copiedCompositionController)
  {
    copiedCompositionController2 = [(PECopyActionEventBuilder *)self copiedCompositionController];
    v11 = [PEAnalyticsUtility analyticPayloadForCompositionController:copiedCompositionController2];

    [v3 addEntriesFromDictionary:v11];
  }

  configurationAnalyticsPayload = [(PECopyActionEventBuilder *)self configurationAnalyticsPayload];

  if (configurationAnalyticsPayload)
  {
    configurationAnalyticsPayload2 = [(PECopyActionEventBuilder *)self configurationAnalyticsPayload];
    [v3 addEntriesFromDictionary:configurationAnalyticsPayload2];
  }

  return v3;
}

@end