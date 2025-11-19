@interface ICQUsageiBooksController
+ (id)mediaGroups;
@end

@implementation ICQUsageiBooksController

+ (id)mediaGroups
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"audiobooks";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end