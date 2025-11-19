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
    v9 = [v6 originMapItem];
    v10 = [v9 location];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277D3F888]);
      v12 = [v6 originMapItem];
      v13 = [v12 location];
      v14 = [v11 initWithRTLocation:v13];
      [v8 setOriginLocation:v14];
    }

    v15 = objc_alloc(MEMORY[0x277D3F888]);
    v16 = [v6 destinationMapItem];
    v17 = [v16 location];
    v18 = [v15 initWithRTLocation:v17];
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