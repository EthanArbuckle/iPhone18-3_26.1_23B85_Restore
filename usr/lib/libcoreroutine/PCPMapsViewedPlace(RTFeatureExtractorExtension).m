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
  v8 = [v5 location];
  v9 = [v7 initWithRTLocation:v8];
  [v6 setDestinationLocation:v9];

  v10 = [v5 usageDate];

  [v10 timeIntervalSinceReferenceDate];
  [v6 setUsageTimeCFAbsolute:?];

  return v6;
}

@end