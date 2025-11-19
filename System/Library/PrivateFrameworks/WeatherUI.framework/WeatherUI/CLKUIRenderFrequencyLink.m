@interface CLKUIRenderFrequencyLink
- (CLKUIRenderFrequencyLink)init;
@end

@implementation CLKUIRenderFrequencyLink

- (CLKUIRenderFrequencyLink)init
{
  v3.receiver = self;
  v3.super_class = CLKUIRenderFrequencyLink;
  result = [(CLKUIRenderFrequencyLink *)&v3 init];
  if (result)
  {
    result->_paused = 1;
    result->_preferredFramesPerSecond = 0;
  }

  return result;
}

@end