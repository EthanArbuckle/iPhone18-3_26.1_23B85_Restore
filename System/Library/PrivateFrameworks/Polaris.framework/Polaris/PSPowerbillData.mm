@interface PSPowerbillData
- (NSArray)perGraphData;
@end

@implementation PSPowerbillData

- (NSArray)perGraphData
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"graphName" ascending:1 selector:sel_caseInsensitiveCompare_];
  dataByGraph = [(PSPowerbillData *)self dataByGraph];
  allValues = [dataByGraph allValues];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [allValues sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end