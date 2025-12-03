@interface SKPartition
- (id)buildWithScheme:(int)scheme sectorSize:(unint64_t)size;
@end

@implementation SKPartition

- (id)buildWithScheme:(int)scheme sectorSize:(unint64_t)size
{
  v10 = 0;
  v5 = [(SKPartition *)self fs];
  [v5 contentMask];

  name = [(SKPartition *)self name];
  [(SKPartition *)self size];
  v7 = MKCFBuildPartition();

  v8 = v7;

  return v8;
}

id __42__SKPartition_buildWithScheme_sectorSize___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKPartitionTable.m", 67);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

@end