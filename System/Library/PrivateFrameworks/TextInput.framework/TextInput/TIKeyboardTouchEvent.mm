@interface TIKeyboardTouchEvent
+ (TIKeyboardTouchEvent)touchEventWithStage:(int)stage location:(CGPoint)location radius:(double)radius timestamp:(double)timestamp pathIndex:(int64_t)index fingerID:(int)d forcedKeyCode:(int64_t)code;
+ (TIKeyboardTouchEvent)touchEventWithStage:(int)stage location:(CGPoint)location radius:(double)radius timestamp:(double)timestamp pathIndex:(int64_t)index fingerID:(int)d forcedKeyCode:(int64_t)code continuousPathState:(int)self0;
- (CGPoint)location;
- (TIKeyboardTouchEvent)initWithCoder:(id)coder;
- (TIKeyboardTouchEvent)initWithStage:(int)stage location:(CGPoint)location radius:(double)radius timestamp:(double)timestamp pathIndex:(int64_t)index fingerID:(int)d forcedKeyCode:(int64_t)code continuousPathState:(int)self0;
- (id)description;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardTouchEvent

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)shortDescription
{
  stage = [(TIKeyboardTouchEvent *)self stage];
  if (stage > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E6F4CE78[stage];
  }

  continuousPathState = [(TIKeyboardTouchEvent *)self continuousPathState];
  if (continuousPathState > 6)
  {
    v6 = "";
  }

  else
  {
    v6 = off_1E6F4CE98[continuousPathState];
  }

  v7 = MEMORY[0x1E696AEC0];
  [(TIKeyboardTouchEvent *)self location];
  *&v8 = v8;
  v9 = *&v8;
  [(TIKeyboardTouchEvent *)self location];
  v11 = v10;
  v12 = v11;
  [(TIKeyboardTouchEvent *)self timestamp];
  *&v13 = v13;
  return [v7 stringWithFormat:@"(x=%.1f, y=%.1f, t=%.2f, %s, idx=%lu, cp=%s)", *&v9, *&v12, *&v13, v4, -[TIKeyboardTouchEvent pathIndex](self, "pathIndex"), v6];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  stage = [(TIKeyboardTouchEvent *)self stage];
  if (stage <= 5)
  {
    [v3 appendString:*(&off_1E6F4CDA8 + stage)];
  }

  [(TIKeyboardTouchEvent *)self location];
  v6 = v5;
  [(TIKeyboardTouchEvent *)self location];
  [v3 appendFormat:@"; location = (%.1f, %.1f)", v6, v7];
  [(TIKeyboardTouchEvent *)self radius];
  [v3 appendFormat:@"; radius = %f", v8];
  [(TIKeyboardTouchEvent *)self timestamp];
  [v3 appendFormat:@"; timestamp = %f", v9];
  [v3 appendFormat:@"; pathIndex = %ld", -[TIKeyboardTouchEvent pathIndex](self, "pathIndex")];
  fingerID = [(TIKeyboardTouchEvent *)self fingerID];
  if (fingerID <= 0xC && ((0x1F7Du >> fingerID) & 1) != 0)
  {
    [v3 appendString:*(&off_1E6F4CDD8 + fingerID)];
  }

  [v3 appendFormat:@"; forcedKeyCode = %ld", -[TIKeyboardTouchEvent forcedKeyCode](self, "forcedKeyCode")];
  continuousPathState = [(TIKeyboardTouchEvent *)self continuousPathState];
  if (continuousPathState <= 6)
  {
    [v3 appendString:*(&off_1E6F4CE40 + continuousPathState)];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stage = self->_stage;
  v12 = coderCopy;
  if (stage)
  {
    [coderCopy encodeInteger:stage forKey:@"stage"];
    coderCopy = v12;
  }

  x = self->_location.x;
  if (x != 0.0)
  {
    *&x = x;
    [v12 encodeFloat:@"location.x" forKey:x];
    coderCopy = v12;
  }

  y = self->_location.y;
  if (y != 0.0)
  {
    *&y = y;
    [v12 encodeFloat:@"location.y" forKey:y];
    coderCopy = v12;
  }

  if (self->_radius != 0.0)
  {
    [v12 encodeDouble:@"radius" forKey:?];
    coderCopy = v12;
  }

  if (self->_timestamp != 0.0)
  {
    [v12 encodeDouble:@"timestamp" forKey:?];
    coderCopy = v12;
  }

  pathIndex = self->_pathIndex;
  if (pathIndex)
  {
    [v12 encodeInteger:pathIndex forKey:@"pathIndex"];
    coderCopy = v12;
  }

  fingerID = self->_fingerID;
  if (fingerID)
  {
    [v12 encodeInteger:fingerID forKey:@"fingerID"];
    coderCopy = v12;
  }

  forcedKeyCode = self->_forcedKeyCode;
  if (forcedKeyCode)
  {
    [v12 encodeInteger:forcedKeyCode forKey:@"forcedKeyCode"];
    coderCopy = v12;
  }

  integerValue = self->_mask.integerValue;
  if (integerValue)
  {
    [v12 encodeInteger:integerValue forKey:@"flags"];
    coderCopy = v12;
  }
}

- (TIKeyboardTouchEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TIKeyboardTouchEvent;
  v5 = [(TIKeyboardTouchEvent *)&v12 init];
  if (v5)
  {
    v5->_stage = [coderCopy decodeIntegerForKey:@"stage"];
    [coderCopy decodeFloatForKey:@"location.x"];
    v7 = v6;
    [coderCopy decodeFloatForKey:@"location.y"];
    v5->_location.x = v7;
    v5->_location.y = v8;
    [coderCopy decodeDoubleForKey:@"radius"];
    v5->_radius = v9;
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v10;
    v5->_pathIndex = [coderCopy decodeIntegerForKey:@"pathIndex"];
    v5->_fingerID = [coderCopy decodeIntegerForKey:@"fingerID"];
    v5->_forcedKeyCode = [coderCopy decodeIntegerForKey:@"forcedKeyCode"];
    v5->_mask.integerValue = [coderCopy decodeIntegerForKey:@"flags"];
  }

  return v5;
}

- (TIKeyboardTouchEvent)initWithStage:(int)stage location:(CGPoint)location radius:(double)radius timestamp:(double)timestamp pathIndex:(int64_t)index fingerID:(int)d forcedKeyCode:(int64_t)code continuousPathState:(int)self0
{
  stateCopy = state;
  y = location.y;
  x = location.x;
  v20.receiver = self;
  v20.super_class = TIKeyboardTouchEvent;
  result = [(TIKeyboardTouchEvent *)&v20 init];
  if (result)
  {
    result->_location.x = x;
    result->_location.y = y;
    result->_radius = radius;
    result->_timestamp = timestamp;
    result->_stage = stage;
    result->_fingerID = d;
    result->_pathIndex = index;
    result->_forcedKeyCode = code;
    LOBYTE(result->_mask.integerValue) = result->_mask.integerValue & 0xF0 | stateCopy & 0xF;
  }

  return result;
}

+ (TIKeyboardTouchEvent)touchEventWithStage:(int)stage location:(CGPoint)location radius:(double)radius timestamp:(double)timestamp pathIndex:(int64_t)index fingerID:(int)d forcedKeyCode:(int64_t)code continuousPathState:(int)self0
{
  timestamp = [[TIKeyboardTouchEvent alloc] initWithStage:*&stage location:index radius:*&d timestamp:code pathIndex:*&state fingerID:location.x forcedKeyCode:location.y continuousPathState:radius, timestamp];

  return timestamp;
}

+ (TIKeyboardTouchEvent)touchEventWithStage:(int)stage location:(CGPoint)location radius:(double)radius timestamp:(double)timestamp pathIndex:(int64_t)index fingerID:(int)d forcedKeyCode:(int64_t)code
{
  timestamp = [[TIKeyboardTouchEvent alloc] initWithStage:*&stage location:index radius:*&d timestamp:code pathIndex:2 fingerID:location.x forcedKeyCode:location.y continuousPathState:radius, timestamp];

  return timestamp;
}

@end