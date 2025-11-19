@interface NSData(RTFeatureExtractorExtension)
- (uint64_t)initWithUUID:()RTFeatureExtractorExtension;
@end

@implementation NSData(RTFeatureExtractorExtension)

- (uint64_t)initWithUUID:()RTFeatureExtractorExtension
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  [a3 getUUIDBytes:v6];
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:16];

  return v4;
}

@end