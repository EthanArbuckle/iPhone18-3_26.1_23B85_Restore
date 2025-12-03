@interface VNRecognizedTextBlockObservation(Utilities)
- (id)vk_textBlock;
@end

@implementation VNRecognizedTextBlockObservation(Utilities)

- (id)vk_textBlock
{
  v1 = [self topCandidates:1];
  firstObject = [v1 firstObject];

  return firstObject;
}

@end