@interface TVRCTouchEvent
- (CGPoint)digitizerLocation;
- (TVRCTouchEvent)initWithCoder:(id)a3;
- (id)_initWithTimestamp:(double)a3 finger:(int64_t)a4 phase:(int64_t)a5 digitizerLocation:(CGPoint)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCTouchEvent

- (TVRCTouchEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TVRCTouchEvent;
  v5 = [(TVRCTouchEvent *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v5->_finger = [v4 decodeIntegerForKey:@"finger"];
    v5->_phase = [v4 decodeIntegerForKey:@"phase"];
    [v4 decodeDoubleForKey:@"digitizerLocation.x"];
    v5->_digitizerLocation.x = v7;
    [v4 decodeDoubleForKey:@"digitizerLocation.y"];
    v5->_digitizerLocation.y = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 encodeInteger:self->_finger forKey:@"finger"];
  [v5 encodeInteger:self->_phase forKey:@"phase"];
  [v5 encodeDouble:@"digitizerLocation.x" forKey:self->_digitizerLocation.x];
  [v5 encodeDouble:@"digitizerLocation.y" forKey:self->_digitizerLocation.y];
}

- (id)_initWithTimestamp:(double)a3 finger:(int64_t)a4 phase:(int64_t)a5 digitizerLocation:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v12.receiver = self;
  v12.super_class = TVRCTouchEvent;
  result = [(TVRCTouchEvent *)&v12 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
    *(result + 3) = a5;
    *(result + 4) = x;
    *(result + 5) = y;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  finger = self->_finger;
  v6 = TVRCTouchPhaseDescription(self->_phase);
  v7 = [v3 stringWithFormat:@"<%@ %p finger=%d; phase=%@; location={%g, %g}>", v4, self, finger, v6, *&self->_digitizerLocation.x, *&self->_digitizerLocation.y];;

  return v7;
}

- (CGPoint)digitizerLocation
{
  x = self->_digitizerLocation.x;
  y = self->_digitizerLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end