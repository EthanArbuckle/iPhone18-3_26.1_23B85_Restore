@interface RTPredictedLocationOfInterest(RTHistoryEntry)
- (uint64_t)initWithHistoryEntryPlaceDisplay:()RTHistoryEntry;
- (uint64_t)initWithHistoryEntryRoute:()RTHistoryEntry;
@end

@implementation RTPredictedLocationOfInterest(RTHistoryEntry)

- (uint64_t)initWithHistoryEntryRoute:()RTHistoryEntry
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D01170]) initWithHistoryEntryRoute:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D012E8]);
    usageDate = [v4 usageDate];
    v8 = [v6 initWithUsageDate:usageDate navigationWasInterrupted:{objc_msgSend(v4, "navigationWasInterrupted")}];

    v9 = objc_alloc(MEMORY[0x277D01270]);
    if ([v4 navigationWasInterrupted])
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v14[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v12 = [v9 initWithLocationOfInterest:v5 confidence:0 nextEntryTime:0 modeOfTransportation:v11 sources:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)initWithHistoryEntryPlaceDisplay:()RTHistoryEntry
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D01170]) initWithHistoryEntryPlaceDisplay:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D012E0]);
    usageDate = [v4 usageDate];
    v8 = [v6 initWithUsageDate:usageDate];

    v9 = objc_alloc(MEMORY[0x277D01270]);
    v13[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v11 = [v9 initWithLocationOfInterest:v5 confidence:0 nextEntryTime:0 modeOfTransportation:v10 sources:0.0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end