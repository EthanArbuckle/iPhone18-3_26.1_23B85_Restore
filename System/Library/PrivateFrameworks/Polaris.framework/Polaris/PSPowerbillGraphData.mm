@interface PSPowerbillGraphData
- (NSArray)perTaskData;
- (NSArray)threadIDs;
- (void)addToInterTaskCounts:(const thsc_time_cpi *)counts;
@end

@implementation PSPowerbillGraphData

- (NSArray)threadIDs
{
  threadIDSet = [(PSPowerbillGraphData *)self threadIDSet];
  allObjects = [threadIDSet allObjects];

  return allObjects;
}

- (NSArray)perTaskData
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"taskName" ascending:1 selector:sel_caseInsensitiveCompare_];
  dataByTask = [(PSPowerbillGraphData *)self dataByTask];
  allValues = [dataByTask allValues];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [allValues sortedArrayUsingDescriptors:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)addToInterTaskCounts:(const thsc_time_cpi *)counts
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &counts[v3];
    v7 = &self->_interTaskCounts[v3];
    v8 = *&v7->ttci_instructions;
    *&v7->ttci_user_time_mach = vaddq_s64(*&v7->ttci_user_time_mach, v6[1]);
    *&v7->ttci_instructions = vaddq_s64(v8, *v6);
    v3 = 1;
    v4 = 0;
  }

  while ((v5 & 1) != 0);
}

@end