@interface CRDetectedRecognizedRegionPair
- (CRDetectedRecognizedRegionPair)initWithDetectedRegion:(id)region recognizedRegions:(id)regions;
@end

@implementation CRDetectedRecognizedRegionPair

- (CRDetectedRecognizedRegionPair)initWithDetectedRegion:(id)region recognizedRegions:(id)regions
{
  regionCopy = region;
  regionsCopy = regions;
  v11.receiver = self;
  v11.super_class = CRDetectedRecognizedRegionPair;
  v8 = [(CRDetectedRecognizedRegionPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRDetectedRecognizedRegionPair *)v8 setDetectedLineRegion:regionCopy];
    [(CRDetectedRecognizedRegionPair *)v9 setRecognizedTextRegions:regionsCopy];
  }

  return v9;
}

@end