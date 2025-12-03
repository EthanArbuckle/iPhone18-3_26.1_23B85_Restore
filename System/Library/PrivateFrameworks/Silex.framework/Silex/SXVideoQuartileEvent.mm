@interface SXVideoQuartileEvent
- (SXVideoQuartileEvent)initWithQuartile:(unint64_t)quartile;
@end

@implementation SXVideoQuartileEvent

- (SXVideoQuartileEvent)initWithQuartile:(unint64_t)quartile
{
  v5.receiver = self;
  v5.super_class = SXVideoQuartileEvent;
  result = [(SXAnalyticsEvent *)&v5 init];
  if (result)
  {
    result->_quartile = quartile;
  }

  return result;
}

@end