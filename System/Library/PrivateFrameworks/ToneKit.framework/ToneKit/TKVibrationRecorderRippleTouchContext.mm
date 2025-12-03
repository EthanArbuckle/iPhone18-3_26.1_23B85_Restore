@interface TKVibrationRecorderRippleTouchContext
- (CGPoint)location;
- (TKVibrationRecorderRippleTouchContext)init;
- (void)configureWithTimeIntervalSinceCreation:(double)creation location:(CGPoint)location;
@end

@implementation TKVibrationRecorderRippleTouchContext

- (TKVibrationRecorderRippleTouchContext)init
{
  v5.receiver = self;
  v5.super_class = TKVibrationRecorderRippleTouchContext;
  v2 = [(TKVibrationRecorderRippleTouchContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TKVibrationRecorderRippleTouchContext *)v2 reset];
  }

  return v3;
}

- (void)configureWithTimeIntervalSinceCreation:(double)creation location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_creationTimestamp = v8 - creation;
  self->_location.x = x;
  self->_location.y = y;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end