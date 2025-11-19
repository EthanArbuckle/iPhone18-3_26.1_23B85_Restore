@interface AXPhoenixClassifierRNNModelWindow
- (void)resetHistory;
- (void)updateHistoryShape:(id)a3;
@end

@implementation AXPhoenixClassifierRNNModelWindow

- (void)resetHistory
{
  v2 = [(AXPhoenixClassifierRNNModelWindow *)self emptyHistoryArray];
  [(AXPhoenixClassifierRNNModelWindow *)self setHistoryArray:?];
  MEMORY[0x277D82BD8](v2);
}

- (void)updateHistoryShape:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AXPhoenixClassifierRNNModelWindow *)v13 setHistoryShape:location[0]];
  v3 = objc_alloc(MEMORY[0x277CBFF48]);
  v10 = [v3 initWithShape:location[0] dataType:65568 error:0];
  [(AXPhoenixClassifierRNNModelWindow *)v13 setEmptyHistoryArray:?];
  MEMORY[0x277D82BD8](v10);
  for (i = 0; ; ++i)
  {
    v8 = [(AXPhoenixClassifierRNNModelWindow *)v13 historyShape];
    v7 = [(NSArray *)v8 lastObject];
    v9 = [v7 unsignedIntegerValue];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    if (i >= v9)
    {
      break;
    }

    v6 = [(AXPhoenixClassifierRNNModelWindow *)v13 emptyHistoryArray];
    v14[0] = &unk_287037B28;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v14[1] = v5;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    [(MLMultiArray *)v6 setObject:&unk_287037B18 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  [(AXPhoenixClassifierRNNModelWindow *)v13 resetHistory];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end