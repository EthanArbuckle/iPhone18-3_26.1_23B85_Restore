@interface TIKeyboardTouchEvent
+ (TIKeyboardTouchEvent)touchEventWithStage:(int)a3 location:(CGPoint)a4 radius:(double)a5 timestamp:(double)a6 pathIndex:(int64_t)a7 fingerID:(int)a8 forcedKeyCode:(int64_t)a9;
+ (TIKeyboardTouchEvent)touchEventWithStage:(int)a3 location:(CGPoint)a4 radius:(double)a5 timestamp:(double)a6 pathIndex:(int64_t)a7 fingerID:(int)a8 forcedKeyCode:(int64_t)a9 continuousPathState:(int)a10;
- (CGPoint)location;
- (TIKeyboardTouchEvent)initWithCoder:(id)a3;
- (TIKeyboardTouchEvent)initWithStage:(int)a3 location:(CGPoint)a4 radius:(double)a5 timestamp:(double)a6 pathIndex:(int64_t)a7 fingerID:(int)a8 forcedKeyCode:(int64_t)a9 continuousPathState:(int)a10;
- (id)description;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(TIKeyboardTouchEvent *)self stage];
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E6F4CE78[v3];
  }

  v5 = [(TIKeyboardTouchEvent *)self continuousPathState];
  if (v5 > 6)
  {
    v6 = "";
  }

  else
  {
    v6 = off_1E6F4CE98[v5];
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
  v4 = [(TIKeyboardTouchEvent *)self stage];
  if (v4 <= 5)
  {
    [v3 appendString:*(&off_1E6F4CDA8 + v4)];
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
  v10 = [(TIKeyboardTouchEvent *)self fingerID];
  if (v10 <= 0xC && ((0x1F7Du >> v10) & 1) != 0)
  {
    [v3 appendString:*(&off_1E6F4CDD8 + v10)];
  }

  [v3 appendFormat:@"; forcedKeyCode = %ld", -[TIKeyboardTouchEvent forcedKeyCode](self, "forcedKeyCode")];
  v11 = [(TIKeyboardTouchEvent *)self continuousPathState];
  if (v11 <= 6)
  {
    [v3 appendString:*(&off_1E6F4CE40 + v11)];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  stage = self->_stage;
  v12 = v4;
  if (stage)
  {
    [v4 encodeInteger:stage forKey:@"stage"];
    v4 = v12;
  }

  x = self->_location.x;
  if (x != 0.0)
  {
    *&x = x;
    [v12 encodeFloat:@"location.x" forKey:x];
    v4 = v12;
  }

  y = self->_location.y;
  if (y != 0.0)
  {
    *&y = y;
    [v12 encodeFloat:@"location.y" forKey:y];
    v4 = v12;
  }

  if (self->_radius != 0.0)
  {
    [v12 encodeDouble:@"radius" forKey:?];
    v4 = v12;
  }

  if (self->_timestamp != 0.0)
  {
    [v12 encodeDouble:@"timestamp" forKey:?];
    v4 = v12;
  }

  pathIndex = self->_pathIndex;
  if (pathIndex)
  {
    [v12 encodeInteger:pathIndex forKey:@"pathIndex"];
    v4 = v12;
  }

  fingerID = self->_fingerID;
  if (fingerID)
  {
    [v12 encodeInteger:fingerID forKey:@"fingerID"];
    v4 = v12;
  }

  forcedKeyCode = self->_forcedKeyCode;
  if (forcedKeyCode)
  {
    [v12 encodeInteger:forcedKeyCode forKey:@"forcedKeyCode"];
    v4 = v12;
  }

  integerValue = self->_mask.integerValue;
  if (integerValue)
  {
    [v12 encodeInteger:integerValue forKey:@"flags"];
    v4 = v12;
  }
}

- (TIKeyboardTouchEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TIKeyboardTouchEvent;
  v5 = [(TIKeyboardTouchEvent *)&v12 init];
  if (v5)
  {
    v5->_stage = [v4 decodeIntegerForKey:@"stage"];
    [v4 decodeFloatForKey:@"location.x"];
    v7 = v6;
    [v4 decodeFloatForKey:@"location.y"];
    v5->_location.x = v7;
    v5->_location.y = v8;
    [v4 decodeDoubleForKey:@"radius"];
    v5->_radius = v9;
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v10;
    v5->_pathIndex = [v4 decodeIntegerForKey:@"pathIndex"];
    v5->_fingerID = [v4 decodeIntegerForKey:@"fingerID"];
    v5->_forcedKeyCode = [v4 decodeIntegerForKey:@"forcedKeyCode"];
    v5->_mask.integerValue = [v4 decodeIntegerForKey:@"flags"];
  }

  return v5;
}

- (TIKeyboardTouchEvent)initWithStage:(int)a3 location:(CGPoint)a4 radius:(double)a5 timestamp:(double)a6 pathIndex:(int64_t)a7 fingerID:(int)a8 forcedKeyCode:(int64_t)a9 continuousPathState:(int)a10
{
  v10 = a10;
  y = a4.y;
  x = a4.x;
  v20.receiver = self;
  v20.super_class = TIKeyboardTouchEvent;
  result = [(TIKeyboardTouchEvent *)&v20 init];
  if (result)
  {
    result->_location.x = x;
    result->_location.y = y;
    result->_radius = a5;
    result->_timestamp = a6;
    result->_stage = a3;
    result->_fingerID = a8;
    result->_pathIndex = a7;
    result->_forcedKeyCode = a9;
    LOBYTE(result->_mask.integerValue) = result->_mask.integerValue & 0xF0 | v10 & 0xF;
  }

  return result;
}

+ (TIKeyboardTouchEvent)touchEventWithStage:(int)a3 location:(CGPoint)a4 radius:(double)a5 timestamp:(double)a6 pathIndex:(int64_t)a7 fingerID:(int)a8 forcedKeyCode:(int64_t)a9 continuousPathState:(int)a10
{
  v10 = [[TIKeyboardTouchEvent alloc] initWithStage:*&a3 location:a7 radius:*&a8 timestamp:a9 pathIndex:*&a10 fingerID:a4.x forcedKeyCode:a4.y continuousPathState:a5, a6];

  return v10;
}

+ (TIKeyboardTouchEvent)touchEventWithStage:(int)a3 location:(CGPoint)a4 radius:(double)a5 timestamp:(double)a6 pathIndex:(int64_t)a7 fingerID:(int)a8 forcedKeyCode:(int64_t)a9
{
  v9 = [[TIKeyboardTouchEvent alloc] initWithStage:*&a3 location:a7 radius:*&a8 timestamp:a9 pathIndex:2 fingerID:a4.x forcedKeyCode:a4.y continuousPathState:a5, a6];

  return v9;
}

@end