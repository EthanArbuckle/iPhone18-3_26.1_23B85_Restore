@interface _UIViewCubicTimingFunction
- (BOOL)isEqual:(id)equal;
- (CGPoint)controlPoint1;
- (CGPoint)controlPoint2;
- (_UIViewCubicTimingFunction)init;
- (_UIViewCubicTimingFunction)initWithCoder:(id)coder;
- (_UIViewCubicTimingFunction)initWithControlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (id)_mediaTimingFunction;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIViewCubicTimingFunction

- (CGPoint)controlPoint1
{
  x = self->_point1.x;
  y = self->_point1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)controlPoint2
{
  x = self->_point2.x;
  y = self->_point2.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)_mediaTimingFunction
{
  x = self->_point1.x;
  y = self->_point1.y;
  *&x = x;
  *&y = y;
  v4 = self->_point2.x;
  v5 = self->_point2.y;
  *&v4 = v4;
  *&v5 = v5;
  return [MEMORY[0x1E69793D0] functionWithControlPoints:x :y :v4 :v5];
}

- (_UIViewCubicTimingFunction)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIViewCubicTimingFunction init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (_UIViewCubicTimingFunction)initWithControlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v6 = point1.y;
  v7 = point1.x;
  v9.receiver = self;
  v9.super_class = _UIViewCubicTimingFunction;
  result = [(_UIViewCubicTimingFunction *)&v9 init];
  result->_point1.x = v7;
  result->_point1.y = v6;
  result->_point2.x = x;
  result->_point2.y = y;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  x = self->_point1.x;
  y = self->_point1.y;
  v7 = self->_point2.x;
  v8 = self->_point2.y;

  return [v4 initWithControlPoint1:x controlPoint2:{y, v7, v8}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(_UIViewCubicTimingFunction *)self controlPoint1];
    v7 = v6;
    v9 = v8;
    [v5 controlPoint1];
    if (v7 == v11 && v9 == v10)
    {
      [(_UIViewCubicTimingFunction *)self controlPoint2];
      v15 = v14;
      v17 = v16;
      [v5 controlPoint2];
      v13 = v17 == v19 && v15 == v18;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  x = self->_point1.x;
  y = self->_point1.y;
  coderCopy = coder;
  [coderCopy encodeCGPoint:@"point1" forKey:{x, y}];
  [coderCopy encodeCGPoint:@"point2" forKey:{self->_point2.x, self->_point2.y}];
}

- (_UIViewCubicTimingFunction)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v14.receiver = self;
    v14.super_class = _UIViewCubicTimingFunction;
    v5 = [(_UIViewCubicTimingFunction *)&v14 init];
    if (v5)
    {
      [coderCopy decodeCGPointForKey:@"point1"];
      v7 = v6;
      v9 = v8;
      [coderCopy decodeCGPointForKey:@"point2"];
      v5->_point1.x = v7;
      v5->_point1.y = v9;
      v5->_point2.x = v10;
      v5->_point2.y = v11;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"%@ only supports keyed coding.", objc_opt_class()}];
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGPoint(self->_point1);
  v7 = NSStringFromCGPoint(self->_point2);
  v8 = [v3 stringWithFormat:@"<%@ point1 = %@ point2 = %@>", v5, v6, v7];

  return v8;
}

@end