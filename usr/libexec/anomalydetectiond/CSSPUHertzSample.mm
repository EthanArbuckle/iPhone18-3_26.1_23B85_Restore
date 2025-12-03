@interface CSSPUHertzSample
- (CSSPUHertzSample)initWithTimestamp:(unint64_t)timestamp dramDurationMs:(unsigned __int16)ms vehicularFlags:(unsigned __int8)flags hapticsOn:(BOOL)on;
@end

@implementation CSSPUHertzSample

- (CSSPUHertzSample)initWithTimestamp:(unint64_t)timestamp dramDurationMs:(unsigned __int16)ms vehicularFlags:(unsigned __int8)flags hapticsOn:(BOOL)on
{
  v11.receiver = self;
  v11.super_class = CSSPUHertzSample;
  result = [(CSSPUHertzSample *)&v11 init];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    result->_c_struct.dramDurationMs = ms;
    result->_c_struct.vehicularFlags = flags;
    result->_c_struct.hapticsOn = on;
  }

  return result;
}

@end