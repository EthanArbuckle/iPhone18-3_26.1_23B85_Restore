@interface CHChannelUint16
- (BOOL)getFirstKeyframeTime:(id *)a3 curveUint16Value:(unsigned __int16 *)a4;
- (BOOL)getKeyframeAfterTime:(id *)a3 time:(id *)a4 curveUint16Value:(unsigned __int16 *)a5;
- (BOOL)getKeyframeBeforeTime:(id *)a3 time:(id *)a4 curveUint16Value:(unsigned __int16 *)a5;
- (BOOL)getLastKeyframeTime:(id *)a3 curveUint16Value:(unsigned __int16 *)a4;
- (OZChannelUint16)ozChannel;
- (void)getExtremaBetweenStart:(id *)a3 end:(id *)a4 minUint16Value:(unsigned __int16 *)a5 maxUint16Value:(unsigned __int16 *)a6;
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

- (void)getExtremaBetweenStart:(id *)a3 end:(id *)a4 minUint16Value:(unsigned __int16 *)a5 maxUint16Value:(unsigned __int16 *)a6
{
  v10 = 0;
  v9 = *a3;
  v8 = *a4;
  [(CHChannelIntegral *)self _getExtremaBetweenStart:&v9 end:&v8 minIntValue:&v10 + 4 maxIntValue:&v10];
  if (a5)
  {
    *a5 = WORD2(v10);
  }

  if (a6)
  {
    *a6 = v10;
  }
}

- (BOOL)getFirstKeyframeTime:(id *)a3 curveUint16Value:(unsigned __int16 *)a4
{
  v6 = 0;
  result = [(CHChannelIntegral *)self getFirstKeyframeTime:a3 curveIntValue:&v6];
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

- (BOOL)getLastKeyframeTime:(id *)a3 curveUint16Value:(unsigned __int16 *)a4
{
  v6 = 0;
  result = [(CHChannelIntegral *)self getLastKeyframeTime:a3 curveIntValue:&v6];
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

- (BOOL)getKeyframeAfterTime:(id *)a3 time:(id *)a4 curveUint16Value:(unsigned __int16 *)a5
{
  v8 = 0;
  v7 = *a3;
  result = [(CHChannelIntegral *)self getKeyframeAfterTime:&v7 time:a4 curveIntValue:&v8];
  if (a5)
  {
    *a5 = v8;
  }

  return result;
}

- (BOOL)getKeyframeBeforeTime:(id *)a3 time:(id *)a4 curveUint16Value:(unsigned __int16 *)a5
{
  v8 = 0;
  v7 = *a3;
  result = [(CHChannelIntegral *)self getKeyframeBeforeTime:&v7 time:a4 curveIntValue:&v8];
  if (a5)
  {
    *a5 = v8;
  }

  return result;
}

@end