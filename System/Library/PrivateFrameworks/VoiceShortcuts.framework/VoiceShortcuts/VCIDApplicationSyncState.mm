@interface VCIDApplicationSyncState
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation VCIDApplicationSyncState

+ (id)JSONKeyPathsByPropertyKey
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"checksum";
  v5[1] = @"registeredDate";
  v6[0] = @"checksum";
  v6[1] = @"registeredDate";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end