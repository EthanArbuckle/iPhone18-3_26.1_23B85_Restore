@interface TKVibrationRecorderRippleRingLayer
- (CGPoint)normalizedRingLocation;
- (TKVibrationRecorderRippleRingLayer)init;
- (void)configureWithTimeIntervalSinceCreation:(double)creation normalizedRingLocation:(CGPoint)location ringSpeed:(double)speed;
- (void)reset;
@end

@implementation TKVibrationRecorderRippleRingLayer

- (TKVibrationRecorderRippleRingLayer)init
{
  v5.receiver = self;
  v5.super_class = TKVibrationRecorderRippleRingLayer;
  v2 = [(TKVibrationRecorderRippleRingLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TKVibrationRecorderRippleRingLayer *)v2 setFillColor:0];
    [(TKVibrationRecorderRippleRingLayer *)v3 reset];
  }

  return v3;
}

- (void)configureWithTimeIntervalSinceCreation:(double)creation normalizedRingLocation:(CGPoint)location ringSpeed:(double)speed
{
  y = location.y;
  x = location.x;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_creationTimestamp = v10 - creation;
  self->_normalizedRingLocation.x = x;
  self->_normalizedRingLocation.y = y;
  self->_ringSpeed = speed;
}

- (void)reset
{
  self->_creationTimestamp = 0.0;
  self->_normalizedRingLocation = *MEMORY[0x277CBF348];
  self->_ringSpeed = 0.0;
}

- (CGPoint)normalizedRingLocation
{
  x = self->_normalizedRingLocation.x;
  y = self->_normalizedRingLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end