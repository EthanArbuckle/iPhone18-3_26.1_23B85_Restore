@interface SKDJournalItemProcessor
- (void)completeItemUpdate:(id)update pipeline:(id)pipeline;
@end

@implementation SKDJournalItemProcessor

- (void)completeItemUpdate:(id)update pipeline:(id)pipeline
{
  v11[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  needsProcessingAttribute = [pipeline needsProcessingAttribute];
  v7 = needsProcessingAttribute;
  if (needsProcessingAttribute)
  {
    v10 = needsProcessingAttribute;
    v11[0] = *MEMORY[0x277CBEEE8];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [updateCopy addAttributesFromDictionary:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end