@interface PCPLocationWithTimestamp(RTFeatureExtractorExtension)
- (id)initWithRTLocation:()RTFeatureExtractorExtension;
@end

@implementation PCPLocationWithTimestamp(RTFeatureExtractorExtension)

- (id)initWithRTLocation:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F8A0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [objc_alloc(MEMORY[0x277D3F888]) initWithRTLocation:v5];
  [v6 setLocation:v7];

  v8 = [v5 date];

  [v8 timeIntervalSinceReferenceDate];
  [v6 setTimeCFAbsolute:?];

  return v6;
}

@end