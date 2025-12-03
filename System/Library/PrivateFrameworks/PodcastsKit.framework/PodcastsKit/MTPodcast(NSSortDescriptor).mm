@interface MTPodcast(NSSortDescriptor)
+ (id)sortDescriptorsForAllPodcasts;
+ (id)sortDescriptorsForDateAddedAscending:()NSSortDescriptor;
+ (id)sortDescriptorsForFirstTimeAvailableAscending:()NSSortDescriptor;
+ (id)sortDescriptorsForLastDatePlayed;
+ (id)sortDescriptorsForManualOrder;
+ (id)sortDescriptorsForRecentlyUpdatedAscending:()NSSortDescriptor;
+ (id)sortDescriptorsForSortType:()NSSortDescriptor;
+ (id)sortDescriptorsForTitle:()NSSortDescriptor;
@end

@implementation MTPodcast(NSSortDescriptor)

+ (id)sortDescriptorsForSortType:()NSSortDescriptor
{
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 0:
        sortDescriptorsForManualOrder = [MEMORY[0x277D3DB38] sortDescriptorsForManualOrder];
        goto LABEL_18;
      case 1:
        v3 = 0;
        goto LABEL_15;
      case 2:
        v3 = 1;
LABEL_15:
        sortDescriptorsForManualOrder = [MEMORY[0x277D3DB38] sortDescriptorsForDateAddedAscending:v3];
        goto LABEL_18;
    }

    goto LABEL_12;
  }

  switch(a3)
  {
    case 4:
      v6 = 0;
LABEL_13:
      sortDescriptorsForManualOrder = [MEMORY[0x277D3DB38] sortDescriptorsForTitle:v6];
      goto LABEL_18;
    case 5:
      v4 = 0;
      break;
    case 6:
      v4 = 1;
      break;
    default:
LABEL_12:
      v6 = 1;
      goto LABEL_13;
  }

  sortDescriptorsForManualOrder = [MEMORY[0x277D3DB38] sortDescriptorsForFirstTimeAvailableAscending:v4];
LABEL_18:

  return sortDescriptorsForManualOrder;
}

+ (id)sortDescriptorsForManualOrder
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DED0] ascending:0];
  v5[0] = v0;
  v1 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DED8] ascending:0];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)sortDescriptorsForAllPodcasts
{
  v0 = +[MTShowsPreferencesDataStore sharedInstance];
  sortDescriptors = [v0 sortDescriptors];

  return sortDescriptors;
}

+ (id)sortDescriptorsForLastDatePlayed
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DE88] ascending:0];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

+ (id)sortDescriptorsForRecentlyUpdatedAscending:()NSSortDescriptor
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DE60] ascending:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DEE0] ascending:0 selector:sel_localizedStandardCompare_];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)sortDescriptorsForFirstTimeAvailableAscending:()NSSortDescriptor
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DE98] ascending:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DEE0] ascending:0 selector:sel_localizedStandardCompare_];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)sortDescriptorsForDateAddedAscending:()NSSortDescriptor
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DE10] ascending:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DEE0] ascending:0 selector:sel_localizedStandardCompare_];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)sortDescriptorsForTitle:()NSSortDescriptor
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DEE0] ascending:a3 selector:sel_localizedStandardCompare_];
  v8[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DF00] ascending:0];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end