@interface CRDetectedRecognizedRegionPair
- (CRDetectedRecognizedRegionPair)initWithDetectedRegion:(id)a3 recognizedRegions:(id)a4;
@end

@implementation CRDetectedRecognizedRegionPair

- (CRDetectedRecognizedRegionPair)initWithDetectedRegion:(id)a3 recognizedRegions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRDetectedRecognizedRegionPair;
  v8 = [(CRDetectedRecognizedRegionPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRDetectedRecognizedRegionPair *)v8 setDetectedLineRegion:v6];
    [(CRDetectedRecognizedRegionPair *)v9 setRecognizedTextRegions:v7];
  }

  return v9;
}

@end