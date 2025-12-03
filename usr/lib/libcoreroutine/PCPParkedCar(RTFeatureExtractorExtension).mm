@interface PCPParkedCar(RTFeatureExtractorExtension)
- (id)initWithVehicleEvent:()RTFeatureExtractorExtension;
@end

@implementation PCPParkedCar(RTFeatureExtractorExtension)

- (id)initWithVehicleEvent:()RTFeatureExtractorExtension
{
  if (a3)
  {
    v4 = MEMORY[0x277D3F8D0];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    date = [v5 date];
    [date timeIntervalSinceReferenceDate];
    [v6 setParkTimeCFAbsolute:?];

    v8 = objc_alloc(MEMORY[0x277D3F888]);
    location = [v5 location];
    v10 = [v8 initWithRTLocation:location];
    [v6 setLocation:v10];

    v11 = objc_alloc(MEMORY[0x277CBEA90]);
    identifier = [v5 identifier];

    v13 = [v11 initWithUUID:identifier];
    [v6 setIdentifier:v13];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end