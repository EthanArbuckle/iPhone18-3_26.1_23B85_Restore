@interface PCPVisit(RTFeatureExtractorExtension)
- (id)initWithVisit:()RTFeatureExtractorExtension;
@end

@implementation PCPVisit(RTFeatureExtractorExtension)

- (id)initWithVisit:()RTFeatureExtractorExtension
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D3F8F0]);
  location = [v4 location];

  if (location)
  {
    v7 = objc_alloc(MEMORY[0x277D3F888]);
    location2 = [v4 location];
    v9 = [v7 initWithRTLocation:location2];
    [v5 setLocation:v9];
  }

  entry = [v4 entry];

  if (entry)
  {
    entry2 = [v4 entry];
    [entry2 timeIntervalSinceReferenceDate];
    [v5 setEntryTimeCFAbsolute:?];
  }

  exit = [v4 exit];

  if (exit)
  {
    exit2 = [v4 exit];
    [exit2 timeIntervalSinceReferenceDate];
    [v5 setExitTimeCFAbsolute:?];
  }

  placeInference = [v4 placeInference];
  loiIdentifier = [placeInference loiIdentifier];

  if (loiIdentifier)
  {
    v16 = objc_alloc(MEMORY[0x277CBEA90]);
    placeInference2 = [v4 placeInference];
    loiIdentifier2 = [placeInference2 loiIdentifier];
    v19 = [v16 initWithUUID:loiIdentifier2];
    [v5 setLoiIdentifier:v19];
  }

  identifier = [v4 identifier];

  if (identifier)
  {
    v21 = objc_alloc(MEMORY[0x277CBEA90]);
    identifier2 = [v4 identifier];
    v23 = [v21 initWithUUID:identifier2];
    [v5 setIdentifier:v23];
  }

  return v5;
}

@end