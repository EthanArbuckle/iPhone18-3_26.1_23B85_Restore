@interface PCPMapsHistoricalNavigation(RTFeatureExtractorExtension)
- (id)initWithEntryRoute:()RTFeatureExtractorExtension;
@end

@implementation PCPMapsHistoricalNavigation(RTFeatureExtractorExtension)

- (id)initWithEntryRoute:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F8B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  usageDate = [v5 usageDate];
  [usageDate timeIntervalSinceReferenceDate];
  [v6 setUsageTimeCFAbsolute:?];

  v8 = objc_alloc(MEMORY[0x277D3F888]);
  originMapItem = [v5 originMapItem];
  location = [originMapItem location];
  v11 = [v8 initWithRTLocation:location];
  [v6 setOriginLocation:v11];

  v12 = objc_alloc(MEMORY[0x277D3F888]);
  destinationMapItem = [v5 destinationMapItem];

  location2 = [destinationMapItem location];
  v15 = [v12 initWithRTLocation:location2];
  [v6 setDestinationLocation:v15];

  return v6;
}

@end