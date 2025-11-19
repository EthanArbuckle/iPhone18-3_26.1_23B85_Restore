@interface SKDJournalItemProcessor
- (void)completeItemUpdate:(id)a3 pipeline:(id)a4;
@end

@implementation SKDJournalItemProcessor

- (void)completeItemUpdate:(id)a3 pipeline:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 needsProcessingAttribute];
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v11[0] = *MEMORY[0x277CBEEE8];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 addAttributesFromDictionary:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end