@interface PCPMapsViewedPlace(RTFeatureExtractorExtension)
- (id)initWithViewedPlaceDisplay:()RTFeatureExtractorExtension;
@end

@implementation PCPMapsViewedPlace(RTFeatureExtractorExtension)

- (id)initWithViewedPlaceDisplay:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F8C0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc(MEMORY[0x277D3F888]);
  location = [v5 location];
  v9 = [v7 initWithRTLocation:location];
  [v6 setDestinationLocation:v9];

  usageDate = [v5 usageDate];

  [usageDate timeIntervalSinceReferenceDate];
  [v6 setUsageTimeCFAbsolute:?];

  return v6;
}

@end