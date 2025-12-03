@interface CHChannelUint32
- (BOOL)getFirstKeyframeTime:(id *)time curveUint32Value:(unsigned int *)value;
- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveUint32Value:(unsigned int *)value;
- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveUint32Value:(unsigned int *)value;
- (BOOL)getLastKeyframeTime:(id *)time curveUint32Value:(unsigned int *)value;
- (OZChannelUint32)ozChannel;
- (void)getExtremaBetweenStart:(id *)start end:(id *)end minUint32Value:(unsigned int *)value maxUint32Value:(unsigned int *)uint32Value;
@end

@implementation CHChannelUint32

- (OZChannelUint32)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)getExtremaBetweenStart:(id *)start end:(id *)end minUint32Value:(unsigned int *)value maxUint32Value:(unsigned int *)uint32Value
{
  v10 = 0;
  v9 = *start;
  v8 = *end;
  [(CHChannelIntegral *)self _getExtremaBetweenStart:&v9 end:&v8 minIntValue:&v10 + 4 maxIntValue:&v10];
  if (value)
  {
    *value = HIDWORD(v10);
  }

  if (uint32Value)
  {
    *uint32Value = v10;
  }
}

- (BOOL)getFirstKeyframeTime:(id *)time curveUint32Value:(unsigned int *)value
{
  v6 = 0;
  result = [(CHChannelIntegral *)self getFirstKeyframeTime:time curveIntValue:&v6];
  if (value)
  {
    *value = v6;
  }

  return result;
}

- (BOOL)getLastKeyframeTime:(id *)time curveUint32Value:(unsigned int *)value
{
  v6 = 0;
  result = [(CHChannelIntegral *)self getLastKeyframeTime:time curveIntValue:&v6];
  if (value)
  {
    *value = v6;
  }

  return result;
}

- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveUint32Value:(unsigned int *)value
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

- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveUint32Value:(unsigned int *)value
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