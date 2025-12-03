@interface CHChannelUint16
- (BOOL)getFirstKeyframeTime:(id *)time curveUint16Value:(unsigned __int16 *)value;
- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveUint16Value:(unsigned __int16 *)value;
- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveUint16Value:(unsigned __int16 *)value;
- (BOOL)getLastKeyframeTime:(id *)time curveUint16Value:(unsigned __int16 *)value;
- (OZChannelUint16)ozChannel;
- (void)getExtremaBetweenStart:(id *)start end:(id *)end minUint16Value:(unsigned __int16 *)value maxUint16Value:(unsigned __int16 *)uint16Value;
@end

@implementation CHChannelUint16

- (OZChannelUint16)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)getExtremaBetweenStart:(id *)start end:(id *)end minUint16Value:(unsigned __int16 *)value maxUint16Value:(unsigned __int16 *)uint16Value
{
  v10 = 0;
  v9 = *start;
  v8 = *end;
  [(CHChannelIntegral *)self _getExtremaBetweenStart:&v9 end:&v8 minIntValue:&v10 + 4 maxIntValue:&v10];
  if (value)
  {
    *value = WORD2(v10);
  }

  if (uint16Value)
  {
    *uint16Value = v10;
  }
}

- (BOOL)getFirstKeyframeTime:(id *)time curveUint16Value:(unsigned __int16 *)value
{
  v6 = 0;
  result = [(CHChannelIntegral *)self getFirstKeyframeTime:time curveIntValue:&v6];
  if (value)
  {
    *value = v6;
  }

  return result;
}

- (BOOL)getLastKeyframeTime:(id *)time curveUint16Value:(unsigned __int16 *)value
{
  v6 = 0;
  result = [(CHChannelIntegral *)self getLastKeyframeTime:time curveIntValue:&v6];
  if (value)
  {
    *value = v6;
  }

  return result;
}

- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveUint16Value:(unsigned __int16 *)value
{
  v8 = 0;
  v7 = *time;
  result = [(CHChannelIntegral *)self getKeyframeAfterTime:&v7 time:a4 curveIntValue:&v8];
  if (value)
  {
    *value = v8;
  }

  return result;
}

- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveUint16Value:(unsigned __int16 *)value
{
  v8 = 0;
  v7 = *time;
  result = [(CHChannelIntegral *)self getKeyframeBeforeTime:&v7 time:a4 curveIntValue:&v8];
  if (value)
  {
    *value = v8;
  }

  return result;
}

@end