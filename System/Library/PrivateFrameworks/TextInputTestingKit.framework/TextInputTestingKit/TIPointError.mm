@interface TIPointError
+ (TIPointError)errorWithErrorVector:(CGPoint)a3;
- (CGPoint)applyToPoint:(CGPoint)a3;
- (CGPoint)errorVector;
- (TIPointError)initWithCoder:(id)a3;
- (TIPointError)initWithErrorVector:(CGPoint)a3;
- (void)encodeWithCoder:(id)a3;
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

- (CGPoint)applyToPoint:(CGPoint)a3
{
  v3 = a3.x + self->_errorVector.x;
  v4 = a3.y + self->_errorVector.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  x = self->_errorVector.x;
  *&x = x;
  v7 = v4;
  [v4 encodeFloat:@"TIPointErrorX" forKey:x];
  y = self->_errorVector.y;
  *&y = y;
  [v7 encodeFloat:@"TIPointErrorY" forKey:y];
}

- (TIPointError)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TIPointError;
  v5 = [(TIPointError *)&v10 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"TIPointErrorX"];
    v7 = v6;
    [v4 decodeFloatForKey:@"TIPointErrorY"];
    v5->_errorVector.x = v7;
    v5->_errorVector.y = v8;
  }

  return v5;
}

- (TIPointError)initWithErrorVector:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

+ (TIPointError)errorWithErrorVector:(CGPoint)a3
{
  v3 = [[TIPointError alloc] initWithErrorVector:a3.x, a3.y];

  return v3;
}

@end