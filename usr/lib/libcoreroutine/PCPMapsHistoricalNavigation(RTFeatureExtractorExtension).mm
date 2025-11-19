@interface PCPMapsHistoricalNavigation(RTFeatureExtractorExtension)
- (id)initWithEntryRoute:()RTFeatureExtractorExtension;
@end

@implementation PCPMapsHistoricalNavigation(RTFeatureExtractorExtension)

- (id)initWithEntryRoute:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F8B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 usageDate];
  [v7 timeIntervalSinceReferenceDate];
  [v6 setUsageTimeCFAbsolute:?];

  v8 = objc_alloc(MEMORY[0x277D3F888]);
  v9 = [v5 originMapItem];
  v10 = [v9 location];
  v11 = [v8 initWithRTLocation:v10];
  [v6 setOriginLocation:v11];

  v12 = objc_alloc(MEMORY[0x277D3F888]);
  v13 = [v5 destinationMapItem];

  v14 = [v13 location];
  v15 = [v12 initWithRTLocation:v14];
  [v6 setDestinationLocation:v15];

  return v6;
}

@end