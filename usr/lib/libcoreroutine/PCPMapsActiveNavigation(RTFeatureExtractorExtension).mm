@interface PCPMapsActiveNavigation(RTFeatureExtractorExtension)
- (id)initWithRouteSummary:()RTFeatureExtractorExtension loiIdentifier:;
@end

@implementation PCPMapsActiveNavigation(RTFeatureExtractorExtension)

- (id)initWithRouteSummary:()RTFeatureExtractorExtension loiIdentifier:
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277D3F8B0]);
    originMapItem = [v6 originMapItem];
    location = [originMapItem location];

    if (location)
    {
      v11 = objc_alloc(MEMORY[0x277D3F888]);
      originMapItem2 = [v6 originMapItem];
      location2 = [originMapItem2 location];
      v14 = [v11 initWithRTLocation:location2];
      [v8 setOriginLocation:v14];
    }

    v15 = objc_alloc(MEMORY[0x277D3F888]);
    destinationMapItem = [v6 destinationMapItem];
    location3 = [destinationMapItem location];
    v18 = [v15 initWithRTLocation:location3];
    [v8 setDestinationLocation:v18];

    [v6 travelTime];
    [v8 setTravelTime:?];
    if (v7)
    {
      v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithUUID:v7];
      [v8 setLoiIdentifier:v19];
    }

    else
    {
      [v8 setLoiIdentifier:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end