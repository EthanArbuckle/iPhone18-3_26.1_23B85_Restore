@interface AXPhoenixClassifierRNNModelInputData
- (void)updateInputShape:(id)shape;
@end

@implementation AXPhoenixClassifierRNNModelInputData

- (void)updateInputShape:(id)shape
{
  v10[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, shape);
  v7 = [location[0] objectAtIndexedSubscript:0];
  v10[0] = v7;
  v3 = MEMORY[0x277CCABB0];
  v6 = [location[0] objectAtIndexedSubscript:1];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue")}];
  v10[1] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(AXPhoenixClassifierRNNModelInputData *)selfCopy setInputShape:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end