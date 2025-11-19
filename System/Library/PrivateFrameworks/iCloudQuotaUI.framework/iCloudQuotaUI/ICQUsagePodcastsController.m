@interface ICQUsagePodcastsController
+ (id)mediaGroups;
@end

@implementation ICQUsagePodcastsController

+ (id)mediaGroups
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"audiopodcasts";
  v4[1] = @"videopodcasts";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end