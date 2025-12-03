@interface TVRCTouchEvent
- (CGPoint)digitizerLocation;
- (TVRCTouchEvent)initWithCoder:(id)coder;
- (id)_initWithTimestamp:(double)timestamp finger:(int64_t)finger phase:(int64_t)phase digitizerLocation:(CGPoint)location;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCTouchEvent

- (TVRCTouchEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TVRCTouchEvent;
  v5 = [(TVRCTouchEvent *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v5->_finger = [coderCopy decodeIntegerForKey:@"finger"];
    v5->_phase = [coderCopy decodeIntegerForKey:@"phase"];
    [coderCopy decodeDoubleForKey:@"digitizerLocation.x"];
    v5->_digitizerLocation.x = v7;
    [coderCopy decodeDoubleForKey:@"digitizerLocation.y"];
    v5->_digitizerLocation.y = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeInteger:self->_finger forKey:@"finger"];
  [coderCopy encodeInteger:self->_phase forKey:@"phase"];
  [coderCopy encodeDouble:@"digitizerLocation.x" forKey:self->_digitizerLocation.x];
  [coderCopy encodeDouble:@"digitizerLocation.y" forKey:self->_digitizerLocation.y];
}

- (id)_initWithTimestamp:(double)timestamp finger:(int64_t)finger phase:(int64_t)phase digitizerLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v12.receiver = self;
  v12.super_class = TVRCTouchEvent;
  result = [(TVRCTouchEvent *)&v12 init];
  if (result)
  {
    *(result + 1) = timestamp;
    *(result + 2) = finger;
    *(result + 3) = phase;
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