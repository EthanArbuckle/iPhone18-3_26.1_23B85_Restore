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
  identifier = [v5 identifier];
  v9 = [v7 initWithUUID:identifier];
  [v6 setLoiIdentifier:v9];

  v10 = objc_alloc(MEMORY[0x277D3F888]);
  location = [v5 location];
  v11Location = [location location];
  v13 = [v10 initWithRTLocation:v11Location];
  [v6 setLocation:v13];

  place = [v5 place];
  [v6 setPlaceType:{objc_msgSend(place, "type")}];

  visits = [v5 visits];
  lastObject = [visits lastObject];
  exitDate = [lastObject exitDate];
  [exitDate timeIntervalSinceReferenceDate];
  [v6 setLastVisitTimeCFAbsolute:?];

  visits2 = [v5 visits];
  [v6 setVisitFrequency:{objc_msgSend(visits2, "count")}];

  v19 = objc_alloc(MEMORY[0x277D3F8A8]);
  place2 = [v5 place];

  mapItem = [place2 mapItem];
  v22 = [v19 initWithRTMapItem:mapItem];
  [v6 setPlaceMapItem:v22];

  return v6;
}

@end