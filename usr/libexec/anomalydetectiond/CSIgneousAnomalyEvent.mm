@interface CSIgneousAnomalyEvent
- (CSIgneousAnomalyEvent)init;
@end

@implementation CSIgneousAnomalyEvent

- (CSIgneousAnomalyEvent)init
{
  v4.receiver = self;
  v4.super_class = CSIgneousAnomalyEvent;
  result = [(CSIgneousAnomalyEvent *)&v4 init];
  if (result)
  {
    v3 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&result->_timestamp = v3;
    *&result->_lon = v3;
  }

  return result;
}

@end