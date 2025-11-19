@interface _UIKBRTTouchHistoryInfo
- (CGPoint)actualLocation;
- (CGPoint)errorVector;
- (_UIKBRTTouchHistoryInfo)init;
- (id)description;
@end

@implementation _UIKBRTTouchHistoryInfo

- (_UIKBRTTouchHistoryInfo)init
{
  v3.receiver = self;
  v3.super_class = _UIKBRTTouchHistoryInfo;
  result = [(_UIKBRTTouchHistoryInfo *)&v3 init];
  if (result)
  {
    *&result->_isLeftHand = 257;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = _UIKBRTTouchHistoryInfo;
  v4 = [(_UIKBRTTouchHistoryInfo *)&v12 description];
  v5 = v4;
  if (self->_isLeftHand)
  {
    v6 = "left";
  }

  else
  {
    v6 = "right";
  }

  v7 = "";
  if (self->_isActive)
  {
    v8 = "";
  }

  else
  {
    v8 = " (INACTIVE)";
  }

  if (self->_ignoreForDrift)
  {
    v9 = " (UNKNOWN)";
  }

  else
  {
    v9 = "";
  }

  if (self->_ignoreTouch)
  {
    v7 = " (IGNORED)";
  }

  v10 = [v3 stringWithFormat:@"%@ ID=%@, @%.2f, {%.1f%+.1f, %.1f%+.1f}, %s%s%s%s", v4, self->_touchIdentifier, *&self->_touchTime, *&self->_errorVector.x, *&self->_actualLocation.y, *&self->_errorVector.y, v6, v8, v9, v7];

  return v10;
}

- (CGPoint)actualLocation
{
  x = self->_actualLocation.x;
  y = self->_actualLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)errorVector
{
  x = self->_errorVector.x;
  y = self->_errorVector.y;
  result.y = y;
  result.x = x;
  return result;
}

@end