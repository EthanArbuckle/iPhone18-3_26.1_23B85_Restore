@interface _NSCustomTextRenderingDisplayLinkInfo
- (_NSCustomTextRenderingDisplayLinkInfo)initWithTimestamp:(double)timestamp duration:(double)duration targetTimestamp:(double)targetTimestamp;
@end

@implementation _NSCustomTextRenderingDisplayLinkInfo

- (_NSCustomTextRenderingDisplayLinkInfo)initWithTimestamp:(double)timestamp duration:(double)duration targetTimestamp:(double)targetTimestamp
{
  v9.receiver = self;
  v9.super_class = _NSCustomTextRenderingDisplayLinkInfo;
  result = [(_NSCustomTextRenderingDisplayLinkInfo *)&v9 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_duration = duration;
    result->_targetTimestamp = targetTimestamp;
  }

  return result;
}

@end