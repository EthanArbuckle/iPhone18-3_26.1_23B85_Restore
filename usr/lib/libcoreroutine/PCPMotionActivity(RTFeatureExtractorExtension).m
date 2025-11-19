@interface PCPMotionActivity(RTFeatureExtractorExtension)
- (id)initWithMotionActivity:()RTFeatureExtractorExtension;
@end

@implementation PCPMotionActivity(RTFeatureExtractorExtension)

- (id)initWithMotionActivity:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F8C8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setMotionActivityType:{objc_msgSend(v5, "type")}];
  [v6 setMotionActivityConfidence:{objc_msgSend(v5, "confidence")}];
  v7 = [v5 startDate];

  [v7 timeIntervalSinceReferenceDate];
  [v6 setStartTimeCFAbsolute:?];

  return v6;
}

@end