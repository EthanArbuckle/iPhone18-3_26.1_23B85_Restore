@interface TIPointError
+ (TIPointError)errorWithErrorVector:(CGPoint)vector;
- (CGPoint)applyToPoint:(CGPoint)point;
- (CGPoint)errorVector;
- (TIPointError)initWithCoder:(id)coder;
- (TIPointError)initWithErrorVector:(CGPoint)vector;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIPointError

- (CGPoint)errorVector
{
  x = self->_errorVector.x;
  y = self->_errorVector.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)applyToPoint:(CGPoint)point
{
  v3 = point.x + self->_errorVector.x;
  v4 = point.y + self->_errorVector.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  x = self->_errorVector.x;
  *&x = x;
  v7 = coderCopy;
  [coderCopy encodeFloat:@"TIPointErrorX" forKey:x];
  y = self->_errorVector.y;
  *&y = y;
  [v7 encodeFloat:@"TIPointErrorY" forKey:y];
}

- (TIPointError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TIPointError;
  v5 = [(TIPointError *)&v10 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"TIPointErrorX"];
    v7 = v6;
    [coderCopy decodeFloatForKey:@"TIPointErrorY"];
    v5->_errorVector.x = v7;
    v5->_errorVector.y = v8;
  }

  return v5;
}

- (TIPointError)initWithErrorVector:(CGPoint)vector
{
  y = vector.y;
  x = vector.x;
  v6.receiver = self;
  v6.super_class = TIPointError;
  result = [(TIPointError *)&v6 init];
  if (result)
  {
    result->_errorVector.x = x;
    result->_errorVector.y = y;
  }

  return result;
}

+ (TIPointError)errorWithErrorVector:(CGPoint)vector
{
  v3 = [[TIPointError alloc] initWithErrorVector:vector.x, vector.y];

  return v3;
}

@end