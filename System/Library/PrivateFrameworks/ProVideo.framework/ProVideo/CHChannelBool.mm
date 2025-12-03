@interface CHChannelBool
- (BOOL)getFirstKeyframeTime:(id *)time curveBoolValue:(BOOL *)value;
- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveBoolValue:(BOOL *)value;
- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveBoolValue:(BOOL *)value;
- (BOOL)getLastKeyframeTime:(id *)time curveBoolValue:(BOOL *)value;
- (OZChannelBool)ozChannel;
- (void)getExtremaBetweenStart:(id *)start end:(id *)end minBoolValue:(BOOL *)value maxBoolValue:(BOOL *)boolValue;
@end

@implementation CHChannelBool

- (OZChannelBool)ozChannel
{
  result = self->super.super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)getExtremaBetweenStart:(id *)start end:(id *)end minBoolValue:(BOOL *)value maxBoolValue:(BOOL *)boolValue
{
  v10 = 0;
  v9 = *start;
  v8 = *end;
  [(CHChannelIntegral *)self _getExtremaBetweenStart:&v9 end:&v8 minIntValue:&v10 + 4 maxIntValue:&v10];
  if (value)
  {
    *value = HIDWORD(v10) != 0;
  }

  if (boolValue)
  {
    *boolValue = v10 != 0;
  }
}

- (BOOL)getFirstKeyframeTime:(id *)time curveBoolValue:(BOOL *)value
{
  v6 = 0;
  result = [(CHChannelIntegral *)self getFirstKeyframeTime:time curveIntValue:&v6];
  if (value)
  {
    *value = v6 != 0;
  }

  return result;
}

- (BOOL)getLastKeyframeTime:(id *)time curveBoolValue:(BOOL *)value
{
  v6 = 0;
  result = [(CHChannelIntegral *)self getLastKeyframeTime:time curveIntValue:&v6];
  if (value)
  {
    *value = v6 != 0;
  }

  return result;
}

- (BOOL)getKeyframeAfterTime:(id *)time time:(id *)a4 curveBoolValue:(BOOL *)value
{
  v8 = 0;
  v7 = *time;
  result = [(CHChannelIntegral *)self getKeyframeAfterTime:&v7 time:a4 curveIntValue:&v8];
  if (value)
  {
    *value = v8 != 0;
  }

  return result;
}

- (BOOL)getKeyframeBeforeTime:(id *)time time:(id *)a4 curveBoolValue:(BOOL *)value
{
  v8 = 0;
  v7 = *time;
  result = [(CHChannelIntegral *)self getKeyframeBeforeTime:&v7 time:a4 curveIntValue:&v8];
  if (value)
  {
    *value = v8 != 0;
  }

  return result;
}

@end