@interface AXPhoenixClassifierRNNModelWindow
- (void)resetHistory;
- (void)updateHistoryShape:(id)shape;
@end

@implementation AXPhoenixClassifierRNNModelWindow

- (void)resetHistory
{
  emptyHistoryArray = [(AXPhoenixClassifierRNNModelWindow *)self emptyHistoryArray];
  [(AXPhoenixClassifierRNNModelWindow *)self setHistoryArray:?];
  MEMORY[0x277D82BD8](emptyHistoryArray);
}

- (void)updateHistoryShape:(id)shape
{
  v14[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, shape);
  [(AXPhoenixClassifierRNNModelWindow *)selfCopy setHistoryShape:location[0]];
  v3 = objc_alloc(MEMORY[0x277CBFF48]);
  v10 = [v3 initWithShape:location[0] dataType:65568 error:0];
  [(AXPhoenixClassifierRNNModelWindow *)selfCopy setEmptyHistoryArray:?];
  MEMORY[0x277D82BD8](v10);
  for (i = 0; ; ++i)
  {
    historyShape = [(AXPhoenixClassifierRNNModelWindow *)selfCopy historyShape];
    lastObject = [(NSArray *)historyShape lastObject];
    unsignedIntegerValue = [lastObject unsignedIntegerValue];
    MEMORY[0x277D82BD8](lastObject);
    MEMORY[0x277D82BD8](historyShape);
    if (i >= unsignedIntegerValue)
    {
      break;
    }

    emptyHistoryArray = [(AXPhoenixClassifierRNNModelWindow *)selfCopy emptyHistoryArray];
    v14[0] = &unk_287037B28;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v14[1] = v5;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    [(MLMultiArray *)emptyHistoryArray setObject:&unk_287037B18 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](emptyHistoryArray);
  }

  [(AXPhoenixClassifierRNNModelWindow *)selfCopy resetHistory];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end