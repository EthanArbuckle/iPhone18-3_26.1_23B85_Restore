@interface PCPLocationOfInterest(RTFeatureExtractorExtension)
- (id)initWithLocationOfInterest:()RTFeatureExtractorExtension;
@end

@implementation PCPLocationOfInterest(RTFeatureExtractorExtension)

- (id)initWithLocationOfInterest:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F898];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v8 = [v5 identifier];
  v9 = [v7 initWithUUID:v8];
  [v6 setLoiIdentifier:v9];

  v10 = objc_alloc(MEMORY[0x277D3F888]);
  v11 = [v5 location];
  v12 = [v11 location];
  v13 = [v10 initWithRTLocation:v12];
  [v6 setLocation:v13];

  v14 = [v5 place];
  [v6 setPlaceType:{objc_msgSend(v14, "type")}];

  v15 = [v5 visits];
  v16 = [v15 lastObject];
  v17 = [v16 exitDate];
  [v17 timeIntervalSinceReferenceDate];
  [v6 setLastVisitTimeCFAbsolute:?];

  v18 = [v5 visits];
  [v6 setVisitFrequency:{objc_msgSend(v18, "count")}];

  v19 = objc_alloc(MEMORY[0x277D3F8A8]);
  v20 = [v5 place];

  v21 = [v20 mapItem];
  v22 = [v19 initWithRTMapItem:v21];
  [v6 setPlaceMapItem:v22];

  return v6;
}

@end