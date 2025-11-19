@interface CSSPUHertzSample
- (CSSPUHertzSample)initWithTimestamp:(unint64_t)a3 dramDurationMs:(unsigned __int16)a4 vehicularFlags:(unsigned __int8)a5 hapticsOn:(BOOL)a6;
@end

@implementation CSSPUHertzSample

- (CSSPUHertzSample)initWithTimestamp:(unint64_t)a3 dramDurationMs:(unsigned __int16)a4 vehicularFlags:(unsigned __int8)a5 hapticsOn:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = CSSPUHertzSample;
  result = [(CSSPUHertzSample *)&v11 init];
  if (result)
  {
    result->_c_struct.timestamp = a3;
    result->_c_struct.dramDurationMs = a4;
    result->_c_struct.vehicularFlags = a5;
    result->_c_struct.hapticsOn = a6;
  }

  return result;
}

@end