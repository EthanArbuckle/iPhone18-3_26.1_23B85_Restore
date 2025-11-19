@interface PCPVisit(RTFeatureExtractorExtension)
- (id)initWithVisit:()RTFeatureExtractorExtension;
@end

@implementation PCPVisit(RTFeatureExtractorExtension)

- (id)initWithVisit:()RTFeatureExtractorExtension
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D3F8F0]);
  v6 = [v4 location];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D3F888]);
    v8 = [v4 location];
    v9 = [v7 initWithRTLocation:v8];
    [v5 setLocation:v9];
  }

  v10 = [v4 entry];

  if (v10)
  {
    v11 = [v4 entry];
    [v11 timeIntervalSinceReferenceDate];
    [v5 setEntryTimeCFAbsolute:?];
  }

  v12 = [v4 exit];

  if (v12)
  {
    v13 = [v4 exit];
    [v13 timeIntervalSinceReferenceDate];
    [v5 setExitTimeCFAbsolute:?];
  }

  v14 = [v4 placeInference];
  v15 = [v14 loiIdentifier];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CBEA90]);
    v17 = [v4 placeInference];
    v18 = [v17 loiIdentifier];
    v19 = [v16 initWithUUID:v18];
    [v5 setLoiIdentifier:v19];
  }

  v20 = [v4 identifier];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277CBEA90]);
    v22 = [v4 identifier];
    v23 = [v21 initWithUUID:v22];
    [v5 setIdentifier:v23];
  }

  return v5;
}

@end