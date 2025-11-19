@interface VNRecognizedTextBlockObservation(Utilities)
- (id)vk_textBlock;
@end

@implementation VNRecognizedTextBlockObservation(Utilities)

- (id)vk_textBlock
{
  v1 = [a1 topCandidates:1];
  v2 = [v1 firstObject];

  return v2;
}

@end