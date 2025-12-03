@interface PCPLocationHistory(RTFeatureExtractorExtension)
- (id)initWithLocation:()RTFeatureExtractorExtension;
@end

@implementation PCPLocationHistory(RTFeatureExtractorExtension)

- (id)initWithLocation:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F890];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [objc_alloc(MEMORY[0x277D3F888]) initWithCLLocation:v5];
  [v6 setLocation:v7];

  timestamp = [v5 timestamp];

  [timestamp timeIntervalSinceReferenceDate];
  [v6 setTimeCFAbsolute:?];

  return v6;
}

@end